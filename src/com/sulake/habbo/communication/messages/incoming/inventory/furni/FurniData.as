package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_2553:int;
      
      private var var_1487:String;
      
      private var _objId:int;
      
      private var var_2026:int;
      
      private var _category:int;
      
      private var var_2276:String;
      
      private var var_2555:Boolean;
      
      private var var_2554:Boolean;
      
      private var var_2556:Boolean;
      
      private var var_2557:Boolean;
      
      private var var_2552:int;
      
      private var var_2192:int;
      
      private var var_2010:String = "";
      
      private var var_1528:int = -1;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         this.var_2553 = param1;
         this.var_1487 = param2;
         this._objId = param3;
         this.var_2026 = param4;
         this._category = param5;
         this.var_2276 = param6;
         this.var_2555 = param7;
         this.var_2554 = param8;
         this.var_2556 = param9;
         this.var_2557 = param10;
         this.var_2552 = param11;
      }
      
      public function setExtraData(param1:String, param2:int) : void
      {
         this.var_2010 = param1;
         this.var_2192 = param2;
      }
      
      public function get stripId() : int
      {
         return this.var_2553;
      }
      
      public function get itemType() : String
      {
         return this.var_1487;
      }
      
      public function get objId() : int
      {
         return this._objId;
      }
      
      public function get classId() : int
      {
         return this.var_2026;
      }
      
      public function get category() : int
      {
         return this._category;
      }
      
      public function get stuffData() : String
      {
         return this.var_2276;
      }
      
      public function get isGroupable() : Boolean
      {
         return this.var_2555;
      }
      
      public function get isRecyclable() : Boolean
      {
         return this.var_2554;
      }
      
      public function get isTradeable() : Boolean
      {
         return this.var_2556;
      }
      
      public function get isSellable() : Boolean
      {
         return this.var_2557;
      }
      
      public function get expiryTime() : int
      {
         return this.var_2552;
      }
      
      public function get slotId() : String
      {
         return this.var_2010;
      }
      
      public function get songId() : int
      {
         return this.var_1528;
      }
      
      public function get extra() : int
      {
         return this.var_2192;
      }
   }
}
