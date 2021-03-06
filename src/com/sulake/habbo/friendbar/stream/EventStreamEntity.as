package com.sulake.habbo.friendbar.stream
{
   import com.sulake.core.assets.AssetLoaderStruct;
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.assets.loaders.AssetLoaderEvent;
   import com.sulake.core.localization.ILocalization;
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IBitmapWrapperWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.friendbar.utils.LinkResolver;
   import com.sulake.habbo.friendbar.utils.LinkTarget;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import flash.display.BitmapData;
   import flash.net.URLRequest;
   
   public class EventStreamEntity implements IDisposable
   {
      
      public static var name_6:IWindowContainer;
      
      public static var var_2237:IHabboLocalizationManager;
      
      public static var ASSETS:IAssetLibrary;
      
      private static const const_481:Vector.<EventStreamEntity> = new Vector.<EventStreamEntity>();
      
      private static const const_1117:String = "title";
      
      private static const const_1113:String = "message";
      
      private static const LINK:String = "link";
      
      private static const TEXT:String = "text";
      
      private static const const_1643:String = "time";
      
      private static const const_317:String = "canvas";
      
      private static const const_1642:String = "minutes";
      
      private static const const_1644:String = "hours";
      
      private static const const_1641:String = "days";
       
      
      private var _window:IWindowContainer;
      
      private var _disposed:Boolean = false;
      
      private var var_170:Boolean = false;
      
      private var var_772:LinkTarget;
      
      private var var_1617:int;
      
      private var var_2063:String;
      
      public function EventStreamEntity()
      {
         super();
         this._window = name_6.clone() as IWindowContainer;
         this._window.findChildByName(LINK).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onLinkClicked);
      }
      
      public static function allocate() : EventStreamEntity
      {
         var _loc1_:EventStreamEntity = false ? const_481.pop() : new EventStreamEntity();
         _loc1_.var_170 = false;
         return _loc1_;
      }
      
      public function set color(param1:uint) : void
      {
         this._window.color = param1;
      }
      
      public function get color() : uint
      {
         return !!this._window ? uint(this._window.color) : uint(0);
      }
      
      public function set title(param1:String) : void
      {
         this._window.findChildByName(const_1117).caption = param1;
      }
      
      public function get title() : String
      {
         return !!this._window ? this._window.findChildByName(const_1117).caption : null;
      }
      
      public function set message(param1:String) : void
      {
         this._window.findChildByName(const_1113).caption = param1;
      }
      
      public function get message() : String
      {
         return !!this._window ? this._window.findChildByName(const_1113).caption : null;
      }
      
      public function set linkTarget(param1:LinkTarget) : void
      {
         this.var_772 = param1;
         var _loc2_:IWindowContainer = IWindowContainer(this._window.findChildByName(LINK));
         if(this.var_772.type == LinkTarget.NONE)
         {
            _loc2_.visible = false;
         }
         else
         {
            _loc2_.visible = true;
            _loc2_.getChildByName(TEXT).caption = param1.text;
         }
      }
      
      public function get linkTarget() : LinkTarget
      {
         return this.var_772;
      }
      
      public function set imageFilePath(param1:String) : void
      {
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(param1 != this.var_2063)
         {
            this.var_2063 = param1;
            _loc2_ = ASSETS.getAssetByName(param1);
            if(_loc2_)
            {
               this.image = _loc2_.content as BitmapData;
            }
            else
            {
               _loc3_ = ASSETS.loadAssetFromFile(param1,new URLRequest(param1));
               _loc3_.addEventListener(AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE,this.onImageFileLoaded);
               _loc3_.addEventListener(AssetLoaderEvent.const_41,this.onImageFileLoaded);
            }
         }
      }
      
      public function set image(param1:BitmapData) : void
      {
         var _loc2_:* = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         if(!this.disposed && this._window)
         {
            _loc2_ = this._window.findChildByName(const_317) as IBitmapWrapperWindow;
            _loc3_ = _loc2_.x + _loc2_.width / 2;
            _loc4_ = _loc2_.y + _loc2_.height / 2;
            _loc2_.bitmap = param1;
            _loc2_.x = _loc3_ - param1.width / 2;
            _loc2_.y = _loc4_ - param1.height / 2;
            _loc2_.width = param1.width;
            _loc2_.height = param1.height;
         }
      }
      
      public function get window() : IWindow
      {
         return this._window;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get recycled() : Boolean
      {
         return this.var_170;
      }
      
      public function set minutesElapsed(param1:int) : void
      {
         this.var_1617 = param1;
         var _loc2_:String = const_1642;
         if(this.var_1617 >= 1440)
         {
            _loc2_ = const_1641;
            param1 /= 1440;
         }
         else if(this.var_1617 >= 60)
         {
            _loc2_ = const_1644;
            param1 /= 60;
         }
         var _loc3_:ILocalization = var_2237.getLocalization("friendbar.stream." + _loc2_ + ".ago");
         this._window.findChildByName(const_1643).caption = !!_loc3_ ? _loc3_.raw.replace("%value%",String(param1)) : "...?";
      }
      
      public function get minutesElapsed() : int
      {
         return this.var_1617;
      }
      
      public function recycle() : void
      {
         if(!this.var_170)
         {
            if(!this._disposed)
            {
               this._window.parent = null;
               IBitmapWrapperWindow(this._window.findChildByName(const_317)).bitmap = null;
               this.var_170 = true;
            }
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            if(this._window)
            {
               this._window.findChildByName(LINK).removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onLinkClicked);
               this._window.dispose();
               this._window = null;
            }
            if(this.var_170)
            {
               const_481.splice(const_481.indexOf(this),1);
               this.var_170 = false;
            }
            this._disposed = true;
         }
      }
      
      private function onLinkClicked(param1:WindowMouseEvent) : void
      {
         LinkResolver.open(this.var_772);
      }
      
      private function onImageFileLoaded(param1:AssetLoaderEvent) : void
      {
         if(param1.type == AssetLoaderEvent.ASSET_LOADER_EVENT_COMPLETE)
         {
            this.image = ASSETS.getAssetByName(this.var_2063).content as BitmapData;
         }
      }
   }
}
