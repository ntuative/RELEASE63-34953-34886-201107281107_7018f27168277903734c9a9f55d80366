package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   
   public class WindowEvent
   {
      
      public static const const_1847:String = "WE_DESTROY";
      
      public static const const_330:String = "WE_DESTROYED";
      
      public static const const_1857:String = "WE_OPEN";
      
      public static const const_1832:String = "WE_OPENED";
      
      public static const const_1983:String = "WE_CLOSE";
      
      public static const const_1954:String = "WE_CLOSED";
      
      public static const const_1926:String = "WE_FOCUS";
      
      public static const const_376:String = "WE_FOCUSED";
      
      public static const const_1811:String = "WE_UNFOCUS";
      
      public static const const_1818:String = "WE_UNFOCUSED";
      
      public static const const_1925:String = "WE_ACTIVATE";
      
      public static const const_501:String = "WE_ACTIVATED";
      
      public static const const_1985:String = "WE_DEACTIVATE";
      
      public static const const_569:String = "WE_DEACTIVATED";
      
      public static const const_348:String = "WE_SELECT";
      
      public static const const_48:String = "WE_SELECTED";
      
      public static const const_645:String = "WE_UNSELECT";
      
      public static const const_448:String = "WE_UNSELECTED";
      
      public static const const_1938:String = "WE_LOCK";
      
      public static const const_2029:String = "WE_LOCKED";
      
      public static const const_1976:String = "WE_UNLOCK";
      
      public static const const_1779:String = "WE_UNLOCKED";
      
      public static const const_809:String = "WE_ENABLE";
      
      public static const const_250:String = "WE_ENABLED";
      
      public static const const_897:String = "WE_DISABLE";
      
      public static const const_309:String = "WE_DISABLED";
      
      public static const WINDOW_EVENT_RELOCATE:String = "WE_RELOCATE";
      
      public static const const_400:String = "WE_RELOCATED";
      
      public static const const_1425:String = "WE_RESIZE";
      
      public static const const_42:String = "WE_RESIZED";
      
      public static const const_1968:String = "WE_MINIMIZE";
      
      public static const const_1801:String = "WE_MINIMIZED";
      
      public static const const_1859:String = "WE_MAXIMIZE";
      
      public static const const_1871:String = "WE_MAXIMIZED";
      
      public static const const_1942:String = "WE_RESTORE";
      
      public static const const_1932:String = "WE_RESTORED";
      
      public static const const_600:String = "WE_CHILD_ADDED";
      
      public static const const_428:String = "WE_CHILD_REMOVED";
      
      public static const const_233:String = "WE_CHILD_RELOCATED";
      
      public static const const_152:String = "WE_CHILD_RESIZED";
      
      public static const const_361:String = "WE_CHILD_ACTIVATED";
      
      public static const const_500:String = "WE_PARENT_ADDED";
      
      public static const const_1891:String = "WE_PARENT_REMOVED";
      
      public static const const_1965:String = "WE_PARENT_RELOCATED";
      
      public static const const_548:String = "WE_PARENT_RESIZED";
      
      public static const const_1219:String = "WE_PARENT_ACTIVATED";
      
      public static const const_156:String = "WE_OK";
      
      public static const const_679:String = "WE_CANCEL";
      
      public static const const_118:String = "WE_CHANGE";
      
      public static const const_590:String = "WE_SCROLL";
      
      public static const UNKNOWN:String = "";
      
      private static const POOL:Array = [];
       
      
      protected var _type:String;
      
      protected var _window:IWindow;
      
      protected var var_762:IWindow;
      
      protected var var_1159:Boolean;
      
      protected var var_518:Boolean;
      
      protected var var_170:Boolean;
      
      protected var var_763:Array;
      
      public function WindowEvent()
      {
         super();
      }
      
      public static function allocate(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false) : WindowEvent
      {
         var _loc5_:WindowEvent = POOL.length > 0 ? POOL.pop() : new WindowEvent();
         _loc5_._type = param1;
         _loc5_._window = param2;
         _loc5_.var_762 = param3;
         _loc5_.var_518 = param4;
         _loc5_.var_170 = false;
         _loc5_.var_763 = POOL;
         return _loc5_;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get target() : IWindow
      {
         return this._window;
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get related() : IWindow
      {
         return this.var_762;
      }
      
      public function get cancelable() : Boolean
      {
         return this.var_518;
      }
      
      public function recycle() : void
      {
         if(this.var_170)
         {
            throw new Error("Event already recycled!");
         }
         this.var_762 = null;
         this._window = null;
         this.var_170 = true;
         this.var_1159 = false;
         this.var_763.push(this);
      }
      
      public function clone() : WindowEvent
      {
         return allocate(this._type,this.window,this.related,this.cancelable);
      }
      
      public function preventDefault() : void
      {
         this.preventWindowOperation();
      }
      
      public function isDefaultPrevented() : Boolean
      {
         return this.var_1159;
      }
      
      public function preventWindowOperation() : void
      {
         if(this.cancelable)
         {
            this.var_1159 = true;
            return;
         }
         throw new Error("Attempted to prevent window operation that is not cancelable!");
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return this.var_1159;
      }
      
      public function stopPropagation() : void
      {
         this.var_1159 = true;
      }
      
      public function stopImmediatePropagation() : void
      {
         this.var_1159 = true;
      }
      
      public function toString() : String
      {
         return "WindowEvent { type: " + this._type + " cancelable: " + this.var_518 + " window: " + this._window + " }";
      }
   }
}
