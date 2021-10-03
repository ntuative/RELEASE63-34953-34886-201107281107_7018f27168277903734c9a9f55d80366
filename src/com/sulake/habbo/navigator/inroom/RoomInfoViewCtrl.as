package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.ToggleStaffPickMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboNavigatorEvent;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.utils.HabboWebTools;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var _navigator:HabboNavigator;
      
      private var _window:IWindowContainer;
      
      private var var_194:IWindowContainer;
      
      private var var_3097:int;
      
      private var var_388:RoomEventViewCtrl;
      
      private var var_385:Timer;
      
      private var var_151:RoomSettingsCtrl;
      
      private var var_284:RoomThumbnailCtrl;
      
      private var var_1015:TagRenderer;
      
      private var var_386:IWindowContainer;
      
      private var var_387:IWindowContainer;
      
      private var var_664:IWindowContainer;
      
      private var var_1886:IWindowContainer;
      
      private var var_1885:IWindowContainer;
      
      private var var_1243:IWindowContainer;
      
      private var var_1012:ITextWindow;
      
      private var var_1011:ITextWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_816:ITextWindow;
      
      private var var_1244:ITextWindow;
      
      private var var_1014:ITextWindow;
      
      private var var_818:ITextWindow;
      
      private var var_1516:ITextWindow;
      
      private var var_283:IWindowContainer;
      
      private var var_814:IWindowContainer;
      
      private var var_1518:IWindowContainer;
      
      private var var_1887:ITextWindow;
      
      private var var_665:ITextWindow;
      
      private var var_1888:IWindow;
      
      private var var_1245:IContainerButtonWindow;
      
      private var var_1247:IContainerButtonWindow;
      
      private var var_1248:IContainerButtonWindow;
      
      private var _remFavouriteButton:IContainerButtonWindow;
      
      private var var_1249:IContainerButtonWindow;
      
      private var var_1519:IButtonWindow;
      
      private var var_1515:IButtonWindow;
      
      private var var_1517:IButtonWindow;
      
      private var var_815:IWindowContainer;
      
      private var var_1246:ITextWindow;
      
      private var var_1013:ITextFieldWindow;
      
      private var _buttons:IWindowContainer;
      
      private var var_817:IButtonWindow;
      
      private var var_1514:Boolean = false;
      
      private const const_831:int = 75;
      
      private const const_879:int = 3;
      
      private const const_981:int = 45;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_388 = new RoomEventViewCtrl(this._navigator);
         this.var_151 = new RoomSettingsCtrl(this._navigator,this,true);
         this.var_284 = new RoomThumbnailCtrl(this._navigator);
         this.var_1015 = new TagRenderer(this._navigator);
         this._navigator.roomSettingsCtrls.push(this.var_151);
         this.var_385 = new Timer(6000,1);
         this.var_385.addEventListener(TimerEvent.TIMER,this.hideInfo);
      }
      
      public function dispose() : void
      {
         if(this.var_385)
         {
            this.var_385.removeEventListener(TimerEvent.TIMER,this.hideInfo);
            this.var_385.reset();
            this.var_385 = null;
         }
         this._navigator = null;
         this.var_388 = null;
         this.var_151 = null;
         this.var_284 = null;
         if(this.var_1015)
         {
            this.var_1015.dispose();
            this.var_1015 = null;
         }
         this.var_194 = null;
         this.var_386 = null;
         this.var_387 = null;
         this.var_664 = null;
         this.var_1886 = null;
         this.var_1885 = null;
         this.var_1243 = null;
         this.var_1012 = null;
         this.var_1011 = null;
         this._ownerName = null;
         this.var_816 = null;
         this.var_1244 = null;
         this.var_1014 = null;
         this.var_818 = null;
         this.var_1516 = null;
         this.var_283 = null;
         this.var_814 = null;
         this.var_1518 = null;
         this.var_1887 = null;
         this.var_665 = null;
         this.var_1888 = null;
         this.var_1245 = null;
         this.var_1247 = null;
         this.var_1248 = null;
         this._remFavouriteButton = null;
         this.var_1249 = null;
         this.var_1519 = null;
         this.var_1515 = null;
         this.var_1517 = null;
         this.var_815 = null;
         this.var_1246 = null;
         this.var_1013 = null;
         this._buttons = null;
         this.var_817 = null;
         if(this._window)
         {
            this._window.dispose();
            this._window = null;
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         this.refresh();
      }
      
      public function startEventEdit() : void
      {
         this.var_385.reset();
         this.var_388.active = true;
         this.var_151.active = false;
         this.var_284.active = false;
         this.reload();
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_385.reset();
         this.var_151.load(param1);
         this.var_151.active = true;
         this.var_388.active = false;
         this.var_284.active = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function backToRoomSettings() : void
      {
         this.var_151.active = true;
         this.var_388.active = false;
         this.var_284.active = false;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_385.reset();
         this.var_151.active = false;
         this.var_388.active = false;
         this.var_284.active = true;
         this.reload();
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      public function close() : void
      {
         if(this._window == null)
         {
            return;
         }
         this._window.visible = false;
         this.var_1514 = false;
         this._navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      public function reload() : void
      {
         if(this._window != null && this._window.visible)
         {
            this.refresh();
         }
      }
      
      public function toggle() : void
      {
         this.var_385.reset();
         this.var_388.active = false;
         this.var_151.active = false;
         this.var_284.active = false;
         this.refresh();
         this._window.visible = !this._window.visible;
         this._window.x = this._window.desktop.width - this._window.width - this.const_879;
         this._window.y = this.const_831;
         if(this._navigator.configuration.getBoolean("club.membership.extend.vip.promotion.enabled",false) || this._navigator.configuration.getBoolean("club.membership.extend.basic.promotion.enabled",false))
         {
            this._window.y = 91;
         }
         if(this._window.visible)
         {
            this._window.activate();
         }
      }
      
      private function refresh() : void
      {
         this.prepareWindow();
         this.refreshRoom();
         this.refreshEvent();
         this.refreshEmbed();
         this.refreshButtons();
         Util.moveChildrenToColumn(this.var_194,["room_info","event_info","embed_info","buttons_container"],0,2);
         this.var_194.height = Util.getLowestPoint(this.var_194);
         var _loc1_:int = this._window.desktop.height - this._window.height - this.const_981;
         if(this._window.y > _loc1_)
         {
            this._window.y = _loc1_ < 0 ? 0 : int(_loc1_);
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(this.var_386);
         var _loc1_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _loc1_ != null && _loc1_.flatId == this._navigator.data.homeRoomId;
         this.refreshRoomDetails(_loc1_,_loc2_);
         this.refreshPublicSpaceDetails(this._navigator.data.enteredPublicSpace);
         this.refreshRoomButtons(_loc2_);
         this.var_151.refresh(this.var_386);
         this.var_284.refresh(this.var_386);
         Util.moveChildrenToColumn(this.var_386,["room_details","room_buttons"],0,2);
         this.var_386.height = Util.getLowestPoint(this.var_386);
         this.var_386.visible = true;
         Logger.log("XORP: " + this.var_387.visible + ", " + this.var_1243.visible + ", " + this.var_664.visible + ", " + this.var_664.rectangle + ", " + this.var_386.rectangle);
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(this.var_283);
         var _loc1_:RoomEventData = this._navigator.data.roomEventData;
         this.refreshEventDetails(_loc1_);
         this.refreshEventButtons(_loc1_);
         this.var_388.refresh(this.var_283);
         if(Util.hasVisibleChildren(this.var_283) && !(this.var_151.active || this.var_284.active))
         {
            Util.moveChildrenToColumn(this.var_283,["event_details","event_buttons"],0,2);
            this.var_283.height = Util.getLowestPoint(this.var_283);
            this.var_283.visible = true;
         }
         else
         {
            this.var_283.visible = false;
         }
         Logger.log("EVENT: " + this.var_283.visible + ", " + this.var_283.rectangle);
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = this._navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         var _loc2_:* = this._navigator.data.enteredGuestRoom != null;
         if(_loc2_ && _loc1_ && !this.var_151.active && !this.var_284.active && !this.var_388.active)
         {
            this.var_815.visible = true;
            this.var_1013.text = this.getEmbedData();
         }
         else
         {
            this.var_815.visible = false;
         }
      }
      
      private function refreshButtons() : void
      {
         var _loc1_:* = false;
         if(!this._buttons)
         {
            return;
         }
         if(this.var_151.active)
         {
            this._buttons.visible = false;
            return;
         }
         this._buttons.visible = true;
         if(this.var_817)
         {
            _loc1_ = this._navigator.data.enteredGuestRoom != null;
            this.var_817.visible = _loc1_;
            if(this.var_1514)
            {
               this.var_817.caption = "${navigator.zoom.in}";
            }
            else
            {
               this.var_817.caption = "${navigator.zoom.out}";
            }
         }
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || this.var_151.active || this.var_284.active)
         {
            return;
         }
         this.var_1012.text = param1.roomName;
         this.var_1012.height = this.var_1012.textHeight + 5;
         this._ownerName.text = param1.ownerName;
         this.var_816.text = param1.description;
         this.var_1015.refreshTags(this.var_387,param1.tags);
         this.var_816.visible = false;
         if(param1.description != "")
         {
            this.var_816.height = this.var_816.textHeight + 5;
            this.var_816.visible = true;
         }
         var _loc3_:Boolean = Boolean(this._navigator.configuration.getKey("client.allow.facebook.like") == "1");
         this._navigator.refreshButton(this.var_1247,"facebook_logo_small",_loc3_,null,0);
         this.var_1247.visible = _loc3_;
         var _loc4_:* = this._navigator.data.currentRoomRating == -1;
         this._navigator.refreshButton(this.var_1245,"thumb_up",_loc4_,null,0);
         this.var_1245.visible = _loc4_;
         this.var_818.visible = !_loc4_;
         this.var_1516.visible = !_loc4_;
         this.var_1516.text = "" + this._navigator.data.currentRoomRating;
         this.refreshStuffPick();
         this._navigator.refreshButton(this.var_387,"home",param2,null,0);
         this._navigator.refreshButton(this.var_387,"favourite",!param2 && this._navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(this.var_387,["room_name","owner_name_cont","tags","room_desc","rating_cont","staff_pick_button"],this.var_1012.y,0);
         this.var_387.visible = true;
         this.var_387.height = Util.getLowestPoint(this.var_387);
      }
      
      private function refreshStuffPick() : void
      {
         var _loc1_:IWindow = this.var_387.findChildByName("staff_pick_button");
         if(!this._navigator.data.roomPicker)
         {
            _loc1_.visible = false;
            return;
         }
         _loc1_.visible = true;
         _loc1_.caption = this._navigator.getText(!!this._navigator.data.currentRoomIsStaffPick ? "navigator.staffpicks.unpick" : "navigator.staffpicks.pick");
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || this.var_151.active || this.var_284.active)
         {
            return;
         }
         this.var_1011.text = this._navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         this.var_1011.height = this.var_1011.textHeight + 5;
         this.var_1244.text = this._navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         this.var_1244.height = this.var_1244.textHeight + 5;
         Util.moveChildrenToColumn(this.var_664,["public_space_name","public_space_desc"],this.var_1011.y,0);
         this.var_664.visible = true;
         this.var_664.height = Math.max(86,Util.getLowestPoint(this.var_664));
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || this.var_388.active)
         {
            return;
         }
         this.var_1887.text = param1.eventName;
         this.var_665.text = param1.eventDescription;
         this.var_1015.refreshTags(this.var_814,[this._navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         this.var_665.visible = false;
         if(param1.eventDescription != "")
         {
            this.var_665.height = this.var_665.textHeight + 5;
            this.var_665.y = Util.getLowestPoint(this.var_814) + 2;
            this.var_665.visible = true;
         }
         this.var_814.visible = true;
         this.var_814.height = Util.getLowestPoint(this.var_814);
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(this._navigator.data.enteredGuestRoom == null || this.var_151.active || this.var_284.active)
         {
            return;
         }
         this.var_1519.visible = this._navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = this._navigator.data.isCurrentRoomFavourite();
         this.var_1248.visible = this._navigator.data.canAddFavourite && !_loc2_;
         this._remFavouriteButton.visible = this._navigator.data.canAddFavourite && _loc2_;
         this.var_1249.visible = this._navigator.data.canEditRoomSettings && !param1;
         this.var_1243.visible = Util.hasVisibleChildren(this.var_1243);
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(this.var_388.active)
         {
            return;
         }
         this.var_1515.visible = param1 == null && this._navigator.data.currentRoomOwner;
         this.var_1517.visible = param1 != null && (this._navigator.data.currentRoomOwner || this._navigator.data.eventMod);
         this.var_1518.visible = Util.hasVisibleChildren(this.var_1518);
      }
      
      private function prepareWindow() : void
      {
         if(this._window != null)
         {
            return;
         }
         this._window = IWindowContainer(this._navigator.getXmlWindow("iro_room_details_framed"));
         this.var_194 = this._window.findChildByName("content") as IWindowContainer;
         this._window.visible = false;
         this.var_386 = IWindowContainer(this.find("room_info"));
         this.var_387 = IWindowContainer(this.find("room_details"));
         this.var_664 = IWindowContainer(this.find("public_space_details"));
         this.var_1886 = IWindowContainer(this.find("owner_name_cont"));
         this.var_1885 = IWindowContainer(this.find("rating_cont"));
         this.var_1243 = IWindowContainer(this.find("room_buttons"));
         this.var_1012 = ITextWindow(this.find("room_name"));
         this.var_1011 = ITextWindow(this.find("public_space_name"));
         this._ownerName = ITextWindow(this.find("owner_name"));
         this.var_816 = ITextWindow(this.find("room_desc"));
         this.var_1244 = ITextWindow(this.find("public_space_desc"));
         this.var_1014 = ITextWindow(this.find("owner_caption"));
         this.var_818 = ITextWindow(this.find("rating_caption"));
         this.var_1516 = ITextWindow(this.find("rating_txt"));
         this.var_283 = IWindowContainer(this.find("event_info"));
         this.var_814 = IWindowContainer(this.find("event_details"));
         this.var_1518 = IWindowContainer(this.find("event_buttons"));
         this.var_1887 = ITextWindow(this.find("event_name"));
         this.var_665 = ITextWindow(this.find("event_desc"));
         this.var_1247 = IContainerButtonWindow(this.find("facebook_like_button"));
         this.var_1245 = IContainerButtonWindow(this.find("rate_up_button"));
         this.var_1888 = this.find("staff_pick_button");
         this.var_1248 = IContainerButtonWindow(this.find("add_favourite_button"));
         this._remFavouriteButton = IContainerButtonWindow(this.find("rem_favourite_button"));
         this.var_1249 = IContainerButtonWindow(this.find("make_home_button"));
         this.var_1519 = IButtonWindow(this.find("room_settings_button"));
         this.var_1515 = IButtonWindow(this.find("create_event_button"));
         this.var_1517 = IButtonWindow(this.find("edit_event_button"));
         this.var_815 = IWindowContainer(this.find("embed_info"));
         this.var_1246 = ITextWindow(this.find("embed_info_txt"));
         this.var_1013 = ITextFieldWindow(this.find("embed_src_txt"));
         this._buttons = IWindowContainer(this.find("buttons_container"));
         this.var_817 = IButtonWindow(this.find("zoom_button"));
         this.addMouseClickListener(this.var_1248,this.onAddFavouriteClick);
         this.addMouseClickListener(this._remFavouriteButton,this.onRemoveFavouriteClick);
         this.addMouseClickListener(this.var_1519,this.onRoomSettingsClick);
         this.addMouseClickListener(this.var_1249,this.onMakeHomeClick);
         this.addMouseClickListener(this.var_1515,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1517,this.onEventSettingsClick);
         this.addMouseClickListener(this.var_1013,this.onEmbedSrcClick);
         this.addMouseClickListener(this.var_1245,this.onThumbUp);
         this.addMouseClickListener(this.var_1888,this.onStaffPick);
         this.addMouseClickListener(this.var_1247,this.onFacebookLike);
         this.addMouseClickListener(this.var_817,this.onZoomClick);
         this._navigator.refreshButton(this.var_1248,"favourite",true,null,0);
         this._navigator.refreshButton(this._remFavouriteButton,"favourite",true,null,0);
         this._navigator.refreshButton(this.var_1249,"home",true,null,0);
         this.addMouseClickListener(this._window.findChildByTag("close"),this.onCloseButtonClick);
         this.addMouseOverListener(this.var_386,this.onHover);
         this.addMouseOverListener(this.var_283,this.onHover);
         this.var_1014.width = this.var_1014.textWidth;
         Util.moveChildrenToRow(this.var_1886,["owner_caption","owner_name"],this.var_1014.x,this.var_1014.y,3);
         this.var_818.width = this.var_818.textWidth;
         Util.moveChildrenToRow(this.var_1885,["rating_caption","rating_txt"],this.var_818.x,this.var_818.y,3);
         this.var_1246.height = this.var_1246.textHeight + 5;
         Util.moveChildrenToColumn(this.var_815,["embed_info_txt","embed_src_txt"],this.var_1246.y,2);
         this.var_815.height = Util.getLowestPoint(this.var_815) + 5;
         this.var_3097 = this._window.y + this._window.height;
      }
      
      private function addMouseClickListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,param2);
         }
      }
      
      private function addMouseOverListener(param1:IWindow, param2:Function) : void
      {
         if(param1 != null)
         {
            param1.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER,param2);
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = this._window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent) : void
      {
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(this._navigator.data.isFavouritesFull())
         {
            _loc2_ = new SimpleAlertView(this._navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc2_.show();
         }
         else
         {
            this._navigator.send(new AddFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         this._navigator.send(new DeleteFavouriteRoomMessageComposer(this._navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onEventSettingsClick(param1:WindowEvent) : void
      {
         if(this._navigator.data.roomEventData == null)
         {
            if(this._navigator.data.currentRoomOwner)
            {
               this._navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            this.startEventEdit();
         }
      }
      
      private function onRoomSettingsClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         this.startRoomSettingsEdit(_loc2_.flatId);
      }
      
      private function onMakeHomeClick(param1:WindowEvent) : void
      {
         var _loc2_:GuestRoomData = this._navigator.data.enteredGuestRoom;
         if(_loc2_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc2_.flatId);
         this._navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc2_.flatId));
      }
      
      private function onCloseButtonClick(param1:WindowEvent) : void
      {
         this.hideInfo(null);
      }
      
      private function onThumbUp(param1:WindowEvent) : void
      {
         this._navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function onStaffPick(param1:WindowEvent) : void
      {
         this._navigator.send(new ToggleStaffPickMessageComposer(this._navigator.data.enteredGuestRoom.flatId,this._navigator.data.currentRoomIsStaffPick));
      }
      
      private function onFacebookLike(param1:WindowEvent) : void
      {
         HabboWebTools.facebookLike(this._navigator.data.enteredGuestRoom.flatId);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent) : void
      {
         this.var_1013.setSelection(0,this.var_1013.text.length);
      }
      
      private function onZoomClick(param1:WindowEvent) : void
      {
         this._navigator.events.dispatchEvent(new HabboNavigatorEvent(HabboNavigatorEvent.const_377));
         this.var_1514 = !this.var_1514;
         this.refreshButtons();
      }
      
      private function onHover(param1:WindowEvent) : void
      {
         this.var_385.reset();
      }
      
      private function hideInfo(param1:Event) : void
      {
         this._window.visible = false;
         if(this.var_151 != null)
         {
            this.var_151.resetView();
         }
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(this._navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + this._navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + this._navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = this._navigator.configuration.getKey("user.hash","");
         this._navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         this._navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         this._navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return this._navigator.getText("navigator.embed.src");
      }
   }
}
