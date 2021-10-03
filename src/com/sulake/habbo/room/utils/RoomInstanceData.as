package com.sulake.habbo.room.utils
{
   import com.sulake.core.utils.Map;
   
   public class RoomInstanceData
   {
       
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_895:TileHeightMap = null;
      
      private var var_1352:LegacyWallGeometry = null;
      
      private var var_1351:RoomCamera = null;
      
      private var var_894:SelectedRoomObjectData = null;
      
      private var var_893:SelectedRoomObjectData = null;
      
      private var _worldType:String = null;
      
      private var var_587:Map;
      
      private var var_588:Map;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         this.var_587 = new Map();
         this.var_588 = new Map();
         super();
         this._roomId = param1;
         this._roomCategory = param2;
         this.var_1352 = new LegacyWallGeometry();
         this.var_1351 = new RoomCamera();
      }
      
      public function get roomId() : int
      {
         return this._roomId;
      }
      
      public function get roomCategory() : int
      {
         return this._roomCategory;
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return this.var_895;
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(this.var_895 != null)
         {
            this.var_895.dispose();
         }
         this.var_895 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return this.var_1352;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return this.var_1351;
      }
      
      public function get worldType() : String
      {
         return this._worldType;
      }
      
      public function set worldType(param1:String) : void
      {
         this._worldType = param1;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return this.var_894;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_894 != null)
         {
            this.var_894.dispose();
         }
         this.var_894 = param1;
      }
      
      public function get placedObject() : SelectedRoomObjectData
      {
         return this.var_893;
      }
      
      public function set placedObject(param1:SelectedRoomObjectData) : void
      {
         if(this.var_893 != null)
         {
            this.var_893.dispose();
         }
         this.var_893 = param1;
      }
      
      public function dispose() : void
      {
         if(this.var_895 != null)
         {
            this.var_895.dispose();
            this.var_895 = null;
         }
         if(this.var_1352 != null)
         {
            this.var_1352.dispose();
            this.var_1352 = null;
         }
         if(this.var_1351 != null)
         {
            this.var_1351.dispose();
            this.var_1351 = null;
         }
         if(this.var_894 != null)
         {
            this.var_894.dispose();
            this.var_894 = null;
         }
         if(this.var_893 != null)
         {
            this.var_893.dispose();
            this.var_893 = null;
         }
         if(this.var_587 != null)
         {
            this.var_587.dispose();
            this.var_587 = null;
         }
         if(this.var_588 != null)
         {
            this.var_588.dispose();
            this.var_588 = null;
         }
      }
      
      public function addFurnitureData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_587.remove(param1.id);
            this.var_587.add(param1.id,param1);
         }
      }
      
      public function getFurnitureData() : FurnitureData
      {
         if(this.var_587.length > 0)
         {
            return this.getFurnitureDataWithId(this.var_587.getKey(0));
         }
         return null;
      }
      
      public function getFurnitureDataWithId(param1:int) : FurnitureData
      {
         return this.var_587.remove(param1);
      }
      
      public function addWallItemData(param1:FurnitureData) : void
      {
         if(param1 != null)
         {
            this.var_588.remove(param1.id);
            this.var_588.add(param1.id,param1);
         }
      }
      
      public function getWallItemData() : FurnitureData
      {
         if(this.var_588.length > 0)
         {
            return this.getWallItemDataWithId(this.var_588.getKey(0));
         }
         return null;
      }
      
      public function getWallItemDataWithId(param1:int) : FurnitureData
      {
         return this.var_588.remove(param1);
      }
   }
}
