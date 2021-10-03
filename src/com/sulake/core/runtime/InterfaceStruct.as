package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct implements IDisposable
   {
       
      
      private var var_1603:IID;
      
      private var var_2038:String;
      
      private var var_125:IUnknown;
      
      private var var_859:uint;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         this.var_1603 = param1;
         this.var_2038 = getQualifiedClassName(this.var_1603);
         this.var_125 = param2;
         this.var_859 = 0;
      }
      
      public function get iid() : IID
      {
         return this.var_1603;
      }
      
      public function get iis() : String
      {
         return this.var_2038;
      }
      
      public function get unknown() : IUnknown
      {
         return this.var_125;
      }
      
      public function get references() : uint
      {
         return this.var_859;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_125 == null;
      }
      
      public function dispose() : void
      {
         this.var_1603 = null;
         this.var_2038 = null;
         this.var_125 = null;
         this.var_859 = 0;
      }
      
      public function reserve() : uint
      {
         return ++this.var_859;
      }
      
      public function release() : uint
      {
         return this.references > 0 ? uint(--this.var_859) : uint(0);
      }
   }
}
