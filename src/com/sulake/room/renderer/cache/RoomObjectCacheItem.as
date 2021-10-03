package com.sulake.room.renderer.cache
{
   public class RoomObjectCacheItem
   {
       
      
      private var var_447:RoomObjectLocationCacheItem = null;
      
      private var var_226:RoomObjectSortableSpriteCacheItem = null;
      
      public function RoomObjectCacheItem(param1:String)
      {
         super();
         this.var_447 = new RoomObjectLocationCacheItem(param1);
         this.var_226 = new RoomObjectSortableSpriteCacheItem();
      }
      
      public function get location() : RoomObjectLocationCacheItem
      {
         return this.var_447;
      }
      
      public function get sprites() : RoomObjectSortableSpriteCacheItem
      {
         return this.var_226;
      }
      
      public function dispose() : void
      {
         if(this.var_447 != null)
         {
            this.var_447.dispose();
            this.var_447 = null;
         }
         if(this.var_226 != null)
         {
            this.var_226.dispose();
            this.var_226 = null;
         }
      }
   }
}
