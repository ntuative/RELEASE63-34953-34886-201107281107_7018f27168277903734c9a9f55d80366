package com.sulake.core.utils.profiler.tracking
{
   import flash.display.BitmapData;
   
   public class TrackedBitmapData extends BitmapData
   {
      
      public static const const_2325:int = 16777215;
      
      public static const const_1333:int = 8191;
      
      public static const const_1367:int = 8191;
      
      public static const const_2267:int = 1;
      
      public static const const_1235:int = 1;
      
      public static const const_1348:int = 1;
      
      private static var var_582:uint = 0;
      
      private static var var_581:uint = 0;
       
      
      private var _owner:Object;
      
      private var _disposed:Boolean = false;
      
      public function TrackedBitmapData(param1:*, param2:int, param3:int, param4:Boolean = true, param5:uint = 4.294967295E9)
      {
         if(param2 > const_1333)
         {
            param2 = const_1333;
         }
         else if(param2 < const_1235)
         {
            param2 = const_1235;
         }
         if(param3 > const_1367)
         {
            param3 = const_1367;
         }
         else if(param3 < const_1348)
         {
            param3 = const_1348;
         }
         super(param2,param3,param4,param5);
         ++var_582;
         var_581 += param2 * param3 * 4;
         this._owner = param1;
      }
      
      public static function get numInstances() : uint
      {
         return var_582;
      }
      
      public static function get allocatedByteCount() : uint
      {
         return var_581;
      }
      
      override public function dispose() : void
      {
         if(!this._disposed)
         {
            var_581 -= width * height * 4;
            --var_582;
            this._disposed = true;
            this._owner = null;
            super.dispose();
         }
      }
   }
}
