package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1177:String = "M";
      
      public static const const_2055:String = "F";
       
      
      private var _id:int = 0;
      
      private var _x:Number = 0;
      
      private var var_177:Number = 0;
      
      private var var_178:Number = 0;
      
      private var var_450:int = 0;
      
      private var _name:String = "";
      
      private var var_1718:int = 0;
      
      private var var_999:String = "";
      
      private var var_699:String = "";
      
      private var var_2523:String = "";
      
      private var var_2406:int;
      
      private var var_2525:int = 0;
      
      private var var_2521:String = "";
      
      private var var_2524:int = 0;
      
      private var var_2522:int = 0;
      
      private var var_2526:String = "";
      
      private var var_199:Boolean = false;
      
      public function UserMessageData(param1:int)
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
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         if(!this.var_199)
         {
            this._name = param1;
         }
      }
      
      public function get userType() : int
      {
         return this.var_1718;
      }
      
      public function set userType(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_1718 = param1;
         }
      }
      
      public function get sex() : String
      {
         return this.var_999;
      }
      
      public function set sex(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_999 = param1;
         }
      }
      
      public function get figure() : String
      {
         return this.var_699;
      }
      
      public function set figure(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_699 = param1;
         }
      }
      
      public function get custom() : String
      {
         return this.var_2523;
      }
      
      public function set custom(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2523 = param1;
         }
      }
      
      public function get achievementScore() : int
      {
         return this.var_2406;
      }
      
      public function set achievementScore(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2406 = param1;
         }
      }
      
      public function get webID() : int
      {
         return this.var_2525;
      }
      
      public function set webID(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2525 = param1;
         }
      }
      
      public function get groupID() : String
      {
         return this.var_2521;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2521 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return this.var_2524;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2524 = param1;
         }
      }
      
      public function get xp() : int
      {
         return this.var_2522;
      }
      
      public function set xp(param1:int) : void
      {
         if(!this.var_199)
         {
            this.var_2522 = param1;
         }
      }
      
      public function get subType() : String
      {
         return this.var_2526;
      }
      
      public function set subType(param1:String) : void
      {
         if(!this.var_199)
         {
            this.var_2526 = param1;
         }
      }
   }
}
