package com.sulake.habbo.friendbar.stream
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.core.localization.ILocalization;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.core.utils.Map;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IItemListWindow;
   import com.sulake.core.window.components.ISelectableWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.incoming.friendlist.EventStreamData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.EventStreamEvent;
   import com.sulake.habbo.communication.messages.incoming.handshake.UserObjectEvent;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.GetEventStreamComposer;
   import com.sulake.habbo.communication.messages.outgoing.friendlist.SetEventStreamingAllowedComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.friendbar.HabboFriendBar;
   import com.sulake.habbo.friendbar.iid.IIDHabboFriendBarView;
   import com.sulake.habbo.friendbar.utils.LinkTarget;
   import com.sulake.habbo.friendbar.utils.TestMessageWrapper;
   import com.sulake.habbo.friendbar.view.*;
   import com.sulake.habbo.utils.HabboWebTools;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class HabboEventStream extends AbstractView implements IHabboEventStream
   {
      
      private static const const_702:String = "list";
      
      private static const const_465:String = "header";
      
      private static const const_1423:String = "badge";
      
      private static const CLOSE:String = "close";
      
      private static const const_1107:String = "open_settings";
      
      private static const const_1106:String = "close_settings";
      
      private static const const_701:String = "settings";
      
      private static const const_704:String = "check_stream";
      
      private static const const_1610:String = "see_more";
      
      private static const const_1611:uint = 0;
      
      private static const const_2119:uint = 1;
      
      private static const const_1612:uint = 4293519841;
      
      private static const const_1613:uint = 4292467926;
      
      private static const const_703:int = -2;
      
      private static const const_1614:int = -3;
      
      private static const const_1105:int = 42;
      
      private static const const_1615:int = 60000;
      
      private static const const_1609:int = 30000;
      
      private static const const_1608:String = "friendbar.stream.";
       
      
      private var var_2042:int = 1;
      
      private var _window:IWindowContainer;
      
      private var var_710:Vector.<EventStreamEntity>;
      
      private var _connection:IConnection;
      
      private var var_917:Boolean = false;
      
      private var var_709:Timer;
      
      private var var_95:IHabboCommunicationManager;
      
      private var var_164:IHabboConfigurationManager;
      
      private var var_708:Timer;
      
      private var var_2738:IHabboFriendBarView;
      
      private var var_1073:Boolean;
      
      private var var_1609:Vector.<int>;
      
      private var var_1607:Boolean = false;
      
      private var var_2041:Boolean = false;
      
      private var var_2740:Array;
      
      private var var_2739:Array;
      
      private var var_1608:Map;
      
      public function HabboEventStream(param1:HabboFriendBar, param2:uint, param3:IAssetLibrary)
      {
         this.var_1609 = new Vector.<int>();
         this.var_2740 = ["friend_made","room_liked","achievement_earned","motto_changed","room_decorated"];
         this.var_2739 = ["no_link","open_mini_profile","visit_room","open_achievements","open_motto_changer","friend_request"];
         this.var_1608 = new Map();
         super(param1,param2,param3);
         this.var_710 = new Vector.<EventStreamEntity>();
         queueInterface(new IIDHabboCommunicationManager(),this.onCommunicationManagerAvailable);
         queueInterface(new IIDHabboFriendBarView(),this.onFriendBarViewAvailable);
         queueInterface(new IIDHabboConfigurationManager(),this.onConfigurationAvailable);
         this.var_1608.add("m","his");
         this.var_1608.add("f","her");
         if(!this.var_708)
         {
            this.var_708 = new Timer(const_1609);
            this.var_708.addEventListener(TimerEvent.TIMER,this.onRefreshTimerEvent);
            this.var_708.start();
         }
      }
      
      public function set visible(param1:Boolean) : void
      {
         if(!this._window)
         {
            this.setupUserInterface();
         }
         this._window.visible = param1;
         if(param1)
         {
            this._window.x = this._window.desktop.width - (this._window.width + const_1614);
            this._window.y = const_703;
            this._window.height = this._window.desktop.height - (const_703 + const_1105);
            this._window.activate();
            this.requestEventStreamData(this.var_2042);
         }
      }
      
      public function get visible() : Boolean
      {
         return !!this._window ? Boolean(this._window.visible) : false;
      }
      
      override public function dispose() : void
      {
         if(!disposed)
         {
            if(this.var_709)
            {
               this.var_709.stop();
               this.var_709.removeEventListener(TimerEvent.TIMER,this.onMinuteTimerEvent);
               this.var_709 = null;
            }
            if(this.var_708)
            {
               this.var_708.stop();
               this.var_708.removeEventListener(TimerEvent.TIMER,this.onRefreshTimerEvent);
               this.var_708 = null;
            }
            while(this.var_710.length > 0)
            {
               this.var_710.pop().dispose();
            }
            if(false)
            {
               EventStreamEntity.name_6.dispose();
            }
            EventStreamEntity.name_6 = null;
            EventStreamEntity.var_2237 = null;
            EventStreamEntity.ASSETS = null;
            if(this._window)
            {
               this._window.removeEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
               this._window.dispose();
               this._window = null;
            }
            super.dispose();
         }
      }
      
      private function clearStreamList() : void
      {
         var _loc1_:IItemListWindow = this._window.findChildByName(const_702) as IItemListWindow;
         _loc1_.destroyListItems();
         while(this.var_710.length > 0)
         {
            this.var_710.pop().dispose();
         }
      }
      
      public function populate(param1:Vector.<EventStreamData>) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:int = 0;
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         if(!this._window)
         {
            this.setupUserInterface();
         }
         if(this.visible)
         {
            this.clearStreamList();
            _loc2_ = this.var_710.length % 2 == 0;
            _loc4_ = this._window.findChildByName(const_702) as IItemListWindow;
            _loc5_ = 0;
            for each(_loc6_ in param1)
            {
               _loc3_ = EventStreamEntity.allocate();
               _loc3_.title = _loc6_.accountName;
               _loc3_.message = this.resolveMessageText(_loc6_);
               _loc3_.linkTarget = this.resolveLinkTarget(_loc6_);
               _loc3_.imageFilePath = this.resolveImagePath(_loc6_);
               _loc3_.minutesElapsed = _loc6_.minutesSinceEvent;
               _loc3_.window.color = !!_loc2_ ? uint(const_1612) : uint(const_1613);
               this.var_710.push(_loc3_);
               _loc4_.addListItem(_loc3_.window);
               _loc2_ = !_loc2_;
               if(this.var_1609.indexOf(_loc6_.id) == -1)
               {
                  _loc5_++;
                  this.var_1609.push(_loc6_.id);
               }
            }
            if(param1.length == 0)
            {
            }
            _loc7_ = this._window.findChildByName(const_465) as IItemListWindow;
            _loc8_ = _loc7_.getListItemByName(const_1423);
            _loc8_.caption = String(_loc5_);
            _loc8_.visible = _loc5_ != 0;
            this.var_1607 = false;
         }
         else
         {
            for each(_loc9_ in param1)
            {
               if(this.var_1609.indexOf(_loc9_.id) == -1)
               {
                  this.var_1607 = true;
                  break;
               }
            }
         }
      }
      
      private function resolveMessageText(param1:EventStreamData) : String
      {
         var _loc6_:* = null;
         var _loc2_:int = param1.actionId;
         var _loc3_:String = "friendbar.stream.type." + this.var_2740[_loc2_];
         var _loc4_:ILocalization = var_319.getLocalization(_loc3_);
         if(!_loc4_)
         {
            return _loc3_;
         }
         var _loc5_:String = _loc4_.raw;
         switch(_loc2_)
         {
            case EventStreamData.const_646:
               _loc5_ = _loc5_.replace("%targetString%",param1.extraDataStruct.friendName);
               break;
            case EventStreamData.const_1017:
               _loc5_ = _loc5_.replace("%targetString%",param1.extraDataStruct.roomName);
               break;
            case EventStreamData.const_759:
               _loc5_ = _loc5_.replace("%targetString%",var_319.getAchievementName(param1.extraDataStruct.achievementCode));
               break;
            case EventStreamData.const_1227:
               _loc6_ = var_319.getLocalization(const_1608 + this.var_1608.getValue(param1.accountGender));
               _loc5_ = _loc5_.replace("%gender%",_loc6_.value);
               _loc5_ = _loc5_.replace("%targetString%",param1.extraDataStruct.motto);
               break;
            case EventStreamData.const_1762:
         }
         return _loc5_;
      }
      
      private function resolveLinkTarget(param1:EventStreamData) : LinkTarget
      {
         var _loc3_:* = null;
         var _loc2_:String = "friendbar.stream.link." + this.var_2739[param1.linkTargetType];
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:* = null;
         var _loc7_:ILocalization = var_319.getLocalization(_loc2_);
         _loc3_ = !!_loc7_ ? _loc7_.raw : "";
         switch(param1.linkTargetType)
         {
            case EventStreamData.const_2024:
               _loc4_ = 0;
               _loc3_ = "";
               break;
            case EventStreamData.const_1410:
               _loc3_ = _loc3_.replace("%targetString%",param1.extraDataStruct.friendName);
               _loc4_ = 0;
               _loc5_ = uint(param1.extraDataStruct.friendId);
               break;
            case EventStreamData.const_1817:
               _loc4_ = 0;
               _loc5_ = uint(param1.extraDataStruct.roomId);
               break;
            case EventStreamData.const_1795:
               _loc4_ = 0;
               break;
            case EventStreamData.LINK_TARGET_OPEN_MOTTO_CHANGER:
               _loc4_ = 0;
               _loc5_ = 0;
               break;
            case EventStreamData.const_1768:
               _loc3_ = _loc3_.replace("%targetString%",param1.extraDataStruct.friendName);
               _loc4_ = 0;
               _loc5_ = uint(param1.extraDataStruct.friendId);
               _loc6_ = param1.extraDataStruct.friendName;
         }
         return new LinkTarget(_loc3_,_loc4_,_loc5_,_loc6_);
      }
      
      private function resolveImagePath(param1:EventStreamData) : String
      {
         var _loc2_:String = param1.imageFilePath;
         var _loc3_:int = param1.actionId;
         switch(_loc3_)
         {
            case EventStreamData.const_646:
               break;
            case EventStreamData.const_1017:
               break;
            case EventStreamData.const_759:
         }
         return _loc2_;
      }
      
      private function setupUserInterface() : void
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         var _loc3_:* = null;
         if(!this._window)
         {
            this._window = _windowManager.buildFromXML(assets.getAssetByName("event_stream_display_xml").content as XML) as IWindowContainer;
            this._window.height = this._window.desktop.height - (const_703 + const_1105);
            this._window.setParamFlag(WindowParam.const_357);
            this._window.setParamFlag(WindowParam.const_312);
            this._window.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            this._window.findChildByName(CLOSE).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            this._window.findChildByName(const_1107).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            this._window.findChildByName(const_1106).addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,this.onMouseClick);
            this._window.visible = false;
            _loc1_ = IWindowContainer(this._window.findChildByName(const_701));
            _loc1_.visible = !this.var_1073;
            _loc1_.procedure = this.settingsEventProc;
            ISelectableWindow(_loc1_.findChildByName(const_704)).isSelected = this.var_1073;
            _loc2_ = this._window.findChildByName(const_702) as IItemListWindow;
            _loc3_ = _loc2_.removeListItemAt(0) as IWindowContainer;
            EventStreamEntity.name_6 = _loc3_;
            EventStreamEntity.var_2237 = var_319;
            EventStreamEntity.ASSETS = assets;
            if(!this.var_709)
            {
               this.var_709 = new Timer(const_1615);
               this.var_709.addEventListener(TimerEvent.TIMER,this.onMinuteTimerEvent);
               this.var_709.start();
            }
         }
      }
      
      private function onMouseClick(param1:WindowMouseEvent) : void
      {
         switch(param1.target.name)
         {
            case CLOSE:
               this.visible = false;
               break;
            case const_1107:
               this._window.findChildByName(const_701).visible = true;
               break;
            case const_1106:
               this._window.findChildByName(const_701).visible = false;
         }
      }
      
      private function settingsEventProc(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type == WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            switch(param2.name)
            {
               case const_1610:
                  _windowManager.alert("${catalog.alert.external.link.title}","${catalog.alert.external.link.desc}",0,null);
                  HabboWebTools.openWebPage(var_944.getKey("link.friendbar.stream.settings.see.more",""));
            }
         }
         if(param1.type == WindowEvent.const_48)
         {
            switch(param2.name)
            {
               case const_704:
                  this.var_1073 = true;
                  this.sendSetEventStreamingEnabled(true);
                  Logger.log("Streaming enabled");
            }
         }
         else if(param1.type == WindowEvent.const_448)
         {
            switch(param2.name)
            {
               case const_704:
                  this.var_1073 = false;
                  this.sendSetEventStreamingEnabled(false);
                  Logger.log("Streaming disabled");
            }
         }
      }
      
      private function onMinuteTimerEvent(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_710)
         {
            _loc2_.minutesElapsed += 1;
         }
      }
      
      private function onRefreshTimerEvent(param1:TimerEvent) : void
      {
         if(this.visible || !this.var_1607)
         {
            this.requestEventStreamData(this.var_2042);
         }
      }
      
      private function requestEventStreamData(param1:uint) : void
      {
         if(this._connection && this._connection.connected && this.var_2041)
         {
            this._connection.send(new GetEventStreamComposer(param1 == const_1611 ? 0 : int(GetEventStreamComposer.const_1950)));
            this.var_917 = true;
            Logger.log("Requested stream events in mode " + param1);
         }
      }
      
      private function onCommunicationManagerAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_95 = param2 as IHabboCommunicationManager;
         this.var_95.addHabboConnectionMessageEvent(new EventStreamEvent(this.onEventStreamEvent));
         this.var_95.addHabboConnectionMessageEvent(new UserObjectEvent(this.onUserObjectEvent));
         this._connection = this.var_95.getHabboMainConnection(this.onConnectionInstanceAvailable);
      }
      
      private function onConnectionInstanceAvailable(param1:IConnection) : void
      {
         this._connection = param1;
      }
      
      private function onEventStreamEvent(param1:EventStreamEvent) : void
      {
         this.populate(param1.events);
         this.var_2738.setStreamIconNotify(!this.visible && this.var_1607);
      }
      
      private function testEventStream(param1:int = 1) : void
      {
         var _loc2_:Vector.<EventStreamData> = new Vector.<EventStreamData>();
         var _loc3_:int = 0;
         while(_loc3_ < param1)
         {
            _loc2_.push(new EventStreamData(_loc3_,EventStreamData.const_646,String(_loc3_ * 1000),"FooBar" + _loc3_,"m","http://d63.varoke.net/habbo-imaging/badge/b1003Xs05175s05173s091145ec244dcc5eaf54aaabf367665f39c67.gif",_loc3_,EventStreamData.const_1410,new TestMessageWrapper(["1234","Friend\'s friend" + _loc3_])));
            _loc3_++;
         }
         this.populate(_loc2_);
      }
      
      private function onFriendBarViewAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_2738 = param2 as IHabboFriendBarView;
      }
      
      private function onConfigurationAvailable(param1:IID, param2:IUnknown) : void
      {
         this.var_164 = param2 as IHabboConfigurationManager;
         if(this.var_164.getKey("friendbar.stream.enabled","false") == "true")
         {
            this.var_2041 = true;
         }
         else
         {
            this.var_2041 = false;
         }
      }
      
      private function sendSetEventStreamingEnabled(param1:Boolean) : void
      {
         if(this._connection && this._connection.connected)
         {
            this._connection.send(new SetEventStreamingAllowedComposer(param1));
         }
      }
      
      private function onUserObjectEvent(param1:UserObjectEvent) : void
      {
         this.var_1073 = param1.getParser().streamPublishingAllowed;
         Logger.log("Stream events allowed " + this.var_1073);
      }
      
      public function refreshEventStream() : void
      {
         this.requestEventStreamData(this.var_2042);
      }
   }
}
