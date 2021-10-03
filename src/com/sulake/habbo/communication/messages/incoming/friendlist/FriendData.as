package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class FriendData
   {
       
      
      private var _id:int;
      
      private var _name:String;
      
      private var var_1056:int;
      
      private var var_848:Boolean;
      
      private var var_1978:Boolean;
      
      private var var_699:String;
      
      private var var_1475:int;
      
      private var var_1873:String;
      
      private var var_1872:String;
      
      private var var_1874:String;
      
      private var var_2637:String;
      
      public function FriendData(param1:IMessageDataWrapper)
      {
         super();
         this._id = param1.readInteger();
         this._name = param1.readString();
         this.var_1056 = param1.readInteger();
         this.var_848 = param1.readBoolean();
         this.var_1978 = param1.readBoolean();
         this.var_699 = param1.readString();
         this.var_1475 = param1.readInteger();
         this.var_1873 = param1.readString();
         this.var_1872 = param1.readString();
         this.var_1874 = param1.readString();
         this.var_2637 = param1.readString();
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
      
      public function get followingAllowed() : Boolean
      {
         return this.var_1978;
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
      
      public function get facebookId() : String
      {
         return this.var_2637;
      }
   }
}
