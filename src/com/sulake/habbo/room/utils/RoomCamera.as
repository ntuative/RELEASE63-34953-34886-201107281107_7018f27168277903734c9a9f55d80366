package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_1730:Number = 12;
       
      
      private var var_3028:int = -1;
      
      private var var_3025:int = -2;
      
      private var var_233:Vector3d = null;
      
      private var var_1399:Number = 0;
      
      private var var_1701:Number = 0;
      
      private var var_2202:Boolean = false;
      
      private var var_211:Vector3d = null;
      
      private var var_2201:Vector3d;
      
      private var var_3024:Boolean = false;
      
      private var var_3019:Boolean = false;
      
      private var var_3022:Boolean = false;
      
      private var var_3026:Boolean = false;
      
      private var var_3021:int = 0;
      
      private var var_3020:int = 0;
      
      private var _scale:int = 0;
      
      private var var_3027:int = 0;
      
      private var var_3023:int = 0;
      
      private var var_1852:int = -1;
      
      private var var_2203:int = 0;
      
      private var var_2204:Boolean = false;
      
      public function RoomCamera()
      {
         this.var_2201 = new Vector3d();
         super();
      }
      
      public function get location() : IVector3d
      {
         return this.var_211;
      }
      
      public function get targetId() : int
      {
         return this.var_3028;
      }
      
      public function get targetCategory() : int
      {
         return this.var_3025;
      }
      
      public function get targetObjectLoc() : IVector3d
      {
         return this.var_2201;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return this.var_3024;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return this.var_3019;
      }
      
      public function get centeredLocX() : Boolean
      {
         return this.var_3022;
      }
      
      public function get centeredLocY() : Boolean
      {
         return this.var_3026;
      }
      
      public function get screenWd() : int
      {
         return this.var_3021;
      }
      
      public function get screenHt() : int
      {
         return this.var_3020;
      }
      
      public function get scale() : int
      {
         return this._scale;
      }
      
      public function get roomWd() : int
      {
         return this.var_3027;
      }
      
      public function get roomHt() : int
      {
         return this.var_3023;
      }
      
      public function get geometryUpdateId() : int
      {
         return this.var_1852;
      }
      
      public function get isMoving() : Boolean
      {
         if(this.var_233 != null && this.var_211 != null)
         {
            return true;
         }
         return false;
      }
      
      public function set targetId(param1:int) : void
      {
         this.var_3028 = param1;
      }
      
      public function set targetObjectLoc(param1:IVector3d) : void
      {
         this.var_2201.assign(param1);
      }
      
      public function set targetCategory(param1:int) : void
      {
         this.var_3025 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         this.var_3024 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         this.var_3019 = param1;
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         this.var_3022 = param1;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         this.var_3026 = param1;
      }
      
      public function set screenWd(param1:int) : void
      {
         this.var_3021 = param1;
      }
      
      public function set screenHt(param1:int) : void
      {
         this.var_3020 = param1;
      }
      
      public function set scale(param1:int) : void
      {
         if(this._scale != param1)
         {
            this._scale = param1;
            this.var_2204 = true;
         }
      }
      
      public function set roomWd(param1:int) : void
      {
         this.var_3027 = param1;
      }
      
      public function set roomHt(param1:int) : void
      {
         this.var_3023 = param1;
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         this.var_1852 = param1;
      }
      
      public function set target(param1:IVector3d) : void
      {
         var _loc2_:* = null;
         if(this.var_233 == null)
         {
            this.var_233 = new Vector3d();
         }
         if(this.var_233.x != param1.x || this.var_233.y != param1.y || this.var_233.z != param1.z)
         {
            this.var_233.assign(param1);
            this.var_2203 = 0;
            _loc2_ = Vector3d.dif(this.var_233,this.var_211);
            this.var_1399 = _loc2_.length;
            this.var_2202 = true;
         }
      }
      
      public function dispose() : void
      {
         this.var_233 = null;
         this.var_211 = null;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(this.var_211 != null)
         {
            return;
         }
         this.var_211 = new Vector3d();
         this.var_211.assign(param1);
      }
      
      public function resetLocation(param1:IVector3d) : void
      {
         if(this.var_211 == null)
         {
            this.var_211 = new Vector3d();
         }
         this.var_211.assign(param1);
      }
      
      public function update(param1:uint, param2:Number) : void
      {
         var _loc3_:* = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         if(this.var_233 != null && this.var_211 != null)
         {
            ++this.var_2203;
            if(this.var_2204)
            {
               this.var_2204 = false;
               this.var_211 = this.var_233;
               this.var_233 = null;
               return;
            }
            _loc3_ = Vector3d.dif(this.var_233,this.var_211);
            if(_loc3_.length > this.var_1399)
            {
               this.var_1399 = _loc3_.length;
            }
            if(_loc3_.length <= param2)
            {
               this.var_211 = this.var_233;
               this.var_233 = null;
               this.var_1701 = 0;
            }
            else
            {
               _loc4_ = Math.sin(0 * _loc3_.length / this.var_1399);
               _loc5_ = param2 * 0.5;
               _loc6_ = this.var_1399 / const_1730;
               _loc7_ = _loc5_ + (_loc6_ - _loc5_) * _loc4_;
               if(this.var_2202)
               {
                  if(_loc7_ < this.var_1701)
                  {
                     _loc7_ = this.var_1701;
                     if(_loc7_ > _loc3_.length)
                     {
                        _loc7_ = _loc3_.length;
                     }
                  }
                  else
                  {
                     this.var_2202 = false;
                  }
               }
               this.var_1701 = _loc7_;
               _loc3_.div(_loc3_.length);
               _loc3_.mul(_loc7_);
               this.var_211 = Vector3d.sum(this.var_211,_loc3_);
            }
         }
      }
      
      public function reset() : void
      {
         this.var_1852 = -1;
      }
   }
}
