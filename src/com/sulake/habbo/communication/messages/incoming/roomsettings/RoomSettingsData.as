package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_669:int = 0;
      
      public static const const_229:int = 1;
      
      public static const const_122:int = 2;
      
      public static const const_862:Array = ["open","closed","password"];
       
      
      private var _roomId:int;
      
      private var _name:String;
      
      private var var_1962:String;
      
      private var var_2772:int;
      
      private var var_1475:int;
      
      private var var_2768:int;
      
      private var var_3036:int;
      
      private var var_942:Array;
      
      private var var_2769:Array;
      
      private var var_3037:int;
      
      private var var_2771:Boolean;
      
      private var var_2775:Boolean;
      
      private var var_2776:Boolean;
      
      private var var_2774:Boolean;
      
      private var var_2770:int;
      
      private var var_2773:int;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2771;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         this.var_2771 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return this.var_2775;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         this.var_2775 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return this.var_2776;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         this.var_2776 = param1;
      }
      
      public function get hideWalls() : Boolean
      {
         return this.var_2774;
      }
      
      public function set hideWalls(param1:Boolean) : void
      {
         this.var_2774 = param1;
      }
      
      public function get wallThickness() : int
      {
         return this.var_2770;
      }
      
      public function set wallThickness(param1:int) : void
      {
         this.var_2770 = param1;
      }
      
      public function get floorThickness() : int
      {
         return this.var_2773;
      }
      
      public function set floorThickness(param1:int) : void
      {
         this.var_2773 = param1;
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function set roomId(param1:int) : void
      {
         this._roomId = param1;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function get description() : String
      {
         return this.var_1962;
      }
      
      public function set description(param1:String) : void
      {
         this.var_1962 = param1;
      }
      
      public function get doorMode() : int
      {
         return this.var_2772;
      }
      
      public function set doorMode(param1:int) : void
      {
         this.var_2772 = param1;
      }
      
      public function get categoryId() : int
      {
         return this.var_1475;
      }
      
      public function set categoryId(param1:int) : void
      {
         this.var_1475 = param1;
      }
      
      public function get maximumVisitors() : int
      {
         return this.var_2768;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         this.var_2768 = param1;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return this.var_3036;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         this.var_3036 = param1;
      }
      
      public function get tags() : Array
      {
         return this.var_942;
      }
      
      public function set tags(param1:Array) : void
      {
         this.var_942 = param1;
      }
      
      public function get controllers() : Array
      {
         return this.var_2769;
      }
      
      public function set controllers(param1:Array) : void
      {
         this.var_2769 = param1;
      }
      
      public function get controllerCount() : int
      {
         return this.var_3037;
      }
      
      public function set controllerCount(param1:int) : void
      {
         this.var_3037 = param1;
      }
   }
}
