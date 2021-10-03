package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_350:int = 1;
      
      public static const const_218:int = 2;
      
      public static const const_267:int = 3;
      
      public static const const_346:int = 4;
      
      public static const const_264:int = 5;
      
      public static const const_403:int = 1;
      
      public static const const_989:int = 2;
      
      public static const const_775:int = 3;
      
      public static const const_969:int = 4;
      
      public static const const_279:int = 5;
      
      public static const const_867:int = 6;
      
      public static const const_816:int = 7;
      
      public static const const_416:int = 8;
      
      public static const const_635:int = 9;
      
      public static const const_2222:int = 10;
      
      public static const const_755:int = 11;
      
      public static const const_643:int = 12;
       
      
      private var var_494:Array;
      
      private var _navigator:HabboNavigator;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         this._navigator = param1;
         this.var_494 = new Array();
         this.var_494.push(new Tab(this._navigator,const_350,const_643,new EventsTabPageDecorator(this._navigator),MainViewCtrl.const_649));
         this.var_494.push(new Tab(this._navigator,const_218,const_403,new RoomsTabPageDecorator(this._navigator),MainViewCtrl.const_649));
         this.var_494.push(new Tab(this._navigator,const_346,const_755,new OfficialTabPageDecorator(this._navigator),MainViewCtrl.const_1203));
         this.var_494.push(new Tab(this._navigator,const_267,const_279,new MyRoomsTabPageDecorator(this._navigator),MainViewCtrl.const_649));
         this.var_494.push(new Tab(this._navigator,const_264,const_416,new SearchTabPageDecorator(this._navigator),MainViewCtrl.const_1332));
         this.setSelectedTab(const_350);
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_346;
      }
      
      public function get tabs() : Array
      {
         return this.var_494;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         this.getTab(param1).selected = true;
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_494)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in this.var_494)
         {
            _loc1_.selected = false;
         }
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in this.var_494)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
   }
}
