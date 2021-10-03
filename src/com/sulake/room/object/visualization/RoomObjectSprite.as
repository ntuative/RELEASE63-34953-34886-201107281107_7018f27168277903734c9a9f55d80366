package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1305:int = 0;
       
      
      private var var_483:BitmapData = null;
      
      private var var_2610:String = "";
      
      private var var_359:Boolean = true;
      
      private var var_2510:String = "";
      
      private var var_2351:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_2107:String;
      
      private var var_1679:Boolean = false;
      
      private var var_1680:Boolean = false;
      
      private var _offset:Point;
      
      private var var_217:int = 0;
      
      private var _height:int = 0;
      
      private var var_1194:Number = 0;
      
      private var var_2508:Boolean = false;
      
      private var var_2897:Boolean = true;
      
      private var var_2509:Boolean = false;
      
      private var _updateID:int = 0;
      
      private var var_2674:int = 0;
      
      private var var_2898:Array = null;
      
      public function RoomObjectSprite()
      {
         this.var_2107 = BlendMode.NORMAL;
         this._offset = new Point(0,0);
         super();
         this.var_2674 = var_1305++;
      }
      
      public function dispose() : void
      {
         this.var_483 = null;
         this.var_217 = 0;
         this._height = 0;
      }
      
      public function get asset() : BitmapData
      {
         return this.var_483;
      }
      
      public function get assetName() : String
      {
         return this.var_2610;
      }
      
      public function get visible() : Boolean
      {
         return this.var_359;
      }
      
      public function get tag() : String
      {
         return this.var_2510;
      }
      
      public function get alpha() : int
      {
         return this.var_2351;
      }
      
      public function get color() : int
      {
         return this._color;
      }
      
      public function get blendMode() : String
      {
         return this.var_2107;
      }
      
      public function get flipV() : Boolean
      {
         return this.var_1680;
      }
      
      public function get flipH() : Boolean
      {
         return this.var_1679;
      }
      
      public function get offsetX() : int
      {
         return this._offset.x;
      }
      
      public function get offsetY() : int
      {
         return this._offset.y;
      }
      
      public function get width() : int
      {
         return this.var_217;
      }
      
      public function get height() : int
      {
         return this._height;
      }
      
      public function get relativeDepth() : Number
      {
         return this.var_1194;
      }
      
      public function get varyingDepth() : Boolean
      {
         return this.var_2508;
      }
      
      public function get capturesMouse() : Boolean
      {
         return this.var_2897;
      }
      
      public function get clickHandling() : Boolean
      {
         return this.var_2509;
      }
      
      public function get instanceId() : int
      {
         return this.var_2674;
      }
      
      public function get updateId() : int
      {
         return this._updateID;
      }
      
      public function get filters() : Array
      {
         return this.var_2898;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            this.var_217 = param1.width;
            this._height = param1.height;
         }
         this.var_483 = param1;
         ++this._updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         this.var_2610 = param1;
         ++this._updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this.var_359 = param1;
         ++this._updateID;
      }
      
      public function set tag(param1:String) : void
      {
         this.var_2510 = param1;
         ++this._updateID;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         this.var_2351 = param1;
         ++this._updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         this._color = param1;
         ++this._updateID;
      }
      
      public function set blendMode(param1:String) : void
      {
         this.var_2107 = param1;
         ++this._updateID;
      }
      
      public function set filters(param1:Array) : void
      {
         this.var_2898 = param1;
         ++this._updateID;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         this.var_1679 = param1;
         ++this._updateID;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         this.var_1680 = param1;
         ++this._updateID;
      }
      
      public function set offsetX(param1:int) : void
      {
         this._offset.x = param1;
         ++this._updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         this._offset.y = param1;
         ++this._updateID;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         this.var_1194 = param1;
         ++this._updateID;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         this.var_2508 = param1;
         ++this._updateID;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         this.var_2897 = param1;
         ++this._updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         this.var_2509 = param1;
         ++this._updateID;
      }
   }
}
