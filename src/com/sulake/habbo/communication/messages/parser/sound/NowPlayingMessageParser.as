package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class NowPlayingMessageParser implements IMessageParser
   {
       
      
      private var var_2187:int;
      
      private var _currentPosition:int;
      
      private var var_2186:int;
      
      private var var_2185:int;
      
      private var var_2188:int;
      
      public function NowPlayingMessageParser()
      {
         super();
      }
      
      public function get currentSongId() : int
      {
         return this.var_2187;
      }
      
      public function get currentPosition() : int
      {
         return this._currentPosition;
      }
      
      public function get nextSongId() : int
      {
         return this.var_2186;
      }
      
      public function get nextPosition() : int
      {
         return this.var_2185;
      }
      
      public function get syncCount() : int
      {
         return this.var_2188;
      }
      
      public function flush() : Boolean
      {
         this.var_2187 = -1;
         this._currentPosition = -1;
         this.var_2186 = -1;
         this.var_2185 = -1;
         this.var_2188 = -1;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_2187 = param1.readInteger();
         this._currentPosition = param1.readInteger();
         this.var_2186 = param1.readInteger();
         this.var_2185 = param1.readInteger();
         this.var_2188 = param1.readInteger();
         return true;
      }
   }
}
