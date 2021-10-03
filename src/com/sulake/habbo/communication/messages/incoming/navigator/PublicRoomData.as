package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_2642:String;
      
      private var var_2789:int;
      
      private var var_2641:int;
      
      private var var_2921:String;
      
      private var var_3051:int;
      
      private var var_2108:int;
      
      private var _disposed:Boolean;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         this.var_2642 = param1.readString();
         this.var_2789 = param1.readInteger();
         this.var_2641 = param1.readInteger();
         this.var_2921 = param1.readString();
         this.var_3051 = param1.readInteger();
         this.var_2108 = param1.readInteger();
      }
      
      public function dispose() : void
      {
         if(this._disposed)
         {
            return;
         }
         this._disposed = true;
      }
      
      public function get disposed() : Boolean
      {
         return this._disposed;
      }
      
      public function get unitPropertySet() : String
      {
         return this.var_2642;
      }
      
      public function get unitPort() : int
      {
         return this.var_2789;
      }
      
      public function get worldId() : int
      {
         return this.var_2641;
      }
      
      public function get castLibs() : String
      {
         return this.var_2921;
      }
      
      public function get maxUsers() : int
      {
         return this.var_3051;
      }
      
      public function get nodeId() : int
      {
         return this.var_2108;
      }
   }
}
