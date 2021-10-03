package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_177:Number = 0;
      
      private var var_178:Number = 0;
      
      private var var_2425:Number = 0;
      
      private var var_2427:Number = 0;
      
      private var var_2426:Number = 0;
      
      private var var_2422:Number = 0;
      
      private var var_450:int = 0;
      
      private var var_2423:int = 0;
      
      private var var_365:Array;
      
      private var var_2424:Boolean = false;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         this.var_365 = [];
         super();
         this._id = param1;
         this._x = param2;
         this.var_177 = param3;
         this.var_178 = param4;
         this.var_2425 = param5;
         this.var_450 = param6;
         this.var_2423 = param7;
         this.var_2427 = param8;
         this.var_2426 = param9;
         this.var_2422 = param10;
         this.var_2424 = param11;
         this.var_365 = param12;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get x() : Number
      {
         return this._x;
      }
      
      public function get y() : Number
      {
         return this.var_177;
      }
      
      public function get z() : Number
      {
         return this.var_178;
      }
      
      public function get localZ() : Number
      {
         return this.var_2425;
      }
      
      public function get targetX() : Number
      {
         return this.var_2427;
      }
      
      public function get targetY() : Number
      {
         return this.var_2426;
      }
      
      public function get targetZ() : Number
      {
         return this.var_2422;
      }
      
      public function get dir() : int
      {
         return this.var_450;
      }
      
      public function get dirHead() : int
      {
         return this.var_2423;
      }
      
      public function get isMoving() : Boolean
      {
         return this.var_2424;
      }
      
      public function get actions() : Array
      {
         return this.var_365.slice();
      }
   }
}
