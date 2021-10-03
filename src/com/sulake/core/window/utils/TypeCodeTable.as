package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_908;
         param1["badge"] = const_986;
         param1["bitmap"] = const_395;
         param1["border"] = const_742;
         param1["border_notify"] = const_1767;
         param1["bubble"] = const_905;
         param1["bubble_pointer_up"] = const_1179;
         param1["bubble_pointer_right"] = const_1199;
         param1["bubble_pointer_down"] = const_1224;
         param1["bubble_pointer_left"] = const_1371;
         param1["button"] = const_604;
         param1["button_thick"] = const_739;
         param1["button_icon"] = const_1995;
         param1["button_group_left"] = const_892;
         param1["button_group_center"] = const_791;
         param1["button_group_right"] = const_825;
         param1["canvas"] = const_991;
         param1["checkbox"] = const_885;
         param1["closebutton"] = const_1251;
         param1["container"] = const_434;
         param1["container_button"] = const_762;
         param1["display_object_wrapper"] = const_901;
         param1["dropmenu"] = const_673;
         param1["dropmenu_item"] = const_616;
         param1["frame"] = const_440;
         param1["frame_notify"] = const_1895;
         param1["header"] = const_999;
         param1["html"] = const_1408;
         param1["icon"] = const_1184;
         param1["itemgrid"] = const_1238;
         param1["itemgrid_horizontal"] = const_627;
         param1["itemgrid_vertical"] = const_912;
         param1["itemlist"] = WINDOW_TYPE_ITEMLIST;
         param1["itemlist_horizontal"] = const_435;
         param1["itemlist_vertical"] = const_408;
         param1["label"] = const_1007;
         param1["maximizebox"] = const_1778;
         param1["menu"] = const_2045;
         param1["menu_item"] = const_1928;
         param1["submenu"] = const_1395;
         param1["minimizebox"] = const_1963;
         param1["notify"] = const_1775;
         param1["null"] = const_846;
         param1["password"] = const_802;
         param1["radiobutton"] = const_833;
         param1["region"] = const_325;
         param1["restorebox"] = const_1997;
         param1["scaler"] = const_612;
         param1["scaler_horizontal"] = const_2047;
         param1["scaler_vertical"] = const_2044;
         param1["scrollbar_horizontal"] = const_634;
         param1["scrollbar_vertical"] = const_895;
         param1["scrollbar_slider_button_up"] = const_1274;
         param1["scrollbar_slider_button_down"] = const_1289;
         param1["scrollbar_slider_button_left"] = const_1384;
         param1["scrollbar_slider_button_right"] = const_1315;
         param1["scrollbar_slider_bar_horizontal"] = const_1236;
         param1["scrollbar_slider_bar_vertical"] = const_1207;
         param1["scrollbar_slider_track_horizontal"] = const_1307;
         param1["scrollbar_slider_track_vertical"] = const_1208;
         param1["scrollable_itemlist"] = const_1772;
         param1["scrollable_itemlist_vertical"] = const_614;
         param1["scrollable_itemlist_horizontal"] = const_1387;
         param1["selector"] = const_898;
         param1["selector_list"] = const_870;
         param1["submenu"] = const_1395;
         param1["tab_button"] = const_938;
         param1["tab_container_button"] = const_1190;
         param1["tab_context"] = const_413;
         param1["tab_content"] = const_1376;
         param1["tab_selector"] = const_778;
         param1["text"] = const_941;
         param1["input"] = const_988;
         param1["toolbar"] = const_1789;
         param1["tooltip"] = const_453;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
