package com.sulake.habbo.communication.messages.parser.sound
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.core.utils.Map;
   
   public class JukeboxSongDisksMessageParser implements IMessageParser
   {
       
      
      private var var_1562:Map;
      
      private var var_1961:int;
      
      public function JukeboxSongDisksMessageParser()
      {
         super();
         this.var_1562 = new Map();
      }
      
      public function get songDisks() : Map
      {
         return this.var_1562;
      }
      
      public function get maxLength() : int
      {
         return this.var_1961;
      }
      
      public function flush() : Boolean
      {
         this.var_1562.reset();
         this.var_1961 = 0;
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1961 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = -1;
         var _loc4_:int = -1;
         var _loc5_:int = 0;
         while(_loc5_ < _loc2_)
         {
            _loc3_ = param1.readInteger();
            _loc4_ = param1.readInteger();
            this.var_1562.add(_loc3_,_loc4_);
            _loc5_++;
         }
         return true;
      }
   }
}
