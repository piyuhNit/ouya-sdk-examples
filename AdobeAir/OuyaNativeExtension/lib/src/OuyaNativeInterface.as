package
{
	import flash.external.ExtensionContext;
	
	public class OuyaNativeInterface
	{
		private var context:ExtensionContext;
		
		public function OuyaNativeInterface()
		{
			if (!context) {
				context = ExtensionContext.createExtensionContext("tv.ouya.sdk.ouyanativecontext", null);
			}
		}
		
		public function OuyaInit():void {
			context.call("ouyaInit");
		}
		
		public function IsAnyConnected():Boolean {
			return context.call("ouyaIsAnyConnected");
		}
		
		public function IsConnected(playerNum:int):Boolean {
			return context.call("ouyaIsConnected", playerNum);
		}
		
		public function GetAxis(playerNum:int, axis:int):Number {
			return context.call("ouyaGetAxis", playerNum, axis) as Number;
		}
		
		public function GetAnyButton(button:int):Boolean {
			return context.call("ouyaGetAnyButton", button);
		}
		
		public function GetAnyButtonDown(button:int):Boolean {
			return context.call("ouyaGetAnyButtonDown", button);
		}
		
		public function GetAnyButtonUp(button:int):Boolean {
			return context.call("ouyaGetAnyButtonUp", button);
		}
		
		public function GetButton(playerNum:int, button:int):Boolean {
			return context.call("ouyaGetButton", button);
		}

		public function GetButtonDown(playerNum:int, button:int):Boolean {
			return context.call("ouyaGetButtonDown", button);
		}
		
		public function GetButtonUp(playerNum:int, button:int):Boolean {
			return context.call("ouyaGetButtonUp", button);
		}
		
		public function ClearButtonStatesPressedReleased():Boolean {
			return context.call("ouyaClearButtonStatesPressedReleased");
		}
	}
}