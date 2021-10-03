package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1261:int = 1;
      
      public static const const_880:int = 2;
      
      public static const const_978:int = 3;
      
      public static const const_1988:int = 4;
       
      
      private var _index:int;
      
      private var var_2571:String;
      
      private var var_2570:String;
      
      private var var_2569:Boolean;
      
      private var var_2567:String;
      
      private var var_1075:String;
      
      private var var_2568:int;
      
      private var var_2566:int;
      
      private var _type:int;
      
      private var var_2510:String;
      
      private var var_1028:GuestRoomData;
      
      private var var_1027:PublicRoomData;
      
      private var _open:Boolean;
      
      private var _disposed:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         this._index = param1.readInteger();
         this.var_2571 = param1.readString();
         this.var_2570 = param1.readString();
         this.var_2569 = param1.readInteger() == 1;
         this.var_2567 = param1.readString();
         this.var_1075 = param1.readString();
         this.var_2568 = param1.readInteger();
         this.var_2566 = param1.readInteger();
         this._type = param1.readInteger();
         if(this._type == const_1261)
         {
            this.var_2510 = param1.readString();
         }
         else if(this._type == const_978)
         {
            this.var_1027 = new PublicRoomData(param1);
         }
         else if(this._type == const_880)
         {
            this.var_1028 = new GuestRoomData(param1);
         }
         else
         {
            this._open = param1.readBoolean();
         }
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
         if(this.var_1028 != null)
         {
            this.var_1028.dispose();
            this.var_1028 = null;
         }
         if(this.var_1027 != null)
         {
            this.var_1027.dispose();
            this.var_1027 = null;
         }
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get type() : int
      {
         return this._type;
      }
      
      public function get index() : int
      {
         return this._index;
      }
      
      public function get popupCaption() : String
      {
         return this.var_2571;
      }
      
      public function get popupDesc() : String
      {
         return this.var_2570;
      }
      
      public function get showDetails() : Boolean
      {
         return this.var_2569;
      }
      
      public function get picText() : String
      {
         return this.var_2567;
      }
      
      public function get picRef() : String
      {
         return this.var_1075;
      }
      
      public function get folderId() : int
      {
         return this.var_2568;
      }
      
      public function get tag() : String
      {
         return this.var_2510;
      }
      
      public function get userCount() : int
      {
         return this.var_2566;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return this.var_1028;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return this.var_1027;
      }
      
      public function get open() : Boolean
      {
         return this._open;
      }
      
      public function toggleOpen() : void
      {
         this._open = !this._open;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_1261)
         {
            return 0;
         }
         if(this.type == const_880)
         {
            return this.var_1028.maxUserCount;
         }
         if(this.type == const_978)
         {
            return this.var_1027.maxUsers;
         }
         return 0;
      }
   }
}
