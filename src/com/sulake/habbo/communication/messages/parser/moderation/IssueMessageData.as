package com.sulake.habbo.communication.messages.parser.moderation
{
   public class IssueMessageData
   {
      
      public static const const_193:int = 1;
      
      public static const const_442:int = 2;
      
      public static const const_1836:int = 3;
       
      
      private var var_2535:int;
      
      private var _state:int;
      
      private var var_1475:int;
      
      private var _reportedCategoryId:int;
      
      private var var_1913:int;
      
      private var _priority:int;
      
      private var var_2787:int = 0;
      
      private var var_2786:int;
      
      private var var_2788:String;
      
      private var var_1664:int;
      
      private var var_2128:String;
      
      private var var_2622:int;
      
      private var var_2791:String;
      
      private var _message:String;
      
      private var var_2442:int;
      
      private var var_1012:String;
      
      private var var_1592:int;
      
      private var var_2790:String;
      
      private var var_379:int;
      
      private var var_2785:String;
      
      private var var_2514:String;
      
      private var var_2789:int;
      
      private var var_2641:int;
      
      public function IssueMessageData(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:String, param9:int, param10:String, param11:int, param12:String, param13:String, param14:int, param15:String, param16:int, param17:String, param18:int, param19:String, param20:String, param21:int, param22:int)
      {
         super();
         this.var_2535 = param1;
         this._state = param2;
         this.var_1475 = param3;
         this._reportedCategoryId = param4;
         this.var_1913 = param5;
         this._priority = param6;
         this.var_2786 = param7;
         this.var_2788 = param8;
         this.var_1664 = param9;
         this.var_2128 = param10;
         this.var_2622 = param11;
         this.var_2791 = param12;
         this._message = param13;
         this.var_2442 = param14;
         this.var_1012 = param15;
         this.var_1592 = param16;
         this.var_2790 = param17;
         this.var_379 = param18;
         this.var_2785 = param19;
         this.var_2514 = param20;
         this.var_2789 = param21;
         this.var_2641 = param22;
      }
      
      public function get issueId() : int
      {
         return this.var_2535;
      }
      
      public function get state() : int
      {
         return this._state;
      }
      
      public function get categoryId() : int
      {
         return this.var_1475;
      }
      
      public function get reportedCategoryId() : int
      {
         return this._reportedCategoryId;
      }
      
      public function get timeStamp() : int
      {
         return this.var_1913;
      }
      
      public function get priority() : int
      {
         return this._priority + this.var_2787;
      }
      
      public function get reporterUserId() : int
      {
         return this.var_2786;
      }
      
      public function get reporterUserName() : String
      {
         return this.var_2788;
      }
      
      public function get reportedUserId() : int
      {
         return this.var_1664;
      }
      
      public function get reportedUserName() : String
      {
         return this.var_2128;
      }
      
      public function get pickerUserId() : int
      {
         return this.var_2622;
      }
      
      public function get pickerUserName() : String
      {
         return this.var_2791;
      }
      
      public function get message() : String
      {
         return this._message;
      }
      
      public function get chatRecordId() : int
      {
         return this.var_2442;
      }
      
      public function get roomName() : String
      {
         return this.var_1012;
      }
      
      public function get roomType() : int
      {
         return this.var_1592;
      }
      
      public function get flatType() : String
      {
         return this.var_2790;
      }
      
      public function get flatId() : int
      {
         return this.var_379;
      }
      
      public function get flatOwnerName() : String
      {
         return this.var_2785;
      }
      
      public function get roomResources() : String
      {
         return this.var_2514;
      }
      
      public function get unitPort() : int
      {
         return this.var_2789;
      }
      
      public function get worldId() : int
      {
         return this.var_2641;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         this.var_2787 = param1;
      }
      
      public function getOpenTime(param1:int) : String
      {
         var _loc2_:int = (param1 - this.var_1913) / 1000;
         var _loc3_:int = _loc2_ % 60;
         var _loc4_:int = _loc2_ / 60;
         var _loc5_:int = _loc4_ % 60;
         var _loc6_:int = _loc4_ / 60;
         var _loc7_:String = _loc3_ < 10 ? "0" + _loc3_ : "" + _loc3_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         var _loc9_:String = _loc6_ < 10 ? "0" + _loc6_ : "" + _loc6_;
         return _loc9_ + ":" + _loc8_ + ":" + _loc7_;
      }
   }
}
