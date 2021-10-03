package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionPetPackageEvent extends RoomSessionEvent
   {
      
      public static const const_586:String = "RSOPPE_OPEN_PET_PACKAGE_REQUESTED";
      
      public static const const_618:String = "RSOPPE_OPEN_PET_PACKAGE_RESULT";
       
      
      private var var_238:int = -1;
      
      private var var_1379:int = -1;
      
      private var var_1927:int = -1;
      
      private var _color:String = "";
      
      private var var_1770:int = 0;
      
      private var var_1769:String = null;
      
      public function RoomSessionPetPackageEvent(param1:String, param2:IRoomSession, param3:int, param4:int, param5:int, param6:String, param7:int, param8:String, param9:Boolean = false, param10:Boolean = false)
      {
         super(param1,param2,param9,param10);
         this.var_238 = param3;
         this.var_1379 = param4;
         this.var_1927 = param5;
         this._color = param6;
         this.var_1770 = param7;
         this.var_1769 = param8;
      }
      
      public function get objectId() : int
      {
         return this.var_238;
      }
      
      public function get petType() : int
      {
         return this.var_1379;
      }
      
      public function get breed() : int
      {
         return this.var_1927;
      }
      
      public function get color() : String
      {
         return this._color;
      }
      
      public function get nameValidationStatus() : int
      {
         return this.var_1770;
      }
      
      public function get nameValidationInfo() : String
      {
         return this.var_1769;
      }
   }
}
