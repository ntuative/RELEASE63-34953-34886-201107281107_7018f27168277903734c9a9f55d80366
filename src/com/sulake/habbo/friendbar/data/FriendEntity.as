package com.sulake.habbo.friendbar.data
{
   public class FriendEntity implements IFriendEntity
   {
      
      private static var var_1238:int = 0;
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1056:int;
      
      private var var_848:Boolean;
      
      private var _allowFollow:Boolean;
      
      private var var_699:String;
      
      private var var_1475:int;
      
      private var var_1873:String;
      
      private var var_1872:String;
      
      private var var_1874:String;
      
      private var var_993:Vector.<FriendNotification>;
      
      private var var_2494:int = -1;
      
      public function FriendEntity(param1:int, param2:String, param3:String, param4:String, param5:int, param6:Boolean, param7:Boolean, param8:String, param9:int, param10:String)
      {
         super();
         this._id = param1;
         this._name = param2;
         this.var_1874 = param3;
         this.var_1873 = param4;
         this.var_1056 = param5;
         this.var_848 = param6;
         this._allowFollow = param7;
         this.var_699 = param8;
         this.var_1475 = param9;
         this.var_1872 = param10;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get gender() : int
      {
         return this.var_1056;
      }
      
      public function get online() : Boolean
      {
         return this.var_848;
      }
      
      public function get allowFollow() : Boolean
      {
         return this._allowFollow;
      }
      
      public function get figure() : String
      {
         return this.var_699;
      }
      
      public function get categoryId() : int
      {
         return this.var_1475;
      }
      
      public function get motto() : String
      {
         return this.var_1873;
      }
      
      public function get lastAccess() : String
      {
         return this.var_1872;
      }
      
      public function get realName() : String
      {
         return this.var_1874;
      }
      
      public function get logEventId() : int
      {
         return this.var_2494;
      }
      
      public function get notifications() : Vector.<FriendNotification>
      {
         if(!this.var_993)
         {
            this.var_993 = new Vector.<FriendNotification>();
         }
         return this.var_993;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set gender(param1:int) : void
      {
         this.var_1056 = param1;
      }
      
      public function set online(param1:Boolean) : void
      {
         this.var_848 = param1;
      }
      
      public function set allowFollow(param1:Boolean) : void
      {
         this._allowFollow = param1;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_699 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1475 = param1;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1873 = param1;
      }
      
      public function set lastAccess(param1:String) : void
      {
         this.var_1872 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1874 = param1;
      }
      
      public function set logEventId(param1:int) : void
      {
         this.var_2494 = param1;
      }
      
      public function getNextLogEventId() : int
      {
         return ++var_1238;
      }
   }
}
