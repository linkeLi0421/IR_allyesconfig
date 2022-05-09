; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/global.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/global.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

@viafb_platform_epia_dvi = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_device_lcd_dualedge = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_bus_width = dso_local global { i32, [28 x i8] } { i32 12, [28 x i8] zeroinitializer }, align 32
@viafb_display_hardware_layout = dso_local global { i32, [28 x i8] } { i32 3, [28 x i8] zeroinitializer }, align 32
@viafb_DeviceStatus = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@viafb_refresh = dso_local global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@viafb_refresh1 = dso_local global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@viafb_lcd_dsp_method = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_lcd_mode = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_CRT_ON = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@viafb_second_xres = dso_local global { i32, [28 x i8] } { i32 640, [28 x i8] zeroinitializer }, align 32
@viafb_second_yres = dso_local global { i32, [28 x i8] } { i32 480, [28 x i8] zeroinitializer }, align 32
@viafb_hotplug_Xres = dso_local global { i32, [28 x i8] } { i32 640, [28 x i8] zeroinitializer }, align 32
@viafb_hotplug_Yres = dso_local global { i32, [28 x i8] } { i32 480, [28 x i8] zeroinitializer }, align 32
@viafb_hotplug_bpp = dso_local global { i32, [28 x i8] } { i32 32, [28 x i8] zeroinitializer }, align 32
@viafb_hotplug_refresh = dso_local global { i32, [28 x i8] } { i32 60, [28 x i8] zeroinitializer }, align 32
@viafb_primary_dev = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_lcd_panel_id = dso_local global { i32, [28 x i8] } { i32 24, [28 x i8] zeroinitializer }, align 32
@viafb_hotplug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_DVI_ON = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_LCD_ON = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_LCD2_ON = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_SAMM_ON = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafb_dual_fb = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@viafbinfo = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@viafbinfo1 = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@viaparinfo = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@viaparinfo1 = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [24 x i8] c"viafb_platform_epia_dvi\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 8, i32 5 }
@___asan_gen_.4 = private unnamed_addr constant [26 x i8] c"viafb_device_lcd_dualedge\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 9, i32 5 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"viafb_bus_width\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 10, i32 5 }
@___asan_gen_.10 = private unnamed_addr constant [30 x i8] c"viafb_display_hardware_layout\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 11, i32 5 }
@___asan_gen_.13 = private unnamed_addr constant [19 x i8] c"viafb_DeviceStatus\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 12, i32 5 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"viafb_refresh\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 14, i32 5 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"viafb_refresh1\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 15, i32 5 }
@___asan_gen_.22 = private unnamed_addr constant [21 x i8] c"viafb_lcd_dsp_method\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 16, i32 5 }
@___asan_gen_.25 = private unnamed_addr constant [15 x i8] c"viafb_lcd_mode\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 17, i32 5 }
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"viafb_CRT_ON\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 18, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"viafb_second_xres\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 24, i32 14 }
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"viafb_second_yres\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 25, i32 14 }
@___asan_gen_.37 = private unnamed_addr constant [19 x i8] c"viafb_hotplug_Xres\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 26, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant [19 x i8] c"viafb_hotplug_Yres\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 27, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"viafb_hotplug_bpp\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 28, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"viafb_hotplug_refresh\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 29, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"viafb_primary_dev\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 30, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"viafb_lcd_panel_id\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 31, i32 5 }
@___asan_gen_.55 = private unnamed_addr constant [14 x i8] c"viafb_hotplug\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 13, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant [13 x i8] c"viafb_DVI_ON\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 19, i32 5 }
@___asan_gen_.61 = private unnamed_addr constant [13 x i8] c"viafb_LCD_ON\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 20, i32 5 }
@___asan_gen_.64 = private unnamed_addr constant [14 x i8] c"viafb_LCD2_ON\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 21, i32 5 }
@___asan_gen_.67 = private unnamed_addr constant [14 x i8] c"viafb_SAMM_ON\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 22, i32 5 }
@___asan_gen_.70 = private unnamed_addr constant [14 x i8] c"viafb_dual_fb\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 23, i32 5 }
@___asan_gen_.73 = private unnamed_addr constant [10 x i8] c"viafbinfo\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 32, i32 17 }
@___asan_gen_.76 = private unnamed_addr constant [11 x i8] c"viafbinfo1\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 33, i32 17 }
@___asan_gen_.79 = private unnamed_addr constant [11 x i8] c"viaparinfo\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 34, i32 19 }
@___asan_gen_.82 = private unnamed_addr constant [12 x i8] c"viaparinfo1\00", align 1
@___asan_gen_.83 = private constant [36 x i8] c"../drivers/video/fbdev/via/global.c\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.83, i32 35, i32 19 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @viafb_platform_epia_dvi, ptr @viafb_device_lcd_dualedge, ptr @viafb_bus_width, ptr @viafb_display_hardware_layout, ptr @viafb_DeviceStatus, ptr @viafb_refresh, ptr @viafb_refresh1, ptr @viafb_lcd_dsp_method, ptr @viafb_lcd_mode, ptr @viafb_CRT_ON, ptr @viafb_second_xres, ptr @viafb_second_yres, ptr @viafb_hotplug_Xres, ptr @viafb_hotplug_Yres, ptr @viafb_hotplug_bpp, ptr @viafb_hotplug_refresh, ptr @viafb_primary_dev, ptr @viafb_lcd_panel_id, ptr @viafb_hotplug, ptr @viafb_DVI_ON, ptr @viafb_LCD_ON, ptr @viafb_LCD2_ON, ptr @viafb_SAMM_ON, ptr @viafb_dual_fb, ptr @viafbinfo, ptr @viafbinfo1, ptr @viaparinfo, ptr @viaparinfo1], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_platform_epia_dvi to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_device_lcd_dualedge to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_bus_width to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_display_hardware_layout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_DeviceStatus to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_refresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_refresh1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_lcd_dsp_method to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_lcd_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_CRT_ON to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_second_xres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_second_yres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_hotplug_Xres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_hotplug_Yres to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_hotplug_bpp to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_hotplug_refresh to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_primary_dev to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_lcd_panel_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_hotplug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_DVI_ON to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_LCD_ON to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_LCD2_ON to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_SAMM_ON to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_dual_fb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafbinfo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafbinfo1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viaparinfo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viaparinfo1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @viafb_platform_epia_dvi, !1, !"viafb_platform_epia_dvi", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/global.c", i32 8, i32 5}
!2 = !{ptr @viafb_device_lcd_dualedge, !3, !"viafb_device_lcd_dualedge", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/via/global.c", i32 9, i32 5}
!4 = !{ptr @viafb_bus_width, !5, !"viafb_bus_width", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/via/global.c", i32 10, i32 5}
!6 = !{ptr @viafb_display_hardware_layout, !7, !"viafb_display_hardware_layout", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/global.c", i32 11, i32 5}
!8 = !{ptr @viafb_DeviceStatus, !9, !"viafb_DeviceStatus", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/global.c", i32 12, i32 5}
!10 = !{ptr @viafb_refresh, !11, !"viafb_refresh", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/via/global.c", i32 14, i32 5}
!12 = !{ptr @viafb_refresh1, !13, !"viafb_refresh1", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/via/global.c", i32 15, i32 5}
!14 = !{ptr @viafb_lcd_dsp_method, !15, !"viafb_lcd_dsp_method", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/via/global.c", i32 16, i32 5}
!16 = !{ptr @viafb_lcd_mode, !17, !"viafb_lcd_mode", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/via/global.c", i32 17, i32 5}
!18 = !{ptr @viafb_CRT_ON, !19, !"viafb_CRT_ON", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/via/global.c", i32 18, i32 5}
!20 = !{ptr @viafb_second_xres, !21, !"viafb_second_xres", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/via/global.c", i32 24, i32 14}
!22 = !{ptr @viafb_second_yres, !23, !"viafb_second_yres", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/via/global.c", i32 25, i32 14}
!24 = !{ptr @viafb_hotplug_Xres, !25, !"viafb_hotplug_Xres", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/via/global.c", i32 26, i32 5}
!26 = !{ptr @viafb_hotplug_Yres, !27, !"viafb_hotplug_Yres", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/via/global.c", i32 27, i32 5}
!28 = !{ptr @viafb_hotplug_bpp, !29, !"viafb_hotplug_bpp", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/via/global.c", i32 28, i32 5}
!30 = !{ptr @viafb_hotplug_refresh, !31, !"viafb_hotplug_refresh", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/via/global.c", i32 29, i32 5}
!32 = !{ptr @viafb_primary_dev, !33, !"viafb_primary_dev", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/via/global.c", i32 30, i32 5}
!34 = !{ptr @viafb_lcd_panel_id, !35, !"viafb_lcd_panel_id", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/via/global.c", i32 31, i32 5}
!36 = !{ptr @viafb_hotplug, !37, !"viafb_hotplug", i1 false, i1 false}
!37 = !{!"../drivers/video/fbdev/via/global.c", i32 13, i32 5}
!38 = !{ptr @viafb_DVI_ON, !39, !"viafb_DVI_ON", i1 false, i1 false}
!39 = !{!"../drivers/video/fbdev/via/global.c", i32 19, i32 5}
!40 = !{ptr @viafb_LCD_ON, !41, !"viafb_LCD_ON", i1 false, i1 false}
!41 = !{!"../drivers/video/fbdev/via/global.c", i32 20, i32 5}
!42 = !{ptr @viafb_LCD2_ON, !43, !"viafb_LCD2_ON", i1 false, i1 false}
!43 = !{!"../drivers/video/fbdev/via/global.c", i32 21, i32 5}
!44 = !{ptr @viafb_SAMM_ON, !45, !"viafb_SAMM_ON", i1 false, i1 false}
!45 = !{!"../drivers/video/fbdev/via/global.c", i32 22, i32 5}
!46 = !{ptr @viafb_dual_fb, !47, !"viafb_dual_fb", i1 false, i1 false}
!47 = !{!"../drivers/video/fbdev/via/global.c", i32 23, i32 5}
!48 = !{ptr @viafbinfo, !49, !"viafbinfo", i1 false, i1 false}
!49 = !{!"../drivers/video/fbdev/via/global.c", i32 32, i32 17}
!50 = !{ptr @viafbinfo1, !51, !"viafbinfo1", i1 false, i1 false}
!51 = !{!"../drivers/video/fbdev/via/global.c", i32 33, i32 17}
!52 = !{ptr @viaparinfo, !53, !"viaparinfo", i1 false, i1 false}
!53 = !{!"../drivers/video/fbdev/via/global.c", i32 34, i32 19}
!54 = !{ptr @viaparinfo1, !55, !"viaparinfo1", i1 false, i1 false}
!55 = !{!"../drivers/video/fbdev/via/global.c", i32 35, i32 19}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
