package com.sulake.habbo.ui.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_116:String = "RWUIUE_OWN_USER";
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_162:String = "RWUIUE_PEER";
      
      public static const TRADE_REASON_OK:int = 0;
      
      public static const const_817:int = 2;
      
      public static const const_768:int = 3;
      
      public static const const_2060:String = "BOT";
       
      
      private var _name:String = "";
      
      private var var_1873:String = "";
      
      private var var_2406:int;
      
      private var var_2525:int = 0;
      
      private var var_2522:int = 0;
      
      private var var_699:String = "";
      
      private var var_48:BitmapData = null;
      
      private var var_258:Array;
      
      private var var_1686:int = 0;
      
      private var var_2941:String = "";
      
      private var var_2937:int = 0;
      
      private var var_2935:int = 0;
      
      private var var_1881:Boolean = false;
      
      private var var_1874:String = "";
      
      private var var_2272:Boolean = false;
      
      private var var_2943:Boolean = false;
      
      private var var_2939:Boolean = true;
      
      private var var_1167:int = 0;
      
      private var var_2942:Boolean = false;
      
      private var var_2936:Boolean = false;
      
      private var var_2932:Boolean = false;
      
      private var var_2934:Boolean = false;
      
      private var var_2938:Boolean = false;
      
      private var var_2940:Boolean = false;
      
      private var var_2933:int = 0;
      
      private var var_1884:Boolean = false;
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         this.var_258 = [];
         super(param1,param2,param3);
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set motto(param1:String) : void
      {
         this.var_1873 = param1;
      }
      
      public function get motto() : String
      {
         return this.var_1873;
      }
      
      public function set achievementScore(param1:int) : void
      {
         this.var_2406 = param1;
      }
      
      public function get achievementScore() : int
      {
         return this.var_2406;
      }
      
      public function set webID(param1:int) : void
      {
         this.var_2525 = param1;
      }
      
      public function get webID() : int
      {
         return this.var_2525;
      }
      
      public function set xp(param1:int) : void
      {
         this.var_2522 = param1;
      }
      
      public function get xp() : int
      {
         return this.var_2522;
      }
      
      public function set figure(param1:String) : void
      {
         this.var_699 = param1;
      }
      
      public function get figure() : String
      {
         return this.var_699;
      }
      
      public function set image(param1:BitmapData) : void
      {
         this.var_48 = param1;
      }
      
      public function get image() : BitmapData
      {
         return this.var_48;
      }
      
      public function set badges(param1:Array) : void
      {
         this.var_258 = param1;
      }
      
      public function get badges() : Array
      {
         return this.var_258;
      }
      
      public function set groupId(param1:int) : void
      {
         this.var_1686 = param1;
      }
      
      public function get groupId() : int
      {
         return this.var_1686;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         this.var_2941 = param1;
      }
      
      public function get groupBadgeId() : String
      {
         return this.var_2941;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         this.var_2943 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return this.var_2943;
      }
      
      public function set respectLeft(param1:int) : void
      {
         this.var_1167 = param1;
      }
      
      public function get respectLeft() : int
      {
         return this.var_1167;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         this.var_2942 = param1;
      }
      
      public function get isIgnored() : Boolean
      {
         return this.var_2942;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         this.var_2936 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return this.var_2936;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         this.var_2932 = param1;
      }
      
      public function get amIController() : Boolean
      {
         return this.var_2932;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         this.var_2934 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return this.var_2934;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         this.var_2938 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return this.var_2938;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         this.var_2940 = param1;
      }
      
      public function get canTrade() : Boolean
      {
         return this.var_2940;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         this.var_2933 = param1;
      }
      
      public function get canTradeReason() : int
      {
         return this.var_2933;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         this.var_2939 = param1;
      }
      
      public function get canBeKicked() : Boolean
      {
         return this.var_2939;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         this.var_1884 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return this.var_1884;
      }
      
      public function set carryItem(param1:int) : void
      {
         this.var_2937 = param1;
      }
      
      public function get carryItem() : int
      {
         return this.var_2937;
      }
      
      public function set userRoomId(param1:int) : void
      {
         this.var_2935 = param1;
      }
      
      public function get userRoomId() : int
      {
         return this.var_2935;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         this.var_1881 = param1;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return this.var_1881;
      }
      
      public function set realName(param1:String) : void
      {
         this.var_1874 = param1;
      }
      
      public function get realName() : String
      {
         return this.var_1874;
      }
      
      public function set allowNameChange(param1:Boolean) : void
      {
         this.var_2272 = param1;
      }
      
      public function get allowNameChange() : Boolean
      {
         return this.var_2272;
      }
   }
}
