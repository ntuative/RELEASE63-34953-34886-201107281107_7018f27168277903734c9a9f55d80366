package com.sulake.habbo.room.events
{
   import com.sulake.room.events.RoomObjectEvent;
   
   public class RoomObjectFurnitureActionEvent extends RoomObjectEvent
   {
      
      public static const const_544:String = "ROFCAE_DICE_OFF";
      
      public static const const_652:String = "ROFCAE_DICE_ACTIVATE";
      
      public static const const_615:String = "ROFCAE_USE_HABBOWHEEL";
      
      public static const const_525:String = "ROFCAE_STICKIE";
      
      public static const const_546:String = "ROFCAE_VIRAL_GIFT";
      
      public static const const_552:String = "ROFCAE_ENTER_ONEWAYDOOR";
      
      public static const const_606:String = "ROFCAE_QUEST_VENDING";
      
      public static const const_574:String = "ROFCAE_SOUND_MACHINE_INIT";
      
      public static const const_624:String = "ROFCAE_SOUND_MACHINE_START";
      
      public static const const_531:String = "ROFCAE_SOUND_MACHINE_STOP";
      
      public static const const_508:String = "ROFCAE_SOUND_MACHINE_DISPOSE";
      
      public static const const_597:String = "ROFCAE_JUKEBOX_INIT";
      
      public static const const_599:String = "ROFCAE_JUKEBOX_START";
      
      public static const const_605:String = "ROFCAE_JUKEBOX_MACHINE_STOP";
      
      public static const const_561:String = "ROFCAE_JUKEBOX_DISPOSE";
      
      public static const const_251:String = "ROFCAE_MOUSE_BUTTON";
      
      public static const const_340:String = "ROFCAE_MOUSE_ARROW";
       
      
      public function RoomObjectFurnitureActionEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false)
      {
         super(param1,param2,param3,param4,param5);
      }
   }
}
