package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_197;
         param1["bound_to_parent_rect"] = const_105;
         param1["child_window"] = const_1386;
         param1["embedded_controller"] = const_1285;
         param1["resize_to_accommodate_children"] = WINDOW_PARAM_RESIZE_TO_ACCOMMODATE_CHILDREN;
         param1["input_event_processor"] = const_30;
         param1["internal_event_handling"] = const_830;
         param1["mouse_dragging_target"] = const_303;
         param1["mouse_dragging_trigger"] = const_417;
         param1["mouse_scaling_target"] = const_385;
         param1["mouse_scaling_trigger"] = const_555;
         param1["horizontal_mouse_scaling_trigger"] = const_300;
         param1["vertical_mouse_scaling_trigger"] = const_313;
         param1["observe_parent_input_events"] = const_1267;
         param1["optimize_region_to_layout_size"] = const_660;
         param1["parent_window"] = const_1183;
         param1["relative_horizontal_scale_center"] = const_235;
         param1["relative_horizontal_scale_fixed"] = const_176;
         param1["relative_horizontal_scale_move"] = const_357;
         param1["relative_horizontal_scale_strech"] = const_451;
         param1["relative_scale_center"] = const_1309;
         param1["relative_scale_fixed"] = const_843;
         param1["relative_scale_move"] = const_1197;
         param1["relative_scale_strech"] = const_1245;
         param1["relative_vertical_scale_center"] = const_212;
         param1["relative_vertical_scale_fixed"] = const_160;
         param1["relative_vertical_scale_move"] = const_245;
         param1["relative_vertical_scale_strech"] = const_312;
         param1["on_resize_align_left"] = const_979;
         param1["on_resize_align_right"] = const_576;
         param1["on_resize_align_center"] = const_648;
         param1["on_resize_align_top"] = const_760;
         param1["on_resize_align_bottom"] = const_577;
         param1["on_resize_align_middle"] = const_512;
         param1["on_accommodate_align_left"] = const_1368;
         param1["on_accommodate_align_right"] = const_658;
         param1["on_accommodate_align_center"] = const_955;
         param1["on_accommodate_align_top"] = const_1258;
         param1["on_accommodate_align_bottom"] = const_601;
         param1["on_accommodate_align_middle"] = const_795;
         param1["route_input_events_to_parent"] = const_515;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_1402;
         param1["scalable_with_mouse"] = const_1294;
         param1["reflect_horizontal_resize_to_parent"] = const_619;
         param1["reflect_vertical_resize_to_parent"] = const_566;
         param1["reflect_resize_to_parent"] = const_373;
         param1["force_clipping"] = WINDOW_PARAM_FORCE_CLIPPING;
         param1["inherit_caption"] = const_1269;
         if(param2 != null)
         {
            for(param2[param1[_loc3_]] in param1)
            {
            }
         }
      }
   }
}
