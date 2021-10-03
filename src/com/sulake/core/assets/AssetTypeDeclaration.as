package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2576:String;
      
      private var var_2577:Class;
      
      private var var_2575:Class;
      
      private var var_1912:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         this.var_2576 = param1;
         this.var_2577 = param2;
         this.var_2575 = param3;
         if(rest == null)
         {
            this.var_1912 = new Array();
         }
         else
         {
            this.var_1912 = rest;
         }
      }
      
      public function get mimeType() : String
      {
         return this.var_2576;
      }
      
      public function get assetClass() : Class
      {
         return this.var_2577;
      }
      
      public function get loaderClass() : Class
      {
         return this.var_2575;
      }
      
      public function get fileTypes() : Array
      {
         return this.var_1912;
      }
   }
}
