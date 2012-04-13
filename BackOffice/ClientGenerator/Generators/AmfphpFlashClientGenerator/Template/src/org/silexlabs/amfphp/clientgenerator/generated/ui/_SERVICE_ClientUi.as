package org.silexlabs.amfphp.clientgenerator.generated.ui
{
	import fla.Label;
	import fla.ShowServiceButton;
	import fla.TextInput;
	import fla.TextResultDisplay;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.net.NetConnection;
	import flash.text.TextField;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFieldType;
	
	import org.silexlabs.amfphp.clientgenerator.NetConnectionSingleton;
	import org.silexlabs.amfphp.clientgenerator.generated.ObjectUtil;
	import org.silexlabs.amfphp.clientgenerator.generated.service._SERVICE_Client;
	import org.silexlabs.amfphp.clientgenerator.ui.elements.IDataIoGui;
	import org.silexlabs.amfphp.clientgenerator.ui.elements.ILabel;
	
	public class _SERVICE_ClientUi extends MovieClip
	{
		/**
		 * layout constants
		 * */
		private static const PADDING:int = 20;
		private static const METHOD_UI_HEIGHT:int = 40;
		private static const METHOD_INPUT_WIDTH:int = 120;
		private static const CALL_BUTTON_X:int = 400;
		
		private var _service:_SERVICE_Client;
		
		/*ACG_METHOD*/
		//_METHOD_ inputs /*ACG_PARAMETER*/
		public var _METHOD___PARAMETER__Input:IDataIoGui; /*ACG_PARAMETER*/
		public var _METHOD_Label:ILabel;
		public var _METHOD__callButton:ILabel;		/*ACG_METHOD*/
		public var resultDisplay:IDataIoGui;
		public function _SERVICE_ClientUi()
		{
			super();

			var xLayoutMultiplier:int = 0;
			var yLayoutMultiplier:int = 0;
			var maxNumMethodInputs:int = 0;
			
			_service = new _SERVICE_Client(NetConnectionSingleton.getNetConnection());
			graphics.beginFill(0, 0.3);
			/*ACG_METHOD*/
			//_METHOD_ ui
			xLayoutMultiplier = 0;
			if(!_METHOD_Label){
				_METHOD_Label = new Label();
				_METHOD_Label.label = '_METHOD_ method';
				_METHOD_Label.displayObject.x = PADDING;
				_METHOD_Label.displayObject.y = PADDING + METHOD_UI_HEIGHT * yLayoutMultiplier;
				addChild(_METHOD_Label.displayObject);
				
			}
			
			/*ACG_PARAMETER*/
			if(!_METHOD___PARAMETER__Input){
				_METHOD___PARAMETER__Input = new TextInput();
				_METHOD___PARAMETER__Input.displayObject.x = PADDING + METHOD_INPUT_WIDTH * xLayoutMultiplier;
				_METHOD___PARAMETER__Input.displayObject.y = PADDING + _METHOD_Label.displayObject.height  + METHOD_UI_HEIGHT * yLayoutMultiplier;
				addChild(_METHOD___PARAMETER__Input.displayObject);
				
			}
			xLayoutMultiplier++;
			/*ACG_PARAMETER*/
			
			if(!_METHOD__callButton){
				_METHOD__callButton = new ShowServiceButton();
				_METHOD__callButton.label = "call";
				_METHOD__callButton.displayObject.x = PADDING + METHOD_INPUT_WIDTH * xLayoutMultiplier;
				_METHOD__callButton.displayObject.y = PADDING + _METHOD_Label.displayObject.height  + METHOD_UI_HEIGHT * yLayoutMultiplier;
				addChild(_METHOD__callButton.displayObject);
			}
			_METHOD__callButton.addEventListener(MouseEvent.CLICK, _METHOD__callButtonClickHandler);
			yLayoutMultiplier++;
			/*ACG_METHOD*/
			if(!resultDisplay){
				resultDisplay = new TextResultDisplay();
				resultDisplay.displayObject.y = 2 * PADDING + METHOD_UI_HEIGHT * yLayoutMultiplier;
				addChild(resultDisplay.displayObject);
			}
			
		}

	  
				
		/*ACG_METHOD*/
		private function _METHOD__callButtonClickHandler(event:MouseEvent):void{
			_service._METHOD_(/*ACG_PARAMETER_COMMA*/_METHOD___PARAMETER__Input.data/*ACG_PARAMETER_COMMA*/).setResultHandler(_METHOD_ResultHandler).setErrorHandler(errorHandler); 
		}

		private function _METHOD_ResultHandler(obj:Object):void{
			resultDisplay.data = "result : \n" + obj + '\n' + ObjectUtil.deepObjectToString(obj) + "\n";
		}
		/*ACG_METHOD*/
		
		private function errorHandler(obj:Object):void{
			resultDisplay.data = "error :  \n" +  ObjectUtil.deepObjectToString(obj) + "\n";
		}
	}
}