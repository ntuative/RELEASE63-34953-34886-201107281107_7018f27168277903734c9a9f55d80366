package com.sulake.habbo.communication.messages.parser.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class GiftWrappingConfigurationParser implements IMessageParser
   {
       
      
      private var var_2977:Boolean;
      
      private var var_2976:int;
      
      private var var_1861:Array;
      
      private var var_808:Array;
      
      private var var_807:Array;
      
      public function GiftWrappingConfigurationParser()
      {
         super();
      }
      
      public function get isWrappingEnabled() : Boolean
      {
         return this.var_2977;
      }
      
      public function get wrappingPrice() : int
      {
         return this.var_2976;
      }
      
      public function get stuffTypes() : Array
      {
         return this.var_1861;
      }
      
      public function get boxTypes() : Array
      {
         return this.var_808;
      }
      
      public function get ribbonTypes() : Array
      {
         return this.var_807;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:int = 0;
         this.var_1861 = [];
         this.var_808 = [];
         this.var_807 = [];
         this.var_2977 = param1.readBoolean();
         this.var_2976 = param1.readInteger();
         var _loc3_:int = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_1861.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_808.push(param1.readInteger());
            _loc2_++;
         }
         _loc3_ = param1.readInteger();
         _loc2_ = 0;
         while(_loc2_ < _loc3_)
         {
            this.var_807.push(param1.readInteger());
            _loc2_++;
         }
         return true;
      }
   }
}
