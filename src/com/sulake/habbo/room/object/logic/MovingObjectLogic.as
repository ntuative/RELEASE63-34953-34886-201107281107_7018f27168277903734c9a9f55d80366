package com.sulake.habbo.room.object.logic
{
   import com.sulake.habbo.room.messages.RoomObjectMoveUpdateMessage;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   import com.sulake.room.object.IRoomObjectController;
   import com.sulake.room.object.IRoomObjectModelController;
   import com.sulake.room.object.logic.ObjectLogicBase;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class MovingObjectLogic extends ObjectLogicBase
   {
      
      public static const const_1029:int = 500;
      
      private static var var_621:Vector3d = new Vector3d();
       
      
      private var var_440:Vector3d;
      
      private var var_105:Vector3d;
      
      private var var_952:Number = 0.0;
      
      private var _lastUpdateTime:int = 0;
      
      private var var_2307:int;
      
      private var var_953:int = 500;
      
      public function MovingObjectLogic()
      {
         this.var_440 = new Vector3d();
         this.var_105 = new Vector3d();
         super();
      }
      
      protected function get lastUpdateTime() : int
      {
         return this._lastUpdateTime;
      }
      
      override public function dispose() : void
      {
         super.dispose();
         this.var_105 = null;
         this.var_440 = null;
      }
      
      override public function set object(param1:IRoomObjectController) : void
      {
         super.object = param1;
         if(param1 != null)
         {
            this.var_105.assign(param1.getLocation());
         }
      }
      
      protected function set moveUpdateInterval(param1:int) : void
      {
         if(param1 <= 0)
         {
            param1 = 1;
         }
         this.var_953 = param1;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         super.processUpdateMessage(param1);
         if(param1.loc != null)
         {
            this.var_105.assign(param1.loc);
         }
         var _loc2_:RoomObjectMoveUpdateMessage = param1 as RoomObjectMoveUpdateMessage;
         if(_loc2_ == null)
         {
            return;
         }
         if(object != null)
         {
            if(param1.loc != null)
            {
               _loc3_ = _loc2_.targetLoc;
               this.var_2307 = this._lastUpdateTime;
               this.var_440.assign(_loc3_);
               this.var_440.sub(this.var_105);
            }
         }
      }
      
      protected function getLocationOffset() : IVector3d
      {
         return null;
      }
      
      override public function update(param1:int) : void
      {
         var _loc4_:int = 0;
         var _loc2_:IVector3d = this.getLocationOffset();
         var _loc3_:IRoomObjectModelController = object.getModelController();
         if(_loc3_ != null)
         {
            if(_loc2_ != null)
            {
               if(this.var_952 != _loc2_.z)
               {
                  this.var_952 = _loc2_.z;
                  _loc3_.setNumber(RoomObjectVariableEnum.const_1002,this.var_952);
               }
            }
            else if(this.var_952 != 0)
            {
               this.var_952 = 0;
               _loc3_.setNumber(RoomObjectVariableEnum.const_1002,this.var_952);
            }
         }
         if(this.var_440.length > 0 || _loc2_ != null)
         {
            _loc4_ = param1 - this.var_2307;
            if(_loc4_ == this.var_953 >> 1)
            {
               _loc4_++;
            }
            if(_loc4_ > this.var_953)
            {
               _loc4_ = this.var_953;
            }
            if(this.var_440.length > 0)
            {
               var_621.assign(this.var_440);
               var_621.mul(_loc4_ / Number(this.var_953));
               var_621.add(this.var_105);
            }
            else
            {
               var_621.assign(this.var_105);
            }
            if(_loc2_ != null)
            {
               var_621.add(_loc2_);
            }
            if(object != null)
            {
               object.setLocation(var_621);
            }
            if(_loc4_ == this.var_953)
            {
               this.var_440.x = 0;
               this.var_440.y = 0;
               this.var_440.z = 0;
            }
         }
         this._lastUpdateTime = param1;
      }
   }
}
