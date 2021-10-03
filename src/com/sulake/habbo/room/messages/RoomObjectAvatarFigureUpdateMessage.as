package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_699:String;
      
      private var var_2325:String;
      
      private var var_1056:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = null, param3:String = null)
      {
         super();
         this.var_699 = param1;
         this.var_1056 = param2;
         this.var_2325 = param3;
      }
      
      public function get figure() : String
      {
         return this.var_699;
      }
      
      public function get race() : String
      {
         return this.var_2325;
      }
      
      public function get gender() : String
      {
         return this.var_1056;
      }
   }
}
