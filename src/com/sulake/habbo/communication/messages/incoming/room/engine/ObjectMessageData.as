package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_177:Number = 0;
      
      private var var_178:Number = 0;
      
      private var var_450:int = 0;
      
      private var var_526:int = 0;
      
      private var var_626:int = 0;
      
      private var _type:int = 0;
      
      private var var_3135:String = "";
      
      private var var_2192:int = -1;
      
      private var _state:int = 0;
      
      private var _data:String = "";
      
      private var var_2552:int = 0;
      
      private var var_2614:Boolean;
      
      private var var_2694:String = null;
      
      private var var_199:Boolean = false;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         this._id = param1;
      }
      
      public function setReadOnly() : void
      {
         this.var_199 = true;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function set x(param1:Number) : void
      {
         if(!this.var_199)
         {
            this._x = param1;
         }
      }
      
      public function get y() : Number
      {
         return this.var_177;
      }
      
      public function set y(param1:Number) : void
      {
         if(!this.var_199)
         {
            this.var_177 = param1;
         }
      }
      
      public function get z() : Number
      {
         return this.var_178;
      }
      
      public function set z(param1:Number) : void
      {
         if(!this.var_199)
         {
            this.var_178 = param1;
         }
      }
      
      public function get dir() : int
      {
         return this.var_450;
      }
      
      public function set dir(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_450 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return this.var_526;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_526 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return this.var_626;
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_626 = param1;
         }
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function set type(param1:int) : void
      {
         if(!this.var_199)
         {
            this._type = param1;
         }
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function set state(param1:int) : void
      {
         if(!this.var_199)
         {
            this._state = param1;
         }
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         if(!this.var_199)
         {
            this._data = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return this.var_2694;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2694 = param1;
         }
      }
      
      public function get extra() : int
      {
         return this.var_2192;
      }
      
      public function set extra(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2192 = param1;
         }
      }
      
      public function get expiryTime() : int
      {
         return this.var_2552;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2552 = param1;
         }
      }
      
      public function get knownAsUsable() : Boolean
      {
         return this.var_2614;
      }
      
      public function set knownAsUsable(param1:Boolean) : void
      {
         this.var_2614 = param1;
      }
   }
}
