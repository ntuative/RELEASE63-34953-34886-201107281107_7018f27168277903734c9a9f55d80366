package com.sulake.habbo.sound
{
   import com.sulake.core.assets.IAsset;
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.runtime.IUpdateReceiver;
   import com.sulake.core.utils.Map;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.handshake.AuthenticationOKMessageEvent;
   import com.sulake.habbo.communication.messages.incoming.sound.SoundSettingsEvent;
   import com.sulake.habbo.communication.messages.outgoing.sound.GetSoundSettingsComposer;
   import com.sulake.habbo.communication.messages.outgoing.sound.SetSoundSettingsComposer;
   import com.sulake.habbo.communication.messages.parser.sound.SoundSettingsParser;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.notifications.IHabboNotifications;
   import com.sulake.habbo.room.IRoomEngine;
   import com.sulake.habbo.sound.events.TraxSongLoadEvent;
   import com.sulake.habbo.sound.music.HabboMusicController;
   import com.sulake.habbo.sound.object.HabboSound;
   import com.sulake.habbo.sound.trax.TraxData;
   import com.sulake.habbo.sound.trax.TraxSample;
   import com.sulake.habbo.sound.trax.TraxSequencer;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboNotifications;
   import com.sulake.iid.IIDRoomEngine;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.media.Sound;
   import flash.net.URLRequest;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   
   public class HabboSoundManagerFlash10 extends Component implements IHabboSoundManager, IUpdateReceiver
   {
      
      private static const const_1504:int = 60;
      
      private static const const_1503:int = 25165823;
      
      private static const const_1505:int = 16777215;
       
      
      private var var_164:IHabboConfigurationManager;
      
      private var _communication:IHabboCommunicationManager;
      
      private var _connection:IConnection;
      
      private var _roomEngine:IRoomEngine;
      
      private var var_993:IHabboNotifications;
      
      private var var_992:Number = 1.0;
      
      private var var_655:Map;
      
      private var var_1224:Array;
      
      private var var_278:Map;
      
      private var var_994:Map;
      
      private var var_803:int = -1;
      
      private var var_802:TraxSequencer;
      
      private var var_242:IHabboMusicController;
      
      private var var_1223:Map;
      
      private var var_1493:ByteArray;
      
      private var var_2448:Boolean = false;
      
      public function HabboSoundManagerFlash10(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null, param4:Boolean = true)
      {
         this.var_655 = new Map();
         this.var_1224 = [];
         this.var_278 = new Map();
         this.var_994 = new Map();
         this.var_1223 = new Map();
         this.var_1493 = new ByteArray();
         super(param1,param2,param3);
         if(param4)
         {
            queueInterface(new IIDHabboConfigurationManager(),this.method_7);
            queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerReady);
            queueInterface(new IIDRoomEngine(),this.onRoomEngineReady);
            queueInterface(new IIDHabboNotifications(),this.onNotificationsReady);
         }
         events.addEventListener(TraxSongLoadEvent.const_1031,this.onTraxLoadComplete);
         registerUpdateReceiver(this,1);
         Logger.log("Sound manager 10 init");
      }
      
      public function get musicController() : IHabboMusicController
      {
         return this.var_242;
      }
      
      public function get volume() : Number
      {
         return this.var_992;
      }
      
      public function set volume(param1:Number) : void
      {
         this.updateVolumeSetting(param1);
         this.storeVolumeSetting();
      }
      
      public function set previewVolume(param1:Number) : void
      {
         this.updateVolumeSetting(param1);
      }
      
      override public function dispose() : void
      {
         this._connection = null;
         if(this.var_242)
         {
            this.var_242.dispose();
            this.var_242 = null;
         }
         if(this.var_278)
         {
            this.var_278.dispose();
            this.var_278 = null;
         }
         if(this.var_994)
         {
            this.var_994.dispose();
            this.var_994 = null;
         }
         if(this.var_655)
         {
            this.var_655.dispose();
            this.var_655 = null;
         }
         if(this._communication)
         {
            this._communication.release(new IIDHabboCommunicationManager());
            this._communication = null;
         }
         if(this.var_164)
         {
            this.var_164.release(new IIDHabboConfigurationManager());
            this.var_164 = null;
         }
         if(this._roomEngine)
         {
            this._roomEngine.release(new IIDRoomEngine());
            this._roomEngine = null;
         }
         if(this.var_993)
         {
            this.var_993.release(new IIDHabboNotifications());
            this.var_993 = null;
         }
         super.dispose();
      }
      
      public function playSound(param1:String) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc2_:HabboSound = this.var_994.getValue(param1);
         if(_loc2_ == null)
         {
            _loc3_ = "";
            switch(param1)
            {
               case HabboSoundTypesEnum.const_1206:
                  _loc3_ = "sound_call_for_help";
                  break;
               case HabboSoundTypesEnum.const_2008:
                  _loc3_ = "sound_guide_received_invitation";
                  break;
               case HabboSoundTypesEnum.const_1364:
                  _loc3_ = "sound_console_new_message";
                  break;
               case HabboSoundTypesEnum.SOUND_MESSAGE_SENT:
                  _loc3_ = "sound_console_message_sent";
                  break;
               case HabboSoundTypesEnum.const_1302:
                  _loc3_ = "sound_catalogue_pixels";
                  break;
               case HabboSoundTypesEnum.const_1213:
                  _loc3_ = "sound_catalogue_cash";
                  break;
               case HabboSoundTypesEnum.const_2021:
                  _loc3_ = "sound_respect_received";
                  break;
               default:
                  Logger.log("HabboSoundManagerFlash10: Unknown sound request: " + param1);
            }
            _loc4_ = assets.getAssetByName(_loc3_);
            _loc5_ = _loc4_.content as Sound;
            if(_loc5_ == null)
            {
               return;
            }
            _loc2_ = new HabboSound(_loc5_);
            this.var_994.add(param1,_loc2_);
         }
         _loc2_.volume = this.var_992;
         _loc2_.play();
      }
      
      private function loadSample(param1:int) : void
      {
         if(this.var_164 == null)
         {
            return;
         }
         var _loc2_:String = this.var_164.getKey("flash.dynamic.download.url","furniture/");
         _loc2_ += this.var_164.getKey("flash.dynamic.download.samples.template","mp3/sound_machine_sample_%typeid%.mp3");
         _loc2_ = _loc2_.replace(/%typeid%/,param1.toString());
         var _loc3_:URLRequest = new URLRequest(_loc2_);
         var _loc4_:Sound = new Sound();
         _loc4_.addEventListener(Event.COMPLETE,this.onSampleLoadComplete);
         _loc4_.addEventListener(IOErrorEvent.IO_ERROR,this.ioErrorHandler);
         _loc4_.load(_loc3_);
         this.var_655.add(_loc4_,param1);
      }
      
      public function loadTraxSong(param1:int, param2:String) : IHabboSound
      {
         if(this.var_802 != null)
         {
            return this.addTraxSongForDownload(param1,param2);
         }
         var _loc3_:TraxSequencer = this.createTraxInstance(param1,param2);
         if(!_loc3_.ready)
         {
            this.var_802 = _loc3_;
            this.var_803 = param1;
         }
         return _loc3_ as IHabboSound;
      }
      
      private function addTraxSongForDownload(param1:int, param2:String) : IHabboSound
      {
         var _loc3_:TraxSequencer = this.createTraxInstance(param1,param2,false);
         if(!_loc3_.ready)
         {
            this.var_1223.add(param1,_loc3_);
         }
         return _loc3_;
      }
      
      private function createTraxInstance(param1:int, param2:String, param3:Boolean = true) : TraxSequencer
      {
         var _loc4_:TraxData = new TraxData(param2);
         var _loc5_:TraxSequencer = new TraxSequencer(param1,_loc4_,this.var_278,events);
         _loc5_.volume = this.var_992;
         this.validateSampleAvailability(_loc5_,param3);
         return _loc5_;
      }
      
      private function validateSampleAvailability(param1:TraxSequencer, param2:Boolean) : void
      {
         var _loc3_:TraxData = param1.traxData;
         var _loc4_:Array = _loc3_.getSampleIds();
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length)
         {
            if(this.var_278.getValue(int(_loc4_[_loc6_])) == null)
            {
               if(param2)
               {
                  this.loadSample(int(_loc4_[_loc6_]));
               }
               _loc5_ = true;
            }
            _loc6_++;
         }
         if(_loc5_)
         {
            param1.ready = false;
         }
         else
         {
            param1.ready = true;
         }
      }
      
      public function notifyPlayedSong(param1:String, param2:String) : void
      {
         if(this.var_993 == null)
         {
            return;
         }
         this.var_993.addSongPlayingNotification(param1,param2);
      }
      
      private function method_7(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            this.var_164 = param2 as IHabboConfigurationManager;
            if(this.var_164.getBoolean("trax.player.sample.memory.purge.enabled",false))
            {
               this.var_2448 = true;
            }
         }
      }
      
      protected function setHabboConfiguration(param1:IHabboConfigurationManager) : void
      {
         this.var_164 = param1;
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 != null)
         {
            this._communication = IHabboCommunicationManager(param2);
            this._communication.addHabboConnectionMessageEvent(new AuthenticationOKMessageEvent(this.onAuthenticationOK));
         }
      }
      
      private function onAuthenticationOK(param1:IMessageEvent) : void
      {
         var _loc2_:IConnection = this._communication.getHabboMainConnection(this.onConnectionReady);
         if(_loc2_ != null)
         {
            _loc2_.addMessageEvent(new SoundSettingsEvent(this.onSoundSettingsEvent));
            _loc2_.send(new GetSoundSettingsComposer());
            this.onConnectionReady(_loc2_);
            this.initMusicController();
         }
      }
      
      private function onRoomEngineReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 == null)
         {
            return;
         }
         this._roomEngine = IRoomEngine(param2);
         this.initMusicController();
      }
      
      private function onNotificationsReady(param1:IID = null, param2:IUnknown = null) : void
      {
         if(param2 == null)
         {
            return;
         }
         this.var_993 = IHabboNotifications(param2);
      }
      
      private function onConnectionReady(param1:IConnection) : void
      {
         if(disposed)
         {
            return;
         }
         if(param1 != null)
         {
            this._connection = param1;
         }
         this.initMusicController();
      }
      
      private function initMusicController() : void
      {
         if(this.var_164 == null || this._connection == null || this._roomEngine == null || this.var_242 != null)
         {
            return;
         }
         this.var_242 = new HabboMusicController(this,events,this._roomEngine.events,this._connection);
      }
      
      protected function setMusicController(param1:IHabboMusicController) : void
      {
         this.var_242 = param1;
      }
      
      private function onSampleLoadComplete(param1:Event) : void
      {
         var _loc2_:Sound = param1.target as Sound;
         this.var_1224.push(_loc2_);
      }
      
      private function onTraxLoadComplete(param1:Event) : void
      {
         var _loc2_:TraxSongLoadEvent = param1 as TraxSongLoadEvent;
         if(_loc2_ == null)
         {
            return;
         }
         if(this.var_242 == null)
         {
            return;
         }
         this.var_242.onSongLoaded(_loc2_.id);
      }
      
      private function ioErrorHandler(param1:Event) : void
      {
         events.dispatchEvent(new TraxSongLoadEvent(TraxSongLoadEvent.const_2064,this.var_803));
         this.var_803 = -1;
         this.var_802 = null;
      }
      
      private function storeVolumeSetting() : void
      {
         if(this._connection != null)
         {
            this._connection.send(new SetSoundSettingsComposer(int(this.var_992 * 100)));
         }
      }
      
      private function updateVolumeSetting(param1:Number) : void
      {
         this.var_992 = param1;
         this.var_242.updateVolume(this.var_992);
      }
      
      private function onSoundSettingsEvent(param1:IMessageEvent) : void
      {
         var _loc2_:SoundSettingsEvent = param1 as SoundSettingsEvent;
         var _loc3_:SoundSettingsParser = _loc2_.getParser() as SoundSettingsParser;
         if(_loc3_.volume == 1 || _loc3_.volume == 0)
         {
            this.updateVolumeSetting(_loc3_.volume * 1);
         }
         else
         {
            this.updateVolumeSetting(_loc3_.volume / 100);
         }
      }
      
      private function processLoadedSample(param1:Sound) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Number = NaN;
         var _loc4_:* = null;
         if(this.var_655.getValue(param1) != null)
         {
            _loc2_ = this.var_655.remove(param1);
            if(this.var_278.getValue(_loc2_) == null)
            {
               this.var_1493.clear();
               _loc3_ = param1.length;
               param1.extract(this.var_1493,int(_loc3_ * 44.1));
               _loc4_ = new TraxSample(this.var_1493,_loc2_,TraxSample.const_1863,TraxSample.const_1961);
               this.var_278.add(_loc2_,_loc4_);
            }
         }
      }
      
      private function processLoadedSamples() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:int = 0;
         if(this.var_1224.length > 0)
         {
            _loc1_ = getTimer();
            _loc2_ = _loc1_;
            while(_loc2_ - _loc1_ < const_1504 && this.var_1224.length > 0)
            {
               _loc3_ = this.var_1224.splice(0,1)[0];
               this.processLoadedSample(_loc3_);
               _loc2_ = getTimer();
            }
            if(this.var_655.length == 0 && this.var_803 != -1)
            {
               this.var_802.ready = true;
               _loc4_ = this.var_803;
               this.var_803 = -1;
               this.var_802 = null;
               events.dispatchEvent(new TraxSongLoadEvent(TraxSongLoadEvent.const_1031,_loc4_));
               if(this.var_2448)
               {
                  this.processSampleMemoryUsage();
               }
            }
         }
      }
      
      private function loadNextSong() : void
      {
         var _loc1_:int = 0;
         var _loc2_:* = null;
         if(this.var_802 == null && this.var_1223.length > 0)
         {
            _loc1_ = this.var_1223.getKey(0);
            _loc2_ = this.var_1223.remove(_loc1_);
            if(_loc2_ != null && !_loc2_.disposed)
            {
               this.validateSampleAvailability(_loc2_,true);
               if(_loc2_.ready)
               {
                  events.dispatchEvent(new TraxSongLoadEvent(TraxSongLoadEvent.const_1031,_loc1_));
               }
               else
               {
                  this.var_802 = _loc2_;
                  this.var_803 = _loc1_;
               }
            }
         }
      }
      
      public function update(param1:uint) : void
      {
         this.processLoadedSamples();
         this.loadNextSong();
      }
      
      private function logSampleUsage() : void
      {
      }
      
      private function processSampleMemoryUsage() : void
      {
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = 0;
         var _loc9_:int = 0;
         var _loc10_:* = null;
         var _loc11_:int = 0;
         var _loc12_:* = null;
         var _loc1_:* = 0;
         var _loc2_:* = [];
         var _loc3_:Array = this.var_242.samplesIdsInUse;
         var _loc4_:int = 0;
         while(_loc4_ < this.var_278.length)
         {
            _loc5_ = this.var_278.getKey(_loc4_);
            _loc6_ = this.var_278.getWithIndex(_loc4_);
            if(_loc6_.usageCount != 0 && _loc3_.indexOf(_loc5_) == -1)
            {
               _loc2_.push(_loc6_);
            }
            _loc1_ += _loc6_.length;
            _loc4_++;
         }
         if(_loc1_ > const_1503)
         {
            _loc7_ = [];
            Logger.log("Sample memory limit reached, clearing the oldest and least frequently used samples");
            _loc2_.sort(this.orderUsageAndTimeStamp);
            _loc8_ = 0;
            _loc9_ = 0;
            while(_loc8_ < _loc1_ - const_1505 && _loc9_ < _loc2_.length)
            {
               _loc10_ = _loc2_[_loc9_++];
               _loc8_ += _loc10_.length;
               _loc7_.push(_loc10_.id);
            }
            _loc2_ = null;
            if(_loc7_.length > 0)
            {
               for each(_loc11_ in _loc7_)
               {
                  Logger.log("Purging sample : " + _loc11_);
                  _loc12_ = this.var_278.getValue(_loc11_) as TraxSample;
                  _loc12_.dispose();
                  this.var_278.remove(_loc11_);
               }
               this.var_242.samplesUnloaded(_loc7_);
            }
         }
      }
      
      private function orderUsageAndTimeStamp(param1:TraxSample, param2:TraxSample) : int
      {
         if(param1.usageCount < param2.usageCount)
         {
            return -1;
         }
         if(param1.usageCount > param2.usageCount)
         {
            return 1;
         }
         if(param1.usageTimeStamp < param2.usageTimeStamp)
         {
            return -1;
         }
         if(param1.usageTimeStamp > param2.usageTimeStamp)
         {
            return 1;
         }
         return 0;
      }
   }
}
