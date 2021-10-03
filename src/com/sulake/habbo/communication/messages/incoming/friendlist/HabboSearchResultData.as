package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2309:int;
      
      private var var_1989:String;
      
      private var var_2665:String;
      
      private var var_2875:Boolean;
      
      private var var_2877:Boolean;
      
      private var var_2876:int;
      
      private var var_2666:String;
      
      private var var_2878:String;
      
      private var var_1874:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2309 = param1.readInteger();
         this.var_1989 = param1.readString();
         this.var_2665 = param1.readString();
         this.var_2875 = param1.readBoolean();
         this.var_2877 = param1.readBoolean();
         param1.readString();
         this.var_2876 = param1.readInteger();
         this.var_2666 = param1.readString();
         this.var_2878 = param1.readString();
         this.var_1874 = param1.readString();
      }
      
      public function get avatarId() : int
      {
         return this.var_2309;
      }
      
      public function get avatarName() : String
      {
         return this.var_1989;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_2665;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2875;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2877;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2876;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_2666;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2878;
      }
      
      public function get realName() : String
      {
         return this.var_1874;
      }
   }
}
