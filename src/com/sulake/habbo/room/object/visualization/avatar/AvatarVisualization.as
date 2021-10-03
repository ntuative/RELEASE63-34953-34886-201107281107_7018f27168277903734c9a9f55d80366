package com.sulake.habbo.room.object.visualization.avatar
{
   import com.sulake.core.assets.BitmapDataAsset;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.avatar.IAvatarImage;
   import com.sulake.habbo.avatar.IAvatarImageListener;
   import com.sulake.habbo.avatar.animation.IAnimationLayerData;
   import com.sulake.habbo.avatar.animation.ISpriteDataContainer;
   import com.sulake.habbo.avatar.enum.AvatarAction;
   import com.sulake.habbo.avatar.enum.AvatarSetType;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.object.IRoomObject;
   import com.sulake.room.object.IRoomObjectModel;
   import com.sulake.room.object.visualization.IRoomObjectSprite;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.RoomObjectSpriteVisualization;
   import com.sulake.room.utils.IRoomGeometry;
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   
   public class AvatarVisualization extends RoomObjectSpriteVisualization implements IAvatarImageListener
   {
      
      private static const const_1142:String = "avatar";
      
      private static const const_722:Number = -0.01;
      
      private static const const_721:Number = -0.409;
      
      private static const const_1141:int = 2;
      
      private static const const_1465:Array = [0,0,0];
      
      private static const const_1704:int = 3;
       
      
      private var var_730:AvatarVisualizationData = null;
      
      private var var_529:Map;
      
      private var var_591:Map;
      
      private var var_1186:int = 0;
      
      private var var_1033:Boolean;
      
      private var var_699:String;
      
      private var var_1056:String;
      
      private var var_1185:int = 0;
      
      private var var_729:BitmapDataAsset;
      
      private var var_1111:BitmapDataAsset;
      
      private var var_1788:int = -1;
      
      private var var_2119:int = -1;
      
      private var var_2121:int = -1;
      
      private const const_1143:int = 0;
      
      private const const_2096:int = 1;
      
      private const const_2128:int = 2;
      
      private const const_2127:int = 3;
      
      private const const_1464:int = 4;
      
      private var var_1852:int = -1;
      
      private var var_308:String = "";
      
      private var var_1660:String = "";
      
      private var var_2117:Boolean = false;
      
      private var var_2118:Boolean = false;
      
      private var var_2116:Boolean = false;
      
      private var var_1659:Boolean = false;
      
      private var var_682:Boolean = false;
      
      private var var_1462:int = 0;
      
      private var _danceStyle:int = 0;
      
      private var var_2122:int = 0;
      
      private var var_899:int = 0;
      
      private var var_901:int = 0;
      
      private var var_731:int = 0;
      
      private var var_1658:int = 0;
      
      private var var_1357:Boolean = false;
      
      private var var_2115:Boolean = false;
      
      private var var_1358:int = 0;
      
      private var var_900:int = 0;
      
      private var var_2120:Boolean = false;
      
      private var var_1356:int = 0;
      
      private var var_66:IAvatarImage = null;
      
      private var var_1154:Boolean;
      
      public function AvatarVisualization()
      {
         super();
         this.var_529 = new Map();
         this.var_591 = new Map();
         this.var_1033 = false;
      }
      
      override public function dispose() : void
      {
         if(this.var_529 != null)
         {
            this.resetImages();
            this.var_529.dispose();
            this.var_591.dispose();
            this.var_529 = null;
         }
         this.var_730 = null;
         this.var_729 = null;
         this.var_1111 = null;
         super.dispose();
         this.var_1154 = true;
      }
      
      public function get disposed() : Boolean
      {
         return this.var_1154;
      }
      
      override public function initialize(param1:IRoomObjectVisualizationData) : Boolean
      {
         this.var_730 = param1 as AvatarVisualizationData;
         createSprites(this.const_1464);
         return true;
      }
      
      private function updateModel(param1:IRoomObjectModel, param2:Number, param3:Boolean) : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:* = false;
         var _loc6_:int = 0;
         var _loc7_:* = null;
         var _loc8_:* = null;
         if(param1.getUpdateID() != var_148)
         {
            _loc4_ = false;
            _loc5_ = false;
            _loc6_ = 0;
            _loc7_ = "";
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_187) > 0 && param3);
            if(_loc5_ != this.var_2117)
            {
               this.var_2117 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_301) > 0;
            if(_loc5_ != this.var_2118)
            {
               this.var_2118 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_276) > 0;
            if(_loc5_ != this.var_2116)
            {
               this.var_2116 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = Boolean(param1.getNumber(RoomObjectVariableEnum.const_794) > 0 && param3);
            if(_loc5_ != this.var_1659)
            {
               this.var_1659 = _loc5_;
               _loc4_ = true;
            }
            _loc5_ = param1.getNumber(RoomObjectVariableEnum.const_664) > 0;
            if(_loc5_ != this.var_682)
            {
               this.var_682 = _loc5_;
               _loc4_ = true;
               this.updateTypingBubble(param2);
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_161);
            if(_loc6_ != this.var_1462)
            {
               this.var_1462 = _loc6_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_280);
            if(_loc7_ != this.var_308)
            {
               this.var_308 = _loc7_;
               _loc4_ = true;
            }
            _loc7_ = param1.getString(RoomObjectVariableEnum.const_771);
            if(_loc7_ != this.var_1660)
            {
               this.var_1660 = _loc7_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_640);
            if(_loc6_ != this._danceStyle)
            {
               this._danceStyle = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_562);
            if(_loc6_ != this.var_899)
            {
               this.var_899 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_322);
            if(_loc6_ != this.var_901)
            {
               this.var_901 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_305);
            if(_loc6_ != this.var_731)
            {
               this.var_731 = _loc6_;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_214);
            if(_loc6_ != this.var_1788)
            {
               this.var_1788 = _loc6_;
               _loc4_ = true;
            }
            if(this.var_901 > 0 && param1.getNumber(RoomObjectVariableEnum.const_305) > 0)
            {
               if(this.var_731 != this.var_901)
               {
                  this.var_731 = this.var_901;
                  _loc4_ = true;
               }
            }
            else if(this.var_731 != 0)
            {
               this.var_731 = 0;
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_397);
            if(_loc6_ != this.var_1358)
            {
               this.var_1358 = _loc6_;
               _loc4_ = true;
               this.updateNumberBubble(param2);
            }
            this.validateActions(param2);
            _loc7_ = param1.getString(RoomObjectVariableEnum.AVATAR_GENDER);
            if(_loc7_ != this.var_1056)
            {
               this.var_1056 = _loc7_;
               _loc4_ = true;
            }
            _loc8_ = param1.getString(RoomObjectVariableEnum.const_227);
            if(this.updateFigure(_loc8_))
            {
               _loc4_ = true;
            }
            _loc6_ = param1.getNumber(RoomObjectVariableEnum.const_457);
            if(_loc6_ != this.var_2122)
            {
               _loc4_ = true;
            }
            var_148 = param1.getUpdateID();
            return _loc4_;
         }
         return false;
      }
      
      private function updateFigure(param1:String) : Boolean
      {
         if(this.var_699 != param1)
         {
            this.var_699 = param1;
            this.resetImages();
            return true;
         }
         return false;
      }
      
      private function resetImages() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         for each(_loc1_ in this.var_529)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         for each(_loc1_ in this.var_591)
         {
            if(_loc1_)
            {
               _loc1_.dispose();
            }
         }
         this.var_529.reset();
         this.var_591.reset();
         this.var_66 = null;
         _loc2_ = getSprite(this.const_1143);
         if(_loc2_ != null)
         {
            _loc2_.asset = null;
            _loc2_.alpha = 255;
         }
      }
      
      private function validateActions(param1:Number) : void
      {
         var _loc2_:int = 0;
         if(param1 < 48)
         {
            this.var_1659 = false;
         }
         if(this.var_308 == "sit" || this.var_308 == "lay")
         {
            this.var_1658 = param1 / 2;
         }
         else
         {
            this.var_1658 = 0;
         }
         this.var_2115 = false;
         this.var_1357 = false;
         if(this.var_308 == "lay")
         {
            this.var_1357 = true;
            _loc2_ = int(this.var_1660);
            if(_loc2_ < 0)
            {
               this.var_2115 = true;
            }
         }
      }
      
      private function getAvatarImage(param1:Number, param2:int) : IAvatarImage
      {
         var _loc3_:* = null;
         var _loc5_:* = null;
         var _loc4_:String = "avatarImage" + param1.toString();
         if(param2 == 0)
         {
            _loc3_ = this.var_529.getValue(_loc4_) as IAvatarImage;
         }
         else
         {
            _loc4_ += "-" + param2;
            _loc3_ = this.var_591.getValue(_loc4_) as IAvatarImage;
            if(_loc3_)
            {
               _loc3_.forceActionUpdate();
            }
         }
         if(_loc3_ == null)
         {
            _loc3_ = this.var_730.getAvatar(this.var_699,param1,this.var_1056,this);
            if(_loc3_ != null)
            {
               if(param2 == 0)
               {
                  this.var_529.add(_loc4_,_loc3_);
               }
               else
               {
                  if(this.var_591.length >= const_1704)
                  {
                     _loc5_ = this.var_591.remove(this.var_591.getKey(0));
                     if(_loc5_)
                     {
                        _loc5_.dispose();
                     }
                  }
                  this.var_591.add(_loc4_,_loc3_);
               }
            }
         }
         return _loc3_;
      }
      
      private function updateObject(param1:IRoomObject, param2:IRoomGeometry, param3:Boolean, param4:Boolean = false) : Boolean
      {
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         if(param4 || var_515 != param1.getUpdateID() || this.var_1852 != param2.updateId)
         {
            _loc5_ = param3;
            _loc6_ = param1.getDirection().x - param2.direction.x;
            _loc6_ = (_loc6_ % 360 + 360) % 360;
            _loc7_ = this.var_1788;
            if(this.var_308 == "float")
            {
               _loc7_ = _loc6_;
            }
            else
            {
               _loc7_ -= param2.direction.x;
            }
            _loc7_ = (_loc7_ % 360 + 360) % 360;
            if(_loc6_ != this.var_2119 || param4)
            {
               _loc5_ = true;
               this.var_2119 = _loc6_;
               _loc6_ -= 112.5;
               _loc6_ = (_loc6_ + 360) % 360;
               this.var_66.setDirectionAngle(AvatarSetType.const_43,_loc6_);
            }
            if(_loc7_ != this.var_2121 || param4)
            {
               _loc5_ = true;
               this.var_2121 = _loc7_;
               if(this.var_2121 != this.var_2119)
               {
                  _loc7_ -= 112.5;
                  _loc7_ = (_loc7_ + 360) % 360;
                  this.var_66.setDirectionAngle(AvatarSetType.const_57,_loc7_);
               }
            }
            var_515 = param1.getUpdateID();
            this.var_1852 = param2.updateId;
            return _loc5_;
         }
         return false;
      }
      
      private function updateShadow(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2096);
         this.var_729 = null;
         if(this.var_308 == "mv" || this.var_308 == "std")
         {
            _loc2_.visible = true;
            if(this.var_729 == null || param1 != var_103)
            {
               _loc3_ = 0;
               _loc4_ = 0;
               if(param1 < 48)
               {
                  this.var_729 = this.var_66.getAsset("sh_std_sd_1_0_0");
                  _loc3_ = -8;
                  _loc4_ = -3;
               }
               else
               {
                  this.var_729 = this.var_66.getAsset("h_std_sd_1_0_0");
                  _loc3_ = -17;
                  _loc4_ = -7;
               }
               if(this.var_729 != null)
               {
                  _loc2_.asset = this.var_729.content as BitmapData;
                  _loc2_.offsetX = _loc3_;
                  _loc2_.offsetY = _loc4_;
                  _loc2_.alpha = 50;
                  _loc2_.relativeDepth = 1;
               }
               else
               {
                  _loc2_.visible = false;
               }
            }
         }
         else
         {
            this.var_729 = null;
            _loc2_.visible = false;
         }
      }
      
      private function updateTypingBubble(param1:Number) : void
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         this.var_1111 = null;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2128);
         if(this.var_682)
         {
            _loc2_.visible = true;
            _loc5_ = 64;
            if(param1 < 48)
            {
               this.var_1111 = this.var_730.getAvatarRendererAsset("user_typing_small_png") as BitmapDataAsset;
               _loc3_ = 3;
               _loc4_ = -42;
               _loc5_ = 32;
            }
            else
            {
               this.var_1111 = this.var_730.getAvatarRendererAsset("user_typing_png") as BitmapDataAsset;
               _loc3_ = 14;
               _loc4_ = -83;
            }
            if(this.var_308 == "sit")
            {
               _loc4_ += _loc5_ / 2;
            }
            else if(this.var_308 == "lay")
            {
               _loc4_ += _loc5_;
            }
            if(this.var_1111 != null)
            {
               _loc2_.asset = this.var_1111.content as BitmapData;
               _loc2_.offsetX = _loc3_;
               _loc2_.offsetY = _loc4_;
               _loc2_.relativeDepth = -0.02;
            }
         }
         else
         {
            _loc2_.visible = false;
         }
      }
      
      private function updateNumberBubble(param1:Number) : void
      {
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc2_:* = null;
         var _loc3_:IRoomObjectSprite = getSprite(this.const_2127);
         if(this.var_1358 > 0)
         {
            _loc6_ = 64;
            if(param1 < 48)
            {
               _loc2_ = this.var_730.getAvatarRendererAsset("number_" + this.var_1358 + "_small_png") as BitmapDataAsset;
               _loc4_ = -6;
               _loc5_ = -52;
               _loc6_ = 32;
            }
            else
            {
               _loc2_ = this.var_730.getAvatarRendererAsset("number_" + this.var_1358 + "_png") as BitmapDataAsset;
               _loc4_ = -8;
               _loc5_ = -105;
            }
            if(this.var_308 == "sit")
            {
               _loc5_ += _loc6_ / 2;
            }
            else if(this.var_308 == "lay")
            {
               _loc5_ += _loc6_;
            }
            if(_loc2_ != null)
            {
               _loc3_.visible = true;
               _loc3_.asset = _loc2_.content as BitmapData;
               _loc3_.offsetX = _loc4_;
               _loc3_.offsetY = _loc5_;
               _loc3_.relativeDepth = -0.01;
               this.var_900 = 1;
               this.var_2120 = true;
               this.var_1356 = 0;
               _loc3_.alpha = 0;
            }
            else
            {
               _loc3_.visible = false;
            }
         }
         else if(_loc3_.visible)
         {
            this.var_900 = -1;
         }
      }
      
      private function animateNumberBubble(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:IRoomObjectSprite = getSprite(this.const_2127);
         var _loc3_:int = _loc2_.alpha;
         var _loc4_:Boolean = false;
         if(this.var_2120)
         {
            ++this.var_1356;
            if(this.var_1356 < 10)
            {
               return false;
            }
            if(this.var_900 < 0)
            {
               if(param1 < 48)
               {
                  _loc2_.offsetY -= 2;
               }
               else
               {
                  _loc2_.offsetY -= 4;
               }
            }
            else
            {
               _loc5_ = 4;
               if(param1 < 48)
               {
                  _loc5_ = 8;
               }
               if(this.var_1356 % _loc5_ == 0)
               {
                  --_loc2_.offsetY;
                  _loc4_ = true;
               }
            }
         }
         if(this.var_900 > 0)
         {
            if(_loc3_ < 255)
            {
               _loc3_ += 32;
            }
            if(_loc3_ >= 255)
            {
               _loc3_ = 255;
               this.var_900 = 0;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         if(this.var_900 < 0)
         {
            if(_loc3_ >= 0)
            {
               _loc3_ -= 32;
            }
            if(_loc3_ <= 0)
            {
               this.var_900 = 0;
               this.var_2120 = false;
               _loc3_ = 0;
               _loc2_.visible = false;
            }
            _loc2_.alpha = _loc3_;
            return true;
         }
         return _loc4_;
      }
      
      override public function update(param1:IRoomGeometry, param2:int, param3:Boolean, param4:Boolean) : void
      {
         var _loc16_:* = null;
         var _loc17_:* = null;
         var _loc18_:* = null;
         var _loc19_:int = 0;
         var _loc20_:* = null;
         var _loc21_:* = null;
         var _loc22_:* = null;
         var _loc23_:int = 0;
         var _loc24_:int = 0;
         var _loc25_:* = null;
         var _loc26_:int = 0;
         var _loc27_:int = 0;
         var _loc28_:int = 0;
         var _loc29_:int = 0;
         var _loc30_:int = 0;
         var _loc31_:* = null;
         var _loc32_:* = null;
         var _loc5_:IRoomObject = object;
         if(_loc5_ == null)
         {
            return;
         }
         if(param1 == null)
         {
            return;
         }
         if(this.var_730 == null)
         {
            return;
         }
         var _loc6_:IRoomObjectModel = _loc5_.getModel();
         var _loc7_:Number = param1.scale;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:int = this.var_899;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = this.updateModel(_loc6_,_loc7_,param3);
         if(this.animateNumberBubble(_loc7_))
         {
            increaseUpdateId();
         }
         if(_loc13_ || _loc7_ != var_103 || this.var_66 == null)
         {
            if(_loc7_ != var_103)
            {
               _loc9_ = true;
               this.validateActions(_loc7_);
            }
            if(_loc11_ != this.var_899)
            {
               _loc12_ = true;
            }
            if(_loc9_ || this.var_66 == null || _loc12_)
            {
               this.var_66 = this.getAvatarImage(_loc7_,this.var_899);
               if(this.var_66 == null)
               {
                  return;
               }
               _loc8_ = true;
               _loc16_ = getSprite(this.const_1143);
               if(_loc16_ && this.var_66 && this.var_66.isPlaceholder())
               {
                  _loc16_.alpha = 150;
               }
               else if(_loc16_)
               {
                  _loc16_.alpha = 255;
               }
            }
            if(this.var_66 == null)
            {
               return;
            }
            this.updateShadow(_loc7_);
            if(_loc9_)
            {
               this.updateTypingBubble(_loc7_);
               this.updateNumberBubble(_loc7_);
            }
            _loc10_ = this.updateObject(_loc5_,param1,param3,true);
            this.updateActions(this.var_66);
            var_103 = _loc7_;
         }
         else
         {
            _loc10_ = this.updateObject(_loc5_,param1,param3);
         }
         var _loc14_:Boolean = _loc10_ || _loc13_ || _loc9_;
         var _loc15_:Boolean = (this.var_1033 || this.var_1185 > 0) && param3;
         if(_loc14_)
         {
            this.var_1185 = const_1141;
         }
         if(_loc14_ || _loc15_)
         {
            increaseUpdateId();
            --this.var_1185;
            --this.var_1186;
            if(!(this.var_1186 <= 0 || _loc9_ || _loc13_ || _loc8_))
            {
               return;
            }
            this.var_66.updateAnimationByFrames(1);
            this.var_1186 = const_1141;
            _loc18_ = this.var_66.getCanvasOffsets();
            if(_loc18_ == null || _loc18_.length < 3)
            {
               _loc18_ = const_1465;
            }
            _loc17_ = getSprite(this.const_1143);
            if(_loc17_ != null)
            {
               _loc21_ = this.var_66.getImage(AvatarSetType.const_43,false);
               if(_loc21_ != null)
               {
                  _loc17_.asset = _loc21_;
               }
               if(_loc17_.asset)
               {
                  _loc17_.offsetX = -1 * _loc7_ / 2 + _loc18_[0];
                  _loc17_.offsetY = -_loc17_.asset.height + _loc7_ / 4 + _loc18_[1] + this.var_1658;
               }
               if(this.var_1357)
               {
                  if(this.var_2115)
                  {
                     _loc17_.relativeDepth = -0.5;
                  }
                  else
                  {
                     _loc17_.relativeDepth = const_721 + _loc18_[2];
                  }
               }
               else
               {
                  _loc17_.relativeDepth = const_722 + _loc18_[2];
               }
            }
            _loc17_ = getSprite(this.const_2128);
            if(_loc17_ != null && _loc17_.visible)
            {
               if(!this.var_1357)
               {
                  _loc17_.relativeDepth = const_722 - 0.01 + _loc18_[2];
               }
               else
               {
                  _loc17_.relativeDepth = const_721 - 0.01 + _loc18_[2];
               }
            }
            this.var_1033 = this.var_66.isAnimating();
            _loc19_ = this.const_1464;
            for each(_loc20_ in this.var_66.getSprites())
            {
               if(_loc20_.id == const_1142)
               {
                  _loc17_ = getSprite(this.const_1143);
                  _loc22_ = this.var_66.getLayerData(_loc20_);
                  _loc23_ = _loc20_.getDirectionOffsetX(this.var_66.getDirection());
                  _loc24_ = _loc20_.getDirectionOffsetY(this.var_66.getDirection());
                  if(_loc22_ != null)
                  {
                     _loc23_ += _loc22_.dx;
                     _loc24_ += _loc22_.dy;
                  }
                  if(_loc7_ < 48)
                  {
                     _loc23_ /= 2;
                     _loc24_ /= 2;
                  }
                  _loc17_.offsetX += _loc23_;
                  _loc17_.offsetY += _loc24_;
               }
               else
               {
                  _loc17_ = getSprite(_loc19_);
                  if(_loc17_ != null)
                  {
                     _loc17_.capturesMouse = false;
                     _loc17_.visible = true;
                     _loc25_ = this.var_66.getLayerData(_loc20_);
                     _loc26_ = 0;
                     _loc27_ = _loc20_.getDirectionOffsetX(this.var_66.getDirection());
                     _loc28_ = _loc20_.getDirectionOffsetY(this.var_66.getDirection());
                     _loc29_ = _loc20_.getDirectionOffsetZ(this.var_66.getDirection());
                     _loc30_ = 0;
                     if(_loc20_.hasDirections)
                     {
                        _loc30_ = this.var_66.getDirection();
                     }
                     if(_loc25_ != null)
                     {
                        _loc26_ = _loc25_.animationFrame;
                        _loc27_ += _loc25_.dx;
                        _loc28_ += _loc25_.dy;
                        _loc30_ += _loc25_.directionOffset;
                     }
                     if(_loc7_ < 48)
                     {
                        _loc27_ /= 2;
                        _loc28_ /= 2;
                     }
                     if(_loc30_ < 0)
                     {
                        _loc30_ += 8;
                     }
                     else if(_loc30_ > 7)
                     {
                        _loc30_ -= 8;
                     }
                     _loc31_ = this.var_66.getScale() + "_" + _loc20_.member + "_" + _loc30_ + "_" + _loc26_;
                     _loc32_ = this.var_66.getAsset(_loc31_);
                     if(_loc32_ == null)
                     {
                        continue;
                     }
                     _loc17_.asset = _loc32_.content as BitmapData;
                     _loc17_.offsetX = -_loc32_.offset.x - _loc7_ / 2 + _loc27_;
                     _loc17_.offsetY = -_loc32_.offset.y + _loc28_ + this.var_1658;
                     if(this.var_1357)
                     {
                        _loc17_.relativeDepth = const_721 - 0.001 * spriteCount * _loc29_;
                     }
                     else
                     {
                        _loc17_.relativeDepth = const_722 - 0.001 * spriteCount * _loc29_;
                     }
                     if(_loc20_.ink == 33)
                     {
                        _loc17_.blendMode = BlendMode.ADD;
                     }
                     else
                     {
                        _loc17_.blendMode = BlendMode.NORMAL;
                     }
                  }
                  _loc19_++;
               }
            }
         }
      }
      
      private function updateActions(param1:IAvatarImage) : void
      {
         var _loc3_:* = null;
         if(param1 == null)
         {
            return;
         }
         param1.initActionAppends();
         param1.appendAction(AvatarAction.const_419,this.var_308,this.var_1660);
         if(this.var_1462 > 0)
         {
            param1.appendAction(AvatarAction.const_359,AvatarAction.const_1798[this.var_1462]);
         }
         if(this._danceStyle > 0)
         {
            param1.appendAction(AvatarAction.const_169,this._danceStyle);
         }
         if(this.var_2122 > 0)
         {
            param1.appendAction(AvatarAction.const_1036,this.var_2122);
         }
         if(this.var_901 > 0)
         {
            param1.appendAction(AvatarAction.const_965,this.var_901);
         }
         if(this.var_731 > 0)
         {
            param1.appendAction(AvatarAction.const_936,this.var_731);
         }
         if(this.var_2117)
         {
            param1.appendAction(AvatarAction.const_345);
         }
         if(this.var_2116 || this.var_1659)
         {
            param1.appendAction(AvatarAction.const_657);
         }
         if(this.var_2118)
         {
            param1.appendAction(AvatarAction.const_297);
         }
         if(this.var_899 > 0)
         {
            param1.appendAction(AvatarAction.const_328,this.var_899);
         }
         param1.endActionAppends();
         this.var_1033 = param1.isAnimating();
         var _loc2_:int = this.const_1464;
         for each(_loc3_ in this.var_66.getSprites())
         {
            if(_loc3_.id != const_1142)
            {
               _loc2_++;
            }
         }
         if(_loc2_ != spriteCount)
         {
            createSprites(_loc2_);
         }
      }
      
      public function avatarImageReady(param1:String) : void
      {
         this.resetImages();
      }
   }
}
