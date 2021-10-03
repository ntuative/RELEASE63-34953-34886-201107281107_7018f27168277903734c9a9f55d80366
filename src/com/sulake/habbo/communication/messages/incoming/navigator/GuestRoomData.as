package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var var_379:int;
      
      private var var_779:Boolean;
      
      private var var_1012:String;
      
      private var _ownerName:String;
      
      private var var_2772:int;
      
      private var var_2566:int;
      
      private var var_2870:int;
      
      private var var_1962:String;
      
      private var var_2868:int;
      
      private var var_2841:Boolean;
      
      private var var_896:int;
      
      private var var_1475:int;
      
      private var var_2866:String;
      
      private var var_942:Array;
      
      private var var_2869:RoomThumbnailData;
      
      private var var_2771:Boolean;
      
      private var var_2867:Boolean;
      
      private var _disposed:Boolean;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         this.var_942 = new Array();
         super();
         this.var_379 = param1.readInteger();
         this.var_779 = param1.readBoolean();
         this.var_1012 = param1.readString();
         this._ownerName = param1.readString();
         this.var_2772 = param1.readInteger();
         this.var_2566 = param1.readInteger();
         this.var_2870 = param1.readInteger();
         this.var_1962 = param1.readString();
         this.var_2868 = param1.readInteger();
         this.var_2841 = param1.readBoolean();
         this.var_896 = param1.readInteger();
         this.var_1475 = param1.readInteger();
         this.var_2866 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            this.var_942.push(_loc4_);
            _loc3_++;
         }
         this.var_2869 = new RoomThumbnailData(param1);
         this.var_2771 = param1.readBoolean();
         this.var_2867 = param1.readBoolean();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         this.var_942 = null;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get flatId() : int
      {
         return this.var_379;
      }
      
      public function get event() : Boolean
      {
         return this.var_779;
      }
      
      public function get roomName() : String
      {
         return this.var_1012;
      }
      
      public function get ownerName() : String
      {
         return this._ownerName;
      }
      
      public function get doorMode() : int
      {
         return this.var_2772;
      }
      
      public function get userCount() : int
      {
         return this.var_2566;
      }
      
      public function get maxUserCount() : int
      {
         return this.var_2870;
      }
      
      public function get description() : String
      {
         return this.var_1962;
      }
      
      public function get srchSpecPrm() : int
      {
         return this.var_2868;
      }
      
      public function get allowTrading() : Boolean
      {
         return this.var_2841;
      }
      
      public function get score() : int
      {
         return this.var_896;
      }
      
      public function get categoryId() : int
      {
         return this.var_1475;
      }
      
      public function get eventCreationTime() : String
      {
         return this.var_2866;
      }
      
      public function get tags() : Array
      {
         return this.var_942;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return this.var_2869;
      }
      
      public function get allowPets() : Boolean
      {
         return this.var_2771;
      }
      
      public function get displayRoomEntryAd() : Boolean
      {
         return this.var_2867;
      }
   }
}
