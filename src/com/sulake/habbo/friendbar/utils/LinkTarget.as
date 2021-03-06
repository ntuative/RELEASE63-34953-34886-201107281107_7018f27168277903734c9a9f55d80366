package com.sulake.habbo.friendbar.utils
{
   public class LinkTarget
   {
      
      public static const NONE:uint = 0;
      
      public static const const_1397:uint = 1;
      
      public static const ROOM:uint = 2;
      
      public static const ACHIEVEMENTS:uint = 3;
      
      public static const const_1417:uint = 4;
      
      public static const const_91:uint = 5;
       
      
      private var _text:String;
      
      private var _type:uint;
      
      private var var_1834:uint;
      
      private var var_3010:String;
      
      public function LinkTarget(param1:String, param2:uint, param3:uint, param4:String = null)
      {
         super();
         this._text = param1;
         this._type = param2;
         this.var_1834 = param3;
         this.var_3010 = param4;
      }
      
      public function get text() : String
      {
         return this._text;
      }
      
      public function get type() : uint
      {
         return this._type;
      }
      
      public function get identifier() : uint
      {
         return this.var_1834;
      }
      
      public function get extraData() : String
      {
         return this.var_3010;
      }
   }
}
