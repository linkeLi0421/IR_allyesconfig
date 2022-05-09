; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/hw.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/hw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fetch_count = type { %struct.iga1_fetch_count, %struct.iga2_fetch_count }
%struct.iga1_fetch_count = type { i32, [2 x %struct.io_register] }
%struct.io_register = type { i8, i8, i8 }
%struct.iga2_fetch_count = type { i32, [2 x %struct.io_register] }
%struct.fifo_depth_select = type { %struct.iga1_fifo_depth_select, %struct.iga2_fifo_depth_select }
%struct.iga1_fifo_depth_select = type { i32, [1 x %struct.io_register] }
%struct.iga2_fifo_depth_select = type { i32, [3 x %struct.io_register] }
%struct.fifo_threshold_select = type { %struct.iga1_fifo_threshold_select, %struct.iga2_fifo_threshold_select }
%struct.iga1_fifo_threshold_select = type { i32, [2 x %struct.io_register] }
%struct.iga2_fifo_threshold_select = type { i32, [2 x %struct.io_register] }
%struct.fifo_high_threshold_select = type { %struct.iga1_fifo_high_threshold_select, %struct.iga2_fifo_high_threshold_select }
%struct.iga1_fifo_high_threshold_select = type { i32, [2 x %struct.io_register] }
%struct.iga2_fifo_high_threshold_select = type { i32, [2 x %struct.io_register] }
%struct.display_queue_expire_num = type { %struct.iga1_display_queue_expire_num, %struct.iga2_display_queue_expire_num }
%struct.iga1_display_queue_expire_num = type { i32, [1 x %struct.io_register] }
%struct.iga2_display_queue_expire_num = type { i32, [1 x %struct.io_register] }
%struct.via_clock = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.patch_table = type { i32, ptr }
%struct.pll_limit = type { i16, i16, i8, i8 }
%struct.rgbLUT = type { i8, i8, i8 }
%struct.io_reg = type { i32, i8, i8, i8 }
%struct.VPITTable = type { i8, [4 x i8], [9 x i8], [20 x i8] }
%struct.viafb_par = type { i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.viafb_shared = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.tmds_setting_information, %struct.lvds_setting_information, %struct.lvds_setting_information, %struct.chip_information, i32, i32, ptr }
%struct.tmds_setting_information = type { i32, i32, i32, i32 }
%struct.lvds_setting_information = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.chip_information = type { i32, i32, i32, %struct.tmds_chip_information, %struct.lvds_chip_information, %struct.lvds_chip_information }
%struct.tmds_chip_information = type { i32, i32, i32, i32 }
%struct.lvds_chip_information = type { i32, i32, i32, i32 }
%struct.via_display_timing = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, %struct.fb_bitfield, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32] }
%struct.fb_bitfield = type { i32, i32, i32 }
%struct.fb_info = type { %struct.refcount_struct, i32, i32, i32, %struct.mutex, %struct.mutex, %struct.fb_var_screeninfo, %struct.fb_fix_screeninfo, %struct.fb_monspecs, %struct.work_struct, %struct.fb_pixmap, %struct.fb_pixmap, %struct.fb_cmap, %struct.list_head, ptr, ptr, %struct.mutex, [128 x i8], %struct.delayed_work, ptr, ptr, ptr, ptr, i32, ptr, %union.anon.85, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.fb_fix_screeninfo = type { [16 x i8], i32, i32, i32, i32, i32, i16, i16, i16, i32, i32, i32, i32, i16, [2 x i16] }
%struct.fb_monspecs = type { %struct.fb_chroma, ptr, [4 x i8], [14 x i8], [14 x i8], [14 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16, i8, i16, i8, i8, i8, i8 }
%struct.fb_chroma = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fb_pixmap = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.fb_cmap = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%union.anon.85 = type { ptr }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.GFX_DPA_SETTING = type { i32, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@viafb_SAMM_ON = external dso_local local_unnamed_addr global i32, align 4
@viafb_CRT_ON = external dso_local local_unnamed_addr global i32, align 4
@viafb_primary_dev = external dso_local local_unnamed_addr global i32, align 4
@viafb_DVI_ON = external dso_local local_unnamed_addr global i32, align 4
@viaparinfo = external dso_local local_unnamed_addr global ptr, align 4
@viafb_LCD_ON = external dso_local local_unnamed_addr global i32, align 4
@viafb_dual_fb = external dso_local local_unnamed_addr global i32, align 4
@viafb_LCD2_ON = external dso_local local_unnamed_addr global i32, align 4
@via_set_sync_polarity._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 883, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014viafb: Unsupported polarity: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"via_set_sync_polarity\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/video/fbdev/via/hw.c\00", [35 x i8] zeroinitializer }, align 32
@via_set_sync_polarity._entry_ptr = internal global ptr @via_set_sync_polarity._entry, section ".printk_index", align 4
@fetch_count_reg = internal global { %struct.fetch_count, [40 x i8] } { %struct.fetch_count { %struct.iga1_fetch_count { i32 2, [2 x %struct.io_register] [%struct.io_register { i8 28, i8 0, i8 7 }, %struct.io_register { i8 29, i8 0, i8 1 }] }, %struct.iga2_fetch_count { i32 2, [2 x %struct.io_register] [%struct.io_register { i8 101, i8 0, i8 7 }, %struct.io_register { i8 103, i8 2, i8 3 }] } }, [40 x i8] zeroinitializer }, align 32
@display_fifo_depth_reg = internal global { %struct.fifo_depth_select, [40 x i8] } { %struct.fifo_depth_select { %struct.iga1_fifo_depth_select { i32 1, [1 x %struct.io_register] [%struct.io_register { i8 23, i8 0, i8 7 }] }, %struct.iga2_fifo_depth_select { i32 3, [3 x %struct.io_register] [%struct.io_register { i8 104, i8 4, i8 7 }, %struct.io_register { i8 -108, i8 7, i8 7 }, %struct.io_register { i8 -107, i8 7, i8 7 }] } }, [40 x i8] zeroinitializer }, align 32
@fifo_threshold_select_reg = internal global { %struct.fifo_threshold_select, [40 x i8] } { %struct.fifo_threshold_select { %struct.iga1_fifo_threshold_select { i32 2, [2 x %struct.io_register] [%struct.io_register { i8 22, i8 0, i8 5 }, %struct.io_register { i8 22, i8 7, i8 7 }] }, %struct.iga2_fifo_threshold_select { i32 2, [2 x %struct.io_register] [%struct.io_register { i8 104, i8 0, i8 3 }, %struct.io_register { i8 -107, i8 4, i8 6 }] } }, [40 x i8] zeroinitializer }, align 32
@fifo_high_threshold_select_reg = internal global { %struct.fifo_high_threshold_select, [40 x i8] } { %struct.fifo_high_threshold_select { %struct.iga1_fifo_high_threshold_select { i32 2, [2 x %struct.io_register] [%struct.io_register { i8 24, i8 0, i8 5 }, %struct.io_register { i8 24, i8 7, i8 7 }] }, %struct.iga2_fifo_high_threshold_select { i32 2, [2 x %struct.io_register] [%struct.io_register { i8 -110, i8 0, i8 3 }, %struct.io_register { i8 -107, i8 0, i8 2 }] } }, [40 x i8] zeroinitializer }, align 32
@display_queue_expire_num_reg = internal global { %struct.display_queue_expire_num, [16 x i8] } { %struct.display_queue_expire_num { %struct.iga1_display_queue_expire_num { i32 1, [1 x %struct.io_register] [%struct.io_register { i8 34, i8 0, i8 4 }] }, %struct.iga2_display_queue_expire_num { i32 1, [1 x %struct.io_register] [%struct.io_register { i8 -108, i8 0, i8 6 }] } }, [16 x i8] zeroinitializer }, align 32
@clock = internal global { %struct.via_clock, [56 x i8] } zeroinitializer, align 32
@viafb_lcd_dsp_method = external dso_local local_unnamed_addr global i32, align 4
@viafb_lcd_mode = external dso_local local_unnamed_addr global i32, align 4
@viafbinfo = external dso_local local_unnamed_addr global ptr, align 4
@res_patch_table = external dso_local local_unnamed_addr global [0 x %struct.patch_table], align 4
@viafbinfo1 = external dso_local local_unnamed_addr global ptr, align 4
@viaparinfo1 = external dso_local local_unnamed_addr global ptr, align 4
@viafb_second_xres = external dso_local local_unnamed_addr global i32, align 4
@viafb_second_yres = external dso_local local_unnamed_addr global i32, align 4
@viafb_refresh1 = external dso_local local_unnamed_addr global i32, align 4
@viafb_hotplug = external dso_local local_unnamed_addr global i32, align 4
@viafb_hotplug_Xres = external dso_local local_unnamed_addr global i32, align 4
@viafb_hotplug_Yres = external dso_local local_unnamed_addr global i32, align 4
@viafb_hotplug_bpp = external dso_local local_unnamed_addr global i32, align 4
@viafb_refresh = external dso_local local_unnamed_addr global i32, align 4
@viafb_hotplug_refresh = external dso_local local_unnamed_addr global i32, align 4
@viafb_DeviceStatus = external dso_local local_unnamed_addr global i32, align 4
@set_source_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 690, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014viafb: Unsupported source: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"set_source_common\00", [46 x i8] zeroinitializer }, align 32
@set_source_common._entry_ptr = internal global ptr @set_source_common._entry, section ".printk_index", align 4
@set_crt_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.5, ptr @.str.2, i32 709, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"set_crt_source\00", [17 x i8] zeroinitializer }, align 32
@set_crt_source._entry_ptr = internal global ptr @set_crt_source._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDVP0\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LDVP1\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVP0\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"CRT\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DVP1\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LVDS1\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"LVDS2\00", [26 x i8] zeroinitializer }, align 32
@cle266_pll_limits = internal global { [28 x %struct.pll_limit], [56 x i8] } { [28 x %struct.pll_limit] [%struct.pll_limit { i16 19, i16 19, i8 4, i8 0 }, %struct.pll_limit { i16 26, i16 102, i8 5, i8 0 }, %struct.pll_limit { i16 53, i16 112, i8 6, i8 0 }, %struct.pll_limit { i16 41, i16 100, i8 7, i8 0 }, %struct.pll_limit { i16 83, i16 108, i8 8, i8 0 }, %struct.pll_limit { i16 87, i16 118, i8 9, i8 0 }, %struct.pll_limit { i16 95, i16 115, i8 12, i8 0 }, %struct.pll_limit { i16 108, i16 108, i8 13, i8 0 }, %struct.pll_limit { i16 83, i16 83, i8 17, i8 0 }, %struct.pll_limit { i16 67, i16 98, i8 20, i8 0 }, %struct.pll_limit { i16 121, i16 121, i8 24, i8 0 }, %struct.pll_limit { i16 99, i16 99, i8 29, i8 0 }, %struct.pll_limit { i16 33, i16 33, i8 3, i8 1 }, %struct.pll_limit { i16 15, i16 23, i8 4, i8 1 }, %struct.pll_limit { i16 37, i16 121, i8 5, i8 1 }, %struct.pll_limit { i16 82, i16 82, i8 6, i8 1 }, %struct.pll_limit { i16 31, i16 84, i8 7, i8 1 }, %struct.pll_limit { i16 83, i16 83, i8 8, i8 1 }, %struct.pll_limit { i16 76, i16 127, i8 9, i8 1 }, %struct.pll_limit { i16 33, i16 121, i8 4, i8 2 }, %struct.pll_limit { i16 91, i16 118, i8 5, i8 2 }, %struct.pll_limit { i16 83, i16 109, i8 6, i8 2 }, %struct.pll_limit { i16 90, i16 90, i8 7, i8 2 }, %struct.pll_limit { i16 93, i16 93, i8 2, i8 3 }, %struct.pll_limit { i16 53, i16 53, i8 3, i8 3 }, %struct.pll_limit { i16 73, i16 117, i8 4, i8 3 }, %struct.pll_limit { i16 101, i16 127, i8 5, i8 3 }, %struct.pll_limit { i16 99, i16 99, i8 7, i8 3 }], [56 x i8] zeroinitializer }, align 32
@k800_pll_limits = internal global { [16 x %struct.pll_limit], [32 x i8] } { [16 x %struct.pll_limit] [%struct.pll_limit { i16 22, i16 22, i8 2, i8 0 }, %struct.pll_limit { i16 28, i16 28, i8 3, i8 0 }, %struct.pll_limit { i16 81, i16 112, i8 3, i8 1 }, %struct.pll_limit { i16 86, i16 166, i8 4, i8 1 }, %struct.pll_limit { i16 109, i16 153, i8 5, i8 1 }, %struct.pll_limit { i16 66, i16 116, i8 3, i8 2 }, %struct.pll_limit { i16 93, i16 137, i8 4, i8 2 }, %struct.pll_limit { i16 117, i16 208, i8 5, i8 2 }, %struct.pll_limit { i16 30, i16 30, i8 2, i8 3 }, %struct.pll_limit { i16 69, i16 125, i8 3, i8 3 }, %struct.pll_limit { i16 89, i16 161, i8 4, i8 3 }, %struct.pll_limit { i16 121, i16 208, i8 5, i8 3 }, %struct.pll_limit { i16 66, i16 66, i8 2, i8 4 }, %struct.pll_limit { i16 85, i16 85, i8 3, i8 4 }, %struct.pll_limit { i16 141, i16 161, i8 4, i8 4 }, %struct.pll_limit { i16 177, i16 177, i8 5, i8 4 }], [32 x i8] zeroinitializer }, align 32
@cx700_pll_limits = internal global { [12 x %struct.pll_limit], [56 x i8] } { [12 x %struct.pll_limit] [%struct.pll_limit { i16 98, i16 98, i8 3, i8 1 }, %struct.pll_limit { i16 86, i16 86, i8 4, i8 1 }, %struct.pll_limit { i16 109, i16 208, i8 5, i8 1 }, %struct.pll_limit { i16 68, i16 68, i8 2, i8 2 }, %struct.pll_limit { i16 95, i16 116, i8 3, i8 2 }, %struct.pll_limit { i16 93, i16 166, i8 4, i8 2 }, %struct.pll_limit { i16 110, i16 206, i8 5, i8 2 }, %struct.pll_limit { i16 174, i16 174, i8 7, i8 2 }, %struct.pll_limit { i16 82, i16 109, i8 3, i8 3 }, %struct.pll_limit { i16 117, i16 161, i8 4, i8 3 }, %struct.pll_limit { i16 112, i16 208, i8 5, i8 3 }, %struct.pll_limit { i16 141, i16 202, i8 5, i8 4 }], [56 x i8] zeroinitializer }, align 32
@vx855_pll_limits = internal global { [8 x %struct.pll_limit], [48 x i8] } { [8 x %struct.pll_limit] [%struct.pll_limit { i16 86, i16 86, i8 4, i8 1 }, %struct.pll_limit { i16 108, i16 208, i8 5, i8 1 }, %struct.pll_limit { i16 110, i16 208, i8 5, i8 2 }, %struct.pll_limit { i16 83, i16 112, i8 3, i8 3 }, %struct.pll_limit { i16 103, i16 161, i8 4, i8 3 }, %struct.pll_limit { i16 112, i16 209, i8 5, i8 3 }, %struct.pll_limit { i16 142, i16 161, i8 4, i8 4 }, %struct.pll_limit { i16 141, i16 176, i8 5, i8 4 }], [48 x i8] zeroinitializer }, align 32
@viafb_display_hardware_layout = external dso_local local_unnamed_addr global i32, align 4
@palLUT_table = internal constant { <{ [248 x %struct.rgbLUT], [8 x %struct.rgbLUT] }>, [192 x i8] } { <{ [248 x %struct.rgbLUT], [8 x %struct.rgbLUT] }> <{ [248 x %struct.rgbLUT] [%struct.rgbLUT zeroinitializer, %struct.rgbLUT { i8 0, i8 0, i8 42 }, %struct.rgbLUT { i8 0, i8 42, i8 0 }, %struct.rgbLUT { i8 0, i8 42, i8 42 }, %struct.rgbLUT { i8 42, i8 0, i8 0 }, %struct.rgbLUT { i8 42, i8 0, i8 42 }, %struct.rgbLUT { i8 42, i8 21, i8 0 }, %struct.rgbLUT { i8 42, i8 42, i8 42 }, %struct.rgbLUT { i8 21, i8 21, i8 21 }, %struct.rgbLUT { i8 21, i8 21, i8 63 }, %struct.rgbLUT { i8 21, i8 63, i8 21 }, %struct.rgbLUT { i8 21, i8 63, i8 63 }, %struct.rgbLUT { i8 63, i8 21, i8 21 }, %struct.rgbLUT { i8 63, i8 21, i8 63 }, %struct.rgbLUT { i8 63, i8 63, i8 21 }, %struct.rgbLUT { i8 63, i8 63, i8 63 }, %struct.rgbLUT zeroinitializer, %struct.rgbLUT { i8 5, i8 5, i8 5 }, %struct.rgbLUT { i8 8, i8 8, i8 8 }, %struct.rgbLUT { i8 11, i8 11, i8 11 }, %struct.rgbLUT { i8 14, i8 14, i8 14 }, %struct.rgbLUT { i8 17, i8 17, i8 17 }, %struct.rgbLUT { i8 20, i8 20, i8 20 }, %struct.rgbLUT { i8 24, i8 24, i8 24 }, %struct.rgbLUT { i8 28, i8 28, i8 28 }, %struct.rgbLUT { i8 32, i8 32, i8 32 }, %struct.rgbLUT { i8 36, i8 36, i8 36 }, %struct.rgbLUT { i8 40, i8 40, i8 40 }, %struct.rgbLUT { i8 45, i8 45, i8 45 }, %struct.rgbLUT { i8 50, i8 50, i8 50 }, %struct.rgbLUT { i8 56, i8 56, i8 56 }, %struct.rgbLUT { i8 63, i8 63, i8 63 }, %struct.rgbLUT { i8 0, i8 0, i8 63 }, %struct.rgbLUT { i8 16, i8 0, i8 63 }, %struct.rgbLUT { i8 31, i8 0, i8 63 }, %struct.rgbLUT { i8 47, i8 0, i8 63 }, %struct.rgbLUT { i8 63, i8 0, i8 63 }, %struct.rgbLUT { i8 63, i8 0, i8 47 }, %struct.rgbLUT { i8 63, i8 0, i8 31 }, %struct.rgbLUT { i8 63, i8 0, i8 16 }, %struct.rgbLUT { i8 63, i8 0, i8 0 }, %struct.rgbLUT { i8 63, i8 16, i8 0 }, %struct.rgbLUT { i8 63, i8 31, i8 0 }, %struct.rgbLUT { i8 63, i8 47, i8 0 }, %struct.rgbLUT { i8 63, i8 63, i8 0 }, %struct.rgbLUT { i8 47, i8 63, i8 0 }, %struct.rgbLUT { i8 31, i8 63, i8 0 }, %struct.rgbLUT { i8 16, i8 63, i8 0 }, %struct.rgbLUT { i8 0, i8 63, i8 0 }, %struct.rgbLUT { i8 0, i8 63, i8 16 }, %struct.rgbLUT { i8 0, i8 63, i8 31 }, %struct.rgbLUT { i8 0, i8 63, i8 47 }, %struct.rgbLUT { i8 0, i8 63, i8 63 }, %struct.rgbLUT { i8 0, i8 47, i8 63 }, %struct.rgbLUT { i8 0, i8 31, i8 63 }, %struct.rgbLUT { i8 0, i8 16, i8 63 }, %struct.rgbLUT { i8 31, i8 31, i8 63 }, %struct.rgbLUT { i8 39, i8 31, i8 63 }, %struct.rgbLUT { i8 47, i8 31, i8 63 }, %struct.rgbLUT { i8 55, i8 31, i8 63 }, %struct.rgbLUT { i8 63, i8 31, i8 63 }, %struct.rgbLUT { i8 63, i8 31, i8 55 }, %struct.rgbLUT { i8 63, i8 31, i8 47 }, %struct.rgbLUT { i8 63, i8 31, i8 39 }, %struct.rgbLUT { i8 63, i8 31, i8 31 }, %struct.rgbLUT { i8 63, i8 39, i8 31 }, %struct.rgbLUT { i8 63, i8 47, i8 31 }, %struct.rgbLUT { i8 63, i8 63, i8 31 }, %struct.rgbLUT { i8 63, i8 63, i8 31 }, %struct.rgbLUT { i8 55, i8 63, i8 31 }, %struct.rgbLUT { i8 47, i8 63, i8 31 }, %struct.rgbLUT { i8 39, i8 63, i8 31 }, %struct.rgbLUT { i8 31, i8 63, i8 31 }, %struct.rgbLUT { i8 31, i8 63, i8 39 }, %struct.rgbLUT { i8 31, i8 63, i8 47 }, %struct.rgbLUT { i8 31, i8 63, i8 55 }, %struct.rgbLUT { i8 31, i8 63, i8 63 }, %struct.rgbLUT { i8 31, i8 55, i8 63 }, %struct.rgbLUT { i8 31, i8 47, i8 63 }, %struct.rgbLUT { i8 31, i8 39, i8 63 }, %struct.rgbLUT { i8 45, i8 45, i8 63 }, %struct.rgbLUT { i8 49, i8 45, i8 63 }, %struct.rgbLUT { i8 54, i8 45, i8 63 }, %struct.rgbLUT { i8 58, i8 45, i8 63 }, %struct.rgbLUT { i8 63, i8 45, i8 63 }, %struct.rgbLUT { i8 63, i8 45, i8 58 }, %struct.rgbLUT { i8 63, i8 45, i8 54 }, %struct.rgbLUT { i8 63, i8 45, i8 49 }, %struct.rgbLUT { i8 63, i8 45, i8 45 }, %struct.rgbLUT { i8 63, i8 49, i8 45 }, %struct.rgbLUT { i8 63, i8 54, i8 45 }, %struct.rgbLUT { i8 63, i8 58, i8 45 }, %struct.rgbLUT { i8 63, i8 63, i8 45 }, %struct.rgbLUT { i8 58, i8 63, i8 45 }, %struct.rgbLUT { i8 54, i8 63, i8 45 }, %struct.rgbLUT { i8 49, i8 63, i8 45 }, %struct.rgbLUT { i8 45, i8 63, i8 45 }, %struct.rgbLUT { i8 45, i8 63, i8 49 }, %struct.rgbLUT { i8 45, i8 63, i8 54 }, %struct.rgbLUT { i8 45, i8 63, i8 58 }, %struct.rgbLUT { i8 45, i8 63, i8 63 }, %struct.rgbLUT { i8 45, i8 58, i8 63 }, %struct.rgbLUT { i8 45, i8 54, i8 63 }, %struct.rgbLUT { i8 45, i8 49, i8 63 }, %struct.rgbLUT { i8 0, i8 0, i8 28 }, %struct.rgbLUT { i8 7, i8 0, i8 28 }, %struct.rgbLUT { i8 14, i8 0, i8 28 }, %struct.rgbLUT { i8 21, i8 0, i8 28 }, %struct.rgbLUT { i8 28, i8 0, i8 28 }, %struct.rgbLUT { i8 28, i8 0, i8 21 }, %struct.rgbLUT { i8 28, i8 0, i8 14 }, %struct.rgbLUT { i8 28, i8 0, i8 7 }, %struct.rgbLUT { i8 28, i8 0, i8 0 }, %struct.rgbLUT { i8 28, i8 7, i8 0 }, %struct.rgbLUT { i8 28, i8 14, i8 0 }, %struct.rgbLUT { i8 28, i8 21, i8 0 }, %struct.rgbLUT { i8 28, i8 28, i8 0 }, %struct.rgbLUT { i8 21, i8 28, i8 0 }, %struct.rgbLUT { i8 14, i8 28, i8 0 }, %struct.rgbLUT { i8 7, i8 28, i8 0 }, %struct.rgbLUT { i8 0, i8 28, i8 0 }, %struct.rgbLUT { i8 0, i8 28, i8 7 }, %struct.rgbLUT { i8 0, i8 28, i8 14 }, %struct.rgbLUT { i8 0, i8 28, i8 21 }, %struct.rgbLUT { i8 0, i8 28, i8 28 }, %struct.rgbLUT { i8 0, i8 21, i8 28 }, %struct.rgbLUT { i8 0, i8 14, i8 28 }, %struct.rgbLUT { i8 0, i8 7, i8 28 }, %struct.rgbLUT { i8 14, i8 14, i8 28 }, %struct.rgbLUT { i8 17, i8 14, i8 28 }, %struct.rgbLUT { i8 21, i8 14, i8 28 }, %struct.rgbLUT { i8 24, i8 14, i8 28 }, %struct.rgbLUT { i8 28, i8 14, i8 28 }, %struct.rgbLUT { i8 28, i8 14, i8 24 }, %struct.rgbLUT { i8 28, i8 14, i8 21 }, %struct.rgbLUT { i8 28, i8 14, i8 17 }, %struct.rgbLUT { i8 28, i8 14, i8 14 }, %struct.rgbLUT { i8 28, i8 17, i8 14 }, %struct.rgbLUT { i8 28, i8 21, i8 14 }, %struct.rgbLUT { i8 28, i8 24, i8 14 }, %struct.rgbLUT { i8 28, i8 28, i8 14 }, %struct.rgbLUT { i8 24, i8 28, i8 14 }, %struct.rgbLUT { i8 21, i8 28, i8 14 }, %struct.rgbLUT { i8 17, i8 28, i8 14 }, %struct.rgbLUT { i8 14, i8 28, i8 14 }, %struct.rgbLUT { i8 14, i8 28, i8 17 }, %struct.rgbLUT { i8 14, i8 28, i8 21 }, %struct.rgbLUT { i8 14, i8 28, i8 24 }, %struct.rgbLUT { i8 14, i8 28, i8 28 }, %struct.rgbLUT { i8 14, i8 24, i8 28 }, %struct.rgbLUT { i8 14, i8 21, i8 28 }, %struct.rgbLUT { i8 14, i8 17, i8 28 }, %struct.rgbLUT { i8 20, i8 20, i8 28 }, %struct.rgbLUT { i8 22, i8 20, i8 28 }, %struct.rgbLUT { i8 24, i8 20, i8 28 }, %struct.rgbLUT { i8 26, i8 20, i8 28 }, %struct.rgbLUT { i8 28, i8 20, i8 28 }, %struct.rgbLUT { i8 28, i8 20, i8 26 }, %struct.rgbLUT { i8 28, i8 20, i8 24 }, %struct.rgbLUT { i8 28, i8 20, i8 22 }, %struct.rgbLUT { i8 28, i8 20, i8 20 }, %struct.rgbLUT { i8 28, i8 22, i8 20 }, %struct.rgbLUT { i8 28, i8 24, i8 20 }, %struct.rgbLUT { i8 28, i8 26, i8 20 }, %struct.rgbLUT { i8 28, i8 28, i8 20 }, %struct.rgbLUT { i8 26, i8 28, i8 20 }, %struct.rgbLUT { i8 24, i8 28, i8 20 }, %struct.rgbLUT { i8 22, i8 28, i8 20 }, %struct.rgbLUT { i8 20, i8 28, i8 20 }, %struct.rgbLUT { i8 20, i8 28, i8 22 }, %struct.rgbLUT { i8 20, i8 28, i8 24 }, %struct.rgbLUT { i8 20, i8 28, i8 26 }, %struct.rgbLUT { i8 20, i8 28, i8 28 }, %struct.rgbLUT { i8 20, i8 26, i8 28 }, %struct.rgbLUT { i8 20, i8 24, i8 28 }, %struct.rgbLUT { i8 20, i8 22, i8 28 }, %struct.rgbLUT { i8 0, i8 0, i8 16 }, %struct.rgbLUT { i8 4, i8 0, i8 16 }, %struct.rgbLUT { i8 8, i8 0, i8 16 }, %struct.rgbLUT { i8 12, i8 0, i8 16 }, %struct.rgbLUT { i8 16, i8 0, i8 16 }, %struct.rgbLUT { i8 16, i8 0, i8 12 }, %struct.rgbLUT { i8 16, i8 0, i8 8 }, %struct.rgbLUT { i8 16, i8 0, i8 4 }, %struct.rgbLUT { i8 16, i8 0, i8 0 }, %struct.rgbLUT { i8 16, i8 4, i8 0 }, %struct.rgbLUT { i8 16, i8 8, i8 0 }, %struct.rgbLUT { i8 16, i8 12, i8 0 }, %struct.rgbLUT { i8 16, i8 16, i8 0 }, %struct.rgbLUT { i8 12, i8 16, i8 0 }, %struct.rgbLUT { i8 8, i8 16, i8 0 }, %struct.rgbLUT { i8 4, i8 16, i8 0 }, %struct.rgbLUT { i8 0, i8 16, i8 0 }, %struct.rgbLUT { i8 0, i8 16, i8 4 }, %struct.rgbLUT { i8 0, i8 16, i8 8 }, %struct.rgbLUT { i8 0, i8 16, i8 12 }, %struct.rgbLUT { i8 0, i8 16, i8 16 }, %struct.rgbLUT { i8 0, i8 12, i8 16 }, %struct.rgbLUT { i8 0, i8 8, i8 16 }, %struct.rgbLUT { i8 0, i8 4, i8 16 }, %struct.rgbLUT { i8 8, i8 8, i8 16 }, %struct.rgbLUT { i8 10, i8 8, i8 16 }, %struct.rgbLUT { i8 12, i8 8, i8 16 }, %struct.rgbLUT { i8 14, i8 8, i8 16 }, %struct.rgbLUT { i8 16, i8 8, i8 16 }, %struct.rgbLUT { i8 16, i8 8, i8 14 }, %struct.rgbLUT { i8 16, i8 8, i8 12 }, %struct.rgbLUT { i8 16, i8 8, i8 10 }, %struct.rgbLUT { i8 16, i8 8, i8 8 }, %struct.rgbLUT { i8 16, i8 10, i8 8 }, %struct.rgbLUT { i8 16, i8 12, i8 8 }, %struct.rgbLUT { i8 16, i8 14, i8 8 }, %struct.rgbLUT { i8 16, i8 16, i8 8 }, %struct.rgbLUT { i8 14, i8 16, i8 8 }, %struct.rgbLUT { i8 12, i8 16, i8 8 }, %struct.rgbLUT { i8 10, i8 16, i8 8 }, %struct.rgbLUT { i8 8, i8 16, i8 8 }, %struct.rgbLUT { i8 8, i8 16, i8 10 }, %struct.rgbLUT { i8 8, i8 16, i8 12 }, %struct.rgbLUT { i8 8, i8 16, i8 14 }, %struct.rgbLUT { i8 8, i8 16, i8 16 }, %struct.rgbLUT { i8 8, i8 14, i8 16 }, %struct.rgbLUT { i8 8, i8 12, i8 16 }, %struct.rgbLUT { i8 8, i8 10, i8 16 }, %struct.rgbLUT { i8 11, i8 11, i8 16 }, %struct.rgbLUT { i8 12, i8 11, i8 16 }, %struct.rgbLUT { i8 13, i8 11, i8 16 }, %struct.rgbLUT { i8 15, i8 11, i8 16 }, %struct.rgbLUT { i8 16, i8 11, i8 16 }, %struct.rgbLUT { i8 16, i8 11, i8 15 }, %struct.rgbLUT { i8 16, i8 11, i8 13 }, %struct.rgbLUT { i8 16, i8 11, i8 12 }, %struct.rgbLUT { i8 16, i8 11, i8 11 }, %struct.rgbLUT { i8 16, i8 12, i8 11 }, %struct.rgbLUT { i8 16, i8 13, i8 11 }, %struct.rgbLUT { i8 16, i8 15, i8 11 }, %struct.rgbLUT { i8 16, i8 16, i8 11 }, %struct.rgbLUT { i8 15, i8 16, i8 11 }, %struct.rgbLUT { i8 13, i8 16, i8 11 }, %struct.rgbLUT { i8 12, i8 16, i8 11 }, %struct.rgbLUT { i8 11, i8 16, i8 11 }, %struct.rgbLUT { i8 11, i8 16, i8 12 }, %struct.rgbLUT { i8 11, i8 16, i8 13 }, %struct.rgbLUT { i8 11, i8 16, i8 15 }, %struct.rgbLUT { i8 11, i8 16, i8 16 }, %struct.rgbLUT { i8 11, i8 15, i8 16 }, %struct.rgbLUT { i8 11, i8 13, i8 16 }, %struct.rgbLUT { i8 11, i8 12, i8 16 }], [8 x %struct.rgbLUT] zeroinitializer }>, [192 x i8] zeroinitializer }, align 32
@common_vga = internal constant { [11 x %struct.io_reg], [40 x i8] } { [11 x %struct.io_reg] [%struct.io_reg { i32 980, i8 7, i8 16, i8 16 }, %struct.io_reg { i32 980, i8 8, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 9, i8 -33, i8 64 }, %struct.io_reg { i32 980, i8 10, i8 -1, i8 30 }, %struct.io_reg { i32 980, i8 11, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 14, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 15, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 17, i8 -16, i8 -128 }, %struct.io_reg { i32 980, i8 20, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 23, i8 -1, i8 99 }, %struct.io_reg { i32 980, i8 24, i8 -1, i8 -1 }], [40 x i8] zeroinitializer }, align 32
@CLE266_ModeXregs = external dso_local local_unnamed_addr global [0 x %struct.io_reg], align 4
@NUM_TOTAL_CLE266_ModeXregs = external dso_local local_unnamed_addr global i32, align 4
@KM400_ModeXregs = external dso_local local_unnamed_addr global [0 x %struct.io_reg], align 4
@NUM_TOTAL_KM400_ModeXregs = external dso_local local_unnamed_addr global i32, align 4
@CN400_ModeXregs = external dso_local local_unnamed_addr global [0 x %struct.io_reg], align 4
@NUM_TOTAL_CN400_ModeXregs = external dso_local local_unnamed_addr global i32, align 4
@CN700_ModeXregs = external dso_local local_unnamed_addr global [0 x %struct.io_reg], align 4
@NUM_TOTAL_CN700_ModeXregs = external dso_local local_unnamed_addr global i32, align 4
@CX700_ModeXregs = external dso_local local_unnamed_addr global [0 x %struct.io_reg], align 4
@NUM_TOTAL_CX700_ModeXregs = external dso_local local_unnamed_addr global i32, align 4
@VX855_ModeXregs = external dso_local local_unnamed_addr global [0 x %struct.io_reg], align 4
@NUM_TOTAL_VX855_ModeXregs = external dso_local local_unnamed_addr global i32, align 4
@scaling_parameters = internal constant { [14 x %struct.io_reg], [48 x i8] } { [14 x %struct.io_reg] [%struct.io_reg { i32 980, i8 122, i8 -1, i8 1 }, %struct.io_reg { i32 980, i8 123, i8 -1, i8 2 }, %struct.io_reg { i32 980, i8 124, i8 -1, i8 3 }, %struct.io_reg { i32 980, i8 125, i8 -1, i8 4 }, %struct.io_reg { i32 980, i8 126, i8 -1, i8 7 }, %struct.io_reg { i32 980, i8 127, i8 -1, i8 10 }, %struct.io_reg { i32 980, i8 -128, i8 -1, i8 13 }, %struct.io_reg { i32 980, i8 -127, i8 -1, i8 19 }, %struct.io_reg { i32 980, i8 -126, i8 -1, i8 22 }, %struct.io_reg { i32 980, i8 -125, i8 -1, i8 25 }, %struct.io_reg { i32 980, i8 -124, i8 -1, i8 28 }, %struct.io_reg { i32 980, i8 -123, i8 -1, i8 29 }, %struct.io_reg { i32 980, i8 -122, i8 -1, i8 30 }, %struct.io_reg { i32 980, i8 -121, i8 -1, i8 31 }], [48 x i8] zeroinitializer }, align 32
@VPIT = external dso_local local_unnamed_addr global %struct.VPITTable, align 1
@switch.table.viafb_set_iga_path = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 32, i32 132, i32 96, i32 192, i32 64, i32 128, i32 64], [32 x i8] zeroinitializer }, align 32
@switch.table.viafb_set_iga_path.14 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 32, i32 132, i32 96, i32 192, i32 64, i32 128, i32 64], [32 x i8] zeroinitializer }, align 32
@switch.table.viafb_set_iga_path.15 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 32, i32 132, i32 96, i32 192, i32 64, i32 128, i32 64], [32 x i8] zeroinitializer }, align 32
@switch.table.viafb_set_iga_path.16 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 4, i32 32, i32 132, i32 96, i32 192, i32 64, i32 128, i32 64], [32 x i8] zeroinitializer }, align 32
@switch.table.viafb_init_chip_info = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 0, i32 1, i32 2, i32 2, i32 2], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 10]
@__sancov_gen_cov_switch_values.17 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 10]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.20 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@__sancov_gen_cov_switch_values.25 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.30 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.31 = internal global [12 x i64] [i64 10, i64 32, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.32 = internal global [15 x i64] [i64 13, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 6, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.36 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 8]
@__sancov_gen_cov_switch_values.38 = internal global [7 x i64] [i64 5, i64 32, i64 2, i64 3, i64 4, i64 5, i64 6]
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 882, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [16 x i8] c"fetch_count_reg\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 172, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [23 x i8] c"display_fifo_depth_reg\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 142, i32 33 }
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"fifo_threshold_select_reg\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 150, i32 37 }
@___asan_gen_.60 = private unnamed_addr constant [31 x i8] c"fifo_high_threshold_select_reg\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 157, i32 42 }
@___asan_gen_.63 = private unnamed_addr constant [29 x i8] c"display_queue_expire_num_reg\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 164, i32 40 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"clock\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 450, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 690, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 709, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 440, i32 14 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 441, i32 14 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 442, i32 13 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 443, i32 12 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 444, i32 13 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 445, i32 14 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 446, i32 14 }
@___asan_gen_.105 = private unnamed_addr constant [18 x i8] c"cle266_pll_limits\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 12, i32 25 }
@___asan_gen_.108 = private unnamed_addr constant [16 x i8] c"k800_pll_limits\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 43, i32 25 }
@___asan_gen_.111 = private unnamed_addr constant [17 x i8] c"cx700_pll_limits\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 62, i32 25 }
@___asan_gen_.114 = private unnamed_addr constant [17 x i8] c"vx855_pll_limits\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 77, i32 25 }
@___asan_gen_.117 = private unnamed_addr constant [13 x i8] c"palLUT_table\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 179, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant [11 x i8] c"common_vga\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 106, i32 22 }
@___asan_gen_.123 = private unnamed_addr constant [19 x i8] c"scaling_parameters\00", align 1
@___asan_gen_.124 = private constant [32 x i8] c"../drivers/video/fbdev/via/hw.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 89, i32 22 }
@___asan_gen_.126 = private unnamed_addr constant [32 x i8] c"switch.table.viafb_set_iga_path\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [35 x i8] c"switch.table.viafb_set_iga_path.14\00", align 1
@___asan_gen_.128 = private unnamed_addr constant [35 x i8] c"switch.table.viafb_set_iga_path.15\00", align 1
@___asan_gen_.129 = private unnamed_addr constant [35 x i8] c"switch.table.viafb_set_iga_path.16\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [34 x i8] c"switch.table.viafb_init_chip_info\00", align 1
@llvm.compiler.used = appending global [37 x ptr] [ptr @set_crt_source._entry, ptr @set_crt_source._entry_ptr, ptr @set_source_common._entry, ptr @set_source_common._entry_ptr, ptr @via_set_sync_polarity._entry, ptr @via_set_sync_polarity._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @fetch_count_reg, ptr @display_fifo_depth_reg, ptr @fifo_threshold_select_reg, ptr @fifo_high_threshold_select_reg, ptr @display_queue_expire_num_reg, ptr @clock, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @cle266_pll_limits, ptr @k800_pll_limits, ptr @cx700_pll_limits, ptr @vx855_pll_limits, ptr @palLUT_table, ptr @common_vga, ptr @scaling_parameters, ptr @switch.table.viafb_set_iga_path, ptr @switch.table.viafb_set_iga_path.14, ptr @switch.table.viafb_set_iga_path.15, ptr @switch.table.viafb_set_iga_path.16, ptr @switch.table.viafb_init_chip_info], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @via_set_sync_polarity._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fetch_count_reg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_fifo_depth_reg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_threshold_select_reg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fifo_high_threshold_select_reg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @display_queue_expire_num_reg to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clock to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_source_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_crt_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cle266_pll_limits to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k800_pll_limits to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cx700_pll_limits to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vx855_pll_limits to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @palLUT_table to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @common_vga to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scaling_parameters to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_set_iga_path to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_set_iga_path.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_set_iga_path.15 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_set_iga_path.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.viafb_init_chip_info to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_lock_crt() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #11, !srcloc !67
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i = or i8 %0, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #11, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_unlock_crt() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #11, !srcloc !67
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i = and i8 %0, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 71) #11, !srcloc !67
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i1 = and i8 %1, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i1) #11, !srcloc !67
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @viafb_set_iga_path() local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %0 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp = icmp eq i32 %0, 1
  br i1 %cmp, label %if.then, label %if.else43

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  %1 = load i32, ptr @viafb_CRT_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.then.if.end4_crit_edge, label %if.then1

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  %2 = load i32, ptr @viafb_primary_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp2 = icmp eq i32 %2, 1
  %. = select i1 %cmp2, i32 1, i32 2
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.then.if.end4_crit_edge
  %crt_iga_path.0 = phi i32 [ 0, %if.then.if.end4_crit_edge ], [ %., %if.then1 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %3 = load i32, ptr @viafb_DVI_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.end4.if.end13_crit_edge, label %if.then6

if.end4.if.end13_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end13

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  %4 = load i32, ptr @viafb_primary_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %cmp7 = icmp eq i32 %4, 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %5 = load ptr, ptr @viaparinfo, align 4
  %tmds_setting_info = getelementptr inbounds %struct.viafb_par, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %tmds_setting_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmds_setting_info, align 4
  %.243 = select i1 %cmp7, i32 1, i32 2
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %.243, ptr %7, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then6, %if.end4.if.end13_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  %9 = load i32, ptr @viafb_LCD_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool14.not = icmp eq i32 %9, 0
  br i1 %tobool14.not, label %if.end13.if.end32_crit_edge, label %if.then15

if.end13.if.end32_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32

if.then15:                                        ; preds = %if.end13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  %10 = load i32, ptr @viafb_primary_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp16 = icmp eq i32 %10, 2
  br i1 %cmp16, label %if.then17, label %if.else28

if.then17:                                        ; preds = %if.then15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %11 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool18.not = icmp eq i32 %11, 0
  br i1 %tobool18.not, label %if.then17.if.else24_crit_edge, label %land.lhs.true

if.then17.if.else24_crit_edge:                    ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else24

land.lhs.true:                                    ; preds = %if.then17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %12 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chip_info, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp19 = icmp eq i32 %16, 1
  br i1 %cmp19, label %if.then20, label %land.lhs.true.if.else24_crit_edge

land.lhs.true.if.else24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else24

if.then20:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %lvds_setting_info = getelementptr inbounds %struct.viafb_par, ptr %12, i32 0, i32 9
  %17 = ptrtoint ptr %lvds_setting_info to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %lvds_setting_info, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %20 = load ptr, ptr @viaparinfo, align 4
  %tmds_setting_info22 = getelementptr inbounds %struct.viafb_par, ptr %20, i32 0, i32 8
  br label %if.end32.sink.split

if.else24:                                        ; preds = %land.lhs.true.if.else24_crit_edge, %if.then17.if.else24_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %21 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info25 = getelementptr inbounds %struct.viafb_par, ptr %21, i32 0, i32 9
  br label %if.end32.sink.split

if.else28:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %22 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info29 = getelementptr inbounds %struct.viafb_par, ptr %22, i32 0, i32 9
  br label %if.end32.sink.split

if.end32.sink.split:                              ; preds = %if.else28, %if.else24, %if.then20
  %lvds_setting_info29.sink = phi ptr [ %lvds_setting_info29, %if.else28 ], [ %lvds_setting_info25, %if.else24 ], [ %tmds_setting_info22, %if.then20 ]
  %.sink229 = phi i32 [ 2, %if.else28 ], [ 1, %if.else24 ], [ 1, %if.then20 ]
  %crt_iga_path.1.ph = phi i32 [ %crt_iga_path.0, %if.else28 ], [ %crt_iga_path.0, %if.else24 ], [ 1, %if.then20 ]
  %23 = ptrtoint ptr %lvds_setting_info29.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lvds_setting_info29.sink, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink229, ptr %24, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end32.sink.split, %if.end13.if.end32_crit_edge
  %crt_iga_path.1 = phi i32 [ %crt_iga_path.0, %if.end13.if.end32_crit_edge ], [ %crt_iga_path.1.ph, %if.end32.sink.split ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  %26 = load i32, ptr @viafb_LCD2_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool33.not = icmp eq i32 %26, 0
  br i1 %tobool33.not, label %if.end32.if.end95_crit_edge, label %if.then34

if.end32.if.end95_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then34:                                        ; preds = %if.end32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_primary_dev to i32))
  %27 = load i32, ptr @viafb_primary_dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %27)
  %cmp35 = icmp eq i32 %27, 64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %28 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info2 = getelementptr inbounds %struct.viafb_par, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %lvds_setting_info2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lvds_setting_info2, align 4
  br i1 %cmp35, label %if.then36, label %if.else38

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %30, align 4
  br label %if.end95

if.else38:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 2, ptr %30, align 4
  br label %if.end95

if.else43:                                        ; preds = %entry
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  store i32 0, ptr @viafb_SAMM_ON, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  %33 = load i32, ptr @viafb_CRT_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool44.not = icmp eq i32 %33, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  %.pr = load i32, ptr @viafb_LCD_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool58.not = icmp eq i32 %.pr, 0
  br i1 %tobool44.not, label %if.else57, label %land.lhs.true45

land.lhs.true45:                                  ; preds = %if.else43
  br i1 %tobool58.not, label %land.lhs.true52, label %if.then47

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %34 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info48 = getelementptr inbounds %struct.viafb_par, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %lvds_setting_info48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lvds_setting_info48, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 2, ptr %36, align 4
  br label %if.end95

land.lhs.true52:                                  ; preds = %land.lhs.true45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %38 = load i32, ptr @viafb_DVI_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool53.not = icmp eq i32 %38, 0
  br i1 %tobool53.not, label %land.lhs.true52.if.end95_crit_edge, label %if.then54

land.lhs.true52.if.end95_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then54:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %39 = load ptr, ptr @viaparinfo, align 4
  %tmds_setting_info55 = getelementptr inbounds %struct.viafb_par, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %tmds_setting_info55 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tmds_setting_info55, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %41, align 4
  br label %if.end95

if.else57:                                        ; preds = %if.else43
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %43 = load i32, ptr @viafb_DVI_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool84.not = icmp eq i32 %43, 0
  br i1 %tobool58.not, label %if.else83, label %land.lhs.true59

land.lhs.true59:                                  ; preds = %if.else57
  br i1 %tobool84.not, label %land.lhs.true68, label %if.then61

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %44 = load ptr, ptr @viaparinfo, align 4
  %tmds_setting_info62 = getelementptr inbounds %struct.viafb_par, ptr %44, i32 0, i32 8
  %45 = ptrtoint ptr %tmds_setting_info62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tmds_setting_info62, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1, ptr %46, align 4
  %48 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info64 = getelementptr inbounds %struct.viafb_par, ptr %48, i32 0, i32 9
  %49 = ptrtoint ptr %lvds_setting_info64 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %lvds_setting_info64, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 2, ptr %50, align 4
  br label %if.end95

land.lhs.true68:                                  ; preds = %land.lhs.true59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  %52 = load i32, ptr @viafb_LCD2_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool69.not = icmp eq i32 %52, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %53 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info81 = getelementptr inbounds %struct.viafb_par, ptr %53, i32 0, i32 9
  %54 = ptrtoint ptr %lvds_setting_info81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lvds_setting_info81, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %55, align 4
  br i1 %tobool69.not, label %land.lhs.true68.if.end95_crit_edge, label %if.then70

land.lhs.true68.if.end95_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then70:                                        ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %57 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info273 = getelementptr inbounds %struct.viafb_par, ptr %57, i32 0, i32 10
  %58 = ptrtoint ptr %lvds_setting_info273 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lvds_setting_info273, align 4
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 2, ptr %59, align 4
  br label %if.end95

if.else83:                                        ; preds = %if.else57
  br i1 %tobool84.not, label %if.else83.if.end95_crit_edge, label %if.then85

if.else83.if.end95_crit_edge:                     ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end95

if.then85:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %61 = load ptr, ptr @viaparinfo, align 4
  %tmds_setting_info86 = getelementptr inbounds %struct.viafb_par, ptr %61, i32 0, i32 8
  %62 = ptrtoint ptr %tmds_setting_info86 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %tmds_setting_info86, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %63, align 4
  br label %if.end95

if.end95:                                         ; preds = %if.then85, %if.else83.if.end95_crit_edge, %if.then70, %land.lhs.true68.if.end95_crit_edge, %if.then61, %if.then54, %land.lhs.true52.if.end95_crit_edge, %if.then47, %if.else38, %if.then36, %if.end32.if.end95_crit_edge
  %crt_iga_path.2 = phi i32 [ %crt_iga_path.1, %if.then36 ], [ %crt_iga_path.1, %if.else38 ], [ %crt_iga_path.1, %if.end32.if.end95_crit_edge ], [ 1, %if.then47 ], [ 1, %if.then54 ], [ 0, %if.then61 ], [ 0, %if.then70 ], [ 0, %if.then85 ], [ 0, %if.else83.if.end95_crit_edge ], [ 1, %land.lhs.true52.if.end95_crit_edge ], [ 0, %land.lhs.true68.if.end95_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %65 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %shared, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %67, align 4
  %69 = load ptr, ptr @viaparinfo, align 4
  %shared96 = getelementptr inbounds %struct.viafb_par, ptr %69, i32 0, i32 7
  %70 = ptrtoint ptr %shared96 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %shared96, align 4
  %iga2_devices = getelementptr inbounds %struct.viafb_shared, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %iga2_devices to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %iga2_devices, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  %73 = load i32, ptr @viafb_CRT_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool97.not = icmp eq i32 %73, 0
  br i1 %tobool97.not, label %if.end95.if.end108_crit_edge, label %if.then98

if.end95.if.end108_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end108

if.then98:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %crt_iga_path.2)
  %cmp99 = icmp eq i32 %crt_iga_path.2, 1
  %74 = ptrtoint ptr %shared96 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %shared96, align 4
  %iga2_devices105 = getelementptr inbounds %struct.viafb_shared, ptr %75, i32 0, i32 1
  %.sink233 = select i1 %cmp99, ptr %75, ptr %iga2_devices105
  %76 = ptrtoint ptr %.sink233 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %.sink233, align 4
  %or = or i32 %77, 16
  store i32 %or, ptr %.sink233, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.then98, %if.end95.if.end108_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %78 = load i32, ptr @viafb_DVI_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool109.not = icmp eq i32 %78, 0
  br i1 %tobool109.not, label %if.end108.if.end128_crit_edge, label %if.then110

if.end108.if.end128_crit_edge:                    ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end128

if.then110:                                       ; preds = %if.end108
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %79 = load ptr, ptr @viaparinfo, align 4
  %tmds_setting_info111 = getelementptr inbounds %struct.viafb_par, ptr %79, i32 0, i32 8
  %80 = ptrtoint ptr %tmds_setting_info111 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %tmds_setting_info111, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %83)
  %cmp113 = icmp eq i32 %83, 1
  %chip_info115 = getelementptr inbounds %struct.viafb_par, ptr %79, i32 0, i32 11
  %84 = ptrtoint ptr %chip_info115 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chip_info115, align 4
  %output_interface = getelementptr inbounds %struct.chip_information, ptr %85, i32 0, i32 3, i32 2
  %86 = ptrtoint ptr %output_interface to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %output_interface, align 4
  br i1 %cmp113, label %if.then114, label %if.else119

if.then114:                                       ; preds = %if.then110
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values)
  switch i32 %87, label %sw.epilog.i [
    i32 2, label %if.then114.get_dvi_devices.exit_crit_edge
    i32 3, label %sw.bb1.i
    i32 4, label %sw.bb2.i
    i32 5, label %sw.bb8.i
    i32 10, label %sw.bb14.i
  ]

if.then114.get_dvi_devices.exit_crit_edge:        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_dvi_devices.exit

sw.bb1.i:                                         ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  %89 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %90)
  %cmp.i = icmp eq i32 %90, 1
  %..i = select i1 %cmp.i, i32 2, i32 32
  br label %get_dvi_devices.exit

sw.bb2.i:                                         ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %92)
  %cmp5.i = icmp eq i32 %92, 1
  %.15.i = select i1 %cmp5.i, i32 0, i32 132
  br label %get_dvi_devices.exit

sw.bb8.i:                                         ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  %93 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %94)
  %cmp11.i = icmp eq i32 %94, 1
  %.16.i = select i1 %cmp11.i, i32 0, i32 96
  br label %get_dvi_devices.exit

sw.bb14.i:                                        ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_dvi_devices.exit

sw.epilog.i:                                      ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_dvi_devices.exit

get_dvi_devices.exit:                             ; preds = %sw.epilog.i, %sw.bb14.i, %sw.bb8.i, %sw.bb2.i, %sw.bb1.i, %if.then114.get_dvi_devices.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ 64, %sw.bb14.i ], [ 5, %if.then114.get_dvi_devices.exit_crit_edge ], [ %..i, %sw.bb1.i ], [ %.15.i, %sw.bb2.i ], [ %.16.i, %sw.bb8.i ]
  %shared116 = getelementptr inbounds %struct.viafb_par, ptr %79, i32 0, i32 7
  %95 = ptrtoint ptr %shared116 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %shared116, align 4
  br label %if.end128.sink.split

if.else119:                                       ; preds = %if.then110
  %97 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %97, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %87, label %sw.epilog.i186 [
    i32 2, label %if.else119.get_dvi_devices.exit188_crit_edge
    i32 3, label %sw.bb1.i176
    i32 4, label %sw.bb2.i180
    i32 5, label %sw.bb8.i184
    i32 10, label %sw.bb14.i185
  ]

if.else119.get_dvi_devices.exit188_crit_edge:     ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_dvi_devices.exit188

sw.bb1.i176:                                      ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  %98 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %99)
  %cmp.i174 = icmp eq i32 %99, 1
  %..i175 = select i1 %cmp.i174, i32 2, i32 32
  br label %get_dvi_devices.exit188

sw.bb2.i180:                                      ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  %100 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %101)
  %cmp5.i178 = icmp eq i32 %101, 1
  %.15.i179 = select i1 %cmp5.i178, i32 0, i32 132
  br label %get_dvi_devices.exit188

sw.bb8.i184:                                      ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  %102 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %85, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %103)
  %cmp11.i182 = icmp eq i32 %103, 1
  %.16.i183 = select i1 %cmp11.i182, i32 0, i32 96
  br label %get_dvi_devices.exit188

sw.bb14.i185:                                     ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_dvi_devices.exit188

sw.epilog.i186:                                   ; preds = %if.else119
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_dvi_devices.exit188

get_dvi_devices.exit188:                          ; preds = %sw.epilog.i186, %sw.bb14.i185, %sw.bb8.i184, %sw.bb2.i180, %sw.bb1.i176, %if.else119.get_dvi_devices.exit188_crit_edge
  %retval.0.i187 = phi i32 [ 0, %sw.epilog.i186 ], [ 64, %sw.bb14.i185 ], [ 5, %if.else119.get_dvi_devices.exit188_crit_edge ], [ %..i175, %sw.bb1.i176 ], [ %.15.i179, %sw.bb2.i180 ], [ %.16.i183, %sw.bb8.i184 ]
  %shared124 = getelementptr inbounds %struct.viafb_par, ptr %79, i32 0, i32 7
  %104 = ptrtoint ptr %shared124 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %shared124, align 4
  %iga2_devices125 = getelementptr inbounds %struct.viafb_shared, ptr %105, i32 0, i32 1
  br label %if.end128.sink.split

if.end128.sink.split:                             ; preds = %get_dvi_devices.exit188, %get_dvi_devices.exit
  %.sink236 = phi ptr [ %96, %get_dvi_devices.exit ], [ %iga2_devices125, %get_dvi_devices.exit188 ]
  %retval.0.i.sink = phi i32 [ %retval.0.i, %get_dvi_devices.exit ], [ %retval.0.i187, %get_dvi_devices.exit188 ]
  %106 = ptrtoint ptr %.sink236 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %.sink236, align 4
  %or118 = or i32 %107, %retval.0.i.sink
  store i32 %or118, ptr %.sink236, align 4
  br label %if.end128

if.end128:                                        ; preds = %if.end128.sink.split, %if.end108.if.end128_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  %108 = load i32, ptr @viafb_LCD_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool129.not = icmp eq i32 %108, 0
  br i1 %tobool129.not, label %if.end128.if.end150_crit_edge, label %if.then130

if.end128.if.end150_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end150

if.then130:                                       ; preds = %if.end128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %109 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info131 = getelementptr inbounds %struct.viafb_par, ptr %109, i32 0, i32 9
  %110 = ptrtoint ptr %lvds_setting_info131 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %lvds_setting_info131, align 4
  %112 = ptrtoint ptr %111 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %111, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp133 = icmp eq i32 %113, 1
  %chip_info135 = getelementptr inbounds %struct.viafb_par, ptr %109, i32 0, i32 11
  %114 = ptrtoint ptr %chip_info135 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %chip_info135, align 4
  %output_interface136 = getelementptr inbounds %struct.chip_information, ptr %115, i32 0, i32 4, i32 2
  %116 = ptrtoint ptr %output_interface136 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %output_interface136, align 4
  %switch.tableidx = add i32 %117, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %118 = icmp ult i32 %switch.tableidx, 8
  br i1 %cmp133, label %if.then134, label %if.else141

if.then134:                                       ; preds = %if.then130
  br i1 %118, label %switch.lookup, label %if.then134.get_lcd_devices.exit_crit_edge

if.then134.get_lcd_devices.exit_crit_edge:        ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_lcd_devices.exit

switch.lookup:                                    ; preds = %if.then134
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.viafb_set_iga_path, i32 0, i32 %switch.tableidx
  %119 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %119)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %get_lcd_devices.exit

get_lcd_devices.exit:                             ; preds = %switch.lookup, %if.then134.get_lcd_devices.exit_crit_edge
  %retval.0.i192 = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.then134.get_lcd_devices.exit_crit_edge ]
  %shared138 = getelementptr inbounds %struct.viafb_par, ptr %109, i32 0, i32 7
  %120 = ptrtoint ptr %shared138 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %shared138, align 4
  br label %if.end150.sink.split

if.else141:                                       ; preds = %if.then130
  br i1 %118, label %switch.lookup244, label %if.else141.get_lcd_devices.exit201_crit_edge

if.else141.get_lcd_devices.exit201_crit_edge:     ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_lcd_devices.exit201

switch.lookup244:                                 ; preds = %if.else141
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep246 = getelementptr inbounds [8 x i32], ptr @switch.table.viafb_set_iga_path.14, i32 0, i32 %switch.tableidx
  %122 = ptrtoint ptr %switch.gep246 to i32
  call void @__asan_load4_noabort(i32 %122)
  %switch.load247 = load i32, ptr %switch.gep246, align 4
  br label %get_lcd_devices.exit201

get_lcd_devices.exit201:                          ; preds = %switch.lookup244, %if.else141.get_lcd_devices.exit201_crit_edge
  %retval.0.i200 = phi i32 [ %switch.load247, %switch.lookup244 ], [ 0, %if.else141.get_lcd_devices.exit201_crit_edge ]
  %shared146 = getelementptr inbounds %struct.viafb_par, ptr %109, i32 0, i32 7
  %123 = ptrtoint ptr %shared146 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %shared146, align 4
  %iga2_devices147 = getelementptr inbounds %struct.viafb_shared, ptr %124, i32 0, i32 1
  br label %if.end150.sink.split

if.end150.sink.split:                             ; preds = %get_lcd_devices.exit201, %get_lcd_devices.exit
  %.sink239 = phi ptr [ %121, %get_lcd_devices.exit ], [ %iga2_devices147, %get_lcd_devices.exit201 ]
  %retval.0.i192.sink = phi i32 [ %retval.0.i192, %get_lcd_devices.exit ], [ %retval.0.i200, %get_lcd_devices.exit201 ]
  %125 = ptrtoint ptr %.sink239 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %.sink239, align 4
  %or140 = or i32 %126, %retval.0.i192.sink
  store i32 %or140, ptr %.sink239, align 4
  br label %if.end150

if.end150:                                        ; preds = %if.end150.sink.split, %if.end128.if.end150_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  %127 = load i32, ptr @viafb_LCD2_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool151.not = icmp eq i32 %127, 0
  br i1 %tobool151.not, label %if.end150.if.end172_crit_edge, label %if.then152

if.end150.if.end172_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end172

if.then152:                                       ; preds = %if.end150
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %128 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info2153 = getelementptr inbounds %struct.viafb_par, ptr %128, i32 0, i32 10
  %129 = ptrtoint ptr %lvds_setting_info2153 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %lvds_setting_info2153, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %130, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %132)
  %cmp155 = icmp eq i32 %132, 1
  %chip_info157 = getelementptr inbounds %struct.viafb_par, ptr %128, i32 0, i32 11
  %133 = ptrtoint ptr %chip_info157 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %chip_info157, align 4
  %output_interface158 = getelementptr inbounds %struct.chip_information, ptr %134, i32 0, i32 5, i32 2
  %135 = ptrtoint ptr %output_interface158 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %output_interface158, align 4
  %switch.tableidx249 = add i32 %136, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx249)
  %137 = icmp ult i32 %switch.tableidx249, 8
  br i1 %cmp155, label %if.then156, label %if.else163

if.then156:                                       ; preds = %if.then152
  br i1 %137, label %switch.lookup248, label %if.then156.get_lcd_devices.exit210_crit_edge

if.then156.get_lcd_devices.exit210_crit_edge:     ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_lcd_devices.exit210

switch.lookup248:                                 ; preds = %if.then156
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep250 = getelementptr inbounds [8 x i32], ptr @switch.table.viafb_set_iga_path.15, i32 0, i32 %switch.tableidx249
  %138 = ptrtoint ptr %switch.gep250 to i32
  call void @__asan_load4_noabort(i32 %138)
  %switch.load251 = load i32, ptr %switch.gep250, align 4
  br label %get_lcd_devices.exit210

get_lcd_devices.exit210:                          ; preds = %switch.lookup248, %if.then156.get_lcd_devices.exit210_crit_edge
  %retval.0.i209 = phi i32 [ %switch.load251, %switch.lookup248 ], [ 0, %if.then156.get_lcd_devices.exit210_crit_edge ]
  %shared160 = getelementptr inbounds %struct.viafb_par, ptr %128, i32 0, i32 7
  %139 = ptrtoint ptr %shared160 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %shared160, align 4
  br label %if.end172.sink.split

if.else163:                                       ; preds = %if.then152
  br i1 %137, label %switch.lookup252, label %if.else163.get_lcd_devices.exit219_crit_edge

if.else163.get_lcd_devices.exit219_crit_edge:     ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_lcd_devices.exit219

switch.lookup252:                                 ; preds = %if.else163
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep254 = getelementptr inbounds [8 x i32], ptr @switch.table.viafb_set_iga_path.16, i32 0, i32 %switch.tableidx249
  %141 = ptrtoint ptr %switch.gep254 to i32
  call void @__asan_load4_noabort(i32 %141)
  %switch.load255 = load i32, ptr %switch.gep254, align 4
  br label %get_lcd_devices.exit219

get_lcd_devices.exit219:                          ; preds = %switch.lookup252, %if.else163.get_lcd_devices.exit219_crit_edge
  %retval.0.i218 = phi i32 [ %switch.load255, %switch.lookup252 ], [ 0, %if.else163.get_lcd_devices.exit219_crit_edge ]
  %shared168 = getelementptr inbounds %struct.viafb_par, ptr %128, i32 0, i32 7
  %142 = ptrtoint ptr %shared168 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %shared168, align 4
  %iga2_devices169 = getelementptr inbounds %struct.viafb_shared, ptr %143, i32 0, i32 1
  br label %if.end172.sink.split

if.end172.sink.split:                             ; preds = %get_lcd_devices.exit219, %get_lcd_devices.exit210
  %.sink242 = phi ptr [ %140, %get_lcd_devices.exit210 ], [ %iga2_devices169, %get_lcd_devices.exit219 ]
  %retval.0.i209.sink = phi i32 [ %retval.0.i209, %get_lcd_devices.exit210 ], [ %retval.0.i218, %get_lcd_devices.exit219 ]
  %144 = ptrtoint ptr %.sink242 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %.sink242, align 4
  %or162 = or i32 %145, %retval.0.i209.sink
  store i32 %or162, ptr %.sink242, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.end172.sink.split, %if.end150.if.end172_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_set_primary_color_register(i8 noundef zeroext %index, i8 noundef zeroext %red, i8 noundef zeroext %green, i8 noundef zeroext %blue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #11, !srcloc !67
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i = and i8 %0, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !71
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !72
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %index) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !73
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %red) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %green) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !75
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %blue) #11, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_set_secondary_color_register(i8 noundef zeroext %index, i8 noundef zeroext %red, i8 noundef zeroext %green, i8 noundef zeroext %blue) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #11, !srcloc !67
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i = or i8 %0, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !71
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873402 to ptr), i8 -1) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !72
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %index) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !73
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %red) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !74
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %green) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !75
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %blue) #11, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_set_source(i32 noundef %devices, i8 noundef zeroext %iga) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %devices, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = zext i8 %iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %iga, label %do.end.i.i [
    i8 1, label %if.then.sw.epilog.i.i_crit_edge
    i8 2, label %sw.bb3.i.i
  ]

if.then.sw.epilog.i.i_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

sw.bb3.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

do.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i.i = zext i8 %iga to i32
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i) #14
  br label %if.end

sw.epilog.i.i:                                    ; preds = %sw.bb3.i.i, %if.then.sw.epilog.i.i_crit_edge
  %value.0.i.i = phi i8 [ -128, %sw.bb3.i.i ], [ 0, %if.then.sw.epilog.i.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 108) #11, !srcloc !67
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i.i = and i8 %1, 127
  %or.i.i.i = or i8 %and15.i.i.i, %value.0.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i.i) #11, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i.i, %do.end.i.i, %entry.if.end_crit_edge
  %and1 = and i32 %devices, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

if.then3:                                         ; preds = %if.end
  %2 = zext i8 %iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i8 %iga, label %do.end.i.i40 [
    i8 1, label %if.then3.sw.epilog.i.i44_crit_edge
    i8 2, label %sw.bb3.i.i37
  ]

if.then3.sw.epilog.i.i44_crit_edge:               ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i44

sw.bb3.i.i37:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i44

do.end.i.i40:                                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i.i38 = zext i8 %iga to i32
  %call.i.i39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i38) #14
  br label %if.end4

sw.epilog.i.i44:                                  ; preds = %sw.bb3.i.i37, %if.then3.sw.epilog.i.i44_crit_edge
  %value.0.i.i41 = phi i8 [ -128, %sw.bb3.i.i37 ], [ 0, %if.then3.sw.epilog.i.i44_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -109) #11, !srcloc !67
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i.i42 = and i8 %3, 127
  %or.i.i.i43 = or i8 %and15.i.i.i42, %value.0.i.i41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i.i43) #11, !srcloc !67
  br label %if.end4

if.end4:                                          ; preds = %sw.epilog.i.i44, %do.end.i.i40, %if.end.if.end4_crit_edge
  %and5 = and i32 %devices, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  %4 = zext i8 %iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i8 %iga, label %do.end.i.i48 [
    i8 1, label %if.then7.sw.epilog.i.i52_crit_edge
    i8 2, label %sw.bb3.i.i45
  ]

if.then7.sw.epilog.i.i52_crit_edge:               ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i52

sw.bb3.i.i45:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i52

do.end.i.i48:                                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i.i46 = zext i8 %iga to i32
  %call.i.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i46) #14
  br label %if.end8

sw.epilog.i.i52:                                  ; preds = %sw.bb3.i.i45, %if.then7.sw.epilog.i.i52_crit_edge
  %value.0.i.i49 = phi i8 [ 16, %sw.bb3.i.i45 ], [ 0, %if.then7.sw.epilog.i.i52_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -106) #11, !srcloc !67
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i.i50 = and i8 %5, -17
  %or.i.i.i51 = or i8 %and15.i.i.i50, %value.0.i.i49
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i.i51) #11, !srcloc !67
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog.i.i52, %do.end.i.i48, %if.end4.if.end8_crit_edge
  %and9 = and i32 %devices, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %6 = zext i8 %iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.21)
  switch i8 %iga, label %do.end.i [
    i8 1, label %if.then11.sw.epilog.i_crit_edge
    i8 2, label %sw.bb1.i
  ]

if.then11.sw.epilog.i_crit_edge:                  ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i8 %iga to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv.i) #14
  br label %if.end12

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.then11.sw.epilog.i_crit_edge
  %value.0.i = phi i8 [ 64, %sw.bb1.i ], [ 0, %if.then11.sw.epilog.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 22) #11, !srcloc !67
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i = and i8 %7, -65
  %or.i.i = or i8 %and15.i.i, %value.0.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i) #11, !srcloc !67
  br label %if.end12

if.end12:                                         ; preds = %sw.epilog.i, %do.end.i, %if.end8.if.end12_crit_edge
  %and13 = and i32 %devices, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  %8 = zext i8 %iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.22)
  switch i8 %iga, label %do.end.i.i56 [
    i8 1, label %if.then15.sw.epilog.i.i60_crit_edge
    i8 2, label %sw.bb3.i.i53
  ]

if.then15.sw.epilog.i.i60_crit_edge:              ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i60

sw.bb3.i.i53:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i60

do.end.i.i56:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i.i54 = zext i8 %iga to i32
  %call.i.i55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i54) #14
  br label %if.end16

sw.epilog.i.i60:                                  ; preds = %sw.bb3.i.i53, %if.then15.sw.epilog.i.i60_crit_edge
  %value.0.i.i57 = phi i8 [ 16, %sw.bb3.i.i53 ], [ 0, %if.then15.sw.epilog.i.i60_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -101) #11, !srcloc !67
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i.i58 = and i8 %9, -17
  %or.i.i.i59 = or i8 %and15.i.i.i58, %value.0.i.i57
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i.i59) #11, !srcloc !67
  br label %if.end16

if.end16:                                         ; preds = %sw.epilog.i.i60, %do.end.i.i56, %if.end12.if.end16_crit_edge
  %and17 = and i32 %devices, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end20_crit_edge, label %if.then19

if.end16.if.end20_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then19:                                        ; preds = %if.end16
  %10 = zext i8 %iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.23)
  switch i8 %iga, label %do.end.i.i64 [
    i8 1, label %if.then19.sw.epilog.i.i68_crit_edge
    i8 2, label %sw.bb3.i.i61
  ]

if.then19.sw.epilog.i.i68_crit_edge:              ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i68

sw.bb3.i.i61:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i68

do.end.i.i64:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i.i62 = zext i8 %iga to i32
  %call.i.i63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i62) #14
  br label %if.end20

sw.epilog.i.i68:                                  ; preds = %sw.bb3.i.i61, %if.then19.sw.epilog.i.i68_crit_edge
  %value.0.i.i65 = phi i8 [ 16, %sw.bb3.i.i61 ], [ 0, %if.then19.sw.epilog.i.i68_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #11, !srcloc !67
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i.i66 = and i8 %11, -17
  %or.i.i.i67 = or i8 %and15.i.i.i66, %value.0.i.i65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i.i67) #11, !srcloc !67
  br label %if.end20

if.end20:                                         ; preds = %sw.epilog.i.i68, %do.end.i.i64, %if.end16.if.end20_crit_edge
  %and21 = and i32 %devices, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end20.if.end24_crit_edge, label %if.then23

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end24

if.then23:                                        ; preds = %if.end20
  %12 = zext i8 %iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.24)
  switch i8 %iga, label %do.end.i.i72 [
    i8 1, label %if.then23.sw.epilog.i.i76_crit_edge
    i8 2, label %sw.bb3.i.i69
  ]

if.then23.sw.epilog.i.i76_crit_edge:              ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i76

sw.bb3.i.i69:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i76

do.end.i.i72:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #13
  %conv2.i.i70 = zext i8 %iga to i32
  %call.i.i71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %conv2.i.i70) #14
  br label %if.end24

sw.epilog.i.i76:                                  ; preds = %sw.bb3.i.i69, %if.then23.sw.epilog.i.i76_crit_edge
  %value.0.i.i73 = phi i8 [ 16, %sw.bb3.i.i69 ], [ 0, %if.then23.sw.epilog.i.i76_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -105) #11, !srcloc !67
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i.i74 = and i8 %13, -17
  %or.i.i.i75 = or i8 %and15.i.i.i74, %value.0.i.i73
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i.i75) #11, !srcloc !67
  br label %if.end24

if.end24:                                         ; preds = %sw.epilog.i.i76, %do.end.i.i72, %if.end20.if.end24_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_set_state(i32 noundef %devices, i8 noundef zeroext %state) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %devices, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.25)
  switch i8 %state, label %if.then.if.end_crit_edge [
    i8 0, label %if.then.sw.epilog.i_crit_edge
    i8 3, label %sw.bb1.i
  ]

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

sw.bb1.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %if.then.sw.epilog.i_crit_edge
  %value.0.i = phi i8 [ 0, %sw.bb1.i ], [ -64, %if.then.sw.epilog.i_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #11, !srcloc !67
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i = and i8 %1, 63
  %or.i.i = or i8 %and15.i.i, %value.0.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i) #11, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %sw.epilog.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %and1 = and i32 %devices, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp ne i32 %and1, 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %state)
  %2 = icmp ult i8 %state, 4
  %or.cond = and i1 %tobool2.not, %2
  br i1 %or.cond, label %switch.lookup, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end4

switch.lookup:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %switch.idx.mult = shl i8 %state, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 54) #11, !srcloc !67
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i27 = and i8 %3, -49
  %or.i.i28 = or i8 %and15.i.i27, %switch.idx.mult
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i28) #11, !srcloc !67
  br label %if.end4

if.end4:                                          ; preds = %switch.lookup, %if.end.if.end4_crit_edge
  %and5 = and i32 %devices, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end4.if.end8_crit_edge, label %if.then7

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then7:                                         ; preds = %if.end4
  %4 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.26)
  switch i8 %state, label %if.then7.if.end8_crit_edge [
    i8 0, label %if.then7.sw.epilog.i34_crit_edge
    i8 3, label %sw.bb1.i30
  ]

if.then7.sw.epilog.i34_crit_edge:                 ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i34

if.then7.if.end8_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

sw.bb1.i30:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i34

sw.epilog.i34:                                    ; preds = %sw.bb1.i30, %if.then7.sw.epilog.i34_crit_edge
  %value.0.i31 = phi i8 [ 0, %sw.bb1.i30 ], [ 48, %if.then7.sw.epilog.i34_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #11, !srcloc !67
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i32 = and i8 %5, -49
  %or.i.i33 = or i8 %and15.i.i32, %value.0.i31
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i33) #11, !srcloc !67
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog.i34, %if.then7.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  %and9 = and i32 %devices, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end12_crit_edge, label %if.then11

if.end8.if.end12_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then11:                                        ; preds = %if.end8
  %6 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %state, label %if.then11.if.end12_crit_edge [
    i8 0, label %if.then11.sw.epilog.i39_crit_edge
    i8 3, label %sw.bb1.i35
  ]

if.then11.sw.epilog.i39_crit_edge:                ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i39

if.then11.if.end12_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

sw.bb1.i35:                                       ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i39

sw.epilog.i39:                                    ; preds = %sw.bb1.i35, %if.then11.sw.epilog.i39_crit_edge
  %value.0.i36 = phi i8 [ 0, %sw.bb1.i35 ], [ 3, %if.then11.sw.epilog.i39_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #11, !srcloc !67
  %7 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i37 = and i8 %7, -4
  %or.i.i38 = or i8 %and15.i.i37, %value.0.i36
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i38) #11, !srcloc !67
  br label %if.end12

if.end12:                                         ; preds = %sw.epilog.i39, %if.then11.if.end12_crit_edge, %if.end8.if.end12_crit_edge
  %and13 = and i32 %devices, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end12.if.end16_crit_edge, label %if.then15

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

if.then15:                                        ; preds = %if.end12
  %8 = zext i8 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.28)
  switch i8 %state, label %if.then15.if.end16_crit_edge [
    i8 0, label %if.then15.sw.epilog.i44_crit_edge
    i8 3, label %sw.bb1.i40
  ]

if.then15.sw.epilog.i44_crit_edge:                ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i44

if.then15.if.end16_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end16

sw.bb1.i40:                                       ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i44

sw.epilog.i44:                                    ; preds = %sw.bb1.i40, %if.then15.sw.epilog.i44_crit_edge
  %value.0.i41 = phi i8 [ 0, %sw.bb1.i40 ], [ 12, %if.then15.sw.epilog.i44_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #11, !srcloc !67
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i42 = and i8 %9, -13
  %or.i.i43 = or i8 %and15.i.i42, %value.0.i41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i43) #11, !srcloc !67
  br label %if.end16

if.end16:                                         ; preds = %sw.epilog.i44, %if.then15.if.end16_crit_edge, %if.end12.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_set_sync_polarity(i32 noundef %devices, i8 noundef zeroext %polarity) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %polarity to i32
  %and = and i32 %conv, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %conv) #14
  br label %if.end28

if.end:                                           ; preds = %entry
  %and2 = and i32 %devices, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end7_crit_edge, label %if.then4

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end7

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %shl = shl i8 %polarity, 6
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873396 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @arm_heavy_mb() #11
  %and5.i = and i8 %0, 63
  %or.i = or i8 %and5.i, %shl
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %or.i) #11, !srcloc !67
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.end.if.end7_crit_edge
  %and8 = and i32 %devices, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.end7.if.end14_crit_edge, label %if.then10

if.end7.if.end14_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then10:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %shl12 = shl i8 %polarity, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -101) #11, !srcloc !67
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i = and i8 %shl12, 96
  %and15.i = and i8 %1, -97
  %or.i37 = or i8 %and15.i, %and1225.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i37) #11, !srcloc !67
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end7.if.end14_crit_edge
  %and15 = and i32 %devices, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end14.if.end21_crit_edge, label %if.then17

if.end14.if.end21_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %shl19 = shl i8 %polarity, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #11, !srcloc !67
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i38 = and i8 %shl19, 96
  %and15.i39 = and i8 %2, -97
  %or.i40 = or i8 %and15.i39, %and1225.i38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i40) #11, !srcloc !67
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end14.if.end21_crit_edge
  %and22 = and i32 %devices, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end28_crit_edge, label %if.then24

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %shl26 = shl i8 %polarity, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -105) #11, !srcloc !67
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i41 = and i8 %shl26, 96
  %and15.i42 = and i8 %3, -97
  %or.i43 = or i8 %and15.i42, %and1225.i41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i43) #11, !srcloc !67
  br label %if.end28

if.end28:                                         ; preds = %if.then24, %if.end21.if.end28_crit_edge, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @via_parse_odev(ptr noundef %input, ptr nocapture noundef writeonly %end) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond.preheader

for.cond.preheader:                               ; preds = %for.inc.6.for.cond.preheader_crit_edge, %entry
  %odev.027 = phi i32 [ 0, %entry ], [ %odev.2.6, %for.inc.6.for.cond.preheader_crit_edge ]
  %ptr.026 = phi ptr [ %input, %entry ], [ %ptr.2.6, %for.inc.6.for.cond.preheader_crit_edge ]
  %call3 = tail call i32 @strncmp(ptr noundef %ptr.026, ptr noundef nonnull dereferenceable(6) @.str.6, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then, label %for.cond.preheader.for.inc_crit_edge

for.cond.preheader.for.inc_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then:                                          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %odev.027, 1
  %add.ptr = getelementptr i8, ptr %ptr.026, i32 5
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %add.ptr, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %1)
  %cmp6 = icmp eq i8 %1, 44
  %spec.select.idx = zext i1 %cmp6 to i32
  %spec.select = getelementptr i8, ptr %add.ptr, i32 %spec.select.idx
  %spec.select20 = zext i1 %cmp6 to i8
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.cond.preheader.for.inc_crit_edge
  %ptr.2 = phi ptr [ %ptr.026, %for.cond.preheader.for.inc_crit_edge ], [ %spec.select, %if.then ]
  %odev.2 = phi i32 [ %odev.027, %for.cond.preheader.for.inc_crit_edge ], [ %or, %if.then ]
  %next.2 = phi i8 [ 0, %for.cond.preheader.for.inc_crit_edge ], [ %spec.select20, %if.then ]
  %call3.1 = tail call i32 @strncmp(ptr noundef %ptr.2, ptr noundef nonnull dereferenceable(6) @.str.7, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.1)
  %tobool4.not.1 = icmp eq i32 %call3.1, 0
  br i1 %tobool4.not.1, label %if.then.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %or.1 = or i32 %odev.2, 2
  %add.ptr.1 = getelementptr i8, ptr %ptr.2, i32 5
  %2 = ptrtoint ptr %add.ptr.1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %add.ptr.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %3)
  %cmp6.1 = icmp eq i8 %3, 44
  %spec.select.idx.1 = zext i1 %cmp6.1 to i32
  %spec.select.1 = getelementptr i8, ptr %add.ptr.1, i32 %spec.select.idx.1
  %spec.select20.1 = select i1 %cmp6.1, i8 1, i8 %next.2
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %ptr.2.1 = phi ptr [ %ptr.2, %for.inc.for.inc.1_crit_edge ], [ %spec.select.1, %if.then.1 ]
  %odev.2.1 = phi i32 [ %odev.2, %for.inc.for.inc.1_crit_edge ], [ %or.1, %if.then.1 ]
  %next.2.1 = phi i8 [ %next.2, %for.inc.for.inc.1_crit_edge ], [ %spec.select20.1, %if.then.1 ]
  %call3.2 = tail call i32 @strncmp(ptr noundef %ptr.2.1, ptr noundef nonnull dereferenceable(5) @.str.8, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.2)
  %tobool4.not.2 = icmp eq i32 %call3.2, 0
  br i1 %tobool4.not.2, label %if.then.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %or.2 = or i32 %odev.2.1, 4
  %add.ptr.2 = getelementptr i8, ptr %ptr.2.1, i32 4
  %4 = ptrtoint ptr %add.ptr.2 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %add.ptr.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %5)
  %cmp6.2 = icmp eq i8 %5, 44
  %spec.select.idx.2 = zext i1 %cmp6.2 to i32
  %spec.select.2 = getelementptr i8, ptr %add.ptr.2, i32 %spec.select.idx.2
  %spec.select20.2 = select i1 %cmp6.2, i8 1, i8 %next.2.1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %ptr.2.2 = phi ptr [ %ptr.2.1, %for.inc.1.for.inc.2_crit_edge ], [ %spec.select.2, %if.then.2 ]
  %odev.2.2 = phi i32 [ %odev.2.1, %for.inc.1.for.inc.2_crit_edge ], [ %or.2, %if.then.2 ]
  %next.2.2 = phi i8 [ %next.2.1, %for.inc.1.for.inc.2_crit_edge ], [ %spec.select20.2, %if.then.2 ]
  %call3.3 = tail call i32 @strncmp(ptr noundef %ptr.2.2, ptr noundef nonnull dereferenceable(4) @.str.9, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.3)
  %tobool4.not.3 = icmp eq i32 %call3.3, 0
  br i1 %tobool4.not.3, label %if.then.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %or.3 = or i32 %odev.2.2, 16
  %add.ptr.3 = getelementptr i8, ptr %ptr.2.2, i32 3
  %6 = ptrtoint ptr %add.ptr.3 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %add.ptr.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %7)
  %cmp6.3 = icmp eq i8 %7, 44
  %spec.select.idx.3 = zext i1 %cmp6.3 to i32
  %spec.select.3 = getelementptr i8, ptr %add.ptr.3, i32 %spec.select.idx.3
  %spec.select20.3 = select i1 %cmp6.3, i8 1, i8 %next.2.2
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %ptr.2.3 = phi ptr [ %ptr.2.2, %for.inc.2.for.inc.3_crit_edge ], [ %spec.select.3, %if.then.3 ]
  %odev.2.3 = phi i32 [ %odev.2.2, %for.inc.2.for.inc.3_crit_edge ], [ %or.3, %if.then.3 ]
  %next.2.3 = phi i8 [ %next.2.2, %for.inc.2.for.inc.3_crit_edge ], [ %spec.select20.3, %if.then.3 ]
  %call3.4 = tail call i32 @strncmp(ptr noundef %ptr.2.3, ptr noundef nonnull dereferenceable(5) @.str.10, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.4)
  %tobool4.not.4 = icmp eq i32 %call3.4, 0
  br i1 %tobool4.not.4, label %if.then.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %or.4 = or i32 %odev.2.3, 32
  %add.ptr.4 = getelementptr i8, ptr %ptr.2.3, i32 4
  %8 = ptrtoint ptr %add.ptr.4 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %9)
  %cmp6.4 = icmp eq i8 %9, 44
  %spec.select.idx.4 = zext i1 %cmp6.4 to i32
  %spec.select.4 = getelementptr i8, ptr %add.ptr.4, i32 %spec.select.idx.4
  %spec.select20.4 = select i1 %cmp6.4, i8 1, i8 %next.2.3
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %ptr.2.4 = phi ptr [ %ptr.2.3, %for.inc.3.for.inc.4_crit_edge ], [ %spec.select.4, %if.then.4 ]
  %odev.2.4 = phi i32 [ %odev.2.3, %for.inc.3.for.inc.4_crit_edge ], [ %or.4, %if.then.4 ]
  %next.2.4 = phi i8 [ %next.2.3, %for.inc.3.for.inc.4_crit_edge ], [ %spec.select20.4, %if.then.4 ]
  %call3.5 = tail call i32 @strncmp(ptr noundef %ptr.2.4, ptr noundef nonnull dereferenceable(6) @.str.11, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.5)
  %tobool4.not.5 = icmp eq i32 %call3.5, 0
  br i1 %tobool4.not.5, label %if.then.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %or.5 = or i32 %odev.2.4, 64
  %add.ptr.5 = getelementptr i8, ptr %ptr.2.4, i32 5
  %10 = ptrtoint ptr %add.ptr.5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %11)
  %cmp6.5 = icmp eq i8 %11, 44
  %spec.select.idx.5 = zext i1 %cmp6.5 to i32
  %spec.select.5 = getelementptr i8, ptr %add.ptr.5, i32 %spec.select.idx.5
  %spec.select20.5 = select i1 %cmp6.5, i8 1, i8 %next.2.4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %ptr.2.5 = phi ptr [ %ptr.2.4, %for.inc.4.for.inc.5_crit_edge ], [ %spec.select.5, %if.then.5 ]
  %odev.2.5 = phi i32 [ %odev.2.4, %for.inc.4.for.inc.5_crit_edge ], [ %or.5, %if.then.5 ]
  %next.2.5 = phi i8 [ %next.2.4, %for.inc.4.for.inc.5_crit_edge ], [ %spec.select20.5, %if.then.5 ]
  %call3.6 = tail call i32 @strncmp(ptr noundef %ptr.2.5, ptr noundef nonnull dereferenceable(6) @.str.12, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.6)
  %tobool4.not.6 = icmp eq i32 %call3.6, 0
  br i1 %tobool4.not.6, label %if.then.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %or.6 = or i32 %odev.2.5, 128
  %add.ptr.6 = getelementptr i8, ptr %ptr.2.5, i32 5
  %12 = ptrtoint ptr %add.ptr.6 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %add.ptr.6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 44, i8 %13)
  %cmp6.6 = icmp eq i8 %13, 44
  %spec.select.idx.6 = zext i1 %cmp6.6 to i32
  %spec.select.6 = getelementptr i8, ptr %add.ptr.6, i32 %spec.select.idx.6
  %spec.select20.6 = select i1 %cmp6.6, i8 1, i8 %next.2.5
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  %ptr.2.6 = phi ptr [ %ptr.2.5, %for.inc.5.for.inc.6_crit_edge ], [ %spec.select.6, %if.then.6 ]
  %odev.2.6 = phi i32 [ %odev.2.5, %for.inc.5.for.inc.6_crit_edge ], [ %or.6, %if.then.6 ]
  %next.2.6 = phi i8 [ %next.2.5, %for.inc.5.for.inc.6_crit_edge ], [ %spec.select20.6, %if.then.6 ]
  %extract.t.le.not = icmp eq i8 %next.2.6, 0
  br i1 %extract.t.le.not, label %while.end, label %for.inc.6.for.cond.preheader_crit_edge

for.inc.6.for.cond.preheader_crit_edge:           ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.preheader

while.end:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %end to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ptr.2.6, ptr %end, align 4
  ret i32 %odev.2.6
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @via_odev_to_seq(ptr noundef %m, i32 noundef %odev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %odev, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.inc, label %for.inc.thread

for.inc:                                          ; preds = %entry
  %and.1 = and i32 %odev, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %for.inc.1.thread, label %for.inc.if.end.1_crit_edge

for.inc.if.end.1_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.1

for.inc.thread:                                   ; preds = %entry
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.6) #11
  %and.116 = and i32 %odev, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.116)
  %tobool.not.117 = icmp eq i32 %and.116, 0
  br i1 %tobool.not.117, label %for.inc.thread.for.inc.1_crit_edge, label %if.then2.1

for.inc.thread.for.inc.1_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then2.1:                                       ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  br label %if.end.1

if.end.1:                                         ; preds = %if.then2.1, %for.inc.if.end.1_crit_edge
  %count.11821 = phi i32 [ 2, %if.then2.1 ], [ 1, %for.inc.if.end.1_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.7) #11
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.end.1, %for.inc.thread.for.inc.1_crit_edge
  %count.1.1 = phi i32 [ %count.11821, %if.end.1 ], [ 1, %for.inc.thread.for.inc.1_crit_edge ]
  %and.2 = and i32 %odev, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then2.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

for.inc.1.thread:                                 ; preds = %for.inc
  %and.223 = and i32 %odev, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.223)
  %tobool.not.224 = icmp eq i32 %and.223, 0
  br i1 %tobool.not.224, label %for.inc.2.thread, label %for.inc.1.thread.if.end.2_crit_edge

for.inc.1.thread.if.end.2_crit_edge:              ; preds = %for.inc.1.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.2

if.then2.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  br label %if.end.2

if.end.2:                                         ; preds = %if.then2.2, %for.inc.1.thread.if.end.2_crit_edge
  %count.1.12528 = phi i32 [ %count.1.1, %if.then2.2 ], [ 0, %for.inc.1.thread.if.end.2_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.8) #11
  %inc.2 = add nuw nsw i32 %count.1.12528, 1
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.end.2, %for.inc.1.for.inc.2_crit_edge
  %count.1.2 = phi i32 [ %inc.2, %if.end.2 ], [ %count.1.1, %for.inc.1.for.inc.2_crit_edge ]
  %and.3 = and i32 %odev, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then2.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

for.inc.2.thread:                                 ; preds = %for.inc.1.thread
  %and.330 = and i32 %odev, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.330)
  %tobool.not.331 = icmp eq i32 %and.330, 0
  br i1 %tobool.not.331, label %for.inc.3.thread, label %for.inc.2.thread.if.end.3_crit_edge

for.inc.2.thread.if.end.3_crit_edge:              ; preds = %for.inc.2.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.3

if.then2.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  br label %if.end.3

if.end.3:                                         ; preds = %if.then2.3, %for.inc.2.thread.if.end.3_crit_edge
  %count.1.23235 = phi i32 [ %count.1.2, %if.then2.3 ], [ 0, %for.inc.2.thread.if.end.3_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.9) #11
  %inc.3 = add nuw nsw i32 %count.1.23235, 1
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.end.3, %for.inc.2.for.inc.3_crit_edge
  %count.1.3 = phi i32 [ %inc.3, %if.end.3 ], [ %count.1.2, %for.inc.2.for.inc.3_crit_edge ]
  %and.4 = and i32 %odev, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then2.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

for.inc.3.thread:                                 ; preds = %for.inc.2.thread
  %and.437 = and i32 %odev, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.437)
  %tobool.not.438 = icmp eq i32 %and.437, 0
  br i1 %tobool.not.438, label %for.inc.4.thread, label %for.inc.3.thread.if.end.4_crit_edge

for.inc.3.thread.if.end.4_crit_edge:              ; preds = %for.inc.3.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.4

if.then2.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  br label %if.end.4

if.end.4:                                         ; preds = %if.then2.4, %for.inc.3.thread.if.end.4_crit_edge
  %count.1.33942 = phi i32 [ %count.1.3, %if.then2.4 ], [ 0, %for.inc.3.thread.if.end.4_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.10) #11
  %inc.4 = add nuw nsw i32 %count.1.33942, 1
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.end.4, %for.inc.3.for.inc.4_crit_edge
  %count.1.4 = phi i32 [ %inc.4, %if.end.4 ], [ %count.1.3, %for.inc.3.for.inc.4_crit_edge ]
  %and.5 = and i32 %odev, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then2.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

for.inc.4.thread:                                 ; preds = %for.inc.3.thread
  %and.544 = and i32 %odev, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.544)
  %tobool.not.545 = icmp eq i32 %and.544, 0
  br i1 %tobool.not.545, label %for.inc.5.thread, label %for.inc.4.thread.if.end.5_crit_edge

for.inc.4.thread.if.end.5_crit_edge:              ; preds = %for.inc.4.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.5

if.then2.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  br label %if.end.5

if.end.5:                                         ; preds = %if.then2.5, %for.inc.4.thread.if.end.5_crit_edge
  %count.1.44649 = phi i32 [ %count.1.4, %if.then2.5 ], [ 0, %for.inc.4.thread.if.end.5_crit_edge ]
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.11) #11
  %inc.5 = add nuw nsw i32 %count.1.44649, 1
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.end.5, %for.inc.4.for.inc.5_crit_edge
  %count.1.5 = phi i32 [ %inc.5, %if.end.5 ], [ %count.1.4, %for.inc.4.for.inc.5_crit_edge ]
  %and.6 = and i32 %odev, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

for.inc.5.thread:                                 ; preds = %for.inc.4.thread
  %and.651 = and i32 %odev, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.651)
  %tobool.not.652 = icmp eq i32 %and.651, 0
  br i1 %tobool.not.652, label %for.inc.5.thread.for.inc.6_crit_edge, label %for.inc.5.thread.if.end.6_crit_edge

for.inc.5.thread.if.end.6_crit_edge:              ; preds = %for.inc.5.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.6

for.inc.5.thread.for.inc.6_crit_edge:             ; preds = %for.inc.5.thread
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.5)
  %cmp1.6.not = icmp eq i32 %count.1.5, 0
  br i1 %cmp1.6.not, label %if.then.6.if.end.6_crit_edge, label %if.then2.6

if.then.6.if.end.6_crit_edge:                     ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.6

if.then2.6:                                       ; preds = %if.then.6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 44) #11
  br label %if.end.6

if.end.6:                                         ; preds = %if.then2.6, %if.then.6.if.end.6_crit_edge, %for.inc.5.thread.if.end.6_crit_edge
  tail call void @seq_puts(ptr noundef %m, ptr noundef nonnull @.str.12) #11
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.end.6, %for.inc.5.thread.for.inc.6_crit_edge, %for.inc.5.for.inc.6_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_load_reg(i32 noundef %timing_value, i32 noundef %viafb_load_reg_num, ptr nocapture noundef readonly %reg, i32 noundef %io_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %viafb_load_reg_num)
  %cmp55 = icmp sgt i32 %viafb_load_reg_num, 0
  br i1 %cmp55, label %for.body.lr.ph, label %entry.for.end25_crit_edge

entry.for.end25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end25

for.body.lr.ph:                                   ; preds = %entry
  %and = and i32 %timing_value, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 980, i32 %io_type)
  %cmp15 = icmp eq i32 %io_type, 980
  br label %for.body

for.body:                                         ; preds = %for.inc23.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc24, %for.inc23.for.body_crit_edge ]
  %bit_num.056 = phi i32 [ 0, %for.body.lr.ph ], [ %bit_num.1.lcssa, %for.inc23.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.io_register, ptr %reg, i32 %i.057
  %start_bit = getelementptr %struct.io_register, ptr %reg, i32 %i.057, i32 1
  %0 = ptrtoint ptr %start_bit to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %start_bit, align 1
  %conv = zext i8 %1 to i32
  %end_bit = getelementptr %struct.io_register, ptr %reg, i32 %i.057, i32 2
  %2 = ptrtoint ptr %end_bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %end_bit, align 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %3)
  %cmp6.not48 = icmp ugt i8 %1, %3
  br i1 %cmp6.not48, label %for.body.for.end_crit_edge, label %for.body8.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body8.preheader:                              ; preds = %for.body
  %conv2 = zext i8 %3 to i32
  %6 = add i32 %bit_num.056, 1
  %7 = add i32 %6, %conv2
  br label %for.body8

for.body8:                                        ; preds = %for.body8.for.body8_crit_edge, %for.body8.preheader
  %j.052 = phi i32 [ %inc14, %for.body8.for.body8_crit_edge ], [ %conv, %for.body8.preheader ]
  %data.051 = phi i32 [ %or13, %for.body8.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %bit_num.150 = phi i32 [ %inc, %for.body8.for.body8_crit_edge ], [ %bit_num.056, %for.body8.preheader ]
  %reg_mask.049 = phi i32 [ %or, %for.body8.for.body8_crit_edge ], [ 0, %for.body8.preheader ]
  %shl = shl nuw i32 1, %j.052
  %or = or i32 %shl, %reg_mask.049
  %shl9 = shl nuw i32 1, %bit_num.150
  %conv11 = and i32 %and, %shl9
  %shr = lshr i32 %conv11, %bit_num.056
  %shl12 = shl i32 %shr, %conv
  %or13 = or i32 %shl12, %data.051
  %inc = add i32 %bit_num.150, 1
  %inc14 = add nuw nsw i32 %j.052, 1
  %exitcond = icmp eq i32 %j.052, %conv2
  br i1 %exitcond, label %for.end.loopexit, label %for.body8.for.body8_crit_edge

for.body8.for.body8_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body8

for.end.loopexit:                                 ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #13
  %8 = sub i32 %7, %conv
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.body.for.end_crit_edge
  %reg_mask.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %or, %for.end.loopexit ]
  %bit_num.1.lcssa = phi i32 [ %bit_num.056, %for.body.for.end_crit_edge ], [ %8, %for.end.loopexit ]
  %data.0.lcssa = phi i32 [ 0, %for.body.for.end_crit_edge ], [ %or13, %for.end.loopexit ]
  %conv19 = trunc i32 %reg_mask.0.lcssa to i8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  br i1 %cmp15, label %if.then, label %if.else

if.then:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 %5) #11, !srcloc !67
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i47 = and i32 %data.0.lcssa, %reg_mask.0.lcssa
  %and1225.i = trunc i32 %and1225.i47 to i8
  %neg.i = xor i8 %conv19, -1
  %and15.i = and i8 %9, %neg.i
  %or.i = or i8 %and15.i, %and1225.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #11, !srcloc !67
  br label %for.inc23

if.else:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 %5) #11, !srcloc !67
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i4246 = and i32 %data.0.lcssa, %reg_mask.0.lcssa
  %and1225.i42 = trunc i32 %and1225.i4246 to i8
  %neg.i43 = xor i8 %conv19, -1
  %and15.i44 = and i8 %10, %neg.i43
  %or.i45 = or i8 %and15.i44, %and1225.i42
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i45) #11, !srcloc !67
  br label %for.inc23

for.inc23:                                        ; preds = %if.else, %if.then
  %inc24 = add nuw nsw i32 %i.057, 1
  %exitcond58.not = icmp eq i32 %inc24, %viafb_load_reg_num
  br i1 %exitcond58.not, label %for.inc23.for.end25_crit_edge, label %for.inc23.for.body_crit_edge

for.inc23.for.body_crit_edge:                     ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc23.for.end25_crit_edge:                    ; preds = %for.inc23
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end25

for.end25:                                        ; preds = %for.inc23.for.end25_crit_edge, %entry.for.end25_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_write_regx(ptr nocapture noundef readonly %RegTable, i32 noundef %ItemNum) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ItemNum)
  %cmp12 = icmp sgt i32 %ItemNum, 0
  br i1 %cmp12, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.013 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.io_reg, ptr %RegTable, i32 %i.013
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %index = getelementptr %struct.io_reg, ptr %RegTable, i32 %i.013, i32 1
  %2 = ptrtoint ptr %index to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %index, align 4
  %value = getelementptr %struct.io_reg, ptr %RegTable, i32 %i.013, i32 3
  %4 = ptrtoint ptr %value to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %value, align 2
  %mask = getelementptr %struct.io_reg, ptr %RegTable, i32 %i.013, i32 2
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %mask, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i = and i32 %1, 65535
  %add.i = or i32 %conv.i, -18874368
  %8 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %3) #11, !srcloc !67
  %add4.i = add nuw nsw i32 %conv.i, -18874367
  %9 = inttoptr i32 %add4.i to ptr
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %9) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i = and i8 %7, %5
  %neg.i = xor i8 %7, -1
  %and15.i = and i8 %10, %neg.i
  %or.i = or i8 %and15.i, %and1225.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %9, i8 %or.i) #11, !srcloc !67
  %inc = add nuw nsw i32 %i.013, 1
  %exitcond.not = icmp eq i32 %inc, %ItemNum
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_load_fetch_count_reg(i32 noundef %h_addr, i32 noundef %bpp_byte, i32 noundef %set_iga) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %set_iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %set_iga, label %entry.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %bpp_byte, %h_addr
  %div = sdiv i32 %mul, 16
  %add = add nsw i32 %div, 4
  %1 = load i32, ptr @fetch_count_reg, align 4
  tail call void @viafb_load_reg(i32 noundef %add, i32 noundef %1, ptr noundef getelementptr inbounds (%struct.fetch_count, ptr @fetch_count_reg, i32 0, i32 0, i32 1), i32 noundef 964)
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %mul2 = mul i32 %bpp_byte, %h_addr
  %div3 = sdiv i32 %mul2, 16
  %2 = load i32, ptr getelementptr inbounds (%struct.fetch_count, ptr @fetch_count_reg, i32 0, i32 1), align 4
  tail call void @viafb_load_reg(i32 noundef %div3, i32 noundef %2, ptr noundef getelementptr inbounds (%struct.fetch_count, ptr @fetch_count_reg, i32 0, i32 1, i32 1), i32 noundef 980)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_load_FIFO_reg(i32 noundef %set_iga, i32 noundef %hor_active, i32 noundef %ver_active) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %set_iga)
  %cmp = icmp eq i32 %set_iga, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  br i1 %cmp, label %if.then, label %if.else67

if.then:                                          ; preds = %entry
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %4, label %if.end63.fold.split364 [
    i32 3, label %if.end6.thread
    i32 4, label %if.then10
    i32 5, label %if.then21
    i32 6, label %if.then.if.end63_crit_edge
    i32 8, label %if.end63.fold.split
    i32 9, label %if.end63.fold.split360
    i32 10, label %if.end63.fold.split361
    i32 11, label %if.end63.fold.split362
    i32 12, label %if.end63.fold.split363
    i32 13, label %if.then62
  ]

if.then.if.end63_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end6.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hor_active)
  %cmp3 = icmp sgt i32 %hor_active, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ver_active)
  %cmp4 = icmp sgt i32 %ver_active, 1024
  %or.cond = and i1 %cmp3, %cmp4
  %spec.select = select i1 %or.cond, i32 4, i32 0
  br label %if.end63

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hor_active)
  %cmp11 = icmp sgt i32 %hor_active, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ver_active)
  %cmp13 = icmp sgt i32 %ver_active, 1024
  %or.cond188 = and i1 %cmp11, %cmp13
  %spec.select193 = select i1 %or.cond188, i32 4, i32 0
  br label %if.end63

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hor_active)
  %cmp22 = icmp sgt i32 %hor_active, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ver_active)
  %cmp24 = icmp sgt i32 %ver_active, 1024
  %or.cond189 = and i1 %cmp22, %cmp24
  %spec.select194 = select i1 %or.cond189, i32 4, i32 0
  br label %if.end63

if.then62:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63.fold.split:                              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63.fold.split360:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63.fold.split361:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63.fold.split362:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63.fold.split363:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63.fold.split364:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63

if.end63:                                         ; preds = %if.end63.fold.split364, %if.end63.fold.split363, %if.end63.fold.split362, %if.end63.fold.split361, %if.end63.fold.split360, %if.end63.fold.split, %if.then62, %if.then21, %if.then10, %if.end6.thread, %if.then.if.end63_crit_edge
  %iga1_fifo_max_depth.9 = phi i32 [ 199, %if.then62 ], [ 47, %if.then21 ], [ 191, %if.end6.thread ], [ 95, %if.then10 ], [ 95, %if.then.if.end63_crit_edge ], [ 179, %if.end63.fold.split ], [ 47, %if.end63.fold.split360 ], [ 47, %if.end63.fold.split361 ], [ 95, %if.end63.fold.split362 ], [ 199, %if.end63.fold.split363 ], [ -1, %if.end63.fold.split364 ]
  %iga1_fifo_threshold.9 = phi i32 [ 80, %if.then62 ], [ 20, %if.then21 ], [ 82, %if.end6.thread ], [ 32, %if.then10 ], [ 32, %if.then.if.end63_crit_edge ], [ 82, %if.end63.fold.split ], [ 19, %if.end63.fold.split360 ], [ 19, %if.end63.fold.split361 ], [ 38, %if.end63.fold.split362 ], [ 80, %if.end63.fold.split363 ], [ 0, %if.end63.fold.split364 ]
  %iga1_fifo_high_threshold.9 = phi i32 [ 80, %if.then62 ], [ 16, %if.then21 ], [ 74, %if.end6.thread ], [ 16, %if.then10 ], [ 32, %if.then.if.end63_crit_edge ], [ 74, %if.end63.fold.split ], [ 16, %if.end63.fold.split360 ], [ 19, %if.end63.fold.split361 ], [ 38, %if.end63.fold.split362 ], [ 80, %if.end63.fold.split363 ], [ 0, %if.end63.fold.split364 ]
  %iga1_display_queue_expire_num.9 = phi i32 [ 40, %if.then62 ], [ %spec.select194, %if.then21 ], [ %spec.select, %if.end6.thread ], [ %spec.select193, %if.then10 ], [ 31, %if.then.if.end63_crit_edge ], [ 31, %if.end63.fold.split ], [ 8, %if.end63.fold.split360 ], [ 8, %if.end63.fold.split361 ], [ 16, %if.end63.fold.split362 ], [ 40, %if.end63.fold.split363 ], [ 0, %if.end63.fold.split364 ]
  %6 = load i32, ptr @display_fifo_depth_reg, align 4
  tail call void @viafb_load_reg(i32 noundef %iga1_fifo_max_depth.9, i32 noundef %6, ptr noundef getelementptr inbounds (%struct.fifo_depth_select, ptr @display_fifo_depth_reg, i32 0, i32 0, i32 1), i32 noundef 964)
  %7 = load i32, ptr @fifo_threshold_select_reg, align 4
  tail call void @viafb_load_reg(i32 noundef %iga1_fifo_threshold.9, i32 noundef %7, ptr noundef getelementptr inbounds (%struct.fifo_threshold_select, ptr @fifo_threshold_select_reg, i32 0, i32 0, i32 1), i32 noundef 964)
  %8 = load i32, ptr @fifo_high_threshold_select_reg, align 4
  tail call void @viafb_load_reg(i32 noundef %iga1_fifo_high_threshold.9, i32 noundef %8, ptr noundef getelementptr inbounds (%struct.fifo_high_threshold_select, ptr @fifo_high_threshold_select_reg, i32 0, i32 0, i32 1), i32 noundef 964)
  %9 = load i32, ptr @display_queue_expire_num_reg, align 4
  tail call void @viafb_load_reg(i32 noundef %iga1_display_queue_expire_num.9, i32 noundef %9, ptr noundef getelementptr inbounds (%struct.display_queue_expire_num, ptr @display_queue_expire_num_reg, i32 0, i32 0, i32 1), i32 noundef 964)
  br label %if.end152

if.else67:                                        ; preds = %entry
  %10 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %4, label %if.else144.fold.split368 [
    i32 3, label %if.then139
    i32 4, label %if.end135
    i32 5, label %if.end135.thread329
    i32 6, label %if.else67.if.end148_crit_edge
    i32 8, label %if.else144.fold.split
    i32 9, label %if.else144.fold.split365
    i32 10, label %if.else144.fold.split366
    i32 11, label %if.else67.if.end148_crit_edge373
    i32 12, label %if.else144.fold.split367
    i32 13, label %if.then134
  ]

if.else67.if.end148_crit_edge373:                 ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.else67.if.end148_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.end135.thread329:                              ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hor_active)
  %cmp94 = icmp sgt i32 %hor_active, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ver_active)
  %cmp96 = icmp sgt i32 %ver_active, 1024
  %or.cond192 = and i1 %cmp94, %cmp96
  %spec.select197 = select i1 %or.cond192, i32 4, i32 32
  br label %if.end148

if.then134:                                       ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.end135:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hor_active)
  %cmp83 = icmp sgt i32 %hor_active, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ver_active)
  %cmp85 = icmp sgt i32 %ver_active, 1024
  %or.cond191 = and i1 %cmp83, %cmp85
  %spec.select196 = select i1 %or.cond191, i32 4, i32 32
  br label %if.end148

if.then139:                                       ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %hor_active)
  %cmp72 = icmp sgt i32 %hor_active, 1280
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %ver_active)
  %cmp74 = icmp sgt i32 %ver_active, 1024
  %or.cond190 = and i1 %cmp72, %cmp74
  %spec.select195 = select i1 %or.cond190, i32 4, i32 32
  br label %if.end148

if.else144.fold.split:                            ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.else144.fold.split365:                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.else144.fold.split366:                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.else144.fold.split367:                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.else144.fold.split368:                         ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end148

if.end148:                                        ; preds = %if.else144.fold.split368, %if.else144.fold.split367, %if.else144.fold.split366, %if.else144.fold.split365, %if.else144.fold.split, %if.then139, %if.end135, %if.then134, %if.end135.thread329, %if.else67.if.end148_crit_edge, %if.else67.if.end148_crit_edge373
  %iga2_fifo_max_depth.9292.sink = phi i32 [ 46, %if.then139 ], [ 11, %if.end135 ], [ 11, %if.end135.thread329 ], [ 23, %if.then134 ], [ 11, %if.else67.if.end148_crit_edge ], [ 44, %if.else144.fold.split ], [ 11, %if.else144.fold.split365 ], [ 11, %if.else144.fold.split366 ], [ 11, %if.else67.if.end148_crit_edge373 ], [ 24, %if.else144.fold.split367 ], [ -1, %if.else144.fold.split368 ]
  %iga2_display_queue_expire_num.9297 = phi i32 [ %spec.select195, %if.then139 ], [ %spec.select196, %if.end135 ], [ %spec.select197, %if.end135.thread329 ], [ 80, %if.then134 ], [ 32, %if.else67.if.end148_crit_edge ], [ 31, %if.else144.fold.split ], [ 8, %if.else144.fold.split365 ], [ 8, %if.else144.fold.split366 ], [ 32, %if.else67.if.end148_crit_edge373 ], [ 80, %if.else144.fold.split367 ], [ 0, %if.else144.fold.split368 ]
  %iga2_fifo_high_threshold.9295 = phi i32 [ 74, %if.then139 ], [ 8, %if.end135 ], [ 8, %if.end135.thread329 ], [ 40, %if.then134 ], [ 8, %if.else67.if.end148_crit_edge ], [ 74, %if.else144.fold.split ], [ 16, %if.else144.fold.split365 ], [ 19, %if.else144.fold.split366 ], [ 8, %if.else67.if.end148_crit_edge373 ], [ 40, %if.else144.fold.split367 ], [ 0, %if.else144.fold.split368 ]
  %iga2_fifo_threshold.9293 = phi i32 [ 82, %if.then139 ], [ 16, %if.end135 ], [ 20, %if.end135.thread329 ], [ 40, %if.then134 ], [ 16, %if.else67.if.end148_crit_edge ], [ 82, %if.else144.fold.split ], [ 19, %if.else144.fold.split365 ], [ 19, %if.else144.fold.split366 ], [ 16, %if.else67.if.end148_crit_edge373 ], [ 40, %if.else144.fold.split367 ], [ 0, %if.else144.fold.split368 ]
  %11 = load i32, ptr getelementptr inbounds (%struct.fifo_depth_select, ptr @display_fifo_depth_reg, i32 0, i32 1), align 4
  tail call void @viafb_load_reg(i32 noundef %iga2_fifo_max_depth.9292.sink, i32 noundef %11, ptr noundef getelementptr inbounds (%struct.fifo_depth_select, ptr @display_fifo_depth_reg, i32 0, i32 1, i32 1), i32 noundef 980)
  %12 = load i32, ptr getelementptr inbounds (%struct.fifo_threshold_select, ptr @fifo_threshold_select_reg, i32 0, i32 1), align 4
  tail call void @viafb_load_reg(i32 noundef %iga2_fifo_threshold.9293, i32 noundef %12, ptr noundef getelementptr inbounds (%struct.fifo_threshold_select, ptr @fifo_threshold_select_reg, i32 0, i32 1, i32 1), i32 noundef 980)
  %13 = load i32, ptr getelementptr inbounds (%struct.fifo_high_threshold_select, ptr @fifo_high_threshold_select_reg, i32 0, i32 1), align 4
  tail call void @viafb_load_reg(i32 noundef %iga2_fifo_high_threshold.9295, i32 noundef %13, ptr noundef getelementptr inbounds (%struct.fifo_high_threshold_select, ptr @fifo_high_threshold_select_reg, i32 0, i32 1, i32 1), i32 noundef 980)
  %14 = load i32, ptr getelementptr inbounds (%struct.display_queue_expire_num, ptr @display_queue_expire_num_reg, i32 0, i32 1), align 4
  tail call void @viafb_load_reg(i32 noundef %iga2_display_queue_expire_num.9297, i32 noundef %14, ptr noundef getelementptr inbounds (%struct.display_queue_expire_num, ptr @display_queue_expire_num_reg, i32 0, i32 1, i32 1), i32 noundef 980)
  br label %if.end152

if.end152:                                        ; preds = %if.end148, %if.end63
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_set_vclock(i32 noundef %clk, i32 noundef %set_iga) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %4, label %entry.get_best_pll_config.exit_crit_edge [
    i32 1, label %entry.sw.bb.i_crit_edge
    i32 2, label %entry.sw.bb.i_crit_edge20
    i32 3, label %entry.sw.bb1.i_crit_edge
    i32 4, label %entry.sw.bb1.i_crit_edge21
    i32 5, label %entry.sw.bb1.i_crit_edge22
    i32 6, label %entry.sw.bb4.i_crit_edge
    i32 7, label %entry.sw.bb4.i_crit_edge23
    i32 8, label %entry.sw.bb4.i_crit_edge24
    i32 9, label %entry.sw.bb4.i_crit_edge25
    i32 10, label %entry.sw.bb4.i_crit_edge26
    i32 11, label %entry.sw.bb4.i_crit_edge27
    i32 12, label %entry.sw.bb7.i_crit_edge
    i32 13, label %entry.sw.bb7.i_crit_edge28
  ]

entry.sw.bb7.i_crit_edge28:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

entry.sw.bb7.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

entry.sw.bb4.i_crit_edge27:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge26:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge25:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge24:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge23:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

entry.sw.bb1.i_crit_edge22:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge21:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

entry.sw.bb1.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb1.i

entry.sw.bb.i_crit_edge20:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb.i

entry.get_best_pll_config.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %get_best_pll_config.exit

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge20
  %call.i = tail call fastcc i32 @get_pll_config(ptr noundef nonnull @cle266_pll_limits, i32 noundef 28, i32 noundef %clk) #11
  %retval.sroa.0.0.extract.shift17.i = and i32 %call.i, -65536
  %retval.sroa.6.0.extract.shift23.i = and i32 %call.i, -256
  br label %get_best_pll_config.exit

sw.bb1.i:                                         ; preds = %entry.sw.bb1.i_crit_edge, %entry.sw.bb1.i_crit_edge21, %entry.sw.bb1.i_crit_edge22
  %call3.i = tail call fastcc i32 @get_pll_config(ptr noundef nonnull @k800_pll_limits, i32 noundef 16, i32 noundef %clk) #11
  %retval.sroa.0.0.extract.shift15.i = and i32 %call3.i, -65536
  %retval.sroa.6.0.extract.shift21.i = and i32 %call3.i, -256
  br label %get_best_pll_config.exit

sw.bb4.i:                                         ; preds = %entry.sw.bb4.i_crit_edge, %entry.sw.bb4.i_crit_edge23, %entry.sw.bb4.i_crit_edge24, %entry.sw.bb4.i_crit_edge25, %entry.sw.bb4.i_crit_edge26, %entry.sw.bb4.i_crit_edge27
  %call6.i = tail call fastcc i32 @get_pll_config(ptr noundef nonnull @cx700_pll_limits, i32 noundef 12, i32 noundef %clk) #11
  %retval.sroa.0.0.extract.shift13.i = and i32 %call6.i, -65536
  %retval.sroa.6.0.extract.shift19.i = and i32 %call6.i, -256
  br label %get_best_pll_config.exit

sw.bb7.i:                                         ; preds = %entry.sw.bb7.i_crit_edge, %entry.sw.bb7.i_crit_edge28
  %call9.i = tail call fastcc i32 @get_pll_config(ptr noundef nonnull @vx855_pll_limits, i32 noundef 8, i32 noundef %clk) #11
  %retval.sroa.0.0.extract.shift.i = and i32 %call9.i, -65536
  %retval.sroa.6.0.extract.shift.i = and i32 %call9.i, -256
  br label %get_best_pll_config.exit

get_best_pll_config.exit:                         ; preds = %sw.bb7.i, %sw.bb4.i, %sw.bb1.i, %sw.bb.i, %entry.get_best_pll_config.exit_crit_edge
  %retval.sroa.0.0.i = phi i32 [ -65536, %entry.get_best_pll_config.exit_crit_edge ], [ %retval.sroa.0.0.extract.shift.i, %sw.bb7.i ], [ %retval.sroa.0.0.extract.shift13.i, %sw.bb4.i ], [ %retval.sroa.0.0.extract.shift15.i, %sw.bb1.i ], [ %retval.sroa.0.0.extract.shift17.i, %sw.bb.i ]
  %retval.sroa.6.0.i = phi i32 [ 65280, %entry.get_best_pll_config.exit_crit_edge ], [ %retval.sroa.6.0.extract.shift.i, %sw.bb7.i ], [ %retval.sroa.6.0.extract.shift19.i, %sw.bb4.i ], [ %retval.sroa.6.0.extract.shift21.i, %sw.bb1.i ], [ %retval.sroa.6.0.extract.shift23.i, %sw.bb.i ]
  %retval.sroa.7.0.i = phi i32 [ 255, %entry.get_best_pll_config.exit_crit_edge ], [ %call9.i, %sw.bb7.i ], [ %call6.i, %sw.bb4.i ], [ %call3.i, %sw.bb1.i ], [ %call.i, %sw.bb.i ]
  %retval.sroa.7.0.insert.ext.i = and i32 %retval.sroa.7.0.i, 255
  %retval.sroa.6.0.insert.ext.i = and i32 %retval.sroa.6.0.i, 65280
  %retval.sroa.6.0.insert.insert.i = or i32 %retval.sroa.6.0.insert.ext.i, %retval.sroa.0.0.i
  %retval.sroa.0.0.insert.insert.i = or i32 %retval.sroa.6.0.insert.insert.i, %retval.sroa.7.0.insert.ext.i
  %6 = zext i32 %set_iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %set_iga, label %get_best_pll_config.exit.if.end3_crit_edge [
    i32 1, label %get_best_pll_config.exit.if.end3.sink.split_crit_edge
    i32 2, label %if.then2
  ]

get_best_pll_config.exit.if.end3.sink.split_crit_edge: ; preds = %get_best_pll_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.sink.split

get_best_pll_config.exit.if.end3_crit_edge:       ; preds = %get_best_pll_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3

if.then2:                                         ; preds = %get_best_pll_config.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end3.sink.split

if.end3.sink.split:                               ; preds = %if.then2, %get_best_pll_config.exit.if.end3.sink.split_crit_edge
  %.sink19 = phi ptr [ getelementptr inbounds (%struct.via_clock, ptr @clock, i32 0, i32 7), %if.then2 ], [ getelementptr inbounds (%struct.via_clock, ptr @clock, i32 0, i32 3), %get_best_pll_config.exit.if.end3.sink.split_crit_edge ]
  %7 = ptrtoint ptr %.sink19 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %.sink19, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %retval.sroa.0.0.insert.insert.i, 0
  tail call void %8([1 x i32] %.fca.0.insert) #11
  br label %if.end3

if.end3:                                          ; preds = %if.end3.sink.split, %get_best_pll_config.exit.if.end3_crit_edge
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873396 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !77
  tail call void @arm_heavy_mb() #11
  %or.i = or i8 %9, 12
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %or.i) #11, !srcloc !67
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @var_to_timing(ptr noalias nocapture sret(%struct.via_display_timing) align 2 %agg.result, ptr nocapture noundef readonly %var, i16 noundef zeroext %cxres, i16 noundef zeroext %cyres) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 1
  %1 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 2
  %2 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 3
  %3 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 4
  %4 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 5
  %5 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 6
  %6 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 7
  %7 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 8
  %8 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 9
  %9 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 10
  %10 = getelementptr inbounds %struct.via_display_timing, ptr %agg.result, i32 0, i32 11
  %11 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %var, align 4
  %conv = zext i16 %cxres to i32
  %sub = sub i32 %12, %conv
  %div72 = lshr i32 %sub, 1
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %13 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yres, align 4
  %conv2 = zext i16 %cyres to i32
  %sub3 = sub i32 %14, %conv2
  %div473 = lshr i32 %sub3, 1
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %cxres, ptr %0, align 2
  %right_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %16 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %right_margin, align 4
  %add = add nuw i32 %div72, %conv
  %add9 = add i32 %add, %17
  %conv10 = trunc i32 %add9 to i16
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv10, ptr %3, align 2
  %hsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %19 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hsync_len, align 4
  %add13 = add i32 %add9, %20
  %conv14 = trunc i32 %add13 to i16
  %21 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv14, ptr %4, align 2
  %left_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %22 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %left_margin, align 4
  %add17 = add i32 %23, %add13
  %add19 = add i32 %add17, %div72
  %conv20 = trunc i32 %add19 to i16
  %24 = ptrtoint ptr %agg.result to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv20, ptr %agg.result, align 2
  %25 = trunc i32 %div72 to i16
  %conv25 = add i16 %25, %cxres
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv25, ptr %1, align 2
  %conv30 = trunc i32 %add17 to i16
  %27 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %conv30, ptr %2, align 2
  %28 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %cyres, ptr %6, align 2
  %lower_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %29 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %lower_margin, align 4
  %add33 = add nuw i32 %div473, %conv2
  %add35 = add i32 %add33, %30
  %conv36 = trunc i32 %add35 to i16
  %31 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv36, ptr %9, align 2
  %vsync_len = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %32 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %vsync_len, align 4
  %add39 = add i32 %add35, %33
  %conv40 = trunc i32 %add39 to i16
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv40, ptr %10, align 2
  %upper_margin = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %35 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %upper_margin, align 4
  %add43 = add i32 %36, %add39
  %add45 = add i32 %add43, %div473
  %conv46 = trunc i32 %add45 to i16
  %37 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv46, ptr %5, align 2
  %38 = trunc i32 %div473 to i16
  %conv51 = add i16 %38, %cyres
  %39 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv51, ptr %7, align 2
  %conv56 = trunc i32 %add43 to i16
  %40 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv56, ptr %8, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_fill_crtc_timing(ptr nocapture noundef readonly %var, i16 noundef zeroext %cxres, i16 noundef zeroext %cyres, i32 noundef %iga) local_unnamed_addr #0 align 64 {
entry:
  %crt_reg = alloca %struct.via_display_timing, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %crt_reg) #11
  %0 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 1
  %1 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 2
  %2 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 3
  %3 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 4
  %4 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 5
  %5 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 6
  %6 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 7
  %7 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 8
  %8 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 9
  %9 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 10
  %10 = getelementptr inbounds %struct.via_display_timing, ptr %crt_reg, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cxres)
  %tobool.not = icmp eq i16 %cxres, 0
  br i1 %tobool.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv = zext i16 %cxres to i32
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %11 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %var, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %12, %cond.false ]
  %conv2 = trunc i32 %cond to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %cyres)
  %tobool4.not = icmp eq i16 %cyres, 0
  br i1 %tobool4.not, label %cond.false7, label %cond.true5

cond.true5:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %conv3 = zext i16 %cyres to i32
  br label %cond.end8

cond.false7:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #13
  %yres = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %13 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %yres, align 4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.false7, %cond.true5
  %cond9 = phi i32 [ %conv3, %cond.true5 ], [ %14, %cond.false7 ]
  %conv10 = trunc i32 %cond9 to i16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !78)
  %15 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %var, align 4, !noalias !78
  %conv.i = and i32 %cond, 65535
  %sub.i = sub i32 %16, %conv.i
  %div72.i = lshr i32 %sub.i, 1
  %yres.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %17 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %yres.i, align 4, !noalias !78
  %conv2.i = and i32 %cond9, 65535
  %sub3.i = sub i32 %18, %conv2.i
  %div473.i = lshr i32 %sub3.i, 1
  %19 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv2, ptr %0, align 2, !alias.scope !78
  %right_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %20 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %right_margin.i, align 4, !noalias !78
  %add.i = add nuw i32 %div72.i, %conv.i
  %add9.i = add i32 %add.i, %21
  %conv10.i = trunc i32 %add9.i to i16
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv10.i, ptr %3, align 2, !alias.scope !78
  %hsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %23 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hsync_len.i, align 4, !noalias !78
  %add13.i = add i32 %24, %add9.i
  %conv14.i = trunc i32 %add13.i to i16
  %25 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv14.i, ptr %4, align 2, !alias.scope !78
  %left_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %26 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %left_margin.i, align 4, !noalias !78
  %add17.i = add i32 %27, %add13.i
  %add19.i = add i32 %add17.i, %div72.i
  %conv20.i = trunc i32 %add19.i to i16
  %28 = ptrtoint ptr %crt_reg to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv20.i, ptr %crt_reg, align 2, !alias.scope !78
  %29 = trunc i32 %div72.i to i16
  %conv25.i = add i16 %29, %conv2
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv25.i, ptr %1, align 2, !alias.scope !78
  %conv30.i = trunc i32 %add17.i to i16
  %31 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv30.i, ptr %2, align 2, !alias.scope !78
  %32 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv10, ptr %6, align 2, !alias.scope !78
  %lower_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %33 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %lower_margin.i, align 4, !noalias !78
  %add33.i = add nuw i32 %div473.i, %conv2.i
  %add35.i = add i32 %add33.i, %34
  %conv36.i = trunc i32 %add35.i to i16
  %35 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv36.i, ptr %9, align 2, !alias.scope !78
  %vsync_len.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %36 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %vsync_len.i, align 4, !noalias !78
  %add39.i = add i32 %37, %add35.i
  %conv40.i = trunc i32 %add39.i to i16
  %38 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv40.i, ptr %10, align 2, !alias.scope !78
  %upper_margin.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %39 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %upper_margin.i, align 4, !noalias !78
  %add43.i = add i32 %40, %add39.i
  %add45.i = add i32 %add43.i, %div473.i
  %conv46.i = trunc i32 %add45.i to i16
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv46.i, ptr %5, align 2, !alias.scope !78
  %42 = trunc i32 %div473.i to i16
  %conv51.i = add i16 %42, %conv10
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv51.i, ptr %7, align 2, !alias.scope !78
  %conv56.i = trunc i32 %add43.i to i16
  %44 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv56.i, ptr %8, align 2, !alias.scope !78
  %45 = zext i32 %iga to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %iga, label %cond.end8.viafb_load_fetch_count_reg.exit_crit_edge [
    i32 1, label %if.end15.thread
    i32 2, label %if.end15.thread46
  ]

cond.end8.viafb_load_fetch_count_reg.exit_crit_edge: ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #13
  br label %viafb_load_fetch_count_reg.exit

if.end15.thread:                                  ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @via_set_primary_timing(ptr noundef nonnull %crt_reg) #11
  %46 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %var, align 4
  %bits_per_pixel43 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %48 = ptrtoint ptr %bits_per_pixel43 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %bits_per_pixel43, align 4
  %div4144 = lshr i32 %49, 3
  %mul.i = mul i32 %div4144, %47
  %div.i = sdiv i32 %mul.i, 16
  %add.i42 = add nsw i32 %div.i, 4
  %50 = load i32, ptr @fetch_count_reg, align 4
  call void @viafb_load_reg(i32 noundef %add.i42, i32 noundef %50, ptr noundef getelementptr inbounds (%struct.fetch_count, ptr @fetch_count_reg, i32 0, i32 0, i32 1), i32 noundef 964) #11
  br label %viafb_load_fetch_count_reg.exit

if.end15.thread46:                                ; preds = %cond.end8
  call void @__sanitizer_cov_trace_pc() #13
  call void @via_set_secondary_timing(ptr noundef nonnull %crt_reg) #11
  %51 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %var, align 4
  %bits_per_pixel47 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 6
  %53 = ptrtoint ptr %bits_per_pixel47 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bits_per_pixel47, align 4
  %div4148 = lshr i32 %54, 3
  %mul2.i = mul i32 %div4148, %52
  %div3.i = sdiv i32 %mul2.i, 16
  %55 = load i32, ptr getelementptr inbounds (%struct.fetch_count, ptr @fetch_count_reg, i32 0, i32 1), align 4
  call void @viafb_load_reg(i32 noundef %div3.i, i32 noundef %55, ptr noundef getelementptr inbounds (%struct.fetch_count, ptr @fetch_count_reg, i32 0, i32 1, i32 1), i32 noundef 980) #11
  br label %viafb_load_fetch_count_reg.exit

viafb_load_fetch_count_reg.exit:                  ; preds = %if.end15.thread46, %if.end15.thread, %cond.end8.viafb_load_fetch_count_reg.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %56 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip_info, align 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %58, align 4
  %.off = add i32 %60, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %viafb_load_fetch_count_reg.exit.if.end26_crit_edge, label %if.then23

viafb_load_fetch_count_reg.exit.if.end26_crit_edge: ; preds = %viafb_load_fetch_count_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then23:                                        ; preds = %viafb_load_fetch_count_reg.exit
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %var, align 4
  %63 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %yres.i, align 4
  call void @viafb_load_FIFO_reg(i32 noundef %iga, i32 noundef %62, i32 noundef %64)
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %viafb_load_fetch_count_reg.exit.if.end26_crit_edge
  %pixclock = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %65 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %pixclock, align 4
  %div27 = udiv i32 1000000000, %66
  %mul = mul i32 %div27, 1000
  call void @viafb_set_vclock(i32 noundef %mul, i32 noundef %iga)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %crt_reg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_primary_timing(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_secondary_timing(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_init_chip_info(i32 noundef %chip_type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @via_clock_init(ptr noundef nonnull @clock, i32 noundef %chip_type) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 11
  %1 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chip_info.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %chip_type, ptr %2, align 4
  %4 = load ptr, ptr @viaparinfo, align 4
  %chip_info1.i = getelementptr inbounds %struct.viafb_par, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %chip_info1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chip_info1.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp eq i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %entry.if.end10.i_crit_edge

entry.if.end10.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 79) #11, !srcloc !67
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 79) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 85) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 79) #11, !srcloc !67
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp1(i8 85, i8 %10)
  %cmp4.not.i = icmp eq i8 %10, 85
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %11 = load ptr, ptr @viaparinfo, align 4
  %chip_info8.i = getelementptr inbounds %struct.viafb_par, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %chip_info8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chip_info8.i, align 4
  %gfx_chip_revision9.i = getelementptr inbounds %struct.chip_information, ptr %13, i32 0, i32 1
  %..i = select i1 %cmp4.not.i, i32 12, i32 10
  %14 = ptrtoint ptr %gfx_chip_revision9.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %..i, ptr %gfx_chip_revision9.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 79) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %9) #11, !srcloc !67
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.then.i, %entry.if.end10.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %15 = load ptr, ptr @viaparinfo, align 4
  %chip_info11.i = getelementptr inbounds %struct.viafb_par, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %chip_info11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_info11.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %19)
  %cmp13.i = icmp eq i32 %19, 6
  br i1 %cmp13.i, label %if.then15.i, label %if.end10.i.if.end34.i_crit_edge

if.end10.i.if.end34.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34.i

if.then15.i:                                      ; preds = %if.end10.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 67) #11, !srcloc !67
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  %conv18.i = zext i8 %20 to i32
  %and.i = and i32 %conv18.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else22.i, label %if.then19.i

if.then19.i:                                      ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %21 = load ptr, ptr @viaparinfo, align 4
  %chip_info20.i = getelementptr inbounds %struct.viafb_par, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %chip_info20.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip_info20.i, align 4
  %gfx_chip_revision21.i = getelementptr inbounds %struct.chip_information, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %gfx_chip_revision21.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %gfx_chip_revision21.i, align 4
  br label %if.end34.i

if.else22.i:                                      ; preds = %if.then15.i
  %and24.i = and i32 %conv18.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %tobool25.not.i = icmp eq i32 %and24.i, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %25 = load ptr, ptr @viaparinfo, align 4
  %chip_info30.i = getelementptr inbounds %struct.viafb_par, ptr %25, i32 0, i32 11
  %26 = ptrtoint ptr %chip_info30.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip_info30.i, align 4
  %gfx_chip_revision31.i = getelementptr inbounds %struct.chip_information, ptr %27, i32 0, i32 1
  br i1 %tobool25.not.i, label %if.else29.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %gfx_chip_revision31.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %gfx_chip_revision31.i, align 4
  br label %if.end34.i

if.else29.i:                                      ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #13
  %29 = ptrtoint ptr %gfx_chip_revision31.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %gfx_chip_revision31.i, align 4
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else29.i, %if.then26.i, %if.then19.i, %if.end10.i.if.end34.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %30 = load ptr, ptr @viaparinfo, align 4
  %chip_info35.i = getelementptr inbounds %struct.viafb_par, ptr %30, i32 0, i32 11
  %31 = ptrtoint ptr %chip_info35.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %chip_info35.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %32, align 4
  %switch.tableidx = add i32 %34, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %35 = icmp ult i32 %switch.tableidx, 6
  br i1 %35, label %switch.lookup, label %if.end34.i.init_gfx_chip_info.exit_crit_edge

if.end34.i.init_gfx_chip_info.exit_crit_edge:     ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_gfx_chip_info.exit

switch.lookup:                                    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #13
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.viafb_init_chip_info, i32 0, i32 %switch.tableidx
  %36 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %36)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %init_gfx_chip_info.exit

init_gfx_chip_info.exit:                          ; preds = %switch.lookup, %if.end34.i.init_gfx_chip_info.exit_crit_edge
  %.sink45.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %if.end34.i.init_gfx_chip_info.exit_crit_edge ]
  %twod_engine42.i = getelementptr inbounds %struct.chip_information, ptr %32, i32 0, i32 2
  %37 = ptrtoint ptr %twod_engine42.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink45.i, ptr %twod_engine42.i, align 4
  %call.i = tail call zeroext i1 @viafb_tmds_trasmitter_identify() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %38 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i11 = getelementptr inbounds %struct.viafb_par, ptr %38, i32 0, i32 11
  %39 = ptrtoint ptr %chip_info.i11 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip_info.i11, align 4
  %output_interface.i = getelementptr inbounds %struct.chip_information, ptr %40, i32 0, i32 3, i32 2
  %41 = ptrtoint ptr %output_interface.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %output_interface.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i12 = icmp eq i32 %42, 0
  br i1 %cmp.i12, label %if.then.i13, label %init_gfx_chip_info.exit.init_tmds_chip_info.exit_crit_edge

init_gfx_chip_info.exit.init_tmds_chip_info.exit_crit_edge: ; preds = %init_gfx_chip_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_tmds_chip_info.exit

if.then.i13:                                      ; preds = %init_gfx_chip_info.exit
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %40, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %44, label %sw.default.i15 [
    i32 6, label %sw.bb.i
    i32 8, label %if.then.i13.if.end18.sink.split.i_crit_edge
    i32 10, label %if.then.i13.if.end18.sink.split.i_crit_edge23
    i32 9, label %if.then.i13.if.end18.sink.split.i_crit_edge24
  ]

if.then.i13.if.end18.sink.split.i_crit_edge24:    ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split.i

if.then.i13.if.end18.sink.split.i_crit_edge23:    ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split.i

if.then.i13.if.end18.sink.split.i_crit_edge:      ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split.i

sw.bb.i:                                          ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_display_hardware_layout to i32))
  %46 = load i32, ptr @viafb_display_hardware_layout, align 4
  %47 = and i32 %46, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %47)
  %switch.i = icmp eq i32 %47, 2
  %..i14 = select i1 %switch.i, i32 10, i32 0
  br label %if.end18.sink.split.i

sw.default.i15:                                   ; preds = %if.then.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.sink.split.i

if.end18.sink.split.i:                            ; preds = %sw.default.i15, %sw.bb.i, %if.then.i13.if.end18.sink.split.i_crit_edge, %if.then.i13.if.end18.sink.split.i_crit_edge23, %if.then.i13.if.end18.sink.split.i_crit_edge24
  %.sink.i = phi i32 [ 3, %sw.default.i15 ], [ %..i14, %sw.bb.i ], [ 5, %if.then.i13.if.end18.sink.split.i_crit_edge ], [ 5, %if.then.i13.if.end18.sink.split.i_crit_edge23 ], [ 5, %if.then.i13.if.end18.sink.split.i_crit_edge24 ]
  %48 = ptrtoint ptr %output_interface.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %.sink.i, ptr %output_interface.i, align 4
  br label %init_tmds_chip_info.exit

init_tmds_chip_info.exit:                         ; preds = %if.end18.sink.split.i, %init_gfx_chip_info.exit.init_tmds_chip_info.exit_crit_edge
  %shared.i = getelementptr inbounds %struct.viafb_par, ptr %38, i32 0, i32 7
  %49 = ptrtoint ptr %shared.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %shared.i, align 4
  %tmds_chip_info20.i = getelementptr inbounds %struct.viafb_shared, ptr %50, i32 0, i32 12, i32 3
  %tmds_setting_info.i = getelementptr inbounds %struct.viafb_shared, ptr %50, i32 0, i32 9
  tail call void @viafb_init_dvi_size(ptr noundef %tmds_chip_info20.i, ptr noundef %tmds_setting_info.i) #11
  %call.i16 = tail call zeroext i1 @viafb_lvds_trasmitter_identify() #11
  tail call void @viafb_init_lcd_size() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %51 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i17 = getelementptr inbounds %struct.viafb_par, ptr %51, i32 0, i32 11
  %52 = ptrtoint ptr %chip_info.i17 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chip_info.i17, align 4
  %lvds_chip_info.i = getelementptr inbounds %struct.chip_information, ptr %53, i32 0, i32 4
  %lvds_setting_info.i = getelementptr inbounds %struct.viafb_par, ptr %51, i32 0, i32 9
  %54 = ptrtoint ptr %lvds_setting_info.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lvds_setting_info.i, align 4
  tail call void @viafb_init_lvds_output_interface(ptr noundef %lvds_chip_info.i, ptr noundef %55) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %56 = load ptr, ptr @viaparinfo, align 4
  %chip_info1.i18 = getelementptr inbounds %struct.viafb_par, ptr %56, i32 0, i32 11
  %57 = ptrtoint ptr %chip_info1.i18 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %chip_info1.i18, align 4
  %lvds_chip_info2.i = getelementptr inbounds %struct.chip_information, ptr %58, i32 0, i32 5
  %59 = ptrtoint ptr %lvds_chip_info2.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %lvds_chip_info2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i19 = icmp eq i32 %60, 0
  br i1 %tobool.not.i19, label %init_tmds_chip_info.exit.if.end.i_crit_edge, label %if.then.i20

init_tmds_chip_info.exit.if.end.i_crit_edge:      ; preds = %init_tmds_chip_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i20:                                      ; preds = %init_tmds_chip_info.exit
  call void @__sanitizer_cov_trace_pc() #13
  %lvds_setting_info2.i = getelementptr inbounds %struct.viafb_par, ptr %56, i32 0, i32 10
  %61 = ptrtoint ptr %lvds_setting_info2.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %lvds_setting_info2.i, align 4
  tail call void @viafb_init_lvds_output_interface(ptr noundef %lvds_chip_info2.i, ptr noundef %62) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i20, %init_tmds_chip_info.exit.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %63 = load ptr, ptr @viaparinfo, align 4
  %chip_info4.i = getelementptr inbounds %struct.viafb_par, ptr %63, i32 0, i32 11
  %64 = ptrtoint ptr %chip_info4.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %chip_info4.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %67)
  %cmp.i21 = icmp eq i32 %67, 6
  br i1 %cmp.i21, label %land.lhs.true.i, label %if.end.i.init_lvds_chip_info.exit_crit_edge

if.end.i.init_lvds_chip_info.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_lvds_chip_info.exit

land.lhs.true.i:                                  ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_display_hardware_layout to i32))
  %68 = load i32, ptr @viafb_display_hardware_layout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %68)
  %cmp5.i = icmp eq i32 %68, 4
  br i1 %cmp5.i, label %if.then6.i, label %land.lhs.true.i.init_lvds_chip_info.exit_crit_edge

land.lhs.true.i.init_lvds_chip_info.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_lvds_chip_info.exit

if.then6.i:                                       ; preds = %land.lhs.true.i
  %lvds_chip_info8.i = getelementptr inbounds %struct.chip_information, ptr %65, i32 0, i32 4
  %69 = ptrtoint ptr %lvds_chip_info8.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %lvds_chip_info8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %70)
  %cmp10.i = icmp eq i32 %70, 65
  br i1 %cmp10.i, label %land.lhs.true11.i, label %if.then6.i.init_lvds_chip_info.exit_crit_edge

if.then6.i.init_lvds_chip_info.exit_crit_edge:    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_lvds_chip_info.exit

land.lhs.true11.i:                                ; preds = %if.then6.i
  %lvds_chip_info213.i = getelementptr inbounds %struct.chip_information, ptr %65, i32 0, i32 5
  %71 = ptrtoint ptr %lvds_chip_info213.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %lvds_chip_info213.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65, i32 %72)
  %cmp15.i = icmp eq i32 %72, 65
  br i1 %cmp15.i, label %if.then16.i, label %land.lhs.true11.i.init_lvds_chip_info.exit_crit_edge

land.lhs.true11.i.init_lvds_chip_info.exit_crit_edge: ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %init_lvds_chip_info.exit

if.then16.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #13
  %output_interface.i22 = getelementptr inbounds %struct.chip_information, ptr %65, i32 0, i32 4, i32 2
  %73 = ptrtoint ptr %output_interface.i22 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 7, ptr %output_interface.i22, align 4
  %74 = ptrtoint ptr %chip_info4.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %chip_info4.i, align 4
  %output_interface21.i = getelementptr inbounds %struct.chip_information, ptr %75, i32 0, i32 5, i32 2
  %76 = ptrtoint ptr %output_interface21.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 8, ptr %output_interface21.i, align 4
  br label %init_lvds_chip_info.exit

init_lvds_chip_info.exit:                         ; preds = %if.then16.i, %land.lhs.true11.i.init_lvds_chip_info.exit_crit_edge, %if.then6.i.init_lvds_chip_info.exit_crit_edge, %land.lhs.true.i.init_lvds_chip_info.exit_crit_edge, %if.end.i.init_lvds_chip_info.exit_crit_edge
  tail call void @viafb_set_iga_path()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_dsp_method to i32))
  %77 = load i32, ptr @viafb_lcd_dsp_method, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %78 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info = getelementptr inbounds %struct.viafb_par, ptr %78, i32 0, i32 9
  %79 = ptrtoint ptr %lvds_setting_info to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %lvds_setting_info, align 4
  %display_method = getelementptr inbounds %struct.lvds_setting_information, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %display_method to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %77, ptr %display_method, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_lcd_mode to i32))
  %82 = load i32, ptr @viafb_lcd_mode, align 4
  %83 = load ptr, ptr %lvds_setting_info, align 4
  %lcd_mode = getelementptr inbounds %struct.lvds_setting_information, ptr %83, i32 0, i32 6
  %84 = ptrtoint ptr %lcd_mode to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %82, ptr %lcd_mode, align 4
  %85 = load ptr, ptr %lvds_setting_info, align 4
  %display_method3 = getelementptr inbounds %struct.lvds_setting_information, ptr %85, i32 0, i32 3
  %86 = ptrtoint ptr %display_method3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %display_method3, align 4
  %lvds_setting_info24 = getelementptr inbounds %struct.viafb_par, ptr %78, i32 0, i32 10
  %88 = ptrtoint ptr %lvds_setting_info24 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %lvds_setting_info24, align 4
  %display_method5 = getelementptr inbounds %struct.lvds_setting_information, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %display_method5 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %87, ptr %display_method5, align 4
  %91 = load ptr, ptr %lvds_setting_info, align 4
  %lcd_mode7 = getelementptr inbounds %struct.lvds_setting_information, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %lcd_mode7 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %lcd_mode7, align 4
  %94 = load ptr, ptr %lvds_setting_info24, align 4
  %lcd_mode9 = getelementptr inbounds %struct.lvds_setting_information, ptr %94, i32 0, i32 6
  %95 = ptrtoint ptr %lcd_mode9 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %93, ptr %lcd_mode9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_clock_init(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @viafb_update_device_setting(i32 noundef %hres, i32 noundef %vres, i32 noundef %bpp, i32 noundef %flag) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flag)
  %cmp = icmp eq i32 %flag, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %tmds_setting_info = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 8
  %1 = ptrtoint ptr %tmds_setting_info to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tmds_setting_info, align 4
  br i1 %cmp, label %entry.if.end9.sink.split_crit_edge, label %if.else

entry.if.end9.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.sink.split

if.else:                                          ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %cmp3 = icmp eq i32 %4, 2
  br i1 %cmp3, label %if.else.if.end9.sink.split_crit_edge, label %if.else.if.end9_crit_edge

if.else.if.end9_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.else.if.end9.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9.sink.split

if.end9.sink.split:                               ; preds = %if.else.if.end9.sink.split_crit_edge, %entry.if.end9.sink.split_crit_edge
  %h_active6 = getelementptr inbounds %struct.tmds_setting_information, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %h_active6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %hres, ptr %h_active6, align 4
  %6 = ptrtoint ptr %tmds_setting_info to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tmds_setting_info, align 4
  %v_active8 = getelementptr inbounds %struct.tmds_setting_information, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %v_active8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %vres, ptr %v_active8, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end9.sink.split, %if.else.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_init_dac(i32 noundef %set_iga) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %set_iga)
  %cmp = icmp eq i32 %set_iga, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #11, !srcloc !67
  %0 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i = and i8 %0, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 27) #11, !srcloc !67
  %1 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i29 = and i8 %1, 63
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i29) #11, !srcloc !67
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.037 = phi i32 [ 0, %if.then ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = trunc i32 %i.037 to i8
  %arrayidx = getelementptr [256 x %struct.rgbLUT], ptr @palLUT_table, i32 0, i32 %i.037
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %green = getelementptr [256 x %struct.rgbLUT], ptr @palLUT_table, i32 0, i32 %i.037, i32 1
  %4 = ptrtoint ptr %green to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %green, align 1
  %blue = getelementptr [256 x %struct.rgbLUT], ptr @palLUT_table, i32 0, i32 %i.037, i32 2
  %6 = ptrtoint ptr %blue to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %blue, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !86
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %3) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %5) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %7) #11, !srcloc !67
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond38.not = icmp eq i32 %inc, 256
  br i1 %exitcond38.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 27) #11, !srcloc !67
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i = or i8 %8, -64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i) #11, !srcloc !67
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #11, !srcloc !67
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #11, !srcloc !67
  %10 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i32 = or i8 %10, 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i32) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #11, !srcloc !67
  %11 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i34 = or i8 %11, 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i34) #11, !srcloc !67
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.else
  %i.136 = phi i32 [ 0, %if.else ], [ %inc16, %for.body7.for.body7_crit_edge ]
  %conv8 = trunc i32 %i.136 to i8
  %arrayidx9 = getelementptr [256 x %struct.rgbLUT], ptr @palLUT_table, i32 0, i32 %i.136
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx9, align 1
  %green12 = getelementptr [256 x %struct.rgbLUT], ptr @palLUT_table, i32 0, i32 %i.136, i32 1
  %14 = ptrtoint ptr %green12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %green12, align 1
  %blue14 = getelementptr [256 x %struct.rgbLUT], ptr @palLUT_table, i32 0, i32 %i.136, i32 2
  %16 = ptrtoint ptr %blue14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %blue14, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !85
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873400 to ptr), i8 %conv8) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !86
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %13) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !87
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %15) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !88
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873399 to ptr), i8 %17) #11, !srcloc !67
  %inc16 = add nuw nsw i32 %i.136, 1
  %exitcond.not = icmp eq i32 %inc16, 256
  br i1 %exitcond.not, label %for.end17, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body7

for.end17:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #11, !srcloc !67
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i35 = and i8 %18, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i35) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %9) #11, !srcloc !67
  br label %if.end

if.end:                                           ; preds = %for.end17, %for.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_setmode() local_unnamed_addr #0 align 64 {
entry:
  %var2 = alloca %struct.fb_var_screeninfo, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %0 = load ptr, ptr @viaparinfo, align 4
  %shared = getelementptr inbounds %struct.viafb_par, ptr %0, i32 0, i32 7
  %1 = ptrtoint ptr %shared to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %shared, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %iga2_devices = getelementptr inbounds %struct.viafb_shared, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %iga2_devices to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %iga2_devices, align 4
  %or = or i32 %6, %4
  call void @llvm.lifetime.start.p0(i64 160, ptr nonnull %var2) #11
  %7 = call ptr @memset(ptr %var2, i32 255, i32 160)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #11, !srcloc !67
  %8 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i.i = or i8 %8, 32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i) #11, !srcloc !67
  tail call void @viafb_dvi_disable() #11
  tail call void @viafb_lcd_disable() #11
  tail call void @via_set_state(i32 noundef %or, i8 noundef zeroext 3)
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !89
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !90
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 0) #11, !srcloc !67
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %entry
  %i.013.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i.i = getelementptr %struct.io_reg, ptr @common_vga, i32 %i.013.i.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %index.i.i = getelementptr %struct.io_reg, ptr @common_vga, i32 %i.013.i.i, i32 1
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %index.i.i, align 4
  %value.i.i = getelementptr %struct.io_reg, ptr @common_vga, i32 %i.013.i.i, i32 3
  %14 = ptrtoint ptr %value.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %value.i.i, align 2
  %mask.i.i = getelementptr %struct.io_reg, ptr @common_vga, i32 %i.013.i.i, i32 2
  %16 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mask.i.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i.i.i = and i32 %11, 65535
  %add.i.i.i = or i32 %conv.i.i.i, -18874368
  %18 = inttoptr i32 %add.i.i.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %18, i8 %13) #11, !srcloc !67
  %add4.i.i.i = add nuw nsw i32 %conv.i.i.i, -18874367
  %19 = inttoptr i32 %add4.i.i.i to ptr
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %19) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i.i.i = and i8 %17, %15
  %neg.i.i.i = xor i8 %17, -1
  %and15.i.i.i = and i8 %20, %neg.i.i.i
  %or.i.i.i = or i8 %and15.i.i.i, %and1225.i.i.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 %or.i.i.i) #11, !srcloc !67
  %inc.i.i = add nuw nsw i32 %i.013.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 11
  br i1 %exitcond.not.i.i, label %viafb_write_regx.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.i

viafb_write_regx.exit.i:                          ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %21 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i = getelementptr inbounds %struct.viafb_par, ptr %21, i32 0, i32 11
  %22 = ptrtoint ptr %chip_info.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chip_info.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %25, label %viafb_write_regx.exit.i.sw.epilog.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb3.i
    i32 3, label %viafb_write_regx.exit.i.sw.bb4.i_crit_edge
    i32 4, label %viafb_write_regx.exit.i.sw.bb4.i_crit_edge248
    i32 5, label %viafb_write_regx.exit.i.sw.bb5.i_crit_edge
    i32 8, label %viafb_write_regx.exit.i.sw.bb5.i_crit_edge249
    i32 9, label %viafb_write_regx.exit.i.sw.bb5.i_crit_edge250
    i32 10, label %viafb_write_regx.exit.i.sw.bb5.i_crit_edge251
    i32 6, label %viafb_write_regx.exit.i.sw.bb6.i_crit_edge
    i32 11, label %viafb_write_regx.exit.i.sw.bb6.i_crit_edge252
    i32 12, label %viafb_write_regx.exit.i.sw.bb7.i_crit_edge
    i32 13, label %viafb_write_regx.exit.i.sw.bb7.i_crit_edge253
  ]

viafb_write_regx.exit.i.sw.bb7.i_crit_edge253:    ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

viafb_write_regx.exit.i.sw.bb7.i_crit_edge:       ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb7.i

viafb_write_regx.exit.i.sw.bb6.i_crit_edge252:    ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6.i

viafb_write_regx.exit.i.sw.bb6.i_crit_edge:       ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb6.i

viafb_write_regx.exit.i.sw.bb5.i_crit_edge251:    ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

viafb_write_regx.exit.i.sw.bb5.i_crit_edge250:    ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

viafb_write_regx.exit.i.sw.bb5.i_crit_edge249:    ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

viafb_write_regx.exit.i.sw.bb5.i_crit_edge:       ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb5.i

viafb_write_regx.exit.i.sw.bb4.i_crit_edge248:    ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

viafb_write_regx.exit.i.sw.bb4.i_crit_edge:       ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb4.i

viafb_write_regx.exit.i.sw.epilog.i_crit_edge:    ; preds = %viafb_write_regx.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %viafb_write_regx.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @NUM_TOTAL_CLE266_ModeXregs to i32))
  %27 = load i32, ptr @NUM_TOTAL_CLE266_ModeXregs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp12.i.i = icmp sgt i32 %27, 0
  br i1 %cmp12.i.i, label %sw.bb.i.for.body.i75.i_crit_edge, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb.i.for.body.i75.i_crit_edge:                 ; preds = %sw.bb.i
  br label %for.body.i75.i

for.body.i75.i:                                   ; preds = %for.body.i75.i.for.body.i75.i_crit_edge, %sw.bb.i.for.body.i75.i_crit_edge
  %i.013.i61.i = phi i32 [ %inc.i73.i, %for.body.i75.i.for.body.i75.i_crit_edge ], [ 0, %sw.bb.i.for.body.i75.i_crit_edge ]
  %arrayidx.i62.i = getelementptr %struct.io_reg, ptr @CLE266_ModeXregs, i32 %i.013.i61.i
  %28 = ptrtoint ptr %arrayidx.i62.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i62.i, align 4
  %index.i63.i = getelementptr %struct.io_reg, ptr @CLE266_ModeXregs, i32 %i.013.i61.i, i32 1
  %30 = ptrtoint ptr %index.i63.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %index.i63.i, align 4
  %value.i64.i = getelementptr %struct.io_reg, ptr @CLE266_ModeXregs, i32 %i.013.i61.i, i32 3
  %32 = ptrtoint ptr %value.i64.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %value.i64.i, align 2
  %mask.i65.i = getelementptr %struct.io_reg, ptr @CLE266_ModeXregs, i32 %i.013.i61.i, i32 2
  %34 = ptrtoint ptr %mask.i65.i to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %mask.i65.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i.i66.i = and i32 %29, 65535
  %add.i.i67.i = or i32 %conv.i.i66.i, -18874368
  %36 = inttoptr i32 %add.i.i67.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %36, i8 %31) #11, !srcloc !67
  %add4.i.i68.i = add nuw nsw i32 %conv.i.i66.i, -18874367
  %37 = inttoptr i32 %add4.i.i68.i to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i.i69.i = and i8 %35, %33
  %neg.i.i70.i = xor i8 %35, -1
  %and15.i.i71.i = and i8 %38, %neg.i.i70.i
  %or.i.i72.i = or i8 %and15.i.i71.i, %and1225.i.i69.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %37, i8 %or.i.i72.i) #11, !srcloc !67
  %inc.i73.i = add nuw nsw i32 %i.013.i61.i, 1
  %exitcond.not.i74.i = icmp eq i32 %inc.i73.i, %27
  br i1 %exitcond.not.i74.i, label %for.body.i75.i.sw.epilog.i_crit_edge, label %for.body.i75.i.for.body.i75.i_crit_edge

for.body.i75.i.for.body.i75.i_crit_edge:          ; preds = %for.body.i75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i75.i

for.body.i75.i.sw.epilog.i_crit_edge:             ; preds = %for.body.i75.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb3.i:                                         ; preds = %viafb_write_regx.exit.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @NUM_TOTAL_KM400_ModeXregs to i32))
  %39 = load i32, ptr @NUM_TOTAL_KM400_ModeXregs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp12.i77.i = icmp sgt i32 %39, 0
  br i1 %cmp12.i77.i, label %sw.bb3.i.for.body.i92.i_crit_edge, label %sw.bb3.i.sw.epilog.i_crit_edge

sw.bb3.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb3.i.for.body.i92.i_crit_edge:                ; preds = %sw.bb3.i
  br label %for.body.i92.i

for.body.i92.i:                                   ; preds = %for.body.i92.i.for.body.i92.i_crit_edge, %sw.bb3.i.for.body.i92.i_crit_edge
  %i.013.i78.i = phi i32 [ %inc.i90.i, %for.body.i92.i.for.body.i92.i_crit_edge ], [ 0, %sw.bb3.i.for.body.i92.i_crit_edge ]
  %arrayidx.i79.i = getelementptr %struct.io_reg, ptr @KM400_ModeXregs, i32 %i.013.i78.i
  %40 = ptrtoint ptr %arrayidx.i79.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx.i79.i, align 4
  %index.i80.i = getelementptr %struct.io_reg, ptr @KM400_ModeXregs, i32 %i.013.i78.i, i32 1
  %42 = ptrtoint ptr %index.i80.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %index.i80.i, align 4
  %value.i81.i = getelementptr %struct.io_reg, ptr @KM400_ModeXregs, i32 %i.013.i78.i, i32 3
  %44 = ptrtoint ptr %value.i81.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %value.i81.i, align 2
  %mask.i82.i = getelementptr %struct.io_reg, ptr @KM400_ModeXregs, i32 %i.013.i78.i, i32 2
  %46 = ptrtoint ptr %mask.i82.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %mask.i82.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i.i83.i = and i32 %41, 65535
  %add.i.i84.i = or i32 %conv.i.i83.i, -18874368
  %48 = inttoptr i32 %add.i.i84.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %43) #11, !srcloc !67
  %add4.i.i85.i = add nuw nsw i32 %conv.i.i83.i, -18874367
  %49 = inttoptr i32 %add4.i.i85.i to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i.i86.i = and i8 %47, %45
  %neg.i.i87.i = xor i8 %47, -1
  %and15.i.i88.i = and i8 %50, %neg.i.i87.i
  %or.i.i89.i = or i8 %and15.i.i88.i, %and1225.i.i86.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 %or.i.i89.i) #11, !srcloc !67
  %inc.i90.i = add nuw nsw i32 %i.013.i78.i, 1
  %exitcond.not.i91.i = icmp eq i32 %inc.i90.i, %39
  br i1 %exitcond.not.i91.i, label %for.body.i92.i.sw.epilog.i_crit_edge, label %for.body.i92.i.for.body.i92.i_crit_edge

for.body.i92.i.for.body.i92.i_crit_edge:          ; preds = %for.body.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i92.i

for.body.i92.i.sw.epilog.i_crit_edge:             ; preds = %for.body.i92.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %viafb_write_regx.exit.i.sw.bb4.i_crit_edge, %viafb_write_regx.exit.i.sw.bb4.i_crit_edge248
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @NUM_TOTAL_CN400_ModeXregs to i32))
  %51 = load i32, ptr @NUM_TOTAL_CN400_ModeXregs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp12.i94.i = icmp sgt i32 %51, 0
  br i1 %cmp12.i94.i, label %sw.bb4.i.for.body.i109.i_crit_edge, label %sw.bb4.i.sw.epilog.i_crit_edge

sw.bb4.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb4.i.for.body.i109.i_crit_edge:               ; preds = %sw.bb4.i
  br label %for.body.i109.i

for.body.i109.i:                                  ; preds = %for.body.i109.i.for.body.i109.i_crit_edge, %sw.bb4.i.for.body.i109.i_crit_edge
  %i.013.i95.i = phi i32 [ %inc.i107.i, %for.body.i109.i.for.body.i109.i_crit_edge ], [ 0, %sw.bb4.i.for.body.i109.i_crit_edge ]
  %arrayidx.i96.i = getelementptr %struct.io_reg, ptr @CN400_ModeXregs, i32 %i.013.i95.i
  %52 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i96.i, align 4
  %index.i97.i = getelementptr %struct.io_reg, ptr @CN400_ModeXregs, i32 %i.013.i95.i, i32 1
  %54 = ptrtoint ptr %index.i97.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %index.i97.i, align 4
  %value.i98.i = getelementptr %struct.io_reg, ptr @CN400_ModeXregs, i32 %i.013.i95.i, i32 3
  %56 = ptrtoint ptr %value.i98.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %value.i98.i, align 2
  %mask.i99.i = getelementptr %struct.io_reg, ptr @CN400_ModeXregs, i32 %i.013.i95.i, i32 2
  %58 = ptrtoint ptr %mask.i99.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %mask.i99.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i.i100.i = and i32 %53, 65535
  %add.i.i101.i = or i32 %conv.i.i100.i, -18874368
  %60 = inttoptr i32 %add.i.i101.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %60, i8 %55) #11, !srcloc !67
  %add4.i.i102.i = add nuw nsw i32 %conv.i.i100.i, -18874367
  %61 = inttoptr i32 %add4.i.i102.i to ptr
  %62 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %61) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i.i103.i = and i8 %59, %57
  %neg.i.i104.i = xor i8 %59, -1
  %and15.i.i105.i = and i8 %62, %neg.i.i104.i
  %or.i.i106.i = or i8 %and15.i.i105.i, %and1225.i.i103.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %61, i8 %or.i.i106.i) #11, !srcloc !67
  %inc.i107.i = add nuw nsw i32 %i.013.i95.i, 1
  %exitcond.not.i108.i = icmp eq i32 %inc.i107.i, %51
  br i1 %exitcond.not.i108.i, label %for.body.i109.i.sw.epilog.i_crit_edge, label %for.body.i109.i.for.body.i109.i_crit_edge

for.body.i109.i.for.body.i109.i_crit_edge:        ; preds = %for.body.i109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i109.i

for.body.i109.i.sw.epilog.i_crit_edge:            ; preds = %for.body.i109.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb5.i:                                         ; preds = %viafb_write_regx.exit.i.sw.bb5.i_crit_edge, %viafb_write_regx.exit.i.sw.bb5.i_crit_edge249, %viafb_write_regx.exit.i.sw.bb5.i_crit_edge250, %viafb_write_regx.exit.i.sw.bb5.i_crit_edge251
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @NUM_TOTAL_CN700_ModeXregs to i32))
  %63 = load i32, ptr @NUM_TOTAL_CN700_ModeXregs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp12.i111.i = icmp sgt i32 %63, 0
  br i1 %cmp12.i111.i, label %sw.bb5.i.for.body.i126.i_crit_edge, label %sw.bb5.i.sw.epilog.i_crit_edge

sw.bb5.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb5.i.for.body.i126.i_crit_edge:               ; preds = %sw.bb5.i
  br label %for.body.i126.i

for.body.i126.i:                                  ; preds = %for.body.i126.i.for.body.i126.i_crit_edge, %sw.bb5.i.for.body.i126.i_crit_edge
  %i.013.i112.i = phi i32 [ %inc.i124.i, %for.body.i126.i.for.body.i126.i_crit_edge ], [ 0, %sw.bb5.i.for.body.i126.i_crit_edge ]
  %arrayidx.i113.i = getelementptr %struct.io_reg, ptr @CN700_ModeXregs, i32 %i.013.i112.i
  %64 = ptrtoint ptr %arrayidx.i113.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx.i113.i, align 4
  %index.i114.i = getelementptr %struct.io_reg, ptr @CN700_ModeXregs, i32 %i.013.i112.i, i32 1
  %66 = ptrtoint ptr %index.i114.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %index.i114.i, align 4
  %value.i115.i = getelementptr %struct.io_reg, ptr @CN700_ModeXregs, i32 %i.013.i112.i, i32 3
  %68 = ptrtoint ptr %value.i115.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %value.i115.i, align 2
  %mask.i116.i = getelementptr %struct.io_reg, ptr @CN700_ModeXregs, i32 %i.013.i112.i, i32 2
  %70 = ptrtoint ptr %mask.i116.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %mask.i116.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i.i117.i = and i32 %65, 65535
  %add.i.i118.i = or i32 %conv.i.i117.i, -18874368
  %72 = inttoptr i32 %add.i.i118.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 %67) #11, !srcloc !67
  %add4.i.i119.i = add nuw nsw i32 %conv.i.i117.i, -18874367
  %73 = inttoptr i32 %add4.i.i119.i to ptr
  %74 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %73) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i.i120.i = and i8 %71, %69
  %neg.i.i121.i = xor i8 %71, -1
  %and15.i.i122.i = and i8 %74, %neg.i.i121.i
  %or.i.i123.i = or i8 %and15.i.i122.i, %and1225.i.i120.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 %or.i.i123.i) #11, !srcloc !67
  %inc.i124.i = add nuw nsw i32 %i.013.i112.i, 1
  %exitcond.not.i125.i = icmp eq i32 %inc.i124.i, %63
  br i1 %exitcond.not.i125.i, label %for.body.i126.i.sw.epilog.i_crit_edge, label %for.body.i126.i.for.body.i126.i_crit_edge

for.body.i126.i.for.body.i126.i_crit_edge:        ; preds = %for.body.i126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i126.i

for.body.i126.i.sw.epilog.i_crit_edge:            ; preds = %for.body.i126.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %viafb_write_regx.exit.i.sw.bb6.i_crit_edge, %viafb_write_regx.exit.i.sw.bb6.i_crit_edge252
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @NUM_TOTAL_CX700_ModeXregs to i32))
  %75 = load i32, ptr @NUM_TOTAL_CX700_ModeXregs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp12.i128.i = icmp sgt i32 %75, 0
  br i1 %cmp12.i128.i, label %sw.bb6.i.for.body.i143.i_crit_edge, label %sw.bb6.i.sw.epilog.i_crit_edge

sw.bb6.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb6.i.for.body.i143.i_crit_edge:               ; preds = %sw.bb6.i
  br label %for.body.i143.i

for.body.i143.i:                                  ; preds = %for.body.i143.i.for.body.i143.i_crit_edge, %sw.bb6.i.for.body.i143.i_crit_edge
  %i.013.i129.i = phi i32 [ %inc.i141.i, %for.body.i143.i.for.body.i143.i_crit_edge ], [ 0, %sw.bb6.i.for.body.i143.i_crit_edge ]
  %arrayidx.i130.i = getelementptr %struct.io_reg, ptr @CX700_ModeXregs, i32 %i.013.i129.i
  %76 = ptrtoint ptr %arrayidx.i130.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx.i130.i, align 4
  %index.i131.i = getelementptr %struct.io_reg, ptr @CX700_ModeXregs, i32 %i.013.i129.i, i32 1
  %78 = ptrtoint ptr %index.i131.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %index.i131.i, align 4
  %value.i132.i = getelementptr %struct.io_reg, ptr @CX700_ModeXregs, i32 %i.013.i129.i, i32 3
  %80 = ptrtoint ptr %value.i132.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %value.i132.i, align 2
  %mask.i133.i = getelementptr %struct.io_reg, ptr @CX700_ModeXregs, i32 %i.013.i129.i, i32 2
  %82 = ptrtoint ptr %mask.i133.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %mask.i133.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i.i134.i = and i32 %77, 65535
  %add.i.i135.i = or i32 %conv.i.i134.i, -18874368
  %84 = inttoptr i32 %add.i.i135.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 %79) #11, !srcloc !67
  %add4.i.i136.i = add nuw nsw i32 %conv.i.i134.i, -18874367
  %85 = inttoptr i32 %add4.i.i136.i to ptr
  %86 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %85) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i.i137.i = and i8 %83, %81
  %neg.i.i138.i = xor i8 %83, -1
  %and15.i.i139.i = and i8 %86, %neg.i.i138.i
  %or.i.i140.i = or i8 %and15.i.i139.i, %and1225.i.i137.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 %or.i.i140.i) #11, !srcloc !67
  %inc.i141.i = add nuw nsw i32 %i.013.i129.i, 1
  %exitcond.not.i142.i = icmp eq i32 %inc.i141.i, %75
  br i1 %exitcond.not.i142.i, label %for.body.i143.i.sw.epilog.i_crit_edge, label %for.body.i143.i.for.body.i143.i_crit_edge

for.body.i143.i.for.body.i143.i_crit_edge:        ; preds = %for.body.i143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i143.i

for.body.i143.i.sw.epilog.i_crit_edge:            ; preds = %for.body.i143.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb7.i:                                         ; preds = %viafb_write_regx.exit.i.sw.bb7.i_crit_edge, %viafb_write_regx.exit.i.sw.bb7.i_crit_edge253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @NUM_TOTAL_VX855_ModeXregs to i32))
  %87 = load i32, ptr @NUM_TOTAL_VX855_ModeXregs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp12.i145.i = icmp sgt i32 %87, 0
  br i1 %cmp12.i145.i, label %sw.bb7.i.for.body.i160.i_crit_edge, label %sw.bb7.i.sw.epilog.i_crit_edge

sw.bb7.i.sw.epilog.i_crit_edge:                   ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.bb7.i.for.body.i160.i_crit_edge:               ; preds = %sw.bb7.i
  br label %for.body.i160.i

for.body.i160.i:                                  ; preds = %for.body.i160.i.for.body.i160.i_crit_edge, %sw.bb7.i.for.body.i160.i_crit_edge
  %i.013.i146.i = phi i32 [ %inc.i158.i, %for.body.i160.i.for.body.i160.i_crit_edge ], [ 0, %sw.bb7.i.for.body.i160.i_crit_edge ]
  %arrayidx.i147.i = getelementptr %struct.io_reg, ptr @VX855_ModeXregs, i32 %i.013.i146.i
  %88 = ptrtoint ptr %arrayidx.i147.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx.i147.i, align 4
  %index.i148.i = getelementptr %struct.io_reg, ptr @VX855_ModeXregs, i32 %i.013.i146.i, i32 1
  %90 = ptrtoint ptr %index.i148.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %index.i148.i, align 4
  %value.i149.i = getelementptr %struct.io_reg, ptr @VX855_ModeXregs, i32 %i.013.i146.i, i32 3
  %92 = ptrtoint ptr %value.i149.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %value.i149.i, align 2
  %mask.i150.i = getelementptr %struct.io_reg, ptr @VX855_ModeXregs, i32 %i.013.i146.i, i32 2
  %94 = ptrtoint ptr %mask.i150.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %mask.i150.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i.i151.i = and i32 %89, 65535
  %add.i.i152.i = or i32 %conv.i.i151.i, -18874368
  %96 = inttoptr i32 %add.i.i152.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %91) #11, !srcloc !67
  %add4.i.i153.i = add nuw nsw i32 %conv.i.i151.i, -18874367
  %97 = inttoptr i32 %add4.i.i153.i to ptr
  %98 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %97) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i.i154.i = and i8 %95, %93
  %neg.i.i155.i = xor i8 %95, -1
  %and15.i.i156.i = and i8 %98, %neg.i.i155.i
  %or.i.i157.i = or i8 %and15.i.i156.i, %and1225.i.i154.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 %or.i.i157.i) #11, !srcloc !67
  %inc.i158.i = add nuw nsw i32 %i.013.i146.i, 1
  %exitcond.not.i159.i = icmp eq i32 %inc.i158.i, %87
  br i1 %exitcond.not.i159.i, label %for.body.i160.i.sw.epilog.i_crit_edge, label %for.body.i160.i.for.body.i160.i_crit_edge

for.body.i160.i.for.body.i160.i_crit_edge:        ; preds = %for.body.i160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i160.i

for.body.i160.i.sw.epilog.i_crit_edge:            ; preds = %for.body.i160.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %for.body.i160.i.sw.epilog.i_crit_edge, %sw.bb7.i.sw.epilog.i_crit_edge, %for.body.i143.i.sw.epilog.i_crit_edge, %sw.bb6.i.sw.epilog.i_crit_edge, %for.body.i126.i.sw.epilog.i_crit_edge, %sw.bb5.i.sw.epilog.i_crit_edge, %for.body.i109.i.sw.epilog.i_crit_edge, %sw.bb4.i.sw.epilog.i_crit_edge, %for.body.i92.i.sw.epilog.i_crit_edge, %sw.bb3.i.sw.epilog.i_crit_edge, %for.body.i75.i.sw.epilog.i_crit_edge, %sw.bb.i.sw.epilog.i_crit_edge, %viafb_write_regx.exit.i.sw.epilog.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 69) #11, !srcloc !67
  %99 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i = and i8 %99, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -3) #11, !srcloc !67
  %100 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i162.i = and i8 %100, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i162.i) #11, !srcloc !67
  br label %for.body.i177.i

for.body.i177.i:                                  ; preds = %for.body.i177.i.for.body.i177.i_crit_edge, %sw.epilog.i
  %i.013.i163.i = phi i32 [ %inc.i175.i, %for.body.i177.i.for.body.i177.i_crit_edge ], [ 0, %sw.epilog.i ]
  %arrayidx.i164.i = getelementptr %struct.io_reg, ptr @scaling_parameters, i32 %i.013.i163.i
  %101 = ptrtoint ptr %arrayidx.i164.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx.i164.i, align 4
  %index.i165.i = getelementptr %struct.io_reg, ptr @scaling_parameters, i32 %i.013.i163.i, i32 1
  %103 = ptrtoint ptr %index.i165.i to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %index.i165.i, align 4
  %value.i166.i = getelementptr %struct.io_reg, ptr @scaling_parameters, i32 %i.013.i163.i, i32 3
  %105 = ptrtoint ptr %value.i166.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %value.i166.i, align 2
  %mask.i167.i = getelementptr %struct.io_reg, ptr @scaling_parameters, i32 %i.013.i163.i, i32 2
  %107 = ptrtoint ptr %mask.i167.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %mask.i167.i, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i.i168.i = and i32 %102, 65535
  %add.i.i169.i = or i32 %conv.i.i168.i, -18874368
  %109 = inttoptr i32 %add.i.i169.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %109, i8 %104) #11, !srcloc !67
  %add4.i.i170.i = add nuw nsw i32 %conv.i.i168.i, -18874367
  %110 = inttoptr i32 %add4.i.i170.i to ptr
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %110) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i.i171.i = and i8 %108, %106
  %neg.i.i172.i = xor i8 %108, -1
  %and15.i.i173.i = and i8 %111, %neg.i.i172.i
  %or.i.i174.i = or i8 %and15.i.i173.i, %and1225.i.i171.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %110, i8 %or.i.i174.i) #11, !srcloc !67
  %inc.i175.i = add nuw nsw i32 %i.013.i163.i, 1
  %exitcond.not.i176.i = icmp eq i32 %inc.i175.i, 14
  br i1 %exitcond.not.i176.i, label %viafb_write_regx.exit178.i, label %for.body.i177.i.for.body.i177.i_crit_edge

for.body.i177.i.for.body.i177.i_crit_edge:        ; preds = %for.body.i177.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i177.i

viafb_write_regx.exit178.i:                       ; preds = %for.body.i177.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !91
  tail call void @arm_heavy_mb() #11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @VPIT to i32))
  %112 = load i8, ptr @VPIT, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873406 to ptr), i8 %112) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 1, i32 0) to i32))
  %113 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 1, i32 0), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %113) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 1, i32 1) to i32))
  %114 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 1, i32 1), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 2) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %114) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 1, i32 2) to i32))
  %115 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 1, i32 2), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 3) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %115) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 1, i32 3) to i32))
  %116 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 1, i32 3), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 4) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %116) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 21) #11, !srcloc !67
  %117 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i.i201 = or i8 %117, -94
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i.i201) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 0) to i32))
  %118 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 0), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 0) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %118) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 1) to i32))
  %119 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 1), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 1) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %119) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 2) to i32))
  %120 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 2), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 2) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %120) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 3) to i32))
  %121 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 3), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 3) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %121) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 4) to i32))
  %122 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 4), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 4) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %122) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 5) to i32))
  %123 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 5), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 5) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %123) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 6) to i32))
  %124 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 6), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 6) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %124) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 7) to i32))
  %125 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 7), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 7) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %125) #11, !srcloc !67
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 8) to i32))
  %126 = load i8, ptr getelementptr inbounds (%struct.VPITTable, ptr @VPIT, i32 0, i32 2, i32 8), align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873394 to ptr), i8 8) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873393 to ptr), i8 %126) #11, !srcloc !67
  br label %for.body24.i

for.body24.i:                                     ; preds = %for.body24.i.for.body24.i_crit_edge, %viafb_write_regx.exit178.i
  %i.2188.i = phi i32 [ %inc40.i, %for.body24.i.for.body24.i_crit_edge ], [ 0, %viafb_write_regx.exit178.i ]
  %127 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !92
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !93
  tail call void @arm_heavy_mb() #11
  %conv32.i = trunc i32 %i.2188.i to i8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %conv32.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !94
  tail call void @arm_heavy_mb() #11
  %arrayidx37.i = getelementptr %struct.VPITTable, ptr @VPIT, i32 0, i32 3, i32 %i.2188.i
  %128 = ptrtoint ptr %arrayidx37.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %arrayidx37.i, align 1
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 %129) #11, !srcloc !67
  %inc40.i = add nuw nsw i32 %i.2188.i, 1
  %exitcond.not.i = icmp eq i32 %inc40.i, 20
  br i1 %exitcond.not.i, label %for.end41.i, label %for.body24.i.for.body24.i_crit_edge

for.body24.i.for.body24.i_crit_edge:              ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body24.i

for.end41.i:                                      ; preds = %for.body24.i
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873382 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !95
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !96
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873408 to ptr), i8 32) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #11, !srcloc !67
  %131 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i.i.i = and i8 %131, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i.i.i.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 71) #11, !srcloc !67
  %132 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i1.i.i.i = and i8 %132, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i1.i.i.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 3) #11, !srcloc !67
  %133 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i.i180.i = or i8 %133, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i180.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 53) #11, !srcloc !67
  %134 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i12.i.i = or i8 %134, 16
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i12.i.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 51) #11, !srcloc !67
  %135 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i13.i.i = and i8 %135, -8
  %or.i14.i.i = or i8 %and15.i13.i.i, 6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i14.i.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #11, !srcloc !67
  %136 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i.i.i.i = or i8 %136, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i.i.i) #11, !srcloc !67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %137 = load ptr, ptr @viaparinfo, align 4
  %chip_info.i.i = getelementptr inbounds %struct.viafb_par, ptr %137, i32 0, i32 11
  %138 = ptrtoint ptr %chip_info.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %chip_info.i.i, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %139, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %141, label %for.end41.i.if.end.i.i_crit_edge [
    i32 3, label %for.end41.i.if.then.i.i_crit_edge
    i32 8, label %for.end41.i.if.then.i.i_crit_edge254
  ]

for.end41.i.if.then.i.i_crit_edge254:             ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.end41.i.if.then.i.i_crit_edge:                ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

for.end41.i.if.end.i.i_crit_edge:                 ; preds = %for.end41.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %for.end41.i.if.then.i.i_crit_edge, %for.end41.i.if.then.i.i_crit_edge254
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 51) #11, !srcloc !67
  %143 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i16.i.i = or i8 %143, 8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i16.i.i) #11, !srcloc !67
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.end41.i.if.end.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %144 = load ptr, ptr @viaparinfo, align 4
  %chip_info4.i.i = getelementptr inbounds %struct.viafb_par, ptr %144, i32 0, i32 11
  %145 = ptrtoint ptr %chip_info4.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %chip_info4.i.i, align 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %146, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %148)
  %cmp6.i.i = icmp eq i32 %148, 1
  br i1 %cmp6.i.i, label %land.lhs.true.i.i, label %if.end.i.i.hw_init.exit_crit_edge

if.end.i.i.hw_init.exit_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_init.exit

land.lhs.true.i.i:                                ; preds = %if.end.i.i
  %gfx_chip_revision.i.i = getelementptr inbounds %struct.chip_information, ptr %146, i32 0, i32 1
  %149 = ptrtoint ptr %gfx_chip_revision.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %gfx_chip_revision.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %150)
  %cmp8.i.i = icmp eq i32 %150, 10
  br i1 %cmp8.i.i, label %if.then9.i.i, label %land.lhs.true.i.i.hw_init.exit_crit_edge

land.lhs.true.i.i.hw_init.exit_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %hw_init.exit

if.then9.i.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 26) #11, !srcloc !67
  %151 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i18.i.i = or i8 %151, 2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i18.i.i) #11, !srcloc !67
  br label %hw_init.exit

hw_init.exit:                                     ; preds = %if.then9.i.i, %land.lhs.true.i.i.hw_init.exit_crit_edge, %if.end.i.i.hw_init.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %152 = load ptr, ptr @viaparinfo, align 4
  %chip_info = getelementptr inbounds %struct.viafb_par, ptr %152, i32 0, i32 11
  %153 = ptrtoint ptr %chip_info to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %chip_info, align 4
  %155 = ptrtoint ptr %154 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %154, align 4
  %.off = add i32 %156, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %land.lhs.true, label %hw_init.exit.if.end_crit_edge

hw_init.exit.if.end_crit_edge:                    ; preds = %hw_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %hw_init.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %157 = load ptr, ptr @viafbinfo, align 4
  %var = getelementptr inbounds %struct.fb_info, ptr %157, i32 0, i32 6
  %158 = ptrtoint ptr %var to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %var, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %159)
  %cmp5 = icmp eq i32 %159, 1024
  br i1 %cmp5, label %land.lhs.true6, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true6:                                   ; preds = %land.lhs.true
  %yres = getelementptr inbounds %struct.fb_info, ptr %157, i32 0, i32 6, i32 1
  %160 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %yres, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %161)
  %cmp8 = icmp eq i32 %161, 768
  br i1 %cmp8, label %for.cond.preheader, label %land.lhs.true6.if.end_crit_edge

land.lhs.true6.if.end_crit_edge:                  ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader:                               ; preds = %land.lhs.true6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @res_patch_table to i32))
  %162 = load i32, ptr @res_patch_table, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp9222 = icmp sgt i32 %162, 0
  br i1 %cmp9222, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %j.0223 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.patch_table], ptr @res_patch_table, i32 0, i32 0, i32 1) to i32))
  %163 = load ptr, ptr getelementptr inbounds ([0 x %struct.patch_table], ptr @res_patch_table, i32 0, i32 0, i32 1), align 4
  %arrayidx = getelementptr %struct.io_reg, ptr %163, i32 %j.0223
  %index10 = getelementptr %struct.io_reg, ptr %163, i32 %j.0223, i32 1
  %164 = ptrtoint ptr %index10 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %index10, align 4
  %166 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx, align 4
  %value14 = getelementptr %struct.io_reg, ptr %163, i32 %j.0223, i32 3
  %168 = ptrtoint ptr %value14 to i32
  call void @__asan_load1_noabort(i32 %168)
  %169 = load i8, ptr %value14, align 2
  %mask16 = getelementptr %struct.io_reg, ptr %163, i32 %j.0223, i32 2
  %170 = ptrtoint ptr %mask16 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %mask16, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  %conv.i = and i32 %167, 65535
  %add.i = or i32 %conv.i, -18874368
  %172 = inttoptr i32 %add.i to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %172, i8 %165) #11, !srcloc !67
  %add4.i = add nuw nsw i32 %conv.i, -18874367
  %173 = inttoptr i32 %add4.i to ptr
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %173) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i = and i8 %171, %169
  %neg.i = xor i8 %171, -1
  %and15.i = and i8 %174, %neg.i
  %or.i = or i8 %and15.i, %and1225.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %173, i8 %or.i) #11, !srcloc !67
  %inc = add nuw nsw i32 %j.0223, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @res_patch_table to i32))
  %175 = load i32, ptr @res_patch_table, align 4
  %cmp9 = icmp slt i32 %inc, %175
  br i1 %cmp9, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %land.lhs.true6.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %hw_init.exit.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %176 = load ptr, ptr @viafbinfo, align 4
  %line_length = getelementptr inbounds %struct.fb_info, ptr %176, i32 0, i32 7, i32 9
  %177 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %line_length, align 4
  tail call void @via_set_primary_pitch(i32 noundef %178) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %179 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool.not = icmp eq i32 %179, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %viafbinfo.val = load ptr, ptr @viafbinfo, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %viafbinfo1.val = load ptr, ptr @viafbinfo1, align 4
  %.pn = select i1 %tobool.not, ptr %viafbinfo.val, ptr %viafbinfo1.val
  %cond.in = getelementptr inbounds %struct.fb_info, ptr %.pn, i32 0, i32 7, i32 9
  %180 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %180)
  %cond = load i32, ptr %cond.in, align 4
  tail call void @via_set_secondary_pitch(i32 noundef %cond) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %181 = load ptr, ptr @viaparinfo, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %181, align 4
  tail call void @via_set_primary_color_depth(i8 noundef zeroext %183) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %184 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %tobool21.not = icmp eq i32 %184, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %viaparinfo.val = load ptr, ptr @viaparinfo, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo1 to i32))
  %viaparinfo1.val = load ptr, ptr @viaparinfo1, align 4
  %cond29.in.in = select i1 %tobool21.not, ptr %viaparinfo.val, ptr %viaparinfo1.val
  %185 = ptrtoint ptr %cond29.in.in to i32
  call void @__asan_load1_noabort(i32 %185)
  %cond29.in199 = load i8, ptr %cond29.in.in, align 4
  tail call void @via_set_secondary_color_depth(i8 noundef zeroext %cond29.in199) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %186 = load ptr, ptr @viaparinfo, align 4
  %shared31 = getelementptr inbounds %struct.viafb_par, ptr %186, i32 0, i32 7
  %187 = ptrtoint ptr %shared31 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %shared31, align 4
  %189 = ptrtoint ptr %188 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %188, align 4
  tail call void @via_set_source(i32 noundef %190, i8 noundef zeroext 1)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %191 = load ptr, ptr @viaparinfo, align 4
  %shared33 = getelementptr inbounds %struct.viafb_par, ptr %191, i32 0, i32 7
  %192 = ptrtoint ptr %shared33 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %shared33, align 4
  %iga2_devices34 = getelementptr inbounds %struct.viafb_shared, ptr %193, i32 0, i32 1
  %194 = ptrtoint ptr %iga2_devices34 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %iga2_devices34, align 4
  tail call void @via_set_source(i32 noundef %195, i8 noundef zeroext 2)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %196 = load ptr, ptr @viaparinfo, align 4
  %shared35 = getelementptr inbounds %struct.viafb_par, ptr %196, i32 0, i32 7
  %197 = ptrtoint ptr %shared35 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %shared35, align 4
  %iga2_devices36 = getelementptr inbounds %struct.viafb_shared, ptr %198, i32 0, i32 1
  %199 = ptrtoint ptr %iga2_devices36 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %iga2_devices36, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %200)
  %tobool37.not = icmp eq i32 %200, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #11
  %201 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  %and15.i.i204 = and i8 %201, -65
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i.i204) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #11
  %202 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  tail call void @arm_heavy_mb() #11
  br i1 %tobool37.not, label %if.else, label %if.then38

if.then38:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %or.i.i203 = or i8 %202, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i203) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #11, !srcloc !67
  %203 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i3.i = or i8 %203, 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i3.i) #11, !srcloc !67
  br label %if.end39

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %and15.i1.i = and i8 %202, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i1.i) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 106) #11, !srcloc !67
  %204 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i.i205 = or i8 %204, 64
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i205) #11, !srcloc !67
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then38
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_dual_fb to i32))
  %205 = load i32, ptr @viafb_dual_fb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool40.not = icmp eq i32 %205, 0
  br i1 %tobool40.not, label %if.else43, label %if.then41

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo1 to i32))
  %206 = load ptr, ptr @viafbinfo1, align 4
  %var42 = getelementptr inbounds %struct.fb_info, ptr %206, i32 0, i32 6
  %207 = call ptr @memcpy(ptr %var2, ptr %var42, i32 160)
  br label %if.end53

if.else43:                                        ; preds = %if.end39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %208 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %tobool44.not = icmp eq i32 %208, 0
  br i1 %tobool44.not, label %if.else43.if.end53_crit_edge, label %if.then45

if.else43.if.end53_crit_edge:                     ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end53

if.then45:                                        ; preds = %if.else43
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_xres to i32))
  %209 = load i32, ptr @viafb_second_xres, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_second_yres to i32))
  %210 = load i32, ptr @viafb_second_yres, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh1 to i32))
  %211 = load i32, ptr @viafb_refresh1, align 4
  %call = tail call ptr @viafb_get_best_mode(i32 noundef %209, i32 noundef %210, i32 noundef %211) #11
  %pixclock.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 4
  %212 = ptrtoint ptr %pixclock.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %pixclock.i, align 4
  %pixclock1.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 17
  %214 = ptrtoint ptr %pixclock1.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %213, ptr %pixclock1.i, align 4
  %xres.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 2
  %215 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %xres.i, align 4
  %217 = ptrtoint ptr %var2 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %216, ptr %var2, align 4
  %yres.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 3
  %218 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %yres.i, align 4
  %yres3.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 1
  %220 = ptrtoint ptr %yres3.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %219, ptr %yres3.i, align 4
  %left_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 5
  %221 = ptrtoint ptr %left_margin.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %left_margin.i, align 4
  %left_margin4.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 18
  %223 = ptrtoint ptr %left_margin4.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %left_margin4.i, align 4
  %right_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 6
  %224 = ptrtoint ptr %right_margin.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %right_margin.i, align 4
  %right_margin5.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 19
  %226 = ptrtoint ptr %right_margin5.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %225, ptr %right_margin5.i, align 4
  %hsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 9
  %227 = ptrtoint ptr %hsync_len.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %hsync_len.i, align 4
  %hsync_len6.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 22
  %229 = ptrtoint ptr %hsync_len6.i to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 %228, ptr %hsync_len6.i, align 4
  %upper_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 7
  %230 = ptrtoint ptr %upper_margin.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load i32, ptr %upper_margin.i, align 4
  %upper_margin7.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 20
  %232 = ptrtoint ptr %upper_margin7.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 %231, ptr %upper_margin7.i, align 4
  %lower_margin.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 8
  %233 = ptrtoint ptr %lower_margin.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %lower_margin.i, align 4
  %lower_margin8.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 21
  %235 = ptrtoint ptr %lower_margin8.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 %234, ptr %lower_margin8.i, align 4
  %vsync_len.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 10
  %236 = ptrtoint ptr %vsync_len.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %vsync_len.i, align 4
  %vsync_len9.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 23
  %238 = ptrtoint ptr %vsync_len9.i to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %237, ptr %vsync_len9.i, align 4
  %sync.i = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 11
  %239 = ptrtoint ptr %sync.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %sync.i, align 4
  %sync10.i = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 24
  %241 = ptrtoint ptr %sync10.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %sync10.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %242 = load ptr, ptr @viafbinfo, align 4
  %var46 = getelementptr inbounds %struct.fb_info, ptr %242, i32 0, i32 6
  %243 = ptrtoint ptr %var46 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %var46, align 4
  %yres49 = getelementptr inbounds %struct.fb_info, ptr %242, i32 0, i32 6, i32 1
  %245 = ptrtoint ptr %yres49 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %yres49, align 4
  %bits_per_pixel = getelementptr inbounds %struct.fb_info, ptr %242, i32 0, i32 6, i32 6
  %247 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %bits_per_pixel, align 4
  %bits_per_pixel51 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 6
  %249 = ptrtoint ptr %bits_per_pixel51 to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 %248, ptr %bits_per_pixel51, align 4
  %phi.cast = trunc i32 %244 to i16
  %phi.cast200 = trunc i32 %246 to i16
  br label %if.end53

if.end53:                                         ; preds = %if.then45, %if.else43.if.end53_crit_edge, %if.then41
  %cxres.0 = phi i16 [ 0, %if.then41 ], [ %phi.cast, %if.then45 ], [ 0, %if.else43.if.end53_crit_edge ]
  %cyres.0 = phi i16 [ 0, %if.then41 ], [ %phi.cast200, %if.then45 ], [ 0, %if.else43.if.end53_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_CRT_ON to i32))
  %250 = load i32, ptr @viafb_CRT_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %250)
  %tobool54.not = icmp eq i32 %250, 0
  br i1 %tobool54.not, label %if.end53.if.end80_crit_edge, label %if.then55

if.end53.if.end80_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then55:                                        ; preds = %if.end53
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %251 = load ptr, ptr @viaparinfo, align 4
  %shared56 = getelementptr inbounds %struct.viafb_par, ptr %251, i32 0, i32 7
  %252 = ptrtoint ptr %shared56 to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %shared56, align 4
  %iga2_devices57 = getelementptr inbounds %struct.viafb_shared, ptr %253, i32 0, i32 1
  %254 = ptrtoint ptr %iga2_devices57 to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %iga2_devices57, align 4
  %and = and i32 %255, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool58.not = icmp eq i32 %and, 0
  br i1 %tobool58.not, label %if.then55.if.else64_crit_edge, label %land.lhs.true59

if.then55.if.else64_crit_edge:                    ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else64

land.lhs.true59:                                  ; preds = %if.then55
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %256 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %256)
  %tobool60.not = icmp eq i32 %256, 0
  br i1 %tobool60.not, label %land.lhs.true59.if.else64_crit_edge, label %if.then61

land.lhs.true59.if.else64_crit_edge:              ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else64

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #13
  call void @viafb_fill_crtc_timing(ptr noundef nonnull %var2, i16 noundef zeroext %cxres.0, i16 noundef zeroext %cyres.0, i32 noundef 2)
  br label %if.end71

if.else64:                                        ; preds = %land.lhs.true59.if.else64_crit_edge, %if.then55.if.else64_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %257 = load ptr, ptr @viafbinfo, align 4
  %var65 = getelementptr inbounds %struct.fb_info, ptr %257, i32 0, i32 6
  %258 = ptrtoint ptr %253 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %253, align 4
  %and68 = and i32 %259, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68)
  %tobool69.not = icmp eq i32 %and68, 0
  %cond70 = select i1 %tobool69.not, i32 2, i32 1
  tail call void @viafb_fill_crtc_timing(ptr noundef %var65, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef %cond70)
  br label %if.end71

if.end71:                                         ; preds = %if.else64, %if.then61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %260 = load ptr, ptr @viafbinfo, align 4
  %var72 = getelementptr inbounds %struct.fb_info, ptr %260, i32 0, i32 6
  %261 = ptrtoint ptr %var72 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %var72, align 4
  %rem = and i32 %262, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool74.not = icmp eq i32 %rem, 0
  br i1 %tobool74.not, label %if.end71.if.end80_crit_edge, label %if.then75

if.end71.if.end80_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end80

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #11, !srcloc !67
  %263 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i.i206 = and i8 %263, 127
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i.i206) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 71) #11, !srcloc !67
  %264 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and15.i1.i207 = and i8 %264, -2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i1.i207) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !81
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 2) #11, !srcloc !67
  %265 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !82
  %sub = add i8 %265, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !83
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 2) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !84
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %sub) #11, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 17) #11, !srcloc !67
  %266 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %or.i.i208 = or i8 %266, -128
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i208) #11, !srcloc !67
  br label %if.end80

if.end80:                                         ; preds = %if.then75, %if.end71.if.end80_crit_edge, %if.end53.if.end80_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %267 = load i32, ptr @viafb_DVI_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %267)
  %tobool81.not = icmp eq i32 %267, 0
  br i1 %tobool81.not, label %if.end80.if.end96_crit_edge, label %if.then82

if.end80.if.end96_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end96

if.then82:                                        ; preds = %if.end80
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %268 = load ptr, ptr @viaparinfo, align 4
  %shared83 = getelementptr inbounds %struct.viafb_par, ptr %268, i32 0, i32 7
  %269 = ptrtoint ptr %shared83 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %shared83, align 4
  %tmds_setting_info = getelementptr inbounds %struct.viafb_shared, ptr %270, i32 0, i32 9
  %271 = ptrtoint ptr %tmds_setting_info to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %tmds_setting_info, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %272)
  %cmp84 = icmp eq i32 %272, 2
  br i1 %cmp84, label %land.lhs.true86, label %if.then82.if.else91_crit_edge

if.then82.if.else91_crit_edge:                    ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else91

land.lhs.true86:                                  ; preds = %if.then82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %273 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %273)
  %tobool87.not = icmp eq i32 %273, 0
  br i1 %tobool87.not, label %land.lhs.true86.if.else91_crit_edge, label %if.then88

land.lhs.true86.if.else91_crit_edge:              ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else91

if.then88:                                        ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #13
  call void @viafb_dvi_set_mode(ptr noundef nonnull %var2, i16 noundef zeroext %cxres.0, i16 noundef zeroext %cyres.0, i32 noundef 2) #11
  br label %if.end96

if.else91:                                        ; preds = %land.lhs.true86.if.else91_crit_edge, %if.then82.if.else91_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %274 = load ptr, ptr @viafbinfo, align 4
  %var92 = getelementptr inbounds %struct.fb_info, ptr %274, i32 0, i32 6
  %tmds_setting_info93 = getelementptr inbounds %struct.viafb_par, ptr %268, i32 0, i32 8
  %275 = ptrtoint ptr %tmds_setting_info93 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %tmds_setting_info93, align 4
  %277 = ptrtoint ptr %276 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %276, align 4
  tail call void @viafb_dvi_set_mode(ptr noundef %var92, i16 noundef zeroext 0, i16 noundef zeroext 0, i32 noundef %278) #11
  br label %if.end96

if.end96:                                         ; preds = %if.else91, %if.then88, %if.end80.if.end96_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  %279 = load i32, ptr @viafb_LCD_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %279)
  %tobool97.not = icmp eq i32 %279, 0
  br i1 %tobool97.not, label %if.end96.if.end122_crit_edge, label %if.then98

if.end96.if.end122_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end122

if.then98:                                        ; preds = %if.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %280 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %280)
  %tobool99.not = icmp eq i32 %280, 0
  br i1 %tobool99.not, label %if.then98.if.else109_crit_edge, label %land.lhs.true100

if.then98.if.else109_crit_edge:                   ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else109

land.lhs.true100:                                 ; preds = %if.then98
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %281 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info = getelementptr inbounds %struct.viafb_par, ptr %281, i32 0, i32 9
  %282 = ptrtoint ptr %lvds_setting_info to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %lvds_setting_info, align 4
  %284 = ptrtoint ptr %283 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %283, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %285)
  %cmp102 = icmp eq i32 %285, 2
  br i1 %cmp102, label %if.then104, label %land.lhs.true100.if.else109_crit_edge

land.lhs.true100.if.else109_crit_edge:            ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else109

if.then104:                                       ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #13
  %chip_info108 = getelementptr inbounds %struct.viafb_par, ptr %281, i32 0, i32 11
  %286 = ptrtoint ptr %chip_info108 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %chip_info108, align 4
  %lvds_chip_info = getelementptr inbounds %struct.chip_information, ptr %287, i32 0, i32 4
  call void @viafb_lcd_set_mode(ptr noundef nonnull %var2, i16 noundef zeroext %cxres.0, i16 noundef zeroext %cyres.0, ptr noundef %283, ptr noundef %lvds_chip_info) #11
  br label %if.end122

if.else109:                                       ; preds = %land.lhs.true100.if.else109_crit_edge, %if.then98.if.else109_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %288 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info110 = getelementptr inbounds %struct.viafb_par, ptr %288, i32 0, i32 9
  %289 = ptrtoint ptr %lvds_setting_info110 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %lvds_setting_info110, align 4
  %291 = ptrtoint ptr %290 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %290, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %292)
  %cmp112 = icmp eq i32 %292, 1
  br i1 %cmp112, label %if.then114, label %if.else109.if.end116_crit_edge

if.else109.if.end116_crit_edge:                   ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then114:                                       ; preds = %if.else109
  call void @__sanitizer_cov_trace_pc() #13
  %display_method = getelementptr inbounds %struct.lvds_setting_information, ptr %290, i32 0, i32 3
  %293 = ptrtoint ptr %display_method to i32
  call void @__asan_store4_noabort(i32 %293)
  store i32 1, ptr %display_method, align 4
  br label %if.end116

if.end116:                                        ; preds = %if.then114, %if.else109.if.end116_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %294 = load ptr, ptr @viafbinfo, align 4
  %var117 = getelementptr inbounds %struct.fb_info, ptr %294, i32 0, i32 6
  %295 = ptrtoint ptr %lvds_setting_info110 to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %lvds_setting_info110, align 4
  %chip_info119 = getelementptr inbounds %struct.viafb_par, ptr %288, i32 0, i32 11
  %297 = ptrtoint ptr %chip_info119 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load ptr, ptr %chip_info119, align 4
  %lvds_chip_info120 = getelementptr inbounds %struct.chip_information, ptr %298, i32 0, i32 4
  call void @viafb_lcd_set_mode(ptr noundef %var117, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %296, ptr noundef %lvds_chip_info120) #11
  br label %if.end122

if.end122:                                        ; preds = %if.end116, %if.then104, %if.end96.if.end122_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  %299 = load i32, ptr @viafb_LCD2_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %299)
  %tobool123.not = icmp eq i32 %299, 0
  br i1 %tobool123.not, label %if.end122.if.end149_crit_edge, label %if.then124

if.end122.if.end149_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end149

if.then124:                                       ; preds = %if.end122
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %300 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %300)
  %tobool125.not = icmp eq i32 %300, 0
  br i1 %tobool125.not, label %if.then124.if.else135_crit_edge, label %land.lhs.true126

if.then124.if.else135_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else135

land.lhs.true126:                                 ; preds = %if.then124
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %301 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info2 = getelementptr inbounds %struct.viafb_par, ptr %301, i32 0, i32 10
  %302 = ptrtoint ptr %lvds_setting_info2 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load ptr, ptr %lvds_setting_info2, align 4
  %304 = ptrtoint ptr %303 to i32
  call void @__asan_load4_noabort(i32 %304)
  %305 = load i32, ptr %303, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %305)
  %cmp128 = icmp eq i32 %305, 2
  br i1 %cmp128, label %if.then130, label %land.lhs.true126.if.else135_crit_edge

land.lhs.true126.if.else135_crit_edge:            ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else135

if.then130:                                       ; preds = %land.lhs.true126
  call void @__sanitizer_cov_trace_pc() #13
  %chip_info134 = getelementptr inbounds %struct.viafb_par, ptr %301, i32 0, i32 11
  %306 = ptrtoint ptr %chip_info134 to i32
  call void @__asan_load4_noabort(i32 %306)
  %307 = load ptr, ptr %chip_info134, align 4
  %lvds_chip_info2 = getelementptr inbounds %struct.chip_information, ptr %307, i32 0, i32 5
  call void @viafb_lcd_set_mode(ptr noundef nonnull %var2, i16 noundef zeroext %cxres.0, i16 noundef zeroext %cyres.0, ptr noundef %303, ptr noundef %lvds_chip_info2) #11
  br label %if.end149

if.else135:                                       ; preds = %land.lhs.true126.if.else135_crit_edge, %if.then124.if.else135_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %308 = load ptr, ptr @viaparinfo, align 4
  %lvds_setting_info2136 = getelementptr inbounds %struct.viafb_par, ptr %308, i32 0, i32 10
  %309 = ptrtoint ptr %lvds_setting_info2136 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load ptr, ptr %lvds_setting_info2136, align 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load i32, ptr %310, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %312)
  %cmp138 = icmp eq i32 %312, 1
  br i1 %cmp138, label %if.then140, label %if.else135.if.end143_crit_edge

if.else135.if.end143_crit_edge:                   ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end143

if.then140:                                       ; preds = %if.else135
  call void @__sanitizer_cov_trace_pc() #13
  %display_method142 = getelementptr inbounds %struct.lvds_setting_information, ptr %310, i32 0, i32 3
  %313 = ptrtoint ptr %display_method142 to i32
  call void @__asan_store4_noabort(i32 %313)
  store i32 1, ptr %display_method142, align 4
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %if.else135.if.end143_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %314 = load ptr, ptr @viafbinfo, align 4
  %var144 = getelementptr inbounds %struct.fb_info, ptr %314, i32 0, i32 6
  %315 = ptrtoint ptr %lvds_setting_info2136 to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %lvds_setting_info2136, align 4
  %chip_info146 = getelementptr inbounds %struct.viafb_par, ptr %308, i32 0, i32 11
  %317 = ptrtoint ptr %chip_info146 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %chip_info146, align 4
  %lvds_chip_info2147 = getelementptr inbounds %struct.chip_information, ptr %318, i32 0, i32 5
  call void @viafb_lcd_set_mode(ptr noundef %var144, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef %316, ptr noundef %lvds_chip_info2147) #11
  br label %if.end149

if.end149:                                        ; preds = %if.end143, %if.then130, %if.end122.if.end149_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %319 = load ptr, ptr @viaparinfo, align 4
  %chip_info150 = getelementptr inbounds %struct.viafb_par, ptr %319, i32 0, i32 11
  %320 = ptrtoint ptr %chip_info150 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load ptr, ptr %chip_info150, align 4
  %322 = ptrtoint ptr %321 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load i32, ptr %321, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %323)
  %cmp152 = icmp eq i32 %323, 6
  br i1 %cmp152, label %land.lhs.true154, label %if.end149.if.end159_crit_edge

if.end149.if.end159_crit_edge:                    ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

land.lhs.true154:                                 ; preds = %if.end149
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  %324 = load i32, ptr @viafb_LCD_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %324)
  %tobool155.not = icmp eq i32 %324, 0
  br i1 %tobool155.not, label %lor.lhs.false156, label %land.lhs.true154.if.then158_crit_edge

land.lhs.true154.if.then158_crit_edge:            ; preds = %land.lhs.true154
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then158

lor.lhs.false156:                                 ; preds = %land.lhs.true154
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %325 = load i32, ptr @viafb_DVI_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %tobool157.not = icmp eq i32 %325, 0
  br i1 %tobool157.not, label %lor.lhs.false156.if.end159_crit_edge, label %lor.lhs.false156.if.then158_crit_edge

lor.lhs.false156.if.then158_crit_edge:            ; preds = %lor.lhs.false156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then158

lor.lhs.false156.if.end159_crit_edge:             ; preds = %lor.lhs.false156
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.then158:                                       ; preds = %lor.lhs.false156.if.then158_crit_edge, %land.lhs.true154.if.then158_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD2_ON to i32))
  %326 = load i32, ptr @viafb_LCD2_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %326)
  %tobool.not.i = icmp eq i32 %326, 0
  br i1 %tobool.not.i, label %if.then158.if.else.i_crit_edge, label %land.lhs.true.i

if.then158.if.else.i_crit_edge:                   ; preds = %if.then158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

land.lhs.true.i:                                  ; preds = %if.then158
  %lvds_setting_info2.i = getelementptr inbounds %struct.viafb_par, ptr %319, i32 0, i32 10
  %327 = ptrtoint ptr %lvds_setting_info2.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %lvds_setting_info2.i, align 4
  %device_lcd_dualedge.i = getelementptr inbounds %struct.lvds_setting_information, ptr %328, i32 0, i32 4
  %329 = ptrtoint ptr %device_lcd_dualedge.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %device_lcd_dualedge.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %330)
  %tobool1.not.i = icmp eq i32 %330, 0
  br i1 %tobool1.not.i, label %land.lhs.true.i.if.else.i_crit_edge, label %if.then.i

land.lhs.true.i.if.else.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  call void @arm_heavy_mb() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #11, !srcloc !67
  %331 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  call void @arm_heavy_mb() #11
  %and15.i.i209 = and i8 %331, -49
  %or.i.i210 = or i8 %and15.i.i209, 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i.i210) #11, !srcloc !67
  br label %if.end159

if.else.i:                                        ; preds = %land.lhs.true.i.if.else.i_crit_edge, %if.then158.if.else.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %.pr.i = load i32, ptr @viafb_DVI_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool7.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool155.not, label %if.else6.i, label %land.lhs.true3.i

land.lhs.true3.i:                                 ; preds = %if.else.i
  br i1 %tobool7.not.i, label %if.then11.i, label %if.then5.i

if.then5.i:                                       ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  call void @arm_heavy_mb() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #11, !srcloc !67
  %332 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  call void @arm_heavy_mb() #11
  %and15.i20.i = and i8 %332, -49
  %or.i21.i = or i8 %and15.i20.i, 16
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i21.i) #11, !srcloc !67
  br label %if.end159

if.else6.i:                                       ; preds = %if.else.i
  br i1 %tobool7.not.i, label %if.else6.i.if.end159_crit_edge, label %if.then8.i

if.else6.i.if.end159_crit_edge:                   ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end159

if.then8.i:                                       ; preds = %if.else6.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  call void @arm_heavy_mb() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #11, !srcloc !67
  %333 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  call void @arm_heavy_mb() #11
  %or.i23.i = or i8 %333, 48
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i23.i) #11, !srcloc !67
  br label %if.end159

if.then11.i:                                      ; preds = %land.lhs.true3.i
  %lvds_setting_info.i = getelementptr inbounds %struct.viafb_par, ptr %319, i32 0, i32 9
  %334 = ptrtoint ptr %lvds_setting_info.i to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %lvds_setting_info.i, align 4
  %device_lcd_dualedge12.i = getelementptr inbounds %struct.lvds_setting_information, ptr %335, i32 0, i32 4
  %336 = ptrtoint ptr %device_lcd_dualedge12.i to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %device_lcd_dualedge12.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool13.not.i = icmp eq i32 %337, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void @arm_heavy_mb() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -46) #11
  %338 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11
  call void @arm_heavy_mb() #11
  %and15.i26.i = and i8 %338, -49
  br i1 %tobool13.not.i, label %if.else15.i, label %if.then14.i

if.then14.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  %or.i25.i = or i8 %and15.i26.i, 32
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i25.i) #11, !srcloc !67
  br label %if.end159

if.else15.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %and15.i26.i) #11, !srcloc !67
  br label %if.end159

if.end159:                                        ; preds = %if.else15.i, %if.then14.i, %if.then8.i, %if.else6.i.if.end159_crit_edge, %if.then5.i, %if.then.i, %lor.lhs.false156.if.end159_crit_edge, %if.end149.if.end159_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_hotplug to i32))
  %339 = load i32, ptr @viafb_hotplug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %339)
  %tobool160.not = icmp eq i32 %339, 0
  br i1 %tobool160.not, label %if.then161, label %if.end172thread-pre-split

if.then161:                                       ; preds = %if.end159
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %340 = load ptr, ptr @viafbinfo, align 4
  %var162 = getelementptr inbounds %struct.fb_info, ptr %340, i32 0, i32 6
  %341 = ptrtoint ptr %var162 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load i32, ptr %var162, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_hotplug_Xres to i32))
  store i32 %342, ptr @viafb_hotplug_Xres, align 4
  %yres165 = getelementptr inbounds %struct.fb_info, ptr %340, i32 0, i32 6, i32 1
  %343 = ptrtoint ptr %yres165 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %yres165, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_hotplug_Yres to i32))
  store i32 %344, ptr @viafb_hotplug_Yres, align 4
  %bits_per_pixel167 = getelementptr inbounds %struct.fb_info, ptr %340, i32 0, i32 6, i32 6
  %345 = ptrtoint ptr %bits_per_pixel167 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load i32, ptr %bits_per_pixel167, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_hotplug_bpp to i32))
  store i32 %346, ptr @viafb_hotplug_bpp, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_refresh to i32))
  %347 = load i32, ptr @viafb_refresh, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_hotplug_refresh to i32))
  store i32 %347, ptr @viafb_hotplug_refresh, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %348 = load i32, ptr @viafb_DVI_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %348)
  %tobool168.not = icmp eq i32 %348, 0
  br i1 %tobool168.not, label %if.end172.thread, label %if.then169

if.then169:                                       ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_DeviceStatus to i32))
  store i32 8, ptr @viafb_DeviceStatus, align 4
  br label %if.end172

if.end172.thread:                                 ; preds = %if.then161
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @viafb_DeviceStatus to i32))
  store i32 1, ptr @viafb_DeviceStatus, align 4
  br label %if.end.i

if.end172thread-pre-split:                        ; preds = %if.end159
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_DVI_ON to i32))
  %.pr = load i32, ptr @viafb_DVI_ON, align 4
  br label %if.end172

if.end172:                                        ; preds = %if.end172thread-pre-split, %if.then169
  %349 = phi i32 [ %.pr, %if.end172thread-pre-split ], [ %348, %if.then169 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %349)
  %cmp.i = icmp eq i32 %349, 1
  br i1 %cmp.i, label %if.then.i211, label %if.end172.if.end.i_crit_edge

if.end172.if.end.i_crit_edge:                     ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i211:                                     ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #13
  call void @viafb_dvi_enable() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i211, %if.end172.if.end.i_crit_edge, %if.end172.thread
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_LCD_ON to i32))
  %350 = load i32, ptr @viafb_LCD_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %350)
  %cmp1.i = icmp eq i32 %350, 1
  br i1 %cmp1.i, label %if.then2.i, label %if.end.i.device_on.exit_crit_edge

if.end.i.device_on.exit_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %device_on.exit

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @viafb_lcd_enable() #11
  br label %device_on.exit

device_on.exit:                                   ; preds = %if.then2.i, %if.end.i.device_on.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafb_SAMM_ON to i32))
  %351 = load i32, ptr @viafb_SAMM_ON, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %351)
  %tobool173.not = icmp eq i32 %351, 0
  br i1 %tobool173.not, label %if.then174, label %if.else177

if.then174:                                       ; preds = %device_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %352 = load ptr, ptr @viafbinfo, align 4
  %sync.i212 = getelementptr inbounds %struct.fb_info, ptr %352, i32 0, i32 6, i32 24
  br label %if.end185

if.else177:                                       ; preds = %device_on.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %353 = load ptr, ptr @viaparinfo, align 4
  %shared178 = getelementptr inbounds %struct.viafb_par, ptr %353, i32 0, i32 7
  %354 = ptrtoint ptr %shared178 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load ptr, ptr %shared178, align 4
  %356 = ptrtoint ptr %355 to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %355, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viafbinfo to i32))
  %358 = load ptr, ptr @viafbinfo, align 4
  %sync.i213 = getelementptr inbounds %struct.fb_info, ptr %358, i32 0, i32 6, i32 24
  %359 = ptrtoint ptr %sync.i213 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %sync.i213, align 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 3
  %363 = xor i8 %362, 3
  call void @via_set_sync_polarity(i32 noundef %357, i8 noundef zeroext %363)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @viaparinfo to i32))
  %364 = load ptr, ptr @viaparinfo, align 4
  %shared182 = getelementptr inbounds %struct.viafb_par, ptr %364, i32 0, i32 7
  %365 = ptrtoint ptr %shared182 to i32
  call void @__asan_load4_noabort(i32 %365)
  %366 = load ptr, ptr %shared182, align 4
  %iga2_devices183 = getelementptr inbounds %struct.viafb_shared, ptr %366, i32 0, i32 1
  %367 = ptrtoint ptr %iga2_devices183 to i32
  call void @__asan_load4_noabort(i32 %367)
  %368 = load i32, ptr %iga2_devices183, align 4
  %sync.i214 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var2, i32 0, i32 24
  br label %if.end185

if.end185:                                        ; preds = %if.else177, %if.then174
  %sync.i214.sink = phi ptr [ %sync.i214, %if.else177 ], [ %sync.i212, %if.then174 ]
  %.sink = phi i32 [ %368, %if.else177 ], [ %or, %if.then174 ]
  %369 = ptrtoint ptr %sync.i214.sink to i32
  call void @__asan_load4_noabort(i32 %369)
  %370 = load i32, ptr %sync.i214.sink, align 4
  %371 = trunc i32 %370 to i8
  %372 = and i8 %371, 3
  %373 = xor i8 %372, 3
  call void @via_set_sync_polarity(i32 noundef %.sink, i8 noundef zeroext %373)
  %374 = load ptr, ptr getelementptr inbounds (%struct.via_clock, ptr @clock, i32 0, i32 8), align 4
  call void %374(i8 noundef zeroext 0) #11
  %375 = load ptr, ptr getelementptr inbounds (%struct.via_clock, ptr @clock, i32 0, i32 1), align 4
  call void %375(i32 noundef 0, i1 noundef zeroext true) #11
  %376 = load ptr, ptr getelementptr inbounds (%struct.via_clock, ptr @clock, i32 0, i32 5), align 4
  call void %376(i32 noundef 0, i1 noundef zeroext true) #11
  %377 = load ptr, ptr getelementptr inbounds (%struct.via_clock, ptr @clock, i32 0, i32 2), align 4
  call void %377(i8 noundef zeroext 0) #11
  %378 = load ptr, ptr @clock, align 4
  call void %378(i8 noundef zeroext 0) #11
  %379 = load ptr, ptr getelementptr inbounds (%struct.via_clock, ptr @clock, i32 0, i32 6), align 4
  call void %379(i8 noundef zeroext 0) #11
  %380 = load ptr, ptr getelementptr inbounds (%struct.via_clock, ptr @clock, i32 0, i32 4), align 4
  call void %380(i8 noundef zeroext 0) #11
  call void @via_set_state(i32 noundef %or, i8 noundef zeroext 0)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  call void @arm_heavy_mb() #11
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 1) #11, !srcloc !67
  %381 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  call void @arm_heavy_mb() #11
  %and15.i.i215 = and i8 %381, -33
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %and15.i.i215) #11, !srcloc !67
  call void @llvm.lifetime.end.p0(i64 160, ptr nonnull %var2) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_primary_pitch(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_secondary_pitch(i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_primary_color_depth(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @via_set_secondary_color_depth(i8 noundef zeroext) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @viafb_fill_var_timing_info(ptr nocapture noundef writeonly %var, ptr nocapture noundef readonly %mode) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %pixclock = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 4
  %0 = ptrtoint ptr %pixclock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %pixclock, align 4
  %pixclock1 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 17
  %2 = ptrtoint ptr %pixclock1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %pixclock1, align 4
  %xres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 2
  %3 = ptrtoint ptr %xres to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %xres, align 4
  %5 = ptrtoint ptr %var to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %var, align 4
  %yres = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 3
  %6 = ptrtoint ptr %yres to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %yres, align 4
  %yres3 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 1
  %8 = ptrtoint ptr %yres3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %yres3, align 4
  %left_margin = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 5
  %9 = ptrtoint ptr %left_margin to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %left_margin, align 4
  %left_margin4 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 18
  %11 = ptrtoint ptr %left_margin4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %left_margin4, align 4
  %right_margin = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 6
  %12 = ptrtoint ptr %right_margin to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %right_margin, align 4
  %right_margin5 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 19
  %14 = ptrtoint ptr %right_margin5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %right_margin5, align 4
  %hsync_len = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 9
  %15 = ptrtoint ptr %hsync_len to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hsync_len, align 4
  %hsync_len6 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 22
  %17 = ptrtoint ptr %hsync_len6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %hsync_len6, align 4
  %upper_margin = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 7
  %18 = ptrtoint ptr %upper_margin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %upper_margin, align 4
  %upper_margin7 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 20
  %20 = ptrtoint ptr %upper_margin7 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %upper_margin7, align 4
  %lower_margin = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 8
  %21 = ptrtoint ptr %lower_margin to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %lower_margin, align 4
  %lower_margin8 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 21
  %23 = ptrtoint ptr %lower_margin8 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %lower_margin8, align 4
  %vsync_len = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 10
  %24 = ptrtoint ptr %vsync_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %vsync_len, align 4
  %vsync_len9 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 23
  %26 = ptrtoint ptr %vsync_len9 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %vsync_len9, align 4
  %sync = getelementptr inbounds %struct.fb_videomode, ptr %mode, i32 0, i32 11
  %27 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sync, align 4
  %sync10 = getelementptr inbounds %struct.fb_var_screeninfo, ptr %var, i32 0, i32 24
  %29 = ptrtoint ptr %sync10 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %sync10, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @viafb_get_best_mode(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_dvi_set_mode(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_lcd_set_mode(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @viafb_get_refresh(i32 noundef %hres, i32 noundef %vres, i32 noundef %long_refresh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @viafb_get_best_mode(i32 noundef %hres, i32 noundef %vres, i32 noundef %long_refresh) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %refresh = getelementptr inbounds %struct.fb_videomode, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %refresh to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %refresh, align 4
  %sub = sub i32 %1, %long_refresh
  %2 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %2)
  %cmp2 = icmp sgt i32 %2, 3
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %hres)
  %cmp4 = icmp eq i32 %hres, 1200
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %vres)
  %cmp5 = icmp eq i32 %vres, 900
  %or.cond = and i1 %cmp4, %cmp5
  %spec.select = select i1 %or.cond, i32 49, i32 60
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 60, %entry.cleanup_crit_edge ], [ %spec.select, %if.then3 ], [ %1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @viafb_set_dpa_gfx(i32 noundef %output_interface, ptr nocapture noundef readonly %p_gfx_dpa_setting) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %output_interface to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %output_interface, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 3, label %sw.bb1
    i32 4, label %sw.bb2
    i32 5, label %sw.bb3
    i32 6, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %DVP0 = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 1
  %1 = ptrtoint ptr %DVP0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %DVP0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -106) #11, !srcloc !67
  %3 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i = and i8 %2, 15
  %and15.i = and i8 %3, -16
  %or.i = or i8 %and15.i, %and1225.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i) #11, !srcloc !67
  %DVP0ClockDri_S = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 5
  %4 = ptrtoint ptr %DVP0ClockDri_S to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %DVP0ClockDri_S, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 30) #11, !srcloc !67
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i17 = and i8 %5, 4
  %and15.i18 = and i8 %6, -5
  %or.i19 = or i8 %and15.i18, %and1225.i17
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i19) #11, !srcloc !67
  %DVP0ClockDri_S1 = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 4
  %7 = ptrtoint ptr %DVP0ClockDri_S1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %DVP0ClockDri_S1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #11, !srcloc !67
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i20 = and i8 %8, 16
  %and15.i21 = and i8 %9, -17
  %or.i22 = or i8 %and15.i21, %and1225.i20
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i22) #11, !srcloc !67
  %DVP0DataDri_S = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 3
  %10 = ptrtoint ptr %DVP0DataDri_S to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %DVP0DataDri_S, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 27) #11, !srcloc !67
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i23 = and i8 %11, 2
  %and15.i24 = and i8 %12, -3
  %or.i25 = or i8 %and15.i24, %and1225.i23
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i25) #11, !srcloc !67
  %DVP0DataDri_S1 = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 2
  %13 = ptrtoint ptr %DVP0DataDri_S1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %DVP0DataDri_S1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 42) #11, !srcloc !67
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i26 = and i8 %14, 32
  %and15.i27 = and i8 %15, -33
  %or.i28 = or i8 %and15.i27, %and1225.i26
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i28) #11, !srcloc !67
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %DVP1 = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 6
  %16 = ptrtoint ptr %DVP1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %DVP1, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -101) #11, !srcloc !67
  %18 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i29 = and i8 %17, 15
  %and15.i30 = and i8 %18, -16
  %or.i31 = or i8 %and15.i30, %and1225.i29
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i31) #11, !srcloc !67
  %DVP1Driving = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 7
  %19 = ptrtoint ptr %DVP1Driving to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %DVP1Driving, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873404 to ptr), i8 101) #11, !srcloc !67
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i32 = and i8 %20, 15
  %and15.i33 = and i8 %21, -16
  %or.i34 = or i8 %and15.i33, %and1225.i32
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873403 to ptr), i8 %or.i34) #11, !srcloc !67
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %DFPHigh = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 8
  %22 = ptrtoint ptr %DFPHigh to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %DFPHigh, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -105) #11, !srcloc !67
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i35 = and i8 %23, 15
  %and15.i36 = and i8 %24, -16
  %or.i37 = or i8 %and15.i36, %and1225.i35
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i37) #11, !srcloc !67
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %DFPLow = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 9
  %25 = ptrtoint ptr %DFPLow to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %DFPLow, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #11, !srcloc !67
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i38 = and i8 %26, 15
  %and15.i39 = and i8 %27, -16
  %or.i40 = or i8 %and15.i39, %and1225.i38
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i40) #11, !srcloc !67
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %DFPHigh5 = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 8
  %28 = ptrtoint ptr %DFPHigh5 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %DFPHigh5, align 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -105) #11, !srcloc !67
  %30 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i41 = and i8 %29, 15
  %and15.i42 = and i8 %30, -16
  %or.i43 = or i8 %and15.i42, %and1225.i41
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i43) #11, !srcloc !67
  %DFPLow6 = getelementptr inbounds %struct.GFX_DPA_SETTING, ptr %p_gfx_dpa_setting, i32 0, i32 9
  %31 = ptrtoint ptr %DFPLow6 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %DFPLow6, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !66
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873388 to ptr), i8 -103) #11, !srcloc !67
  %33 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr)) #11, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !70
  tail call void @arm_heavy_mb() #11
  %and1225.i44 = and i8 %32, 15
  %and15.i45 = and i8 %33, -16
  %or.i46 = or i8 %and15.i45, %and1225.i44
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) inttoptr (i32 -18873387 to ptr), i8 %or.i46) #11, !srcloc !67
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #6

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @get_pll_config(ptr nocapture noundef readonly %limits, i32 noundef %size, i32 noundef %clk) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size)
  %cmp183 = icmp sgt i32 %size, 0
  br i1 %cmp183, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end64.for.body_crit_edge, %entry.for.body_crit_edge
  %retval.sroa.5.0188 = phi i8 [ %retval.sroa.5.1, %if.end64.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %retval.sroa.4.0187 = phi i8 [ %retval.sroa.4.1, %if.end64.for.body_crit_edge ], [ 1, %entry.for.body_crit_edge ]
  %retval.sroa.0.0186 = phi i16 [ %retval.sroa.0.1, %if.end64.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.0184 = phi i32 [ %inc91, %if.end64.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pll_limit, ptr %limits, i32 %i.0184
  %rshift = getelementptr %struct.pll_limit, ptr %limits, i32 %i.0184, i32 3
  %0 = ptrtoint ptr %rshift to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rshift, align 1
  %divisor = getelementptr %struct.pll_limit, ptr %limits, i32 %i.0184, i32 2
  %2 = ptrtoint ptr %divisor to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %divisor, align 2
  %conv = zext i8 %3 to i32
  %div = udiv i32 14318180, %conv
  %conv6 = zext i8 %1 to i32
  %shr = lshr i32 %div, %conv6
  %div7 = udiv i32 %clk, %shr
  %conv8 = trunc i32 %div7 to i16
  %pll.sroa.0.0.extract.shift.i.i = and i32 %div7, 65535
  %mul.i.i = mul i32 %div, %pll.sroa.0.0.extract.shift.i.i
  %shr.i = lshr i32 %mul.i.i, %conv6
  %sub = sub i32 %shr.i, %clk
  %4 = tail call i32 @llvm.abs.i32(i32 %sub, i1 false)
  %inc = add i16 %conv8, 1
  %up.sroa.0.0.insert.ext = zext i16 %inc to i32
  %mul.i.i163 = mul i32 %div, %up.sroa.0.0.insert.ext
  %shr.i164 = lshr i32 %mul.i.i163, %conv6
  %sub16 = sub i32 %shr.i164, %clk
  %5 = tail call i32 @llvm.abs.i32(i32 %sub16, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %4)
  %cmp25 = icmp slt i32 %5, %4
  br i1 %cmp25, label %for.body.if.end41_crit_edge, label %if.else

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end41

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %dec = add i16 %conv8, -1
  %down.sroa.0.0.insert.ext = zext i16 %dec to i32
  %mul.i.i169 = mul i32 %div, %down.sroa.0.0.insert.ext
  %shr.i170 = lshr i32 %mul.i.i169, %conv6
  %sub29 = sub i32 %shr.i170, %clk
  %6 = tail call i32 @llvm.abs.i32(i32 %sub29, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %4)
  %cmp38 = icmp slt i32 %6, %4
  %spec.select158 = select i1 %cmp38, i16 %dec, i16 %conv8
  br label %if.end41

if.end41:                                         ; preds = %if.else, %for.body.if.end41_crit_edge
  %cur.sroa.0.0 = phi i16 [ %inc, %for.body.if.end41_crit_edge ], [ %spec.select158, %if.else ]
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %cur.sroa.0.0, i16 %8)
  %cmp46 = icmp ult i16 %cur.sroa.0.0, %8
  br i1 %cmp46, label %if.end41.if.end64_crit_edge, label %if.else52

if.end41.if.end64_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end64

if.else52:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %multiplier_max = getelementptr %struct.pll_limit, ptr %limits, i32 %i.0184, i32 1
  %9 = ptrtoint ptr %multiplier_max to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %multiplier_max, align 2
  %11 = tail call i16 @llvm.umin.i16(i16 %cur.sroa.0.0, i16 %10)
  br label %if.end64

if.end64:                                         ; preds = %if.else52, %if.end41.if.end64_crit_edge
  %cur.sroa.0.1 = phi i16 [ %8, %if.end41.if.end64_crit_edge ], [ %11, %if.else52 ]
  %cur.sroa.0.0.insert.ext125 = zext i16 %cur.sroa.0.1 to i32
  %mul.i.i175 = mul i32 %div, %cur.sroa.0.0.insert.ext125
  %shr.i176 = lshr i32 %mul.i.i175, %conv6
  %sub67 = sub i32 %shr.i176, %clk
  %12 = tail call i32 @llvm.abs.i32(i32 %sub67, i1 false)
  %retval.sroa.5.0.insert.ext155 = zext i8 %retval.sroa.5.0188 to i32
  %retval.sroa.4.0.insert.ext151 = zext i8 %retval.sroa.4.0187 to i32
  %retval.sroa.0.0.insert.ext147 = zext i16 %retval.sroa.0.0186 to i32
  %div.i.i180 = udiv i32 14318180, %retval.sroa.4.0.insert.ext151
  %mul.i.i181 = mul i32 %div.i.i180, %retval.sroa.0.0.insert.ext147
  %shr.i182 = lshr i32 %mul.i.i181, %retval.sroa.5.0.insert.ext155
  %sub78 = sub i32 %shr.i182, %clk
  %13 = tail call i32 @llvm.abs.i32(i32 %sub78, i1 false)
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %13)
  %cmp87 = icmp slt i32 %12, %13
  %retval.sroa.0.1 = select i1 %cmp87, i16 %cur.sroa.0.1, i16 %retval.sroa.0.0186
  %retval.sroa.4.1 = select i1 %cmp87, i8 %3, i8 %retval.sroa.4.0187
  %retval.sroa.5.1 = select i1 %cmp87, i8 %1, i8 %retval.sroa.5.0188
  %inc91 = add nuw nsw i32 %i.0184, 1
  %exitcond.not = icmp eq i32 %inc91, %size
  br i1 %exitcond.not, label %for.end.loopexit, label %if.end64.for.body_crit_edge

if.end64.for.body_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end.loopexit:                                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #13
  %phi.cast = zext i8 %retval.sroa.5.1 to i32
  %phi.cast191 = zext i8 %retval.sroa.4.1 to i32
  %phi.bo = shl nuw nsw i32 %phi.cast191, 8
  %14 = or i32 %phi.bo, %phi.cast
  %phi.cast192 = zext i16 %retval.sroa.0.1 to i32
  %phi.bo193 = shl nuw i32 %phi.cast192, 16
  %15 = or i32 %14, %phi.bo193
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %retval.sroa.0.0.insert.insert = phi i32 [ %15, %for.end.loopexit ], [ 256, %entry.for.end_crit_edge ]
  ret i32 %retval.sroa.0.0.insert.insert
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @viafb_tmds_trasmitter_identify() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_init_dvi_size(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @viafb_lvds_trasmitter_identify() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_init_lcd_size() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_init_lvds_output_interface(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_dvi_disable() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_lcd_disable() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_dvi_enable() local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @viafb_lcd_enable() local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #9

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !13, !15, !16, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/hw.c", i32 882, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @via_set_sync_polarity._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @via_set_sync_polarity._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @clock, !7, !"clock", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/hw.c", i32 450, i32 25}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/hw.c", i32 690, i32 3}
!10 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @set_source_common._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @set_source_common._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/video/fbdev/via/hw.c", i32 709, i32 3}
!15 = !{ptr @set_crt_source._entry, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @set_crt_source._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/video/fbdev/via/hw.c", i32 440, i32 14}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/video/fbdev/via/hw.c", i32 441, i32 14}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/video/fbdev/via/hw.c", i32 442, i32 13}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/video/fbdev/via/hw.c", i32 443, i32 12}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/video/fbdev/via/hw.c", i32 444, i32 13}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/video/fbdev/via/hw.c", i32 445, i32 14}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/video/fbdev/via/hw.c", i32 446, i32 14}
!31 = distinct !{null, !32, !"device_mapping", i1 false, i1 false}
!32 = !{!"../drivers/video/fbdev/via/hw.c", i32 439, i32 34}
!33 = !{ptr @fetch_count_reg, !34, !"fetch_count_reg", i1 false, i1 false}
!34 = !{!"../drivers/video/fbdev/via/hw.c", i32 172, i32 27}
!35 = !{ptr @display_fifo_depth_reg, !36, !"display_fifo_depth_reg", i1 false, i1 false}
!36 = !{!"../drivers/video/fbdev/via/hw.c", i32 142, i32 33}
!37 = !{ptr @fifo_threshold_select_reg, !38, !"fifo_threshold_select_reg", i1 false, i1 false}
!38 = !{!"../drivers/video/fbdev/via/hw.c", i32 150, i32 37}
!39 = !{ptr @fifo_high_threshold_select_reg, !40, !"fifo_high_threshold_select_reg", i1 false, i1 false}
!40 = !{!"../drivers/video/fbdev/via/hw.c", i32 157, i32 42}
!41 = !{ptr @display_queue_expire_num_reg, !42, !"display_queue_expire_num_reg", i1 false, i1 false}
!42 = !{!"../drivers/video/fbdev/via/hw.c", i32 164, i32 40}
!43 = !{ptr @cle266_pll_limits, !44, !"cle266_pll_limits", i1 false, i1 false}
!44 = !{!"../drivers/video/fbdev/via/hw.c", i32 12, i32 25}
!45 = !{ptr @k800_pll_limits, !46, !"k800_pll_limits", i1 false, i1 false}
!46 = !{!"../drivers/video/fbdev/via/hw.c", i32 43, i32 25}
!47 = !{ptr @cx700_pll_limits, !48, !"cx700_pll_limits", i1 false, i1 false}
!48 = !{!"../drivers/video/fbdev/via/hw.c", i32 62, i32 25}
!49 = !{ptr @vx855_pll_limits, !50, !"vx855_pll_limits", i1 false, i1 false}
!50 = !{!"../drivers/video/fbdev/via/hw.c", i32 77, i32 25}
!51 = !{ptr @palLUT_table, !52, !"palLUT_table", i1 false, i1 false}
!52 = !{!"../drivers/video/fbdev/via/hw.c", i32 179, i32 22}
!53 = !{ptr @common_vga, !54, !"common_vga", i1 false, i1 false}
!54 = !{!"../drivers/video/fbdev/via/hw.c", i32 106, i32 22}
!55 = !{ptr @scaling_parameters, !56, !"scaling_parameters", i1 false, i1 false}
!56 = !{!"../drivers/video/fbdev/via/hw.c", i32 89, i32 22}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2154480833}
!67 = !{i64 749008}
!68 = !{i64 749403}
!69 = !{i64 2154481223}
!70 = !{i64 2154481458}
!71 = !{i64 2156351690}
!72 = !{i64 2156352012}
!73 = !{i64 2156352332}
!74 = !{i64 2156352654}
!75 = !{i64 2156352975}
!76 = !{i64 2154482024}
!77 = !{i64 2154482264}
!78 = !{!79}
!79 = distinct !{!79, !80, !"var_to_timing: %agg.result"}
!80 = distinct !{!80, !"var_to_timing"}
!81 = !{i64 2154479251}
!82 = !{i64 2154479641}
!83 = !{i64 2154480017}
!84 = !{i64 2154480340}
!85 = !{i64 2156349997}
!86 = !{i64 2156350321}
!87 = !{i64 2156350645}
!88 = !{i64 2156350969}
!89 = !{i64 2156410961}
!90 = !{i64 2156411174}
!91 = !{i64 2156412356}
!92 = !{i64 2156412833}
!93 = !{i64 2156413043}
!94 = !{i64 2156413376}
!95 = !{i64 2156413767}
!96 = !{i64 2156413980}
