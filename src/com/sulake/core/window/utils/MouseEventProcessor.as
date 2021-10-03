package com.sulake.core.window.utils
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContextStateListener;
   import com.sulake.core.window.WindowController;
   import com.sulake.core.window.components.IDesktopWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.enum.MouseCursorType;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowState;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.core.window.graphics.IWindowRenderer;
   import flash.display.BitmapData;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class MouseEventProcessor implements IEventProcessor, IDisposable
   {
      
      protected static var var_367:Array;
      
      protected static var var_320:Array;
      
      protected static var var_439:Point = new Point();
       
      
      protected var var_758:Point;
      
      protected var var_191:WindowController;
      
      protected var var_71:WindowController;
      
      protected var var_188:IWindowRenderer;
      
      protected var var_96:IDesktopWindow;
      
      protected var var_939:IWindowContextStateListener;
      
      private var _disposed:Boolean = false;
      
      public function MouseEventProcessor()
      {
         super();
         this.var_758 = new Point();
         if(var_367 == null)
         {
            var_367 = new Array();
            var_367[0] = MouseCursorType.const_374;
            var_367[1] = MouseCursorType.const_31;
            var_367[2] = MouseCursorType.const_374;
            var_367[3] = MouseCursorType.const_374;
            var_367[4] = MouseCursorType.const_374;
            var_367[5] = MouseCursorType.const_31;
            var_367[6] = MouseCursorType.const_374;
         }
         if(var_320 == null)
         {
            var_320 = new Array();
            var_320[0] = WindowState.const_90;
            var_320[1] = WindowState.const_89;
            var_320[2] = WindowState.const_93;
            var_320[3] = WindowState.const_69;
            var_320[4] = WindowState.const_56;
            var_320[5] = WindowState.const_97;
            var_320[6] = WindowState.const_87;
         }
      }
      
      public static function setMouseCursorByState(param1:uint, param2:uint) : void
      {
         var _loc3_:int = var_320.indexOf(param1);
         if(_loc3_ > -1)
         {
            var_367[_loc3_] = param2;
         }
      }
      
      public static function getMouseCursorByState(param1:uint) : uint
      {
         var _loc2_:int = 0;
         while(_loc2_-- > 0)
         {
            if((param1 & 0) > 0)
            {
               return var_367[_loc2_];
            }
         }
         return MouseCursorType.const_31;
      }
      
      protected static function convertMouseEventType(param1:MouseEvent, param2:IWindow, param3:IWindow) : WindowMouseEvent
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:Boolean = false;
         _loc5_ = new Point(param1.stageX,param1.stageY);
         param2.convertPointFromGlobalToLocalSpace(_loc5_);
         switch(param1.type)
         {
            case MouseEvent.MOUSE_MOVE:
               _loc4_ = "null";
               break;
            case MouseEvent.MOUSE_OVER:
               _loc4_ = "null";
               break;
            case MouseEvent.MOUSE_OUT:
               _loc4_ = "null";
               break;
            case MouseEvent.ROLL_OUT:
               _loc4_ = "null";
               break;
            case MouseEvent.ROLL_OVER:
               _loc4_ = "null";
               break;
            case MouseEvent.CLICK:
               _loc4_ = "null";
               break;
            case MouseEvent.DOUBLE_CLICK:
               _loc4_ = "null";
               break;
            case MouseEvent.MOUSE_DOWN:
               _loc4_ = "null";
               break;
            case MouseEvent.MOUSE_UP:
               _loc6_ = _loc5_.x > -1 && _loc5_.y > -1 && _loc5_.x < param2.width && _loc5_.y < param2.height;
               _loc4_ = !!_loc6_ ? "null" : WindowMouseEvent.const_259;
               break;
            case MouseEvent.MOUSE_WHEEL:
               _loc4_ = "null";
               break;
            default:
               _loc4_ = "null";
         }
         return WindowMouseEvent.allocate(_loc4_,param2,param3,_loc5_.x,_loc5_.y,param1.stageX,param1.stageY,param1.altKey,param1.ctrlKey,param1.shiftKey,param1.buttonDown,param1.delta);
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function dispose() : void
      {
         if(!this._disposed)
         {
            this._disposed = true;
         }
      }
      
      private function mouseIsOutsideStage(param1:MouseEvent) : Boolean
      {
         if(param1.stageX < 0 || param1.stageY < 0)
         {
            return true;
         }
         if(param1.stageX > this.var_96.width || param1.stageY > this.var_96.height)
         {
            return true;
         }
         return false;
      }
      
      public function process(param1:EventProcessorState, param2:IEventQueue) : void
      {
         var event:MouseEvent = null;
         var index:int = 0;
         var child:WindowController = null;
         var array:Array = null;
         var tempWindowEvent:WindowEvent = null;
         var roomViewer:WindowController = null;
         var window:IWindow = null;
         var temp:IWindow = null;
         var state:EventProcessorState = param1;
         var eventQueue:IEventQueue = param2;
         if(eventQueue.length == 0)
         {
            return;
         }
         this.var_96 = state.desktop;
         this.var_71 = state.var_1415 as WindowController;
         this.var_191 = state.var_1417 as WindowController;
         this.var_188 = state.renderer;
         this.var_939 = state.var_1416;
         eventQueue.begin();
         this.var_758.x = -1;
         this.var_758.y = -1;
         var mouseCursorType:int = 0;
         while(true)
         {
            event = eventQueue.next() as MouseEvent;
            if(event == null)
            {
               break;
            }
            if(event.stageX != this.var_758.x || event.stageY != this.var_758.y)
            {
               this.var_758.x = event.stageX;
               this.var_758.y = event.stageY;
               array = new Array();
               this.var_96.groupParameterFilteredChildrenUnderPoint(this.var_758,array,WindowParam.const_30);
               if(event.type == MouseEvent.MOUSE_UP && this.mouseIsOutsideStage(event))
               {
                  roomViewer = this.var_96.getChildAt(0) as WindowController;
                  if(roomViewer != null)
                  {
                     array.push(roomViewer);
                     Logger.log("Mouse up outside event fed back to room viewer");
                  }
               }
            }
            index = array != null ? int(array.length) : 0;
            if(index == 0)
            {
               if(event.type == MouseEvent.MOUSE_MOVE)
               {
                  if(this.var_71 != this.var_96 && !this.var_71.disposed)
                  {
                     this.var_71.getGlobalPosition(var_439);
                     tempWindowEvent = WindowMouseEvent.allocate(WindowMouseEvent.const_25,this.var_71,null,event.stageX - 0,event.stageY - 0,event.stageX,event.stageY,event.altKey,event.ctrlKey,event.shiftKey,event.buttonDown,event.delta);
                     this.var_71.update(this.var_71,tempWindowEvent);
                     this.var_71 = WindowController(this.var_96);
                     tempWindowEvent.recycle();
                  }
               }
               else if(event.type == MouseEvent.MOUSE_DOWN)
               {
                  window = this.var_96.getActiveWindow();
                  if(window)
                  {
                     window.deactivate();
                  }
               }
            }
            while(--index > -1)
            {
               child = this.passMouseEvent(WindowController(array[index]),event);
               if(child != null && child.visible)
               {
                  if(event.type == MouseEvent.MOUSE_MOVE)
                  {
                     if(child != this.var_71)
                     {
                        if(!this.var_71.disposed)
                        {
                           this.var_71.getGlobalPosition(var_439);
                           tempWindowEvent = WindowMouseEvent.allocate(WindowMouseEvent.const_25,this.var_71,child,event.stageX - 0,event.stageY - 0,event.stageX,event.stageY,event.altKey,event.ctrlKey,event.shiftKey,event.buttonDown,event.delta);
                           this.var_71.update(this.var_71,tempWindowEvent);
                           tempWindowEvent.recycle();
                        }
                        if(!child.disposed)
                        {
                           child.getGlobalPosition(var_439);
                           tempWindowEvent = WindowMouseEvent.allocate(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,child,null,event.stageX - 0,event.stageY - 0,event.stageX,event.stageY,event.altKey,event.ctrlKey,event.shiftKey,event.buttonDown,event.delta);
                           child.update(child,tempWindowEvent);
                           tempWindowEvent.recycle();
                        }
                        if(!child.disposed)
                        {
                           this.var_71 = child;
                        }
                     }
                  }
                  else if(event.type == MouseEvent.MOUSE_UP || event.type == MouseEvent.CLICK)
                  {
                     if(this.var_71 && !this.var_71.disposed)
                     {
                        if(this.var_939 != null)
                        {
                           this.var_939.mouseEventReceived(event.type,this.var_71);
                        }
                     }
                  }
                  temp = child.parent;
                  while(temp && !temp.disposed)
                  {
                     if(temp is IInputProcessorRoot)
                     {
                        tempWindowEvent = convertMouseEventType(event,temp,child);
                        IInputProcessorRoot(temp).process(tempWindowEvent);
                        tempWindowEvent.recycle();
                        break;
                     }
                     temp = temp.parent;
                  }
                  if(event.altKey)
                  {
                     if(this.var_71)
                     {
                        Logger.log("HOVER: " + this.var_71.name);
                     }
                  }
                  if(this.var_71 is IInteractiveWindow)
                  {
                     try
                     {
                        mouseCursorType = IInteractiveWindow(this.var_71).getMouseCursorByState(this.var_71.state);
                        if(mouseCursorType == MouseCursorType.const_31)
                        {
                           mouseCursorType = getMouseCursorByState(this.var_71.state);
                        }
                     }
                     catch(e:Error)
                     {
                        mouseCursorType = 0;
                     }
                  }
                  if(child != this.var_96)
                  {
                     event.stopPropagation();
                     eventQueue.remove();
                  }
                  break;
               }
            }
         }
         eventQueue.end();
         MouseCursorControl.type = mouseCursorType;
         state.desktop = this.var_96;
         state.var_1415 = this.var_71;
         state.var_1417 = this.var_191;
         state.renderer = this.var_188;
         state.var_1416 = this.var_939;
      }
      
      private function passMouseEvent(param1:WindowController, param2:MouseEvent, param3:Boolean = false) : WindowController
      {
         if(param1.disposed)
         {
            return null;
         }
         if(param1.testStateFlag(WindowState.const_87))
         {
            return null;
         }
         var _loc4_:Point = new Point(param2.stageX,param2.stageY);
         param1.convertPointFromGlobalToLocalSpace(_loc4_);
         if(param2.type == MouseEvent.MOUSE_UP)
         {
            if(param1 != this.var_191)
            {
               if(this.var_191 && !this.var_191.disposed)
               {
                  this.var_191.update(this.var_191,convertMouseEventType(new MouseEvent(MouseEvent.MOUSE_UP,false,true,param2.localX,param2.localY,null,param2.ctrlKey,param2.altKey,param2.shiftKey,param2.buttonDown,param2.delta),this.var_191,param1));
                  this.var_191 = null;
                  if(param1.disposed)
                  {
                     return null;
                  }
               }
            }
         }
         var _loc5_:BitmapData = this.var_188.getDrawBufferForRenderable(param1);
         if(!param1.validateLocalPointIntersection(_loc4_,_loc5_))
         {
            return null;
         }
         if(param1.testParamFlag(WindowParam.const_515))
         {
            if(param1.parent != null)
            {
               return this.passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         if(!param3)
         {
            switch(param2.type)
            {
               case MouseEvent.MOUSE_DOWN:
                  this.var_191 = param1;
                  break;
               case MouseEvent.CLICK:
                  if(this.var_191 != param1)
                  {
                     return null;
                  }
                  this.var_191 = null;
                  break;
               case MouseEvent.DOUBLE_CLICK:
                  if(this.var_191 != param1)
                  {
                     return null;
                  }
                  this.var_191 = null;
                  break;
            }
         }
         var _loc7_:WindowMouseEvent = convertMouseEventType(param2,param1,null);
         var _loc8_:Boolean = param1.update(param1,_loc7_);
         _loc7_.recycle();
         if(!_loc8_ && !param3)
         {
            if(param1.parent)
            {
               return this.passMouseEvent(WindowController(param1.parent),param2);
            }
         }
         return param1;
      }
   }
}
