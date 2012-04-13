package
{

	
	import fla.ShowServiceButton;
	
	import flash.display.MovieClip;
	import flash.display.Sprite;
	import flash.display.StageScaleMode;
	import flash.events.MouseEvent;
	import flash.net.NetConnection;
	/*ACG_SERVICE*/
	import org.silexlabs.amfphp.clientgenerator.generated.ui._SERVICE_ClientUi;/*ACG_SERVICE*/
	import org.silexlabs.amfphp.clientgenerator.ui.elements.ILabel;
	import org.silexlabs.amfphp.clientgenerator.ui.elements.Link;
	
	public class AmfphpFlashClient extends MovieClip
	{
		private static const PADDING:int = 20;
		private static const HEADER_HEIGHT:int = 100;

		private var _serviceUi:Sprite;
		private var _maxServiceUiWidth:Number;
		/*ACG_SERVICE*/
		public var show_SERVICE_UiBtn:ILabel;
		/*ACG_SERVICE*/
		public function AmfphpFlashClient()
		{
			var exchangeLink:Link = new Link();
			
			var layoutMultiplier:int = 0;
			_maxServiceUiWidth = 0;
			
			/*ACG_SERVICE*/
			var show_SERVICE_UiBtn:ShowServiceButton = new ShowServiceButton();
			show_SERVICE_UiBtn.displayObject.x = PADDING;
			show_SERVICE_UiBtn.displayObject.y = HEADER_HEIGHT + (show_SERVICE_UiBtn.displayObject.height + PADDING) * layoutMultiplier;
			show_SERVICE_UiBtn.label = '_SERVICE_';
			show_SERVICE_UiBtn.addEventListener(MouseEvent.CLICK, show_SERVICE_UiBtnClickHandler);
			addChild(show_SERVICE_UiBtn);
			layoutMultiplier++;
			if(show_SERVICE_UiBtn.width > _maxServiceUiWidth){
				_maxServiceUiWidth = show_SERVICE_UiBtn.width; 
			}
			/*ACG_SERVICE*/
		}
		
		private function showServiceUi(newUi:Sprite):void{
			if(_serviceUi){
				removeChild(_serviceUi);
			}
			_serviceUi = newUi;
			_serviceUi.x = _maxServiceUiWidth + 2 * PADDING;
			_serviceUi.y = HEADER_HEIGHT;
			addChild(_serviceUi);
		}
		
		/*ACG_SERVICE*/		
		private function show_SERVICE_UiBtnClickHandler(event:MouseEvent):void{
			showServiceUi(new _SERVICE_ClientUi());	
		}
		/*ACG_SERVICE*/
		
	}
}