; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/sun4i/sun4i_tcon.c_pt.bc'
source_filename = "../drivers/gpu/drm/sun4i/sun4i_tcon.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+sun4i_tcon_enable_vblank\22, \22a\22\09"
module asm "\09.weak\09__crc_sun4i_tcon_enable_vblank\09\09\09\09"
module asm "\09.long\09__crc_sun4i_tcon_enable_vblank\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_tcon_enable_vblank:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_tcon_enable_vblank\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_tcon_enable_vblank:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sun4i_tcon_mode_set\22, \22a\22\09"
module asm "\09.weak\09__crc_sun4i_tcon_mode_set\09\09\09\09"
module asm "\09.long\09__crc_sun4i_tcon_mode_set\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_tcon_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_tcon_mode_set\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_tcon_mode_set:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+sun4i_tcon_of_table\22, \22a\22\09"
module asm "\09.weak\09__crc_sun4i_tcon_of_table\09\09\09\09"
module asm "\09.long\09__crc_sun4i_tcon_of_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun4i_tcon_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22sun4i_tcon_of_table\22\09\09\09\09\09"
module asm "__kstrtabns_sun4i_tcon_of_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.sun4i_tcon_quirks = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.component_ops = type { ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.sun4i_tcon = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, ptr, ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.85 }
%union.anon.85 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.86, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.86 = type { i32, ptr }
%struct.sun4i_drv = type { %struct.list_head, %struct.list_head, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.sunxi_engine = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.sun4i_crtc = type { %struct.drm_crtc, ptr, ptr, ptr }
%struct.sunxi_engine_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Unknown encoder type, doing nothing...\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%sabling VBLANK interrupt\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"En\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dis\00", [28 x i8] zeroinitializer }, align 32
@__kstrtab_sun4i_tcon_enable_vblank = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_tcon_enable_vblank = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_tcon_enable_vblank = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_tcon_enable_vblank to i32), ptr @__kstrtab_sun4i_tcon_enable_vblank, ptr @__kstrtabns_sun4i_tcon_enable_vblank }, section "___ksymtab+sun4i_tcon_enable_vblank", align 4
@__kstrtab_sun4i_tcon_mode_set = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_tcon_mode_set = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_tcon_mode_set = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_tcon_mode_set to i32), ptr @__kstrtab_sun4i_tcon_mode_set, ptr @__kstrtabns_sun4i_tcon_mode_set }, section "___ksymtab+sun4i_tcon_mode_set", align 4
@sun4i_a10_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, ptr @sun4i_a10_tcon_set_mux, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun5i_a13_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, ptr @sun5i_a13_tcon_set_mux, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun6i_a31_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, ptr @sun6i_tcon_set_mux, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun6i_a31s_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 1, i8 0, i8 0, i8 0, i8 1, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun7i_a20_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, ptr @sun4i_a10_tcon_set_mux, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun7i_a20_tcon0_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 4, ptr @sun4i_a10_tcon_set_mux, ptr @sun4i_tcon_setup_lvds_phy }, [16 x i8] zeroinitializer }, align 32
@sun8i_a33_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 1, ptr null, ptr @sun6i_tcon_setup_lvds_phy }, [16 x i8] zeroinitializer }, align 32
@sun8i_a83t_lcd_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, i8 1, ptr null, ptr @sun6i_tcon_setup_lvds_phy }, [16 x i8] zeroinitializer }, align 32
@sun8i_a83t_tv_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun8i_r40_tv_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 1, i8 0, ptr @sun8i_r40_tcon_tv_set_mux, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun8i_v3s_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 1, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun9i_a80_tcon_lcd_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 1, i8 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 1, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun9i_a80_tcon_tv_quirks = internal constant { %struct.sun4i_tcon_quirks, [16 x i8] } { %struct.sun4i_tcon_quirks { i8 0, i8 1, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@sun4i_tcon_of_table = dso_local constant { [16 x %struct.of_device_id], [768 x i8] } { [16 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31s-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31s_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-tcon0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_tcon0_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-tcon1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a33-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a33_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-tcon-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_lcd_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-tcon-tv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_tv_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-r40-tcon-tv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_r40_tv_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-tcon\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-tcon-lcd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_tcon_lcd_quirks }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-tcon-tv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_tcon_tv_quirks }, %struct.of_device_id zeroinitializer], [768 x i8] zeroinitializer }, align 32
@__kstrtab_sun4i_tcon_of_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun4i_tcon_of_table = external dso_local constant [0 x i8], align 1
@__ksymtab_sun4i_tcon_of_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun4i_tcon_of_table to i32), ptr @__kstrtab_sun4i_tcon_of_table, ptr @__kstrtabns_sun4i_tcon_of_table }, section "___ksymtab+sun4i_tcon_of_table", align 4
@__initcall__kmod_sun4i_tcon__309_1575_sun4i_tcon_platform_driver_init6 = internal global ptr @sun4i_tcon_platform_driver_init, section ".initcall6.init", align 4
@sun4i_tcon_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun4i_tcon_probe, ptr @sun4i_tcon_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.17, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun4i_tcon_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun4i_tcon_platform_driver_exit = internal global ptr @sun4i_tcon_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [67 x i8] c"sun4i_tcon.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [62 x i8] c"sun4i_tcon.description=Allwinner A10 Timing Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [49 x i8] c"sun4i_tcon.file=drivers/gpu/drm/sun4i/sun4i-tcon\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [23 x i8] c"sun4i_tcon.license=GPL\00", section ".modinfo", align 1
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/sun4i/sun4i_tcon.c\00", [61 x i8] zeroinitializer }, align 32
@sun4i_tcon_channel_set_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.4, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014[drm] Unknown channel... doing nothing\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sun4i_tcon_channel_set_status\00", [34 x i8] zeroinitializer }, align 32
@sun4i_tcon_channel_set_status._entry_ptr = internal global ptr @sun4i_tcon_channel_set_status._entry, section ".printk_index", align 4
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Setting horizontal total %d, backporch %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Setting vertical total %d, backporch %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"TCON %d clock delay %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Setting HSYNC %d, VSYNC %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Muxing encoder %s to CRTC %s: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@sun4i_get_tcon0._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 258, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"TCON0 not found, display output muxing may not work\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_get_tcon0\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_get_tcon0._entry_ptr = internal global ptr @sun4i_get_tcon0._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sun4i-tcon\00", [21 x i8] zeroinitializer }, align 32
@sun4i_tcon_ops = internal constant { %struct.component_ops, [24 x i8] } { %struct.component_ops { ptr @sun4i_tcon_bind, ptr @sun4i_tcon_unbind }, [24 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.4, i32 1124, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't find matching engine\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun4i_tcon_bind\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr = internal global ptr @sun4i_tcon_bind._entry, section ".printk_index", align 4
@.str.21 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"lcd\00", [28 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.4, i32 1139, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.24 = internal global ptr @sun4i_tcon_bind._entry.22, section ".printk_index", align 4
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"edp\00", [28 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.19, ptr @.str.4, i32 1146, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get edp reset line\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.28 = internal global ptr @sun4i_tcon_bind._entry.26, section ".printk_index", align 4
@sun4i_tcon_bind._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.19, ptr @.str.4, i32 1152, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't deassert edp reset line\0A\00", [62 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.31 = internal global ptr @sun4i_tcon_bind._entry.29, section ".printk_index", align 4
@sun4i_tcon_bind._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.4, i32 1160, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't deassert our reset line\0A\00", [62 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.34 = internal global ptr @sun4i_tcon_bind._entry.32, section ".printk_index", align 4
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lvds\00", [27 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.4, i32 1174, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.37 = internal global ptr @sun4i_tcon_bind._entry.36, section ".printk_index", align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvds-alt\00", [23 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.19, ptr @.str.4, i32 1196, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't get the LVDS PLL\0A\00", [37 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.41 = internal global ptr @sun4i_tcon_bind._entry.39, section ".printk_index", align 4
@sun4i_tcon_bind._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.19, ptr @.str.4, i32 1206, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Missing LVDS properties, Please upgrade your DT\0A\00", [47 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.44 = internal global ptr @sun4i_tcon_bind._entry.42, section ".printk_index", align 4
@sun4i_tcon_bind._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.19, ptr @.str.4, i32 1207, ptr @.str.14, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"LVDS output disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.47 = internal global ptr @sun4i_tcon_bind._entry.45, section ".printk_index", align 4
@sun4i_tcon_bind._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.19, ptr @.str.4, i32 1218, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't init our TCON clocks\0A\00", [33 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.50 = internal global ptr @sun4i_tcon_bind._entry.48, section ".printk_index", align 4
@sun4i_tcon_bind._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.19, ptr @.str.4, i32 1224, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Couldn't init our TCON regmap\0A\00", [33 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.53 = internal global ptr @sun4i_tcon_bind._entry.51, section ".printk_index", align 4
@sun4i_tcon_bind._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.19, ptr @.str.4, i32 1231, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Couldn't create our TCON dot clock\0A\00", [60 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.56 = internal global ptr @sun4i_tcon_bind._entry.54, section ".printk_index", align 4
@sun4i_tcon_bind._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.19, ptr @.str.4, i32 1238, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't init our TCON interrupts\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.59 = internal global ptr @sun4i_tcon_bind._entry.57, section ".printk_index", align 4
@sun4i_tcon_bind._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.19, ptr @.str.4, i32 1244, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't create our CRTC\0A\00", [38 x i8] zeroinitializer }, align 32
@sun4i_tcon_bind._entry_ptr.62 = internal global ptr @sun4i_tcon_bind._entry.60, section ".printk_index", align 4
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"panel-lvds\00", [21 x i8] zeroinitializer }, align 32
@sun8i_tcon_top_of_table = external dso_local constant [0 x %struct.of_device_id], align 4
@.str.64 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@sun4i_tcon_init_clocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 782, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't get the TCON bus clock\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_tcon_init_clocks\00", [41 x i8] zeroinitializer }, align 32
@sun4i_tcon_init_clocks._entry_ptr = internal global ptr @sun4i_tcon_init_clocks._entry, section ".printk_index", align 4
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcon-ch0\00", [23 x i8] zeroinitializer }, align 32
@sun4i_tcon_init_clocks._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.66, ptr @.str.4, i32 790, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't get the TCON channel 0 clock\0A\00", [57 x i8] zeroinitializer }, align 32
@sun4i_tcon_init_clocks._entry_ptr.70 = internal global ptr @sun4i_tcon_init_clocks._entry.68, section ".printk_index", align 4
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tcon-ch1\00", [23 x i8] zeroinitializer }, align 32
@sun4i_tcon_init_clocks._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.66, ptr @.str.4, i32 799, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't get the TCON channel 1 clock\0A\00", [57 x i8] zeroinitializer }, align 32
@sun4i_tcon_init_clocks._entry_ptr.74 = internal global ptr @sun4i_tcon_init_clocks._entry.72, section ".printk_index", align 4
@sun4i_tcon_init_regmap._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sun4i_tcon_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 2048, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"sun4i_tcon:851:(&sun4i_tcon_regmap_config)->lock\00", [47 x i8] zeroinitializer }, align 32
@sun4i_tcon_init_regmap._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.77, ptr @.str.4, i32 853, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Couldn't create the TCON regmap\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_tcon_init_regmap\00", [41 x i8] zeroinitializer }, align 32
@sun4i_tcon_init_regmap._entry_ptr = internal global ptr @sun4i_tcon_init_regmap._entry, section ".printk_index", align 4
@sun4i_tcon_init_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.79, ptr @.str.4, i32 826, ptr @.str.20, ptr @.str.15 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Couldn't request the IRQ\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun4i_tcon_init_irq\00", [44 x i8] zeroinitializer }, align 32
@sun4i_tcon_init_irq._entry_ptr = internal global ptr @sun4i_tcon_init_irq._entry, section ".printk_index", align 4
@switch.table.sun4i_tcon_mode_set = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 24, i32 24, i32 18, i32 16], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.80 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 2, i64 3, i64 4, i64 6]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 32, i64 4105, i64 4112, i64 4119]
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 208, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 229, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"sun4i_a10_quirks\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1456, i32 39 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"sun5i_a13_quirks\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1463, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"sun6i_a31_quirks\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1470, i32 39 }
@___asan_gen_.103 = private unnamed_addr constant [18 x i8] c"sun6i_a31s_quirks\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1479, i32 39 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"sun7i_a20_quirks\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1496, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"sun7i_a20_tcon0_quirks\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1486, i32 39 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"sun8i_a33_quirks\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1504, i32 39 }
@___asan_gen_.115 = private unnamed_addr constant [22 x i8] c"sun8i_a83t_lcd_quirks\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1512, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"sun8i_a83t_tv_quirks\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1519, i32 39 }
@___asan_gen_.121 = private unnamed_addr constant [20 x i8] c"sun8i_r40_tv_quirks\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1523, i32 39 }
@___asan_gen_.124 = private unnamed_addr constant [17 x i8] c"sun8i_v3s_quirks\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1529, i32 39 }
@___asan_gen_.127 = private unnamed_addr constant [26 x i8] c"sun9i_a80_tcon_lcd_quirks\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1534, i32 39 }
@___asan_gen_.130 = private unnamed_addr constant [25 x i8] c"sun9i_a80_tcon_tv_quirks\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1540, i32 39 }
@___asan_gen_.133 = private unnamed_addr constant [20 x i8] c"sun4i_tcon_of_table\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1546, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant [27 x i8] c"sun4i_tcon_platform_driver\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1567, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 90, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 104, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 456, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 469, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 288, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 557, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 271, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 257, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 973, i32 38 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1571, i32 12 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"sun4i_tcon_ops\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1313, i32 35 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1124, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1137, i32 46 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1139, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1144, i32 49 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1146, i32 4 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1152, i32 4 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1160, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1172, i32 57 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1174, i32 4 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1191, i32 39 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1196, i32 6 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1206, i32 4 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1207, i32 4 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1218, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1224, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1231, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1238, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1244, i32 3 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 1256, i32 39 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 780, i32 32 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 782, i32 3 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 788, i32 35 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 790, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 797, i32 35 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 799, i32 4 }
@___asan_gen_.322 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [25 x i8] c"sun4i_tcon_regmap_config\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 833, i32 35 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 850, i32 15 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 853, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.346 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.347 = private constant [38 x i8] c"../drivers/gpu/drm/sun4i/sun4i_tcon.c\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 826, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant [33 x i8] c"switch.table.sun4i_tcon_mode_set\00", align 1
@llvm.compiler.used = appending global [121 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_sun4i_tcon_platform_driver_exit, ptr @__initcall__kmod_sun4i_tcon__309_1575_sun4i_tcon_platform_driver_init6, ptr @__ksymtab_sun4i_tcon_enable_vblank, ptr @__ksymtab_sun4i_tcon_mode_set, ptr @__ksymtab_sun4i_tcon_of_table, ptr @sun4i_get_tcon0._entry, ptr @sun4i_get_tcon0._entry_ptr, ptr @sun4i_tcon_bind._entry, ptr @sun4i_tcon_bind._entry.22, ptr @sun4i_tcon_bind._entry.26, ptr @sun4i_tcon_bind._entry.29, ptr @sun4i_tcon_bind._entry.32, ptr @sun4i_tcon_bind._entry.36, ptr @sun4i_tcon_bind._entry.39, ptr @sun4i_tcon_bind._entry.42, ptr @sun4i_tcon_bind._entry.45, ptr @sun4i_tcon_bind._entry.48, ptr @sun4i_tcon_bind._entry.51, ptr @sun4i_tcon_bind._entry.54, ptr @sun4i_tcon_bind._entry.57, ptr @sun4i_tcon_bind._entry.60, ptr @sun4i_tcon_bind._entry_ptr, ptr @sun4i_tcon_bind._entry_ptr.24, ptr @sun4i_tcon_bind._entry_ptr.28, ptr @sun4i_tcon_bind._entry_ptr.31, ptr @sun4i_tcon_bind._entry_ptr.34, ptr @sun4i_tcon_bind._entry_ptr.37, ptr @sun4i_tcon_bind._entry_ptr.41, ptr @sun4i_tcon_bind._entry_ptr.44, ptr @sun4i_tcon_bind._entry_ptr.47, ptr @sun4i_tcon_bind._entry_ptr.50, ptr @sun4i_tcon_bind._entry_ptr.53, ptr @sun4i_tcon_bind._entry_ptr.56, ptr @sun4i_tcon_bind._entry_ptr.59, ptr @sun4i_tcon_bind._entry_ptr.62, ptr @sun4i_tcon_channel_set_status._entry, ptr @sun4i_tcon_channel_set_status._entry_ptr, ptr @sun4i_tcon_init_clocks._entry, ptr @sun4i_tcon_init_clocks._entry.68, ptr @sun4i_tcon_init_clocks._entry.72, ptr @sun4i_tcon_init_clocks._entry_ptr, ptr @sun4i_tcon_init_clocks._entry_ptr.70, ptr @sun4i_tcon_init_clocks._entry_ptr.74, ptr @sun4i_tcon_init_irq._entry, ptr @sun4i_tcon_init_irq._entry_ptr, ptr @sun4i_tcon_init_regmap._entry, ptr @sun4i_tcon_init_regmap._entry_ptr, ptr @sun4i_tcon_platform_driver_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sun4i_a10_quirks, ptr @sun5i_a13_quirks, ptr @sun6i_a31_quirks, ptr @sun6i_a31s_quirks, ptr @sun7i_a20_quirks, ptr @sun7i_a20_tcon0_quirks, ptr @sun8i_a33_quirks, ptr @sun8i_a83t_lcd_quirks, ptr @sun8i_a83t_tv_quirks, ptr @sun8i_r40_tv_quirks, ptr @sun8i_v3s_quirks, ptr @sun9i_a80_tcon_lcd_quirks, ptr @sun9i_a80_tcon_tv_quirks, ptr @sun4i_tcon_of_table, ptr @sun4i_tcon_platform_driver, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @sun4i_tcon_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.73, ptr @sun4i_tcon_init_regmap._key, ptr @sun4i_tcon_regmap_config, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @switch.table.sun4i_tcon_mode_set], section "llvm.metadata"
@0 = internal global [90 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_a13_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31s_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun7i_a20_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun7i_a20_tcon0_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a33_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_lcd_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_tv_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_r40_tv_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_v3s_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_tcon_lcd_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun9i_a80_tcon_tv_quirks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_of_table to i32), i32 3136, i32 3904, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_channel_set_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_get_tcon0._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_bind._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_init_clocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_init_clocks._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_init_clocks._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_init_regmap._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_init_regmap._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_tcon_init_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.sun4i_tcon_mode_set to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun4i_tcon_set_status(ptr noundef %tcon, ptr noundef %encoder, i1 noundef zeroext %enabled) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %sw.default [
    i32 3, label %sw.epilog
    i32 6, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge34
    i32 2, label %entry.sw.bb2_crit_edge
    i32 4, label %entry.sw.bb2_crit_edge35
  ]

entry.sw.bb2_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.sw.bb2_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb2

entry.if.end_crit_edge34:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

sw.bb2:                                           ; preds = %entry.sw.bb2_crit_edge, %entry.sw.bb2_crit_edge35
  br label %if.end

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  br i1 %enabled, label %sw.epilog.if.end_crit_edge, label %if.then

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %regs.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %call.i12.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 132, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge, %sw.bb2, %entry.if.end_crit_edge, %entry.if.end_crit_edge34
  %is_lvds.1.off0.not32 = phi i1 [ false, %sw.epilog.if.end_crit_edge ], [ false, %if.then ], [ true, %sw.bb2 ], [ true, %entry.if.end_crit_edge ], [ true, %entry.if.end_crit_edge34 ]
  %switch = phi i1 [ true, %sw.epilog.if.end_crit_edge ], [ true, %if.then ], [ false, %sw.bb2 ], [ true, %entry.if.end_crit_edge ], [ true, %entry.if.end_crit_edge34 ]
  %regs = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %cond = select i1 %enabled, i32 -2147483648, i32 0
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %6, i32 noundef 0, i32 noundef -2147483648, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %enabled.not = xor i1 %enabled, true
  %brmerge22 = or i1 %is_lvds.1.off0.not32, %enabled.not
  br i1 %brmerge22, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then8:                                         ; preds = %if.end
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 132, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %quirks.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 12
  %9 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %quirks.i, align 4
  %setup_lvds_phy.i = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %setup_lvds_phy.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %setup_lvds_phy.i, align 4
  %tobool1.not.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i, label %if.then8.if.end9_crit_edge, label %if.then2.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then2.i:                                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %12(ptr noundef %tcon, ptr noundef %encoder) #6
  br label %if.end9

if.end9:                                          ; preds = %if.then2.i, %if.then8.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %quirks.i24 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 12
  %13 = ptrtoint ptr %quirks.i24 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %quirks.i24, align 4
  br i1 %switch, label %sw.bb.i, label %sw.bb22.i

sw.bb.i:                                          ; preds = %if.end9
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %do.end.i, label %sw.bb.i.if.end.i_crit_edge, !prof !193

sw.bb.i.if.end.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 90, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb.i.if.end.i_crit_edge
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %call.i.i26 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef 64, i32 noundef -2147483648, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %dclk.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 7
  br label %sw.epilog.i

sw.bb22.i:                                        ; preds = %if.end9
  %has_channel_1.i = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %has_channel_1.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %has_channel_1.i, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool25.not.i = icmp eq i8 %20, 0
  br i1 %tobool25.not.i, label %do.end43.i, label %sw.bb22.i.if.end49.i_crit_edge, !prof !193

sw.bb22.i.if.end49.i_crit_edge:                   ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49.i

do.end43.i:                                       ; preds = %sw.bb22.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 97, i32 noundef 9, ptr noundef null) #6
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end43.i, %sw.bb22.i.if.end49.i_crit_edge
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regs, align 4
  %call.i83.i = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 144, i32 noundef -2147483648, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %sclk1.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end49.i, %if.end.i
  %clk.0.in.i = phi ptr [ %sclk1.i, %if.end49.i ], [ %dclk.i, %if.end.i ]
  %23 = ptrtoint ptr %clk.0.in.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %clk.0.i = load ptr, ptr %clk.0.in.i, align 4
  br i1 %enabled, label %if.then67.i, label %if.else.i

if.then67.i:                                      ; preds = %sw.epilog.i
  %call.i84.i = tail call i32 @clk_prepare(ptr noundef %clk.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84.i)
  %tobool.not.i.i = icmp eq i32 %call.i84.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then67.i.clk_prepare_enable.exit.i_crit_edge

if.then67.i.clk_prepare_enable.exit.i_crit_edge:  ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i

if.end.i.i:                                       ; preds = %if.then67.i
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %clk.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i.clk_prepare_enable.exit.i_crit_edge:   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %clk.0.i) #6
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i.clk_prepare_enable.exit.i_crit_edge, %if.then67.i.clk_prepare_enable.exit.i_crit_edge
  %call69.i = tail call i32 @clk_rate_exclusive_get(ptr noundef %clk.0.i) #6
  br label %cleanup

if.else.i:                                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_rate_exclusive_put(ptr noundef %clk.0.i) #6
  tail call void @clk_disable(ptr noundef %clk.0.i) #6
  tail call void @clk_unprepare(ptr noundef %clk.0.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %clk_prepare_enable.exit.i, %sw.default
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun4i_tcon_enable_vblank(ptr nocapture noundef readonly %tcon, i1 noundef zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %enable, ptr @.str.2, ptr @.str.3
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, ptr noundef nonnull %cond) #6
  %spec.select = select i1 %enable, i32 -939524096, i32 0
  %regs = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef -939524096, i32 noundef %spec.select, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun4i_tcon_mode_set(ptr noundef %tcon, ptr noundef %encoder, ptr noundef readonly %mode) #0 align 64 {
entry:
  %iter.i.i45 = alloca %struct.drm_connector_list_iter, align 4
  %iter.i.i.i = alloca %struct.drm_connector_list_iter, align 4
  %iter.i.i17 = alloca %struct.drm_connector_list_iter, align 4
  %iter.i.i = alloca %struct.drm_connector_list_iter, align 4
  %tcon_div.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_type, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %1, label %sw.default [
    i32 6, label %sw.bb
    i32 3, label %sw.bb1
    i32 0, label %sw.bb2
    i32 4, label %entry.sw.bb3_crit_edge
    i32 2, label %entry.sw.bb3_crit_edge141
  ]

entry.sw.bb3_crit_edge141:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

entry.sw.bb3_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb3

sw.bb:                                            ; preds = %entry
  %device1.i = getelementptr i8, ptr %encoder, i32 116
  %3 = ptrtoint ptr %device1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device1.i, align 4
  %format.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %format.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %7 = icmp ult i32 %6, 4
  br i1 %7, label %switch.lookup, label %sw.bb.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge

sw.bb.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge: ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %mipi_dsi_pixel_format_to_bpp.exit.i

switch.lookup:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.sun4i_tcon_mode_set, i32 0, i32 %6
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %mipi_dsi_pixel_format_to_bpp.exit.i

mipi_dsi_pixel_format_to_bpp.exit.i:              ; preds = %switch.lookup, %sw.bb.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 234, %sw.bb.mipi_dsi_pixel_format_to_bpp.exit.i_crit_edge ]
  %lanes3.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %4, i32 0, i32 4
  %9 = ptrtoint ptr %lanes3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %lanes3.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcon_div.i) #6
  %11 = ptrtoint ptr %tcon_div.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %tcon_div.i, align 4, !annotation !194
  %dclk_min_div.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 9
  %12 = ptrtoint ptr %dclk_min_div.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 4, ptr %dclk_min_div.i, align 1
  %dclk_max_div.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 8
  %13 = ptrtoint ptr %dclk_max_div.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 4, ptr %dclk_max_div.i, align 4
  %dclk.i.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 7
  %14 = ptrtoint ptr %dclk.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dclk.i.i, align 4
  %crtc_clock.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %16 = ptrtoint ptr %crtc_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %crtc_clock.i.i, align 4
  %mul.i.i = mul i32 %17, 1000
  %call.i.i = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef %mul.i.i) #6
  %regs.i.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %18 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs.i.i, align 4
  %crtc_hdisplay.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %20 = ptrtoint ptr %crtc_hdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %crtc_hdisplay.i.i, align 4
  %22 = add i16 %21, 4095
  %23 = and i16 %22, 4095
  %and.i.i = zext i16 %23 to i32
  %shl.i.i = shl nuw nsw i32 %and.i.i, 16
  %crtc_vdisplay.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %24 = ptrtoint ptr %crtc_vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %crtc_vdisplay.i.i, align 2
  %26 = add i16 %25, 4095
  %27 = and i16 %26, 4095
  %and3.i.i = zext i16 %27 to i32
  %or.i.i = or i32 %shl.i.i, %and3.i.i
  %call4.i.i = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 72, i32 noundef %or.i.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i.i) #6
  %28 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i.i, align 4, !annotation !194
  %29 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -1 to ptr), ptr %29, align 4, !annotation !194
  %31 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %encoder, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %32, ptr noundef nonnull %iter.i.i) #6
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %mipi_dsi_pixel_format_to_bpp.exit.i
  %call.i77.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i77.i, null
  br i1 %tobool.not.i.i, label %while.cond.i.i.sun4i_tcon0_mode_set_cpu.exit_crit_edge, label %while.body.i.i

while.cond.i.i.sun4i_tcon0_mode_set_cpu.exit_crit_edge: ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon0_mode_set_cpu.exit

while.body.i.i:                                   ; preds = %while.cond.i.i
  %encoder1.i.i = getelementptr inbounds %struct.drm_connector, ptr %call.i77.i, i32 0, i32 41
  %33 = ptrtoint ptr %encoder1.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %encoder1.i.i, align 4
  %cmp.i.i = icmp eq ptr %34, %encoder
  br i1 %cmp.i.i, label %while.body.i.i.sun4i_tcon0_mode_set_cpu.exit_crit_edge, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

while.body.i.i.sun4i_tcon0_mode_set_cpu.exit_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon0_mode_set_cpu.exit

sun4i_tcon0_mode_set_cpu.exit:                    ; preds = %while.body.i.i.sun4i_tcon0_mode_set_cpu.exit_crit_edge, %while.cond.i.i.sun4i_tcon0_mode_set_cpu.exit_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i) #6
  call fastcc void @sun4i_tcon0_mode_set_dithering(ptr noundef %tcon, ptr noundef %call.i77.i) #6
  %35 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs.i.i, align 4
  %call.i78.i = call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 64, i32 noundef 50331648, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %37 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs.i.i, align 4
  %call8.i = call i32 @regmap_write(ptr noundef %38, i32 noundef 248, i32 noundef 8) #6
  %39 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regs.i.i, align 4
  %call10.i = call i32 @regmap_write(ptr noundef %40, i32 noundef 96, i32 noundef 268500997) #6
  %41 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs.i.i, align 4
  %call12.i = call i32 @regmap_read(ptr noundef %42, i32 noundef 68, ptr noundef nonnull %tcon_div.i) #6
  %43 = ptrtoint ptr %tcon_div.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %tcon_div.i, align 4
  %and.i = and i32 %44, 127
  store i32 %and.i, ptr %tcon_div.i, align 4
  %htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %45 = ptrtoint ptr %htotal.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %htotal.i, align 2
  %conv13.i = zext i16 %46 to i32
  %mul.i = mul nuw nsw i32 %retval.0.i.i, %conv13.i
  %conv15.i = and i32 %10, 255
  %mul16.i = mul nuw nsw i32 %and.i, %conv15.i
  %div.i = udiv i32 %mul.i, %mul16.i
  %hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 1
  %47 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %hdisplay.i, align 4
  %conv17.i = zext i16 %48 to i32
  %49 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs.i.i, align 4
  %51 = add nuw nsw i32 %div.i, 4055
  %sub19.i = sub nsw i32 %51, %conv17.i
  %and20.i = shl i32 %sub19.i, 16
  %shl.i = and i32 %and20.i, 268369920
  %sub23.i = add nuw nsw i32 %conv17.i, 4095
  %and24.i = and i32 %sub23.i, 4095
  %or.i = or i32 %shl.i, %and24.i
  %call25.i = call i32 @regmap_write(ptr noundef %50, i32 noundef 352, i32 noundef %or.i) #6
  %52 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs.i.i, align 4
  %vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %54 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %vdisplay.i, align 2
  %56 = add i16 %55, -1
  %and29.i = zext i16 %56 to i32
  %call30.i = call i32 @regmap_write(ptr noundef %53, i32 noundef 356, i32 noundef %and29.i) #6
  %crtc_vtotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %57 = ptrtoint ptr %crtc_vtotal.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %crtc_vtotal.i, align 4
  %conv31.i = zext i16 %58 to i32
  %59 = ptrtoint ptr %crtc_vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %crtc_vdisplay.i.i, align 2
  %conv32.i = zext i16 %60 to i32
  %sub33.i = add nsw i32 %conv31.i, -11
  %sub35.i = sub nsw i32 %sub33.i, %conv32.i
  %crtc_htotal.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %61 = ptrtoint ptr %crtc_htotal.i to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %crtc_htotal.i, align 2
  %conv36.i = zext i16 %62 to i32
  %mul37.i = mul nuw nsw i32 %conv36.i, 149
  %mul38.i = mul i32 %mul37.i, %sub35.i
  %63 = ptrtoint ptr %crtc_clock.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %crtc_clock.i.i, align 4
  %div39.i = sdiv i32 %64, 1000
  %div40.i = udiv i32 %mul38.i, %div39.i
  %65 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %regs.i.i, align 4
  %67 = shl i32 %div40.i, 13
  %shl44.i = and i32 %67, -65536
  %or45.i = or i32 %shl44.i, 10
  %call46.i = call i32 @regmap_write(ptr noundef %66, i32 noundef 360, i32 noundef %or45.i) #6
  %68 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %regs.i.i, align 4
  %call48.i = call i32 @regmap_write(ptr noundef %69, i32 noundef 496, i32 noundef 196608003) #6
  %70 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regs.i.i, align 4
  %call50.i = call i32 @regmap_write(ptr noundef %71, i32 noundef 140, i32 noundef -536870912) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcon_div.i) #6
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %quirks.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 12
  %72 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %quirks.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i, label %do.end.i, label %sw.bb1.if.end.i_crit_edge, !prof !193

sw.bb1.if.end.i_crit_edge:                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 436, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb1.if.end.i_crit_edge
  %dclk_min_div.i18 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 9
  %76 = ptrtoint ptr %dclk_min_div.i18 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 7, ptr %dclk_min_div.i18, align 1
  %dclk_max_div.i19 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 8
  %77 = ptrtoint ptr %dclk_max_div.i19 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 7, ptr %dclk_max_div.i19, align 4
  %dclk.i.i20 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 7
  %78 = ptrtoint ptr %dclk.i.i20 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dclk.i.i20, align 4
  %crtc_clock.i.i21 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %80 = ptrtoint ptr %crtc_clock.i.i21 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %crtc_clock.i.i21, align 4
  %mul.i.i22 = mul i32 %81, 1000
  %call.i.i23 = tail call i32 @clk_set_rate(ptr noundef %79, i32 noundef %mul.i.i22) #6
  %regs.i.i24 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %82 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %regs.i.i24, align 4
  %crtc_hdisplay.i.i25 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %84 = ptrtoint ptr %crtc_hdisplay.i.i25 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %crtc_hdisplay.i.i25, align 4
  %86 = add i16 %85, 4095
  %87 = and i16 %86, 4095
  %and.i.i26 = zext i16 %87 to i32
  %shl.i.i27 = shl nuw nsw i32 %and.i.i26, 16
  %crtc_vdisplay.i.i28 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %88 = ptrtoint ptr %crtc_vdisplay.i.i28 to i32
  call void @__asan_load2_noabort(i32 %88)
  %89 = load i16, ptr %crtc_vdisplay.i.i28, align 2
  %90 = add i16 %89, 4095
  %91 = and i16 %90, 4095
  %and3.i.i29 = zext i16 %91 to i32
  %or.i.i30 = or i32 %shl.i.i27, %and3.i.i29
  %call4.i.i31 = tail call i32 @regmap_write(ptr noundef %83, i32 noundef 72, i32 noundef %or.i.i30) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i.i17) #6
  %92 = ptrtoint ptr %iter.i.i17 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i.i17, align 4, !annotation !194
  %93 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i.i17, i32 0, i32 1
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr inttoptr (i32 -1 to ptr), ptr %93, align 4, !annotation !194
  %95 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %encoder, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %96, ptr noundef nonnull %iter.i.i17) #6
  br label %while.cond.i.i33

while.cond.i.i33:                                 ; preds = %while.body.i.i36.while.cond.i.i33_crit_edge, %if.end.i
  %call.i106.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i.i17) #6
  %tobool.not.i.i32 = icmp eq ptr %call.i106.i, null
  br i1 %tobool.not.i.i32, label %while.cond.i.i33.sun4i_tcon_get_connector.exit.i_crit_edge, label %while.body.i.i36

while.cond.i.i33.sun4i_tcon_get_connector.exit.i_crit_edge: ; preds = %while.cond.i.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_connector.exit.i

while.body.i.i36:                                 ; preds = %while.cond.i.i33
  %encoder1.i.i34 = getelementptr inbounds %struct.drm_connector, ptr %call.i106.i, i32 0, i32 41
  %97 = ptrtoint ptr %encoder1.i.i34 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %encoder1.i.i34, align 4
  %cmp.i.i35 = icmp eq ptr %98, %encoder
  br i1 %cmp.i.i35, label %while.body.i.i36.sun4i_tcon_get_connector.exit.i_crit_edge, label %while.body.i.i36.while.cond.i.i33_crit_edge

while.body.i.i36.while.cond.i.i33_crit_edge:      ; preds = %while.body.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i33

while.body.i.i36.sun4i_tcon_get_connector.exit.i_crit_edge: ; preds = %while.body.i.i36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_connector.exit.i

sun4i_tcon_get_connector.exit.i:                  ; preds = %while.body.i.i36.sun4i_tcon_get_connector.exit.i_crit_edge, %while.cond.i.i33.sun4i_tcon_get_connector.exit.i_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i17) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i17) #6
  call fastcc void @sun4i_tcon0_mode_set_dithering(ptr noundef %tcon, ptr noundef %call.i106.i) #6
  %vtotal.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %99 = ptrtoint ptr %vtotal.i.i to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %vtotal.i.i, align 4
  %conv.i.i = zext i16 %100 to i32
  %vdisplay.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %101 = ptrtoint ptr %vdisplay.i.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %vdisplay.i.i, align 2
  %conv1.i.i = zext i16 %102 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %conv1.i.i
  %flags.i.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %103 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags.i.i, align 4
  %and.i107.i = and i32 %104, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i107.i)
  %tobool.not.i108.i = icmp eq i32 %and.i107.i, 0
  %div.i.i = sdiv i32 %sub.i.i, 2
  %spec.select.i.i = select i1 %tobool.not.i108.i, i32 %sub.i.i, i32 %div.i.i
  %105 = call i32 @llvm.smin.i32(i32 %spec.select.i.i, i32 30) #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef %105) #6
  %106 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %regs.i.i24, align 4
  %conv22.i = shl nsw i32 %105, 4
  %and.i37 = and i32 %conv22.i, 496
  %call.i109.i = call i32 @regmap_update_bits_base(ptr noundef %107, i32 noundef 64, i32 noundef 496, i32 noundef %and.i37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %crtc_htotal.i38 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %108 = ptrtoint ptr %crtc_htotal.i38 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %crtc_htotal.i38, align 2
  %conv24.i = zext i16 %109 to i32
  %crtc_hsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %110 = ptrtoint ptr %crtc_hsync_start.i to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %crtc_hsync_start.i, align 2
  %conv25.i = zext i16 %111 to i32
  %sub.i = sub nsw i32 %conv24.i, %conv25.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %conv24.i, i32 noundef %sub.i) #6
  %112 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %regs.i.i24, align 4
  %htotal.i39 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %114 = ptrtoint ptr %htotal.i39 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %htotal.i39, align 2
  %116 = add i16 %115, 8191
  %117 = and i16 %116, 8191
  %and31.i = zext i16 %117 to i32
  %shl32.i = shl nuw nsw i32 %and31.i, 16
  %sub33.i40 = add nsw i32 %sub.i, 4095
  %and34.i = and i32 %sub33.i40, 4095
  %or.i41 = or i32 %shl32.i, %and34.i
  %call35.i = call i32 @regmap_write(ptr noundef %113, i32 noundef 76, i32 noundef %or.i41) #6
  %crtc_vtotal.i42 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %118 = ptrtoint ptr %crtc_vtotal.i42 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %crtc_vtotal.i42, align 4
  %conv36.i43 = zext i16 %119 to i32
  %crtc_vsync_start.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %120 = ptrtoint ptr %crtc_vsync_start.i to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %crtc_vsync_start.i, align 4
  %conv37.i = zext i16 %121 to i32
  %sub38.i = sub nsw i32 %conv36.i43, %conv37.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %conv36.i43, i32 noundef %sub38.i) #6
  %122 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %regs.i.i24, align 4
  %124 = ptrtoint ptr %crtc_vtotal.i42 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %crtc_vtotal.i42, align 4
  %conv43.i = zext i16 %125 to i32
  %mul.i44 = shl i32 %conv43.i, 17
  %and44.i = and i32 %mul.i44, 536739840
  %sub46.i = add nsw i32 %sub38.i, 4095
  %and47.i = and i32 %sub46.i, 4095
  %or48.i = or i32 %and44.i, %and47.i
  %call49.i = call i32 @regmap_write(ptr noundef %123, i32 noundef 80, i32 noundef %or48.i) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i.i.i) #6
  %126 = ptrtoint ptr %iter.i.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i.i.i, align 4, !annotation !194
  %127 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i.i.i, i32 0, i32 1
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr inttoptr (i32 -1 to ptr), ptr %127, align 4, !annotation !194
  %129 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %encoder, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %130, ptr noundef nonnull %iter.i.i.i) #6
  br label %while.cond.i.i.i

while.cond.i.i.i:                                 ; preds = %while.body.i.i.i.while.cond.i.i.i_crit_edge, %sun4i_tcon_get_connector.exit.i
  %call.i.i.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i.i.i) #6
  %tobool.not.i.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i.i, label %sun4i_tcon_get_connector.exit.thread.i.i, label %while.body.i.i.i

sun4i_tcon_get_connector.exit.thread.i.i:         ; preds = %while.cond.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i.i) #6
  br label %sun4i_tcon_get_pixel_depth.exit.thread.i

while.body.i.i.i:                                 ; preds = %while.cond.i.i.i
  %encoder1.i.i.i = getelementptr inbounds %struct.drm_connector, ptr %call.i.i.i, i32 0, i32 41
  %131 = ptrtoint ptr %encoder1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %encoder1.i.i.i, align 4
  %cmp.i.i.i = icmp eq ptr %132, %encoder
  br i1 %cmp.i.i.i, label %if.end.i.i, label %while.body.i.i.i.while.cond.i.i.i_crit_edge

while.body.i.i.i.while.cond.i.i.i_crit_edge:      ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i.i

if.end.i.i:                                       ; preds = %while.body.i.i.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i.i) #6
  %num_bus_formats.i.i = getelementptr inbounds %struct.drm_connector, ptr %call.i.i.i, i32 0, i32 20, i32 7
  %133 = ptrtoint ptr %num_bus_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %num_bus_formats.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %134)
  %cmp.not.i.i = icmp eq i32 %134, 1
  br i1 %cmp.not.i.i, label %if.end2.i.i, label %if.end.i.i.sun4i_tcon_get_pixel_depth.exit.thread.i_crit_edge

if.end.i.i.sun4i_tcon_get_pixel_depth.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_pixel_depth.exit.thread.i

if.end2.i.i:                                      ; preds = %if.end.i.i
  %bus_formats.i.i = getelementptr inbounds %struct.drm_connector, ptr %call.i.i.i, i32 0, i32 20, i32 6
  %135 = ptrtoint ptr %bus_formats.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %bus_formats.i.i, align 8
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %136, align 4
  %.off.i = add i32 %138, -4113
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off.i)
  %switch.i = icmp ult i32 %.off.i, 2
  br i1 %switch.i, label %if.end2.i.i.sun4i_tcon0_mode_set_lvds.exit_crit_edge, label %if.end2.i.i.sun4i_tcon_get_pixel_depth.exit.thread.i_crit_edge

if.end2.i.i.sun4i_tcon_get_pixel_depth.exit.thread.i_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_pixel_depth.exit.thread.i

if.end2.i.i.sun4i_tcon0_mode_set_lvds.exit_crit_edge: ; preds = %if.end2.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon0_mode_set_lvds.exit

sun4i_tcon_get_pixel_depth.exit.thread.i:         ; preds = %if.end2.i.i.sun4i_tcon_get_pixel_depth.exit.thread.i_crit_edge, %if.end.i.i.sun4i_tcon_get_pixel_depth.exit.thread.i_crit_edge, %sun4i_tcon_get_connector.exit.thread.i.i
  br label %sun4i_tcon0_mode_set_lvds.exit

sun4i_tcon0_mode_set_lvds.exit:                   ; preds = %sun4i_tcon_get_pixel_depth.exit.thread.i, %if.end2.i.i.sun4i_tcon0_mode_set_lvds.exit_crit_edge
  %139 = phi i32 [ 68157440, %sun4i_tcon_get_pixel_depth.exit.thread.i ], [ 1048576, %if.end2.i.i.sun4i_tcon0_mode_set_lvds.exit_crit_edge ]
  %140 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %regs.i.i24, align 4
  %call57.i = call i32 @regmap_write(ptr noundef %141, i32 noundef 132, i32 noundef %139) #6
  %142 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %flags.i.i, align 4
  %and58.i = shl i32 %143, 25
  %144 = and i32 %and58.i, 33554432
  %and64.i = shl i32 %143, 22
  %145 = and i32 %and64.i, 16777216
  %146 = or i32 %144, %145
  %147 = xor i32 %146, 50331648
  %148 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %regs.i.i24, align 4
  %call70.i = call i32 @regmap_write(ptr noundef %149, i32 noundef 136, i32 noundef %147) #6
  %150 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %regs.i.i24, align 4
  %call.i110.i = call i32 @regmap_update_bits_base(ptr noundef %151, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %152 = ptrtoint ptr %regs.i.i24 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %regs.i.i24, align 4
  %call74.i = call i32 @regmap_write(ptr noundef %153, i32 noundef 140, i32 noundef -536870912) #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i.i45) #6
  %154 = ptrtoint ptr %iter.i.i45 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i.i45, align 4, !annotation !194
  %155 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i.i45, i32 0, i32 1
  %156 = ptrtoint ptr %155 to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr inttoptr (i32 -1 to ptr), ptr %155, align 4, !annotation !194
  %157 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %encoder, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %158, ptr noundef nonnull %iter.i.i45) #6
  br label %while.cond.i.i48

while.cond.i.i48:                                 ; preds = %while.body.i.i51.while.cond.i.i48_crit_edge, %sw.bb2
  %call.i.i46 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i.i45) #6
  %tobool.not.i.i47 = icmp eq ptr %call.i.i46, null
  br i1 %tobool.not.i.i47, label %while.cond.i.i48.sun4i_tcon_get_connector.exit.i54_crit_edge, label %while.body.i.i51

while.cond.i.i48.sun4i_tcon_get_connector.exit.i54_crit_edge: ; preds = %while.cond.i.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_connector.exit.i54

while.body.i.i51:                                 ; preds = %while.cond.i.i48
  %encoder1.i.i49 = getelementptr inbounds %struct.drm_connector, ptr %call.i.i46, i32 0, i32 41
  %159 = ptrtoint ptr %encoder1.i.i49 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %encoder1.i.i49, align 4
  %cmp.i.i50 = icmp eq ptr %160, %encoder
  br i1 %cmp.i.i50, label %while.body.i.i51.sun4i_tcon_get_connector.exit.i54_crit_edge, label %while.body.i.i51.while.cond.i.i48_crit_edge

while.body.i.i51.while.cond.i.i48_crit_edge:      ; preds = %while.body.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i48

while.body.i.i51.sun4i_tcon_get_connector.exit.i54_crit_edge: ; preds = %while.body.i.i51
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_connector.exit.i54

sun4i_tcon_get_connector.exit.i54:                ; preds = %while.body.i.i51.sun4i_tcon_get_connector.exit.i54_crit_edge, %while.cond.i.i48.sun4i_tcon_get_connector.exit.i54_crit_edge
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i45) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i45) #6
  %quirks.i52 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 12
  %161 = ptrtoint ptr %quirks.i52 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %quirks.i52, align 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %162, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %164)
  %tobool.not.i53 = icmp eq i8 %164, 0
  br i1 %tobool.not.i53, label %do.end.i55, label %sun4i_tcon_get_connector.exit.i54.sun4i_tcon0_mode_set_rgb.exit_crit_edge, !prof !193

sun4i_tcon_get_connector.exit.i54.sun4i_tcon0_mode_set_rgb.exit_crit_edge: ; preds = %sun4i_tcon_get_connector.exit.i54
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon0_mode_set_rgb.exit

do.end.i55:                                       ; preds = %sun4i_tcon_get_connector.exit.i54
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 513, i32 noundef 9, ptr noundef null) #6
  br label %sun4i_tcon0_mode_set_rgb.exit

sun4i_tcon0_mode_set_rgb.exit:                    ; preds = %do.end.i55, %sun4i_tcon_get_connector.exit.i54.sun4i_tcon0_mode_set_rgb.exit_crit_edge
  %165 = ptrtoint ptr %quirks.i52 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %quirks.i52, align 4
  %dclk_min_div.i56 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %166, i32 0, i32 7
  %167 = ptrtoint ptr %dclk_min_div.i56 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %dclk_min_div.i56, align 1
  %dclk_min_div22.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 9
  %169 = ptrtoint ptr %dclk_min_div22.i to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %168, ptr %dclk_min_div22.i, align 1
  %dclk_max_div.i57 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 8
  %170 = ptrtoint ptr %dclk_max_div.i57 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 127, ptr %dclk_max_div.i57, align 4
  %dclk.i.i58 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 7
  %171 = ptrtoint ptr %dclk.i.i58 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dclk.i.i58, align 4
  %crtc_clock.i.i59 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %173 = ptrtoint ptr %crtc_clock.i.i59 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %crtc_clock.i.i59, align 4
  %mul.i.i60 = mul i32 %174, 1000
  %call.i136.i = call i32 @clk_set_rate(ptr noundef %172, i32 noundef %mul.i.i60) #6
  %regs.i.i61 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %175 = ptrtoint ptr %regs.i.i61 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %regs.i.i61, align 4
  %crtc_hdisplay.i.i62 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %177 = ptrtoint ptr %crtc_hdisplay.i.i62 to i32
  call void @__asan_load2_noabort(i32 %177)
  %178 = load i16, ptr %crtc_hdisplay.i.i62, align 4
  %179 = add i16 %178, 4095
  %180 = and i16 %179, 4095
  %and.i.i63 = zext i16 %180 to i32
  %shl.i.i64 = shl nuw nsw i32 %and.i.i63, 16
  %crtc_vdisplay.i.i65 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %181 = ptrtoint ptr %crtc_vdisplay.i.i65 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %crtc_vdisplay.i.i65, align 2
  %183 = add i16 %182, 4095
  %184 = and i16 %183, 4095
  %and3.i.i66 = zext i16 %184 to i32
  %or.i.i67 = or i32 %shl.i.i64, %and3.i.i66
  %call4.i.i68 = call i32 @regmap_write(ptr noundef %176, i32 noundef 72, i32 noundef %or.i.i67) #6
  call fastcc void @sun4i_tcon0_mode_set_dithering(ptr noundef %tcon, ptr noundef %call.i.i46) #6
  %vtotal.i.i69 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %185 = ptrtoint ptr %vtotal.i.i69 to i32
  call void @__asan_load2_noabort(i32 %185)
  %186 = load i16, ptr %vtotal.i.i69, align 4
  %conv.i.i70 = zext i16 %186 to i32
  %vdisplay.i.i71 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %187 = ptrtoint ptr %vdisplay.i.i71 to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %vdisplay.i.i71, align 2
  %conv1.i.i72 = zext i16 %188 to i32
  %sub.i.i73 = sub nsw i32 %conv.i.i70, %conv1.i.i72
  %flags.i.i74 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %189 = ptrtoint ptr %flags.i.i74 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %flags.i.i74, align 4
  %and.i137.i = and i32 %190, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i137.i)
  %tobool.not.i138.i = icmp eq i32 %and.i137.i, 0
  %div.i.i75 = sdiv i32 %sub.i.i73, 2
  %spec.select.i.i76 = select i1 %tobool.not.i138.i, i32 %sub.i.i73, i32 %div.i.i75
  %191 = call i32 @llvm.smin.i32(i32 %spec.select.i.i76, i32 30) #6
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 0, i32 noundef %191) #6
  %192 = ptrtoint ptr %regs.i.i61 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %regs.i.i61, align 4
  %conv24.i77 = shl nsw i32 %191, 4
  %and.i78 = and i32 %conv24.i77, 496
  %call.i139.i = call i32 @regmap_update_bits_base(ptr noundef %193, i32 noundef 64, i32 noundef 496, i32 noundef %and.i78, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %crtc_htotal.i79 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %194 = ptrtoint ptr %crtc_htotal.i79 to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %crtc_htotal.i79, align 2
  %conv26.i = zext i16 %195 to i32
  %crtc_hsync_start.i80 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %196 = ptrtoint ptr %crtc_hsync_start.i80 to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %crtc_hsync_start.i80, align 2
  %conv27.i = zext i16 %197 to i32
  %sub.i81 = sub nsw i32 %conv26.i, %conv27.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %conv26.i, i32 noundef %sub.i81) #6
  %198 = ptrtoint ptr %regs.i.i61 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %regs.i.i61, align 4
  %200 = ptrtoint ptr %crtc_htotal.i79 to i32
  call void @__asan_load2_noabort(i32 %200)
  %201 = load i16, ptr %crtc_htotal.i79, align 2
  %202 = add i16 %201, 8191
  %203 = and i16 %202, 8191
  %and34.i82 = zext i16 %203 to i32
  %shl35.i = shl nuw nsw i32 %and34.i82, 16
  %sub36.i = add nsw i32 %sub.i81, 4095
  %and37.i = and i32 %sub36.i, 4095
  %or.i83 = or i32 %shl35.i, %and37.i
  %call38.i = call i32 @regmap_write(ptr noundef %199, i32 noundef 76, i32 noundef %or.i83) #6
  %crtc_vtotal.i84 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %204 = ptrtoint ptr %crtc_vtotal.i84 to i32
  call void @__asan_load2_noabort(i32 %204)
  %205 = load i16, ptr %crtc_vtotal.i84, align 4
  %conv39.i = zext i16 %205 to i32
  %crtc_vsync_start.i85 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %206 = ptrtoint ptr %crtc_vsync_start.i85 to i32
  call void @__asan_load2_noabort(i32 %206)
  %207 = load i16, ptr %crtc_vsync_start.i85, align 4
  %conv40.i = zext i16 %207 to i32
  %sub41.i = sub nsw i32 %conv39.i, %conv40.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %conv39.i, i32 noundef %sub41.i) #6
  %208 = ptrtoint ptr %regs.i.i61 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %regs.i.i61, align 4
  %210 = ptrtoint ptr %crtc_vtotal.i84 to i32
  call void @__asan_load2_noabort(i32 %210)
  %211 = load i16, ptr %crtc_vtotal.i84, align 4
  %conv46.i = zext i16 %211 to i32
  %mul.i86 = shl i32 %conv46.i, 17
  %and47.i87 = and i32 %mul.i86, 536739840
  %sub49.i = add nsw i32 %sub41.i, 4095
  %and50.i = and i32 %sub49.i, 4095
  %or51.i = or i32 %and47.i87, %and50.i
  %call52.i = call i32 @regmap_write(ptr noundef %209, i32 noundef 80, i32 noundef %or51.i) #6
  %crtc_hsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %212 = ptrtoint ptr %crtc_hsync_end.i to i32
  call void @__asan_load2_noabort(i32 %212)
  %213 = load i16, ptr %crtc_hsync_end.i, align 4
  %conv53.i = zext i16 %213 to i32
  %214 = ptrtoint ptr %crtc_hsync_start.i80 to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %crtc_hsync_start.i80, align 2
  %conv55.i = zext i16 %215 to i32
  %sub56.i = sub nsw i32 %conv53.i, %conv55.i
  %crtc_vsync_end.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %216 = ptrtoint ptr %crtc_vsync_end.i to i32
  call void @__asan_load2_noabort(i32 %216)
  %217 = load i16, ptr %crtc_vsync_end.i, align 2
  %conv57.i = zext i16 %217 to i32
  %218 = ptrtoint ptr %crtc_vsync_start.i85 to i32
  call void @__asan_load2_noabort(i32 %218)
  %219 = load i16, ptr %crtc_vsync_start.i85, align 4
  %conv59.i = zext i16 %219 to i32
  %sub60.i = sub nsw i32 %conv57.i, %conv59.i
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %sub56.i, i32 noundef %sub60.i) #6
  %220 = ptrtoint ptr %regs.i.i61 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %regs.i.i61, align 4
  %sub62.i = add nsw i32 %sub60.i, 2047
  %and63.i = and i32 %sub62.i, 2047
  %sub64.i = shl i32 %sub56.i, 16
  %and65.i = add i32 %sub64.i, 134152192
  %shl66.i = and i32 %and65.i, 134152192
  %or67.i = or i32 %and63.i, %shl66.i
  %call68.i = call i32 @regmap_write(ptr noundef %221, i32 noundef 84, i32 noundef %or67.i) #6
  %222 = ptrtoint ptr %flags.i.i74 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %flags.i.i74, align 4
  %and69.i = shl i32 %223, 25
  %224 = and i32 %and69.i, 33554432
  %and75.i = shl i32 %223, 22
  %225 = and i32 %and75.i, 16777216
  %226 = or i32 %225, %224
  %bus_flags.i = getelementptr inbounds %struct.drm_connector, ptr %call.i.i46, i32 0, i32 20, i32 8
  %227 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %bus_flags.i, align 8
  %and80.i = shl i32 %228, 27
  %229 = and i32 %and80.i, 134217728
  %230 = or i32 %226, %229
  %and86.i = shl i32 %228, 23
  %231 = and i32 %and86.i, 67108864
  %232 = or i32 %230, %231
  %233 = ptrtoint ptr %regs.i.i61 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %regs.i.i61, align 4
  %call.i140.i = call i32 @regmap_update_bits_base(ptr noundef %234, i32 noundef 136, i32 noundef 251658240, i32 noundef %232, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %235 = ptrtoint ptr %regs.i.i61 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %regs.i.i61, align 4
  %call.i141.i = call i32 @regmap_update_bits_base(ptr noundef %236, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %237 = ptrtoint ptr %regs.i.i61 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %regs.i.i61, align 4
  %call96.i = call i32 @regmap_write(ptr noundef %238, i32 noundef 140, i32 noundef 0) #6
  %239 = ptrtoint ptr %quirks.i52 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %quirks.i52, align 4
  %set_mux.i = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %240, i32 0, i32 8
  %241 = ptrtoint ptr %set_mux.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %set_mux.i, align 4
  %tobool.not.i90 = icmp eq ptr %242, null
  br i1 %tobool.not.i90, label %sun4i_tcon0_mode_set_rgb.exit.sun4i_tcon_set_mux.exit_crit_edge, label %if.then.i

sun4i_tcon0_mode_set_rgb.exit.sun4i_tcon_set_mux.exit_crit_edge: ; preds = %sun4i_tcon0_mode_set_rgb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_set_mux.exit

if.then.i:                                        ; preds = %sun4i_tcon0_mode_set_rgb.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = call i32 %242(ptr noundef %tcon, ptr noundef %encoder) #6
  br label %sun4i_tcon_set_mux.exit

sun4i_tcon_set_mux.exit:                          ; preds = %if.then.i, %sun4i_tcon0_mode_set_rgb.exit.sun4i_tcon_set_mux.exit_crit_edge
  %ret.0.i = phi i32 [ %call.i, %if.then.i ], [ -524, %sun4i_tcon0_mode_set_rgb.exit.sun4i_tcon_set_mux.exit_crit_edge ]
  %name.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 3
  %243 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %name.i, align 4
  %crtc.i = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %245 = ptrtoint ptr %crtc.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %crtc.i, align 4
  %name3.i = getelementptr inbounds %struct.drm_crtc, ptr %246, i32 0, i32 3
  %247 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %name3.i, align 8
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef %244, ptr noundef %248, i32 noundef %ret.0.i) #6
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry.sw.bb3_crit_edge, %entry.sw.bb3_crit_edge141
  %quirks.i92 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 12
  %249 = ptrtoint ptr %quirks.i92 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %quirks.i92, align 4
  %has_channel_1.i = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %250, i32 0, i32 1
  %251 = ptrtoint ptr %has_channel_1.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %has_channel_1.i, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %252)
  %tobool.not.i93 = icmp eq i8 %252, 0
  br i1 %tobool.not.i93, label %do.end.i94, label %sw.bb3.if.end.i123_crit_edge, !prof !193

sw.bb3.if.end.i123_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i123

do.end.i94:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 598, i32 noundef 9, ptr noundef null) #6
  br label %if.end.i123

if.end.i123:                                      ; preds = %do.end.i94, %sw.bb3.if.end.i123_crit_edge
  %sclk1.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 5
  %253 = ptrtoint ptr %sclk1.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %sclk1.i, align 4
  %crtc_clock.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 12
  %255 = ptrtoint ptr %crtc_clock.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %crtc_clock.i, align 4
  %mul.i95 = mul i32 %256, 1000
  %call.i96 = tail call i32 @clk_set_rate(ptr noundef %254, i32 noundef %mul.i95) #6
  %vtotal.i.i97 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 9
  %257 = ptrtoint ptr %vtotal.i.i97 to i32
  call void @__asan_load2_noabort(i32 %257)
  %258 = load i16, ptr %vtotal.i.i97, align 4
  %conv.i.i98 = zext i16 %258 to i32
  %vdisplay.i.i99 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 6
  %259 = ptrtoint ptr %vdisplay.i.i99 to i32
  call void @__asan_load2_noabort(i32 %259)
  %260 = load i16, ptr %vdisplay.i.i99, align 2
  %conv1.i.i100 = zext i16 %260 to i32
  %sub.i.i101 = sub nsw i32 %conv.i.i98, %conv1.i.i100
  %flags.i.i102 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 11
  %261 = ptrtoint ptr %flags.i.i102 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %flags.i.i102, align 4
  %and.i.i103 = and i32 %262, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i103)
  %tobool.not.i.i104 = icmp eq i32 %and.i.i103, 0
  %div.i.i105 = sdiv i32 %sub.i.i101, 2
  %spec.select.i.i106 = select i1 %tobool.not.i.i104, i32 %sub.i.i101, i32 %div.i.i105
  %263 = tail call i32 @llvm.smin.i32(i32 %spec.select.i.i106, i32 32) #6
  %264 = add nsw i32 %263, -2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, i32 noundef 1, i32 noundef %264) #6
  %regs.i = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %265 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %regs.i, align 4
  %conv22.i107 = shl nsw i32 %264, 4
  %and.i108 = and i32 %conv22.i107, 496
  %call.i.i109 = tail call i32 @regmap_update_bits_base(ptr noundef %266, i32 noundef 144, i32 noundef 496, i32 noundef %and.i108, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %267 = ptrtoint ptr %flags.i.i102 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %flags.i.i102, align 4
  %and24.i110 = shl i32 %268, 16
  %269 = and i32 %and24.i110, 1048576
  %270 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %regs.i, align 4
  %call.i199.i = tail call i32 @regmap_update_bits_base(ptr noundef %271, i32 noundef 144, i32 noundef 1048576, i32 noundef %269, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %272 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %regs.i, align 4
  %crtc_hdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 13
  %274 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %274)
  %275 = load i16, ptr %crtc_hdisplay.i, align 4
  %276 = add i16 %275, 4095
  %277 = and i16 %276, 4095
  %and32.i = zext i16 %277 to i32
  %shl33.i = shl nuw nsw i32 %and32.i, 16
  %crtc_vdisplay.i = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 20
  %278 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %278)
  %279 = load i16, ptr %crtc_vdisplay.i, align 2
  %280 = add i16 %279, 4095
  %281 = and i16 %280, 4095
  %and36.i = zext i16 %281 to i32
  %or.i111 = or i32 %shl33.i, %and36.i
  %call37.i = tail call i32 @regmap_write(ptr noundef %273, i32 noundef 148, i32 noundef %or.i111) #6
  %282 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %regs.i, align 4
  %284 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %284)
  %285 = load i16, ptr %crtc_hdisplay.i, align 4
  %286 = add i16 %285, 4095
  %287 = and i16 %286, 4095
  %and42.i = zext i16 %287 to i32
  %shl43.i = shl nuw nsw i32 %and42.i, 16
  %288 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %288)
  %289 = load i16, ptr %crtc_vdisplay.i, align 2
  %290 = add i16 %289, 4095
  %291 = and i16 %290, 4095
  %and47.i112 = zext i16 %291 to i32
  %or48.i113 = or i32 %shl43.i, %and47.i112
  %call49.i114 = tail call i32 @regmap_write(ptr noundef %283, i32 noundef 152, i32 noundef %or48.i113) #6
  %292 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %regs.i, align 4
  %294 = ptrtoint ptr %crtc_hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %294)
  %295 = load i16, ptr %crtc_hdisplay.i, align 4
  %296 = add i16 %295, 4095
  %297 = and i16 %296, 4095
  %and54.i = zext i16 %297 to i32
  %shl55.i = shl nuw nsw i32 %and54.i, 16
  %298 = ptrtoint ptr %crtc_vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %298)
  %299 = load i16, ptr %crtc_vdisplay.i, align 2
  %300 = add i16 %299, 4095
  %301 = and i16 %300, 4095
  %and59.i = zext i16 %301 to i32
  %or60.i = or i32 %shl55.i, %and59.i
  %call61.i = tail call i32 @regmap_write(ptr noundef %293, i32 noundef 156, i32 noundef %or60.i) #6
  %crtc_htotal.i115 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 18
  %302 = ptrtoint ptr %crtc_htotal.i115 to i32
  call void @__asan_load2_noabort(i32 %302)
  %303 = load i16, ptr %crtc_htotal.i115, align 2
  %conv62.i = zext i16 %303 to i32
  %crtc_hsync_start.i116 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 16
  %304 = ptrtoint ptr %crtc_hsync_start.i116 to i32
  call void @__asan_load2_noabort(i32 %304)
  %305 = load i16, ptr %crtc_hsync_start.i116, align 2
  %conv63.i = zext i16 %305 to i32
  %sub64.i117 = sub nsw i32 %conv62.i, %conv63.i
  %htotal.i118 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 4
  %306 = ptrtoint ptr %htotal.i118 to i32
  call void @__asan_load2_noabort(i32 %306)
  %307 = load i16, ptr %htotal.i118, align 2
  %conv65.i = zext i16 %307 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %conv65.i, i32 noundef %sub64.i117) #6
  %308 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %regs.i, align 4
  %310 = ptrtoint ptr %crtc_htotal.i115 to i32
  call void @__asan_load2_noabort(i32 %310)
  %311 = load i16, ptr %crtc_htotal.i115, align 2
  %312 = add i16 %311, 8191
  %313 = and i16 %312, 8191
  %and70.i = zext i16 %313 to i32
  %shl71.i = shl nuw nsw i32 %and70.i, 16
  %sub72.i = add nsw i32 %sub64.i117, 4095
  %and73.i = and i32 %sub72.i, 4095
  %or74.i = or i32 %shl71.i, %and73.i
  %call75.i = tail call i32 @regmap_write(ptr noundef %309, i32 noundef 160, i32 noundef %or74.i) #6
  %crtc_vtotal.i119 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 25
  %314 = ptrtoint ptr %crtc_vtotal.i119 to i32
  call void @__asan_load2_noabort(i32 %314)
  %315 = load i16, ptr %crtc_vtotal.i119, align 4
  %conv76.i = zext i16 %315 to i32
  %crtc_vsync_start.i120 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 23
  %316 = ptrtoint ptr %crtc_vsync_start.i120 to i32
  call void @__asan_load2_noabort(i32 %316)
  %317 = load i16, ptr %crtc_vsync_start.i120, align 4
  %conv77.i = zext i16 %317 to i32
  %sub78.i = sub nsw i32 %conv76.i, %conv77.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8, i32 noundef %conv76.i, i32 noundef %sub78.i) #6
  %318 = ptrtoint ptr %vtotal.i.i97 to i32
  call void @__asan_load2_noabort(i32 %318)
  %319 = load i16, ptr %vtotal.i.i97, align 4
  %conv82.i = zext i16 %319 to i32
  %320 = ptrtoint ptr %flags.i.i102 to i32
  call void @__asan_load4_noabort(i32 %320)
  %321 = load i32, ptr %flags.i.i102, align 4
  %and84.i = lshr i32 %321, 4
  %and84.lobit.i = and i32 %and84.i, 1
  %322 = xor i32 %and84.lobit.i, 1
  %vtotal.0.i = shl nuw nsw i32 %conv82.i, %322
  %323 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load ptr, ptr %regs.i, align 4
  %and90.i = shl i32 %vtotal.0.i, 16
  %shl91.i = and i32 %and90.i, 536805376
  %sub92.i = add nsw i32 %sub78.i, 4095
  %and93.i = and i32 %sub92.i, 4095
  %or94.i = or i32 %shl91.i, %and93.i
  %call95.i = tail call i32 @regmap_write(ptr noundef %324, i32 noundef 164, i32 noundef %or94.i) #6
  %crtc_hsync_end.i121 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 17
  %325 = ptrtoint ptr %crtc_hsync_end.i121 to i32
  call void @__asan_load2_noabort(i32 %325)
  %326 = load i16, ptr %crtc_hsync_end.i121, align 4
  %conv96.i = zext i16 %326 to i32
  %327 = ptrtoint ptr %crtc_hsync_start.i116 to i32
  call void @__asan_load2_noabort(i32 %327)
  %328 = load i16, ptr %crtc_hsync_start.i116, align 2
  %conv98.i = zext i16 %328 to i32
  %sub99.i = sub nsw i32 %conv96.i, %conv98.i
  %crtc_vsync_end.i122 = getelementptr inbounds %struct.drm_display_mode, ptr %mode, i32 0, i32 24
  %329 = ptrtoint ptr %crtc_vsync_end.i122 to i32
  call void @__asan_load2_noabort(i32 %329)
  %330 = load i16, ptr %crtc_vsync_end.i122, align 2
  %conv100.i = zext i16 %330 to i32
  %331 = ptrtoint ptr %crtc_vsync_start.i120 to i32
  call void @__asan_load2_noabort(i32 %331)
  %332 = load i16, ptr %crtc_vsync_start.i120, align 4
  %conv102.i = zext i16 %332 to i32
  %sub103.i = sub nsw i32 %conv100.i, %conv102.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %sub99.i, i32 noundef %sub103.i) #6
  %333 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %regs.i, align 4
  %sub105.i = add nsw i32 %sub103.i, 1023
  %and106.i = and i32 %sub105.i, 1023
  %sub107.i = shl i32 %sub99.i, 16
  %and108.i = add i32 %sub107.i, 67043328
  %shl109.i = and i32 %and108.i, 67043328
  %or110.i = or i32 %and106.i, %shl109.i
  %call111.i = tail call i32 @regmap_write(ptr noundef %334, i32 noundef 168, i32 noundef %or110.i) #6
  %335 = ptrtoint ptr %quirks.i92 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %quirks.i92, align 4
  %polarity_in_ch0.i = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %336, i32 0, i32 6
  %337 = ptrtoint ptr %polarity_in_ch0.i to i32
  call void @__asan_load1_noabort(i32 %337)
  %338 = load i8, ptr %polarity_in_ch0.i, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %338)
  %tobool113.not.i = icmp eq i8 %338, 0
  %339 = ptrtoint ptr %flags.i.i102 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %flags.i.i102, align 4
  br i1 %tobool113.not.i, label %if.else129.i, label %if.then114.i

if.then114.i:                                     ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  %and116.i = shl i32 %340, 25
  %341 = and i32 %and116.i, 33554432
  %and122.i = shl i32 %340, 22
  %342 = and i32 %and122.i, 16777216
  br label %sun4i_tcon1_mode_set.exit

if.else129.i:                                     ; preds = %if.end.i123
  call void @__sanitizer_cov_trace_pc() #8
  %and131.i = and i32 %340, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and131.i)
  %tobool132.not.i = icmp eq i32 %and131.i, 0
  %spec.select198.i = select i1 %tobool132.not.i, i32 67108864, i32 100663296
  %and137.i = shl i32 %340, 22
  %343 = and i32 %and137.i, 16777216
  br label %sun4i_tcon1_mode_set.exit

sun4i_tcon1_mode_set.exit:                        ; preds = %if.else129.i, %if.then114.i
  %.sink.i = phi i32 [ %343, %if.else129.i ], [ %341, %if.then114.i ]
  %spec.select198.sink.i = phi i32 [ %spec.select198.i, %if.else129.i ], [ %342, %if.then114.i ]
  %.sink201.i = phi i32 [ 240, %if.else129.i ], [ 136, %if.then114.i ]
  %344 = or i32 %spec.select198.sink.i, %.sink.i
  %345 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %regs.i, align 4
  %call143.i = tail call i32 @regmap_write(ptr noundef %346, i32 noundef %.sink201.i, i32 noundef %344) #6
  %347 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %regs.i, align 4
  %call.i200.i = tail call i32 @regmap_update_bits_base(ptr noundef %348, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %349 = ptrtoint ptr %quirks.i92 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %quirks.i92, align 4
  %set_mux.i125 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %350, i32 0, i32 8
  %351 = ptrtoint ptr %set_mux.i125 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %set_mux.i125, align 4
  %tobool.not.i126 = icmp eq ptr %352, null
  br i1 %tobool.not.i126, label %sun4i_tcon1_mode_set.exit.sun4i_tcon_set_mux.exit134_crit_edge, label %if.then.i128

sun4i_tcon1_mode_set.exit.sun4i_tcon_set_mux.exit134_crit_edge: ; preds = %sun4i_tcon1_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_set_mux.exit134

if.then.i128:                                     ; preds = %sun4i_tcon1_mode_set.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call.i127 = tail call i32 %352(ptr noundef %tcon, ptr noundef %encoder) #6
  br label %sun4i_tcon_set_mux.exit134

sun4i_tcon_set_mux.exit134:                       ; preds = %if.then.i128, %sun4i_tcon1_mode_set.exit.sun4i_tcon_set_mux.exit134_crit_edge
  %ret.0.i129 = phi i32 [ %call.i127, %if.then.i128 ], [ -524, %sun4i_tcon1_mode_set.exit.sun4i_tcon_set_mux.exit134_crit_edge ]
  %name.i130 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 3
  %353 = ptrtoint ptr %name.i130 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %name.i130, align 4
  %crtc.i131 = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 8
  %355 = ptrtoint ptr %crtc.i131 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %crtc.i131, align 4
  %name3.i132 = getelementptr inbounds %struct.drm_crtc, ptr %356, i32 0, i32 3
  %357 = ptrtoint ptr %name3.i132 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %name3.i132, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11, ptr noundef %354, ptr noundef %358, i32 noundef %ret.0.i129) #6
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sun4i_tcon_set_mux.exit134, %sun4i_tcon_set_mux.exit, %sun4i_tcon0_mode_set_lvds.exit, %sun4i_tcon0_mode_set_cpu.exit
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tcon_platform_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun4i_tcon_platform_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_tcon_platform_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun4i_tcon_platform_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_rate_exclusive_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_rate_exclusive_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun4i_tcon0_mode_set_dithering(ptr nocapture noundef readonly %tcon, ptr noundef readonly %connector) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %connector, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %regs = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 20, i32 noundef 286331153) #6
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call2 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 24, i32 noundef 286331153) #6
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %call4 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 28, i32 noundef 286331153) #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call6 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 32, i32 noundef 286331153) #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call8 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 36, i32 noundef 286331153) #6
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 40, i32 noundef 286331153) #6
  %12 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 44, i32 noundef 16842752) #6
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 48, i32 noundef 353702161) #6
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 52, i32 noundef 1465341269) #6
  %18 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs, align 4
  %call18 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 56, i32 noundef 2139060087) #6
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %20 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bpc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %21)
  %cmp = icmp eq i32 %21, 6
  %spec.select = select i1 %cmp, i32 -2147483648, i32 0
  %num_bus_formats = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 7
  %22 = ptrtoint ptr %num_bus_formats to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_bus_formats, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp22 = icmp eq i32 %23, 1
  br i1 %cmp22, label %if.end25, label %if.end.sw.epilog_crit_edge

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end25:                                         ; preds = %if.end
  %bus_formats = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 6
  %24 = ptrtoint ptr %bus_formats to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %bus_formats, align 8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.81)
  switch i32 %27, label %if.end25.sw.epilog_crit_edge [
    i32 4119, label %sw.bb
    i32 4105, label %if.end25.sw.bb28_crit_edge
    i32 4112, label %if.end25.sw.bb28_crit_edge51
  ]

if.end25.sw.bb28_crit_edge51:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb28

if.end25.sw.bb28_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb28

if.end25.sw.epilog_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  %or27 = or i32 %spec.select, 80
  br label %sw.bb28

sw.bb28:                                          ; preds = %sw.bb, %if.end25.sw.bb28_crit_edge, %if.end25.sw.bb28_crit_edge51
  %val.1 = phi i32 [ %spec.select, %if.end25.sw.bb28_crit_edge ], [ %spec.select, %if.end25.sw.bb28_crit_edge51 ], [ %or27, %sw.bb ]
  %or29 = or i32 %val.1, -2147483648
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %if.end25.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge
  %val.2 = phi i32 [ %spec.select, %if.end25.sw.epilog_crit_edge ], [ %or29, %sw.bb28 ], [ %spec.select, %if.end.sw.epilog_crit_edge ]
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %call31 = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 16, i32 noundef %val.2) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_a10_tcon_set_mux(ptr nocapture noundef readonly %tcon, ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %tcon_list.i = getelementptr inbounds %struct.sun4i_drv, ptr %3, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %tcon_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tcon_list.i
  br i1 %cmp.not.i, label %sun4i_get_tcon0.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr i8, ptr %.pn.i, i32 -4
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %6, 0
  br i1 %cmp2.i, label %sun4i_get_tcon0.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

sun4i_get_tcon0.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.12) #9
  br label %cleanup

sun4i_get_tcon0.exit:                             ; preds = %for.body.i
  %tcon.0.le.i = getelementptr i8, ptr %.pn.i, i32 -56
  %tobool.not = icmp eq ptr %tcon.0.le.i, null
  br i1 %tobool.not, label %sun4i_get_tcon0.exit.cleanup_crit_edge, label %if.end

sun4i_get_tcon0.exit.cleanup_crit_edge:           ; preds = %sun4i_get_tcon0.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sun4i_get_tcon0.exit
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %9 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cond = icmp eq i32 %10, 2
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr i8, ptr %.pn.i, i32 -48
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %id = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 14
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %shl1 = shl i32 %14, 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 512, i32 noundef 768, i32 noundef %shl1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %sun4i_get_tcon0.exit.cleanup_crit_edge, %sun4i_get_tcon0.exit.thread
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %sun4i_get_tcon0.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sun4i_get_tcon0.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun5i_a13_tcon_set_mux(ptr nocapture noundef readonly %tcon, ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %0 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp = icmp eq i32 %1, 4
  %. = zext i1 %cmp to i32
  %regs = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %3, i32 noundef 512, i32 noundef %.) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_tcon_set_mux(ptr nocapture noundef readonly %tcon, ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %dev_private.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %dev_private.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_private.i, align 4
  %tcon_list.i = getelementptr inbounds %struct.sun4i_drv, ptr %3, i32 0, i32 2
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %.pn.in.i = phi ptr [ %tcon_list.i, %entry ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %4 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %tcon_list.i
  br i1 %cmp.not.i, label %sun4i_get_tcon0.exit.thread, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %id.i = getelementptr i8, ptr %.pn.i, i32 -4
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  %cmp2.i = icmp eq i32 %6, 0
  br i1 %cmp2.i, label %sun4i_get_tcon0.exit, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i

sun4i_get_tcon0.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.12) #9
  br label %cleanup

sun4i_get_tcon0.exit:                             ; preds = %for.body.i
  %tcon.0.le.i = getelementptr i8, ptr %.pn.i, i32 -56
  %tobool.not = icmp eq ptr %tcon.0.le.i, null
  br i1 %tobool.not, label %sun4i_get_tcon0.exit.cleanup_crit_edge, label %if.end

sun4i_get_tcon0.exit.cleanup_crit_edge:           ; preds = %sun4i_get_tcon0.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %sun4i_get_tcon0.exit
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %9 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cond = icmp eq i32 %10, 2
  br i1 %cond, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr i8, ptr %.pn.i, i32 -48
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %id = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 14
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %shl1 = shl i32 %14, 8
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 512, i32 noundef 768, i32 noundef %shl1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %sw.bb, %if.end.cleanup_crit_edge, %sun4i_get_tcon0.exit.cleanup_crit_edge, %sun4i_get_tcon0.exit.thread
  %retval.0 = phi i32 [ 0, %sw.bb ], [ -22, %sun4i_get_tcon0.exit.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %sun4i_get_tcon0.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_tcon_setup_lvds_phy(ptr nocapture noundef readonly %tcon, ptr nocapture noundef readnone %encoder) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 544, i32 noundef 1064370176) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496) #6
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 548, i32 noundef 2080406528, i32 noundef 2080406528, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call.i10 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 548, i32 noundef 2031647, i32 noundef 2031647, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 544, i32 noundef 4194304, i32 noundef 4194304, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_tcon_setup_lvds_phy(ptr nocapture noundef readonly %tcon, ptr noundef readonly %encoder) #0 align 64 {
entry:
  %iter.i.i = alloca %struct.drm_connector_list_iter, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %call = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 544, i32 noundef 1074004768) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %2(i32 noundef 429496) #6
  %3 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 544, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 429496) #6
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 544, i32 noundef 16777216, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iter.i.i) #6
  %8 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %iter.i.i, align 4, !annotation !194
  %9 = getelementptr inbounds %struct.drm_connector_list_iter, ptr %iter.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -1 to ptr), ptr %9, align 4, !annotation !194
  %11 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %encoder, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %12, ptr noundef nonnull %iter.i.i) #6
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.body.i.i.while.cond.i.i_crit_edge, %entry
  %call.i.i = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %iter.i.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %sun4i_tcon_get_connector.exit.thread.i, label %while.body.i.i

sun4i_tcon_get_connector.exit.thread.i:           ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i) #6
  br label %sun4i_tcon_get_pixel_depth.exit.thread

while.body.i.i:                                   ; preds = %while.cond.i.i
  %encoder1.i.i = getelementptr inbounds %struct.drm_connector, ptr %call.i.i, i32 0, i32 41
  %13 = ptrtoint ptr %encoder1.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %encoder1.i.i, align 4
  %cmp.i.i = icmp eq ptr %14, %encoder
  br i1 %cmp.i.i, label %if.end.i, label %while.body.i.i.while.cond.i.i_crit_edge

while.body.i.i.while.cond.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond.i.i

if.end.i:                                         ; preds = %while.body.i.i
  call void @drm_connector_list_iter_end(ptr noundef nonnull %iter.i.i) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iter.i.i) #6
  %num_bus_formats.i = getelementptr inbounds %struct.drm_connector, ptr %call.i.i, i32 0, i32 20, i32 7
  %15 = ptrtoint ptr %num_bus_formats.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_bus_formats.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 1
  br i1 %cmp.not.i, label %if.end2.i, label %if.end.i.sun4i_tcon_get_pixel_depth.exit.thread_crit_edge

if.end.i.sun4i_tcon_get_pixel_depth.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_pixel_depth.exit.thread

if.end2.i:                                        ; preds = %if.end.i
  %bus_formats.i = getelementptr inbounds %struct.drm_connector, ptr %call.i.i, i32 0, i32 20, i32 6
  %17 = ptrtoint ptr %bus_formats.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %bus_formats.i, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4112, i32 %20)
  %cond = icmp eq i32 %20, 4112
  br i1 %cond, label %if.end2.i.sun4i_tcon_get_pixel_depth.exit_crit_edge, label %if.end2.i.sun4i_tcon_get_pixel_depth.exit.thread_crit_edge

if.end2.i.sun4i_tcon_get_pixel_depth.exit.thread_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_pixel_depth.exit.thread

if.end2.i.sun4i_tcon_get_pixel_depth.exit_crit_edge: ; preds = %if.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_pixel_depth.exit

sun4i_tcon_get_pixel_depth.exit.thread:           ; preds = %if.end2.i.sun4i_tcon_get_pixel_depth.exit.thread_crit_edge, %if.end.i.sun4i_tcon_get_pixel_depth.exit.thread_crit_edge, %sun4i_tcon_get_connector.exit.thread.i
  br label %sun4i_tcon_get_pixel_depth.exit

sun4i_tcon_get_pixel_depth.exit:                  ; preds = %sun4i_tcon_get_pixel_depth.exit.thread, %if.end2.i.sun4i_tcon_get_pixel_depth.exit_crit_edge
  %21 = phi i32 [ 15728640, %sun4i_tcon_get_pixel_depth.exit.thread ], [ 7340032, %if.end2.i.sun4i_tcon_get_pixel_depth.exit_crit_edge ]
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %call.i12 = call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 544, i32 noundef 15728640, i32 noundef %21, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_r40_tcon_tv_set_mux(ptr nocapture noundef readonly %tcon, ptr nocapture noundef readonly %encoder) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcon, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_graph_get_port_by_id(ptr noundef %3, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call, ptr noundef null) #6
  %cmp.not15.i = icmp eq ptr %call.i, null
  br i1 %cmp.not15.i, label %if.end.sun4i_tcon_of_get_id_from_port.exit_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.sun4i_tcon_of_get_id_from_port.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_of_get_id_from_port.exit

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %ret.017.i = phi i32 [ %ret.1.i, %cleanup.i.for.body.i_crit_edge ], [ -22, %if.end.for.body.i_crit_edge ]
  %ep.016.i = phi ptr [ %call7.i, %cleanup.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %4 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %reg.i, align 4, !annotation !194
  %call1.i = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %ep.016.i) #6
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %for.body.i.cleanup.i_crit_edge, label %if.end.i

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end.i:                                         ; preds = %for.body.i
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %reg.i, i32 noundef 1, i32 noundef 0) #6
  %5 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool3.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool3.not.i, label %if.end5.i, label %if.end.i.cleanup.i_crit_edge

if.end.i.cleanup.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end5.i, %if.end.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  %ret.1.i = phi i32 [ %7, %if.end5.i ], [ %ret.017.i, %for.body.i.cleanup.i_crit_edge ], [ %5, %if.end.i.cleanup.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %call7.i = call ptr @of_get_next_available_child(ptr noundef nonnull %call, ptr noundef nonnull %ep.016.i) #6
  %cmp.not.i = icmp eq ptr %call7.i, null
  br i1 %cmp.not.i, label %cleanup.i.sun4i_tcon_of_get_id_from_port.exit_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.sun4i_tcon_of_get_id_from_port.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_of_get_id_from_port.exit

sun4i_tcon_of_get_id_from_port.exit:              ; preds = %cleanup.i.sun4i_tcon_of_get_id_from_port.exit_crit_edge, %if.end.sun4i_tcon_of_get_id_from_port.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ -22, %if.end.sun4i_tcon_of_get_id_from_port.exit_crit_edge ], [ %ret.1.i, %cleanup.i.sun4i_tcon_of_get_id_from_port.exit_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call) #6
  %8 = ptrtoint ptr %tcon to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tcon, align 4
  %of_node3 = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 27
  %10 = ptrtoint ptr %of_node3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node3, align 8
  %call4 = call ptr @of_graph_get_remote_node(ptr noundef %11, i32 noundef 0, i32 noundef -1) #6
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %sun4i_tcon_of_get_id_from_port.exit.cleanup_crit_edge, label %if.end7

sun4i_tcon_of_get_id_from_port.exit.cleanup_crit_edge: ; preds = %sun4i_tcon_of_get_id_from_port.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %sun4i_tcon_of_get_id_from_port.exit
  %call8 = call ptr @of_find_device_by_node(ptr noundef nonnull %call4) #6
  call void @of_node_put(ptr noundef nonnull %call4) #6
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %encoder_type = getelementptr inbounds %struct.drm_encoder, ptr %encoder, i32 0, i32 4
  %12 = ptrtoint ptr %encoder_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %encoder_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  br i1 %cmp, label %if.then12, label %if.end11.if.end19_crit_edge

if.end11.if.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then12:                                        ; preds = %if.end11
  %dev13 = getelementptr inbounds %struct.platform_device, ptr %call8, i32 0, i32 3
  %call14 = call i32 @sun8i_tcon_top_set_hdmi_src(ptr noundef %dev13, i32 noundef %ret.0.lcssa.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.then12.if.end19_crit_edge, label %if.then12.cleanup.sink.split_crit_edge

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.then12.if.end19_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end19:                                         ; preds = %if.then12.if.end19_crit_edge, %if.end11.if.end19_crit_edge
  %dev20 = getelementptr inbounds %struct.platform_device, ptr %call8, i32 0, i32 3
  %id21 = getelementptr inbounds %struct.sun4i_tcon, ptr %tcon, i32 0, i32 14
  %14 = ptrtoint ptr %id21 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id21, align 4
  %call22 = call i32 @sun8i_tcon_top_de_config(ptr noundef %dev20, i32 noundef %15, i32 noundef %ret.0.lcssa.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %if.end19.cleanup.sink.split_crit_edge

if.end19.cleanup.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end19.cleanup.sink.split_crit_edge, %if.then12.cleanup.sink.split_crit_edge
  %dev20.sink = phi ptr [ %dev13, %if.then12.cleanup.sink.split_crit_edge ], [ %dev20, %if.end19.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call14, %if.then12.cleanup.sink.split_crit_edge ], [ %call22, %if.end19.cleanup.sink.split_crit_edge ]
  call void @put_device(ptr noundef %dev20.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end19.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %sun4i_tcon_of_get_id_from_port.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -22, %sun4i_tcon_of_get_id_from_port.exit.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ 0, %if.end19.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_port_by_id(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_node(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_tcon_top_set_hdmi_src(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_tcon_top_de_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_endpoint(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tcon_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %bridge = alloca ptr, align 4
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bridge) #6
  %2 = ptrtoint ptr %bridge to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %bridge, align 4, !annotation !194
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #6
  %3 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !194
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef nonnull %bridge) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -517, i32 %call2)
  %cmp = icmp eq i32 %call2, -517
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %call6 = call i32 @component_add(ptr noundef %dev, ptr noundef nonnull @sun4i_tcon_ops) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end4 ], [ -517, %if.then.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bridge) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tcon_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @component_del(ptr noundef %dev, ptr noundef nonnull @sun4i_tcon_ops) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tcon_bind(ptr noundef %dev, ptr nocapture noundef readnone %master, ptr noundef %data) #0 align 64 {
entry:
  %reg.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev_private = getelementptr inbounds %struct.drm_device, ptr %data, i32 0, i32 5
  %0 = ptrtoint ptr %dev_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_private, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call ptr @of_graph_get_port_by_id(ptr noundef %3, i32 noundef 0) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %if.end.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i, ptr noundef null) #6
  %cmp.not5.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.not5.i.i, label %if.end.i.if.end10.i_crit_edge, label %if.end.i.for.body.i.i_crit_edge

if.end.i.for.body.i.i_crit_edge:                  ; preds = %if.end.i
  br label %for.body.i.i

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.i.for.body.i.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call.i.i, %if.end.i.for.body.i.i_crit_edge ]
  %inc.i.i = add i32 %num.07.i.i, 1
  %call1.i.i = tail call ptr @of_get_next_child(ptr noundef nonnull %call.i, ptr noundef nonnull %child.06.i.i) #6
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_child_count.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

of_get_child_count.exit.i:                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.i.i)
  %cmp.i = icmp sgt i32 %inc.i.i, 1
  br i1 %cmp.i, label %if.then3.i, label %of_get_child_count.exit.i.if.end10.i_crit_edge

of_get_child_count.exit.i.if.end10.i_crit_edge:   ; preds = %of_get_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

if.then3.i:                                       ; preds = %of_get_child_count.exit.i
  %call.i21.i = tail call ptr @of_graph_get_remote_node(ptr noundef %3, i32 noundef 0, i32 noundef -1) #6
  %tobool.not.i.i = icmp eq ptr %call.i21.i, null
  br i1 %tobool.not.i.i, label %if.then3.i.if.else.i_crit_edge, label %sun4i_tcon_connected_to_tcon_top.exit.i

if.then3.i.if.else.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

sun4i_tcon_connected_to_tcon_top.exit.i:          ; preds = %if.then3.i
  %call1.i22.i = tail call ptr @of_match_node(ptr noundef nonnull @sun8i_tcon_top_of_table, ptr noundef nonnull %call.i21.i) #6
  %tobool2.i.not.i = icmp eq ptr %call1.i22.i, null
  tail call void @of_node_put(ptr noundef nonnull %call.i21.i) #6
  br i1 %tobool2.i.not.i, label %sun4i_tcon_connected_to_tcon_top.exit.i.if.else.i_crit_edge, label %if.then5.i

sun4i_tcon_connected_to_tcon_top.exit.i.if.else.i_crit_edge: ; preds = %sun4i_tcon_connected_to_tcon_top.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else.i

if.then5.i:                                       ; preds = %sun4i_tcon_connected_to_tcon_top.exit.i
  %tcon_list.i.i = getelementptr inbounds %struct.sun4i_drv, ptr %1, i32 0, i32 2
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.then5.i
  %pos.0.in.i.i = phi ptr [ %tcon_list.i.i, %if.then5.i ], [ %pos.0.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %size.0.i.i = phi i32 [ 0, %if.then5.i ], [ %inc.i23.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %4 = ptrtoint ptr %pos.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %pos.0.i.i = load ptr, ptr %pos.0.in.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %pos.0.i.i, %tcon_list.i.i
  %inc.i23.i = add i32 %size.0.i.i, 1
  br i1 %cmp.i.not.i.i, label %for.cond.i.i.if.end8.i_crit_edge, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i.i

for.cond.i.i.if.end8.i_crit_edge:                 ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.else.i:                                        ; preds = %sun4i_tcon_connected_to_tcon_top.exit.i.if.else.i_crit_edge, %if.then3.i.if.else.i_crit_edge
  %call.i24.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call.i, ptr noundef null) #6
  %cmp.not15.i.i = icmp eq ptr %call.i24.i, null
  br i1 %cmp.not15.i.i, label %if.else.i.if.end8.i_crit_edge, label %if.else.i.for.body.i27.i_crit_edge

if.else.i.for.body.i27.i_crit_edge:               ; preds = %if.else.i
  br label %for.body.i27.i

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

for.body.i27.i:                                   ; preds = %cleanup.i.i.for.body.i27.i_crit_edge, %if.else.i.for.body.i27.i_crit_edge
  %ret.017.i.i = phi i32 [ %ret.1.i.i, %cleanup.i.i.for.body.i27.i_crit_edge ], [ -22, %if.else.i.for.body.i27.i_crit_edge ]
  %ep.016.i.i = phi ptr [ %call7.i.i, %cleanup.i.i.for.body.i27.i_crit_edge ], [ %call.i24.i, %if.else.i.for.body.i27.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i.i) #6
  %5 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %reg.i.i, align 4, !annotation !194
  %call1.i25.i = call ptr @of_graph_get_remote_endpoint(ptr noundef nonnull %ep.016.i.i) #6
  %tobool.not.i26.i = icmp eq ptr %call1.i25.i, null
  br i1 %tobool.not.i26.i, label %for.body.i27.i.cleanup.i.i_crit_edge, label %if.end.i.i

for.body.i27.i.cleanup.i.i_crit_edge:             ; preds = %for.body.i27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %for.body.i27.i
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1.i25.i, ptr noundef nonnull @.str.16, ptr noundef nonnull %reg.i.i, i32 noundef 1, i32 noundef 0) #6
  %6 = call i32 @llvm.smin.i32(i32 %call.i.i.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i.i)
  %tobool3.not.i.i = icmp sgt i32 %call.i.i.i.i, -1
  br i1 %tobool3.not.i.i, label %if.end5.i.i, label %if.end.i.i.cleanup.i.i_crit_edge

if.end.i.i.cleanup.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.end5.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg.i.i, align 4
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end5.i.i, %if.end.i.i.cleanup.i.i_crit_edge, %for.body.i27.i.cleanup.i.i_crit_edge
  %ret.1.i.i = phi i32 [ %8, %if.end5.i.i ], [ %ret.017.i.i, %for.body.i27.i.cleanup.i.i_crit_edge ], [ %6, %if.end.i.i.cleanup.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i.i) #6
  %call7.i.i = call ptr @of_get_next_available_child(ptr noundef nonnull %call.i, ptr noundef nonnull %ep.016.i.i) #6
  %cmp.not.i28.i = icmp eq ptr %call7.i.i, null
  br i1 %cmp.not.i28.i, label %cleanup.i.i.if.end8.i_crit_edge, label %cleanup.i.i.for.body.i27.i_crit_edge

cleanup.i.i.for.body.i27.i_crit_edge:             ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i27.i

cleanup.i.i.if.end8.i_crit_edge:                  ; preds = %cleanup.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end8.i

if.end8.i:                                        ; preds = %cleanup.i.i.if.end8.i_crit_edge, %if.else.i.if.end8.i_crit_edge, %for.cond.i.i.if.end8.i_crit_edge
  %id.0.i = phi i32 [ -22, %if.else.i.if.end8.i_crit_edge ], [ %ret.1.i.i, %cleanup.i.i.if.end8.i_crit_edge ], [ %size.0.i.i, %for.cond.i.i.if.end8.i_crit_edge ]
  br label %for.cond.i30.i

for.cond.i30.i:                                   ; preds = %for.body.i31.i.for.cond.i30.i_crit_edge, %if.end8.i
  %.pn.in.i.i = phi ptr [ %1, %if.end8.i ], [ %.pn.i.i, %for.body.i31.i.for.cond.i30.i_crit_edge ]
  %9 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i29.i = icmp eq ptr %.pn.i.i, %1
  br i1 %cmp.not.i29.i, label %for.cond.i30.i.sun4i_tcon_get_engine_by_id.exit.i_crit_edge, label %for.body.i31.i

for.cond.i30.i.sun4i_tcon_get_engine_by_id.exit.i_crit_edge: ; preds = %for.cond.i30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_get_engine_by_id.exit.i

for.body.i31.i:                                   ; preds = %for.cond.i30.i
  %id2.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %10 = ptrtoint ptr %id2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id2.i.i, align 4
  %cmp3.i.i = icmp eq i32 %11, %id.0.i
  br i1 %cmp3.i.i, label %cleanup.split.loop.exit13.i.i, label %for.body.i31.i.for.cond.i30.i_crit_edge

for.body.i31.i.for.cond.i30.i_crit_edge:          ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond.i30.i

cleanup.split.loop.exit13.i.i:                    ; preds = %for.body.i31.i
  call void @__sanitizer_cov_trace_pc() #8
  %engine.0.le.i.i = getelementptr i8, ptr %.pn.i.i, i32 -16
  br label %sun4i_tcon_get_engine_by_id.exit.i

sun4i_tcon_get_engine_by_id.exit.i:               ; preds = %cleanup.split.loop.exit13.i.i, %for.cond.i30.i.sun4i_tcon_get_engine_by_id.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %engine.0.le.i.i, %cleanup.split.loop.exit13.i.i ], [ inttoptr (i32 -22 to ptr), %for.cond.i30.i.sun4i_tcon_get_engine_by_id.exit.i_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call.i) #6
  br label %sun4i_tcon_find_engine.exit

if.end10.i:                                       ; preds = %of_get_child_count.exit.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  tail call void @of_node_put(ptr noundef nonnull %call.i) #6
  %call11.i = tail call fastcc ptr @sun4i_tcon_find_engine_traverse(ptr noundef %1, ptr noundef %3, i32 noundef 0) #6
  br label %sun4i_tcon_find_engine.exit

sun4i_tcon_find_engine.exit:                      ; preds = %if.end10.i, %sun4i_tcon_get_engine_by_id.exit.i
  %retval.0.i = phi ptr [ %retval.0.i.i, %sun4i_tcon_get_engine_by_id.exit.i ], [ %call11.i, %if.end10.i ]
  %cmp.i282 = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i282, label %sun4i_tcon_find_engine.exit.do.end_crit_edge, label %if.end

sun4i_tcon_find_engine.exit.do.end_crit_edge:     ; preds = %sun4i_tcon_find_engine.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

do.end:                                           ; preds = %sun4i_tcon_find_engine.exit.do.end_crit_edge, %entry.do.end_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #9
  br label %cleanup

if.end:                                           ; preds = %sun4i_tcon_find_engine.exit
  %call.i283 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i283, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i283, ptr %driver_data.i, align 4
  %drm5 = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 1
  %13 = ptrtoint ptr %drm5 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %data, ptr %drm5, align 4
  %14 = ptrtoint ptr %call.i283 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %call.i283, align 4
  %id = getelementptr inbounds %struct.sunxi_engine, ptr %retval.0.i, i32 0, i32 3
  %15 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %id, align 4
  %id7 = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 14
  %17 = ptrtoint ptr %id7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %id7, align 4
  %call8 = call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %quirks = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 12
  %18 = ptrtoint ptr %quirks to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8, ptr %quirks, align 4
  %call.i.i284 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #6
  %lcd_rst = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 10
  %19 = ptrtoint ptr %lcd_rst to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i284, ptr %lcd_rst, align 4
  %cmp.i285 = icmp ugt ptr %call.i.i284, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i285, label %do.end15, label %if.end18

do.end15:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  %20 = ptrtoint ptr %lcd_rst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %lcd_rst, align 4
  %22 = ptrtoint ptr %21 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end4
  %23 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %quirks, align 4
  %needs_edp_reset = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %needs_edp_reset to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %needs_edp_reset, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool20.not = icmp eq i8 %26, 0
  br i1 %tobool20.not, label %if.end18.if.end37_crit_edge, label %if.then21

if.end18.if.end37_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then21:                                        ; preds = %if.end18
  %call.i286 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %cmp.i287 = icmp ugt ptr %call.i286, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i287, label %do.end27, label %if.end29

do.end27:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #9
  %27 = ptrtoint ptr %call.i286 to i32
  br label %cleanup

if.end29:                                         ; preds = %if.then21
  %call30 = call i32 @reset_control_deassert(ptr noundef %call.i286) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end29.if.end37_crit_edge, label %do.end35

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

do.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  br label %cleanup

if.end37:                                         ; preds = %if.end29.if.end37_crit_edge, %if.end18.if.end37_crit_edge
  %28 = ptrtoint ptr %lcd_rst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %lcd_rst, align 4
  %call39 = call i32 @reset_control_reset(ptr noundef %29) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end45, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #9
  br label %cleanup

if.end45:                                         ; preds = %if.end37
  %30 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %quirks, align 4
  %supports_lvds = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %supports_lvds to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %supports_lvds, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool47.not = icmp eq i8 %33, 0
  br i1 %tobool47.not, label %if.end45.if.end102_crit_edge, label %if.then48

if.end45.if.end102_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

if.then48:                                        ; preds = %if.end45
  %call.i.i288 = call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef nonnull @.str.35, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #6
  %lvds_rst = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 11
  %34 = ptrtoint ptr %lvds_rst to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call.i.i288, ptr %lvds_rst, align 4
  %cmp.i289 = icmp ugt ptr %call.i.i288, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i289, label %do.end55, label %if.else

do.end55:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #9
  %35 = ptrtoint ptr %lvds_rst to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lvds_rst, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %cleanup

if.else:                                          ; preds = %if.then48
  %tobool59.not = icmp eq ptr %call.i.i288, null
  br i1 %tobool59.not, label %if.else.if.end65_crit_edge, label %if.then60

if.else.if.end65_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end65

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call62 = call i32 @reset_control_reset(ptr noundef nonnull %call.i.i288) #6
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.else.if.end65_crit_edge
  %38 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %quirks, align 4
  %has_lvds_alt67 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %has_lvds_alt67 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %has_lvds_alt67, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool68.not = icmp eq i8 %41, 0
  br i1 %tobool68.not, label %if.end65.if.end86_crit_edge, label %if.then69

if.end65.if.end86_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then69:                                        ; preds = %if.end65
  %call70 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.38) #6
  %lvds_pll = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 6
  %42 = ptrtoint ptr %lvds_pll to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call70, ptr %lvds_pll, align 4
  %cmp.i290 = icmp ugt ptr %call70, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i290, label %if.then73, label %if.then69.if.end86_crit_edge

if.then69.if.end86_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

if.then73:                                        ; preds = %if.then69
  %cmp = icmp eq ptr %call70, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.then73.if.end86_crit_edge, label %do.end80

if.then73.if.end86_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end86

do.end80:                                         ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40) #9
  %43 = ptrtoint ptr %lvds_pll to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %lvds_pll, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %cleanup

if.end86:                                         ; preds = %if.then73.if.end86_crit_edge, %if.then69.if.end86_crit_edge, %if.end65.if.end86_crit_edge
  %has_lvds_alt.0.off0 = phi i1 [ true, %if.end65.if.end86_crit_edge ], [ false, %if.then73.if.end86_crit_edge ], [ true, %if.then69.if.end86_crit_edge ]
  br i1 %tobool59.not, label %if.end86.do.end95_crit_edge, label %lor.lhs.false

if.end86.do.end95_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95

lor.lhs.false:                                    ; preds = %if.end86
  %46 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %quirks, align 4
  %has_lvds_alt89 = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %has_lvds_alt89 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %has_lvds_alt89, align 2, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool90.not = icmp eq i8 %49, 0
  %brmerge = or i1 %has_lvds_alt.0.off0, %tobool90.not
  br i1 %brmerge, label %lor.lhs.false.if.end102_crit_edge, label %lor.lhs.false.do.end95_crit_edge

lor.lhs.false.do.end95_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end95

lor.lhs.false.if.end102_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end102

do.end95:                                         ; preds = %lor.lhs.false.do.end95_crit_edge, %if.end86.do.end95_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.43) #9
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.46) #9
  br label %if.end102

if.end102:                                        ; preds = %do.end95, %lor.lhs.false.if.end102_crit_edge, %if.end45.if.end102_crit_edge
  %can_lvds.0.off0 = phi i1 [ false, %do.end95 ], [ true, %lor.lhs.false.if.end102_crit_edge ], [ false, %if.end45.if.end102_crit_edge ]
  %call.i291 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.64) #6
  %clk.i = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 3
  %50 = ptrtoint ptr %clk.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i291, ptr %clk.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i291, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end102.sun4i_tcon_init_clocks.exit_crit_edge, label %if.end.i294

if.end102.sun4i_tcon_init_clocks.exit_crit_edge:  ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_init_clocks.exit

if.end.i294:                                      ; preds = %if.end102
  %call.i.i292 = call i32 @clk_prepare(ptr noundef %call.i291) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i292)
  %tobool.not.i.i293 = icmp eq i32 %call.i.i292, 0
  br i1 %tobool.not.i.i293, label %if.end.i.i296, label %if.end.i294.clk_prepare_enable.exit.i_crit_edge

if.end.i294.clk_prepare_enable.exit.i_crit_edge:  ; preds = %if.end.i294
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i

if.end.i.i296:                                    ; preds = %if.end.i294
  %call1.i.i295 = call i32 @clk_enable(ptr noundef %call.i291) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i295)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i295, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i296.clk_prepare_enable.exit.i_crit_edge, label %if.then3.i.i

if.end.i.i296.clk_prepare_enable.exit.i_crit_edge: ; preds = %if.end.i.i296
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit.i

if.then3.i.i:                                     ; preds = %if.end.i.i296
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call.i291) #6
  br label %clk_prepare_enable.exit.i

clk_prepare_enable.exit.i:                        ; preds = %if.then3.i.i, %if.end.i.i296.clk_prepare_enable.exit.i_crit_edge, %if.end.i294.clk_prepare_enable.exit.i_crit_edge
  %51 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %quirks, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i297 = icmp eq i8 %54, 0
  br i1 %tobool.not.i297, label %clk_prepare_enable.exit.i.if.end17.i_crit_edge, label %if.then7.i

clk_prepare_enable.exit.i.if.end17.i_crit_edge:   ; preds = %clk_prepare_enable.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then7.i:                                       ; preds = %clk_prepare_enable.exit.i
  %call8.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.67) #6
  %sclk0.i = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 4
  %55 = ptrtoint ptr %sclk0.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call8.i, ptr %sclk0.i, align 4
  %cmp.i50.i = icmp ugt ptr %call8.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i50.i, label %if.then7.i.sun4i_tcon_init_clocks.exit_crit_edge, label %if.then7.i.if.end17.i_crit_edge

if.then7.i.if.end17.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17.i

if.then7.i.sun4i_tcon_init_clocks.exit_crit_edge: ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_init_clocks.exit

if.end17.i:                                       ; preds = %if.then7.i.if.end17.i_crit_edge, %clk_prepare_enable.exit.i.if.end17.i_crit_edge
  %sclk018.i = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 4
  %56 = ptrtoint ptr %sclk018.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %sclk018.i, align 4
  %call.i51.i = call i32 @clk_prepare(ptr noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i51.i)
  %tobool.not.i52.i = icmp eq i32 %call.i51.i, 0
  br i1 %tobool.not.i52.i, label %if.end.i55.i, label %if.end17.i.clk_prepare_enable.exit57.i_crit_edge

if.end17.i.clk_prepare_enable.exit57.i_crit_edge: ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit57.i

if.end.i55.i:                                     ; preds = %if.end17.i
  %call1.i53.i = call i32 @clk_enable(ptr noundef %57) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i53.i)
  %tobool2.not.i54.i = icmp eq i32 %call1.i53.i, 0
  br i1 %tobool2.not.i54.i, label %if.end.i55.i.clk_prepare_enable.exit57.i_crit_edge, label %if.then3.i56.i

if.end.i55.i.clk_prepare_enable.exit57.i_crit_edge: ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit57.i

if.then3.i56.i:                                   ; preds = %if.end.i55.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %57) #6
  br label %clk_prepare_enable.exit57.i

clk_prepare_enable.exit57.i:                      ; preds = %if.then3.i56.i, %if.end.i55.i.clk_prepare_enable.exit57.i_crit_edge, %if.end17.i.clk_prepare_enable.exit57.i_crit_edge
  %58 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %quirks, align 4
  %has_channel_1.i = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %has_channel_1.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %has_channel_1.i, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool21.not.i = icmp eq i8 %61, 0
  br i1 %tobool21.not.i, label %clk_prepare_enable.exit57.i.if.end109_crit_edge, label %if.then22.i

clk_prepare_enable.exit57.i.if.end109_crit_edge:  ; preds = %clk_prepare_enable.exit57.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then22.i:                                      ; preds = %clk_prepare_enable.exit57.i
  %call23.i = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.71) #6
  %sclk1.i = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 5
  %62 = ptrtoint ptr %sclk1.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call23.i, ptr %sclk1.i, align 4
  %cmp.i58.i = icmp ugt ptr %call23.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58.i, label %if.then22.i.sun4i_tcon_init_clocks.exit_crit_edge, label %if.then22.i.if.end109_crit_edge

if.then22.i.if.end109_crit_edge:                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

if.then22.i.sun4i_tcon_init_clocks.exit_crit_edge: ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_init_clocks.exit

sun4i_tcon_init_clocks.exit:                      ; preds = %if.then22.i.sun4i_tcon_init_clocks.exit_crit_edge, %if.then7.i.sun4i_tcon_init_clocks.exit_crit_edge, %if.end102.sun4i_tcon_init_clocks.exit_crit_edge
  %.str.73.sink.i = phi ptr [ @.str.65, %if.end102.sun4i_tcon_init_clocks.exit_crit_edge ], [ @.str.69, %if.then7.i.sun4i_tcon_init_clocks.exit_crit_edge ], [ @.str.73, %if.then22.i.sun4i_tcon_init_clocks.exit_crit_edge ]
  %sclk1.sink.i = phi ptr [ %clk.i, %if.end102.sun4i_tcon_init_clocks.exit_crit_edge ], [ %sclk0.i, %if.then7.i.sun4i_tcon_init_clocks.exit_crit_edge ], [ %sclk1.i, %if.then22.i.sun4i_tcon_init_clocks.exit_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.73.sink.i) #9
  %63 = ptrtoint ptr %sclk1.sink.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %sclk1.sink.i, align 4
  %tobool104.not = icmp eq ptr %64, null
  br i1 %tobool104.not, label %sun4i_tcon_init_clocks.exit.if.end109_crit_edge, label %do.end108

sun4i_tcon_init_clocks.exit.if.end109_crit_edge:  ; preds = %sun4i_tcon_init_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

do.end108:                                        ; preds = %sun4i_tcon_init_clocks.exit
  call void @__sanitizer_cov_trace_pc() #8
  %65 = ptrtoint ptr %64 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49) #9
  br label %err_assert_reset

if.end109:                                        ; preds = %sun4i_tcon_init_clocks.exit.if.end109_crit_edge, %if.then22.i.if.end109_crit_edge, %clk_prepare_enable.exit57.i.if.end109_crit_edge
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -16
  %call.i299 = call ptr @devm_platform_ioremap_resource(ptr noundef %add.ptr.i, i32 noundef 0) #6
  %cmp.i.i300 = icmp ugt ptr %call.i299, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i300, label %if.end109.sun4i_tcon_init_regmap.exit_crit_edge, label %if.end.i301

if.end109.sun4i_tcon_init_regmap.exit_crit_edge:  ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_init_regmap.exit

if.end.i301:                                      ; preds = %if.end109
  %call4.i = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev, ptr noundef null, ptr noundef %call.i299, ptr noundef nonnull @sun4i_tcon_regmap_config, ptr noundef nonnull @sun4i_tcon_init_regmap._key, ptr noundef nonnull @.str.75) #6
  %regs5.i = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 2
  %66 = ptrtoint ptr %regs5.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call4.i, ptr %regs5.i, align 4
  %cmp.i34.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i34.i, label %do.end.i, label %sun4i_tcon_init_regmap.exit.thread

do.end.i:                                         ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.76) #9
  %67 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %regs5.i, align 4
  br label %sun4i_tcon_init_regmap.exit

sun4i_tcon_init_regmap.exit.thread:               ; preds = %if.end.i301
  call void @__sanitizer_cov_trace_pc() #8
  %call13.i = call i32 @regmap_write(ptr noundef %call4.i, i32 noundef 0, i32 noundef 0) #6
  %69 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs5.i, align 4
  %call15.i = call i32 @regmap_write(ptr noundef %70, i32 noundef 4, i32 noundef 0) #6
  %71 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs5.i, align 4
  %call17.i = call i32 @regmap_write(ptr noundef %72, i32 noundef 8, i32 noundef 0) #6
  %73 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %regs5.i, align 4
  %call19.i = call i32 @regmap_write(ptr noundef %74, i32 noundef 140, i32 noundef -1) #6
  %75 = ptrtoint ptr %regs5.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %regs5.i, align 4
  %call21.i = call i32 @regmap_write(ptr noundef %76, i32 noundef 244, i32 noundef -1) #6
  br label %if.end116

sun4i_tcon_init_regmap.exit:                      ; preds = %do.end.i, %if.end109.sun4i_tcon_init_regmap.exit_crit_edge
  %retval.0.i302.in = phi ptr [ %68, %do.end.i ], [ %call.i299, %if.end109.sun4i_tcon_init_regmap.exit_crit_edge ]
  %tobool111.not = icmp eq ptr %retval.0.i302.in, null
  br i1 %tobool111.not, label %sun4i_tcon_init_regmap.exit.if.end116_crit_edge, label %do.end115

sun4i_tcon_init_regmap.exit.if.end116_crit_edge:  ; preds = %sun4i_tcon_init_regmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end116

do.end115:                                        ; preds = %sun4i_tcon_init_regmap.exit
  call void @__sanitizer_cov_trace_pc() #8
  %retval.0.i302 = ptrtoint ptr %retval.0.i302.in to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.52) #9
  br label %err_free_clocks

if.end116:                                        ; preds = %sun4i_tcon_init_regmap.exit.if.end116_crit_edge, %sun4i_tcon_init_regmap.exit.thread
  %77 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %quirks, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool118.not = icmp eq i8 %80, 0
  br i1 %tobool118.not, label %if.end116.if.end127_crit_edge, label %if.then119

if.end116.if.end127_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

if.then119:                                       ; preds = %if.end116
  %call120 = call i32 @sun4i_dclk_create(ptr noundef %dev, ptr noundef nonnull %call.i283) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.then119.if.end127_crit_edge, label %do.end125

if.then119.if.end127_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end127

do.end125:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.55) #9
  br label %err_free_clocks

if.end127:                                        ; preds = %if.then119.if.end127_crit_edge, %if.end116.if.end127_crit_edge
  %call.i304 = call i32 @platform_get_irq(ptr noundef %add.ptr.i, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i304)
  %cmp.i305 = icmp slt i32 %call.i304, 0
  br i1 %cmp.i305, label %if.end127.do.end133_crit_edge, label %if.end.i307

if.end127.do.end133_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end133

if.end.i307:                                      ; preds = %if.end127
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %81 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i306 = icmp eq ptr %82, null
  br i1 %tobool.not.i.i306, label %if.end.i.i308, label %if.end.i307.dev_name.exit.i_crit_edge

if.end.i307.dev_name.exit.i_crit_edge:            ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i308:                                    ; preds = %if.end.i307
  call void @__sanitizer_cov_trace_pc() #8
  %83 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i308, %if.end.i307.dev_name.exit.i_crit_edge
  %retval.0.i.i309 = phi ptr [ %84, %if.end.i.i308 ], [ %82, %if.end.i307.dev_name.exit.i_crit_edge ]
  %call.i.i310 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call.i304, ptr noundef nonnull @sun4i_tcon_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i309, ptr noundef nonnull %call.i283) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i310)
  %tobool.not.i311 = icmp eq i32 %call.i.i310, 0
  br i1 %tobool.not.i311, label %if.end134, label %do.end.i312

do.end.i312:                                      ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.78) #9
  br label %do.end133

do.end133:                                        ; preds = %do.end.i312, %if.end127.do.end133_crit_edge
  %retval.0.i313.ph = phi i32 [ %call.i304, %if.end127.do.end133_crit_edge ], [ %call.i.i310, %do.end.i312 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.58) #9
  br label %err_free_dotclock

if.end134:                                        ; preds = %dev_name.exit.i
  %call135 = call ptr @sun4i_crtc_init(ptr noundef %data, ptr noundef %retval.0.i, ptr noundef nonnull %call.i283) #6
  %crtc = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 13
  %85 = ptrtoint ptr %crtc to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call135, ptr %crtc, align 4
  %cmp.i314 = icmp ugt ptr %call135, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i314, label %do.end141, label %if.end144

do.end141:                                        ; preds = %if.end134
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.61) #9
  %86 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %crtc, align 4
  %88 = ptrtoint ptr %87 to i32
  br label %err_free_dotclock

if.end144:                                        ; preds = %if.end134
  %89 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %quirks, align 4
  %91 = ptrtoint ptr %90 to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %90, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool147.not = icmp eq i8 %92, 0
  br i1 %tobool147.not, label %if.end144.if.end165_crit_edge, label %if.then148

if.end144.if.end165_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.then148:                                       ; preds = %if.end144
  %93 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %of_node, align 8
  %call150 = call ptr @of_graph_get_remote_node(ptr noundef %94, i32 noundef 1, i32 noundef 0) #6
  %call151 = call i32 @of_device_is_compatible(ptr noundef %call150, ptr noundef nonnull @.str.63) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call151)
  %tobool152.not = icmp eq i32 %call151, 0
  br i1 %tobool152.not, label %if.else159, label %if.then153

if.then153:                                       ; preds = %if.then148
  br i1 %can_lvds.0.off0, label %if.then155, label %if.end161.thread

if.end161.thread:                                 ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef %call150) #6
  br label %err_free_dotclock

if.then155:                                       ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #8
  %call156 = call i32 @sun4i_lvds_init(ptr noundef %data, ptr noundef nonnull %call.i283) #6
  br label %if.end161

if.else159:                                       ; preds = %if.then148
  call void @__sanitizer_cov_trace_pc() #8
  %call160 = call i32 @sun4i_rgb_init(ptr noundef %data, ptr noundef nonnull %call.i283) #6
  br label %if.end161

if.end161:                                        ; preds = %if.else159, %if.then155
  %ret.0 = phi i32 [ %call156, %if.then155 ], [ %call160, %if.else159 ]
  call void @of_node_put(ptr noundef %call150) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp162 = icmp slt i32 %ret.0, 0
  br i1 %cmp162, label %if.end161.err_free_dotclock_crit_edge, label %if.end161.if.end165_crit_edge

if.end161.if.end165_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end165

if.end161.err_free_dotclock_crit_edge:            ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_dotclock

if.end165:                                        ; preds = %if.end161.if.end165_crit_edge, %if.end144.if.end165_crit_edge
  %95 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %quirks, align 4
  %needs_de_be_mux = getelementptr inbounds %struct.sun4i_tcon_quirks, ptr %96, i32 0, i32 3
  %97 = ptrtoint ptr %needs_de_be_mux to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %needs_de_be_mux, align 1, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool167.not = icmp eq i8 %98, 0
  br i1 %tobool167.not, label %if.end165.if.end174_crit_edge, label %if.then168

if.end165.if.end174_crit_edge:                    ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end174

if.then168:                                       ; preds = %if.end165
  call void @__sanitizer_cov_trace_pc() #8
  %regs = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 2
  %99 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %regs, align 4
  %101 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id7, align 4
  %call.i315 = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 64, i32 noundef 7, i32 noundef %102, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %103 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %regs, align 4
  %105 = ptrtoint ptr %id7 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %id7, align 4
  %call.i316 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 144, i32 noundef 3, i32 noundef %106, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %if.end174

if.end174:                                        ; preds = %if.then168, %if.end165.if.end174_crit_edge
  %list = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 15
  %tcon_list = getelementptr inbounds %struct.sun4i_drv, ptr %1, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.sun4i_drv, ptr %1, i32 0, i32 2, i32 1
  %107 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %prev.i, align 4
  %call.i.i317 = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %108, ptr noundef %tcon_list) #6
  br i1 %call.i.i317, label %if.end.i.i318, label %if.end174.cleanup_crit_edge

if.end174.cleanup_crit_edge:                      ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i318:                                    ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #8
  %109 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %list, ptr %prev.i, align 4
  %110 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %tcon_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 15, i32 1
  %111 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %108, ptr %prev3.i.i, align 4
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %112)
  store volatile ptr %list, ptr %108, align 4
  br label %cleanup

err_free_dotclock:                                ; preds = %if.end161.err_free_dotclock_crit_edge, %if.end161.thread, %do.end141, %do.end133
  %ret.1 = phi i32 [ %retval.0.i313.ph, %do.end133 ], [ %88, %do.end141 ], [ %ret.0, %if.end161.err_free_dotclock_crit_edge ], [ -22, %if.end161.thread ]
  %113 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %quirks, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %114, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool177.not = icmp eq i8 %116, 0
  br i1 %tobool177.not, label %err_free_dotclock.err_free_clocks_crit_edge, label %if.then178

err_free_dotclock.err_free_clocks_crit_edge:      ; preds = %err_free_dotclock
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_free_clocks

if.then178:                                       ; preds = %err_free_dotclock
  call void @__sanitizer_cov_trace_pc() #8
  %call179 = call i32 @sun4i_dclk_free(ptr noundef nonnull %call.i283) #6
  br label %err_free_clocks

err_free_clocks:                                  ; preds = %if.then178, %err_free_dotclock.err_free_clocks_crit_edge, %do.end125, %do.end115
  %ret.2 = phi i32 [ %retval.0.i302, %do.end115 ], [ %call120, %do.end125 ], [ %ret.1, %if.then178 ], [ %ret.1, %err_free_dotclock.err_free_clocks_crit_edge ]
  %sclk0.i319 = getelementptr inbounds %struct.sun4i_tcon, ptr %call.i283, i32 0, i32 4
  %117 = ptrtoint ptr %sclk0.i319 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %sclk0.i319, align 4
  call void @clk_disable(ptr noundef %118) #6
  call void @clk_unprepare(ptr noundef %118) #6
  %119 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %clk.i, align 4
  call void @clk_disable(ptr noundef %120) #6
  call void @clk_unprepare(ptr noundef %120) #6
  br label %err_assert_reset

err_assert_reset:                                 ; preds = %err_free_clocks, %do.end108
  %ret.3 = phi i32 [ %65, %do.end108 ], [ %ret.2, %err_free_clocks ]
  %121 = ptrtoint ptr %lcd_rst to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %lcd_rst, align 4
  %call182 = call i32 @reset_control_assert(ptr noundef %122) #6
  br label %cleanup

cleanup:                                          ; preds = %err_assert_reset, %if.end.i.i318, %if.end174.cleanup_crit_edge, %do.end80, %do.end55, %do.end44, %do.end35, %do.end27, %do.end15, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -517, %do.end ], [ %22, %do.end15 ], [ %27, %do.end27 ], [ %call30, %do.end35 ], [ %call39, %do.end44 ], [ %37, %do.end55 ], [ %ret.3, %err_assert_reset ], [ %45, %do.end80 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.end174.cleanup_crit_edge ], [ 0, %if.end.i.i318 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_tcon_unbind(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %master, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %list = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 15
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list) #6
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 15, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 15, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %quirks = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 12
  %10 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %quirks, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 4, !range !192
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %list_del.exit.if.end_crit_edge, label %if.then

list_del.exit.if.end_crit_edge:                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @sun4i_dclk_free(ptr noundef %1) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit.if.end_crit_edge
  %sclk0.i = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %sclk0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sclk0.i, align 4
  tail call void @clk_disable(ptr noundef %15) #6
  tail call void @clk_unprepare(ptr noundef %15) #6
  %clk.i = getelementptr inbounds %struct.sun4i_tcon, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %17) #6
  tail call void @clk_unprepare(ptr noundef %17) #6
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_dclk_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sun4i_crtc_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_lvds_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_rgb_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun4i_dclk_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sun4i_tcon_find_engine_traverse(ptr noundef %drv, ptr noundef %node, i32 noundef %port_id) unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #6
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %reg, align 4
  %call1 = tail call ptr @of_graph_get_port_by_id(ptr noundef %node, i32 noundef %port_id) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call1, ptr noundef null) #6
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end.out_put_port_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.out_put_port_crit_edge:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_port

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call1, ptr noundef nonnull %child.06.i) #6
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_available_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

of_get_available_child_count.exit:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num.07.i)
  %cmp.not = icmp eq i32 %num.07.i, 0
  br i1 %cmp.not, label %if.end5, label %of_get_available_child_count.exit.out_put_port_crit_edge

of_get_available_child_count.exit.out_put_port_crit_edge: ; preds = %of_get_available_child_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_port

if.end5:                                          ; preds = %of_get_available_child_count.exit
  %call6 = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call1, ptr noundef null) #6
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.out_put_port_crit_edge, label %if.end9

if.end5.out_put_port_crit_edge:                   ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_port

if.end9:                                          ; preds = %if.end5
  %call10 = tail call ptr @of_graph_get_remote_port_parent(ptr noundef nonnull %call6) #6
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.out_put_ep_crit_edge, label %if.end9.for.cond_crit_edge

if.end9.for.cond_crit_edge:                       ; preds = %if.end9
  br label %for.cond

if.end9.out_put_ep_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_ep

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end9.for.cond_crit_edge
  %.pn.in = phi ptr [ %.pn, %for.body.for.cond_crit_edge ], [ %drv, %if.end9.for.cond_crit_edge ]
  %1 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp15.not = icmp eq ptr %.pn, %drv
  br i1 %cmp15.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %node16 = getelementptr i8, ptr %.pn, i32 -12
  %2 = ptrtoint ptr %node16 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node16, align 4
  %cmp17 = icmp eq ptr %call10, %3
  br i1 %cmp17, label %out_put_remote.loopexit, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end:                                          ; preds = %for.cond
  tail call void @of_node_put(ptr noundef nonnull %call1) #6
  %call25 = tail call ptr @of_graph_get_remote_port(ptr noundef nonnull %call6) #6
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %call25, ptr noundef nonnull @.str.16, ptr noundef nonnull %reg, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool27.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool27.not, label %land.lhs.true, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

land.lhs.true:                                    ; preds = %for.end
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp28.not = icmp eq i32 %5, 0
  br i1 %cmp28.not, label %land.lhs.true.if.end30_crit_edge, label %if.then29

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %5, -1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %reg, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then29, %land.lhs.true.if.end30_crit_edge, %for.end.if.end30_crit_edge
  %7 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %reg, align 4
  %call31 = call fastcc ptr @sun4i_tcon_find_engine_traverse(ptr noundef %drv, ptr noundef nonnull %call10, i32 noundef %8)
  br label %out_put_remote

out_put_remote.loopexit:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %engine.0.le = getelementptr i8, ptr %.pn, i32 -16
  br label %out_put_remote

out_put_remote:                                   ; preds = %out_put_remote.loopexit, %if.end30
  %engine.1 = phi ptr [ %call31, %if.end30 ], [ %engine.0.le, %out_put_remote.loopexit ]
  %port.0 = phi ptr [ %call25, %if.end30 ], [ %call1, %out_put_remote.loopexit ]
  call void @of_node_put(ptr noundef nonnull %call10) #6
  br label %out_put_ep

out_put_ep:                                       ; preds = %out_put_remote, %if.end9.out_put_ep_crit_edge
  %engine.2 = phi ptr [ %engine.1, %out_put_remote ], [ inttoptr (i32 -22 to ptr), %if.end9.out_put_ep_crit_edge ]
  %port.1 = phi ptr [ %port.0, %out_put_remote ], [ %call1, %if.end9.out_put_ep_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call6) #6
  br label %out_put_port

out_put_port:                                     ; preds = %out_put_ep, %if.end5.out_put_port_crit_edge, %of_get_available_child_count.exit.out_put_port_crit_edge, %if.end.out_put_port_crit_edge
  %engine.3 = phi ptr [ inttoptr (i32 -22 to ptr), %of_get_available_child_count.exit.out_put_port_crit_edge ], [ %engine.2, %out_put_ep ], [ inttoptr (i32 -22 to ptr), %if.end5.out_put_port_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.out_put_port_crit_edge ]
  %port.2 = phi ptr [ %call1, %of_get_available_child_count.exit.out_put_port_crit_edge ], [ %port.1, %out_put_ep ], [ %call1, %if.end5.out_put_port_crit_edge ], [ %call1, %if.end.out_put_port_crit_edge ]
  call void @of_node_put(ptr noundef %port.2) #6
  br label %cleanup

cleanup:                                          ; preds = %out_put_port, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %engine.3, %out_put_port ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_remote_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_tcon_handler(i32 noundef %irq, ptr nocapture noundef readonly %private) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %drm1 = getelementptr inbounds %struct.sun4i_tcon, ptr %private, i32 0, i32 1
  %0 = ptrtoint ptr %drm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %drm1, align 4
  %crtc = getelementptr inbounds %struct.sun4i_tcon, ptr %private, i32 0, i32 13
  %2 = ptrtoint ptr %crtc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crtc, align 4
  %engine2 = getelementptr inbounds %struct.sun4i_crtc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %engine2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engine2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #6
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %status, align 4, !annotation !194
  %regs = getelementptr inbounds %struct.sun4i_tcon, ptr %private, i32 0, i32 2
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %call = call i32 @regmap_read(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %status) #6
  %9 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %status, align 4
  %and = and i32 %10, 51200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %3) #6
  %event_lock.i = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 28
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %event_lock.i) #6
  %event.i = getelementptr inbounds %struct.sun4i_crtc, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %event.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %event.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.sun4i_tcon_finish_page_flip.exit_crit_edge, label %if.then.i

if.end.sun4i_tcon_finish_page_flip.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sun4i_tcon_finish_page_flip.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @drm_crtc_send_vblank_event(ptr noundef %3, ptr noundef nonnull %12) #6
  call void @drm_crtc_vblank_put(ptr noundef %3) #6
  %13 = ptrtoint ptr %event.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %event.i, align 8
  br label %sun4i_tcon_finish_page_flip.exit

sun4i_tcon_finish_page_flip.exit:                 ; preds = %if.then.i, %if.end.sun4i_tcon_finish_page_flip.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %event_lock.i, i32 noundef %call2.i) #6
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef 4, i32 noundef 51200, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %5, align 4
  %vblank_quirk = getelementptr inbounds %struct.sunxi_engine_ops, ptr %17, i32 0, i32 6
  %18 = ptrtoint ptr %vblank_quirk to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vblank_quirk, align 4
  %tobool7.not = icmp eq ptr %19, null
  br i1 %tobool7.not, label %sun4i_tcon_finish_page_flip.exit.cleanup_crit_edge, label %if.then8

sun4i_tcon_finish_page_flip.exit.cleanup_crit_edge: ; preds = %sun4i_tcon_finish_page_flip.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then8:                                         ; preds = %sun4i_tcon_finish_page_flip.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void %19(ptr noundef %5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %sun4i_tcon_finish_page_flip.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then8 ], [ 1, %sun4i_tcon_finish_page_flip.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 90)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19, !21, !23, !24, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !86, !87, !88, !90, !92, !93, !94, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !112, !113, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !146, !147, !149, !151, !153, !154, !155, !156, !158, !160, !161, !162, !164, !166, !167, !168, !170, !171, !173, !174, !175, !176, !178, !180, !181, !182}
!llvm.module.flags = !{!183, !184, !185, !186, !187, !188, !189, !190}
!llvm.ident = !{!191}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 208, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 229, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @__ksymtab_sun4i_tcon_enable_vblank, !7, !"__ksymtab_sun4i_tcon_enable_vblank", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 240, i32 1}
!8 = !{ptr @__ksymtab_sun4i_tcon_mode_set, !9, !"__ksymtab_sun4i_tcon_mode_set", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 730, i32 1}
!10 = !{ptr @sun4i_tcon_of_table, !11, !"sun4i_tcon_of_table", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1546, i32 27}
!12 = !{ptr @__ksymtab_sun4i_tcon_of_table, !13, !"__ksymtab_sun4i_tcon_of_table", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1565, i32 1}
!14 = !{ptr @__initcall__kmod_sun4i_tcon__309_1575_sun4i_tcon_platform_driver_init6, !15, !"__initcall__kmod_sun4i_tcon__309_1575_sun4i_tcon_platform_driver_init6", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1575, i32 1}
!16 = !{ptr @__exitcall_sun4i_tcon_platform_driver_exit, !15, !"__exitcall_sun4i_tcon_platform_driver_exit", i1 false, i1 false}
!17 = !{ptr @__UNIQUE_ID_author310, !18, !"__UNIQUE_ID_author310", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1577, i32 1}
!19 = !{ptr @__UNIQUE_ID_description311, !20, !"__UNIQUE_ID_description311", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1578, i32 1}
!21 = !{ptr @__UNIQUE_ID_file312, !22, !"__UNIQUE_ID_file312", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1579, i32 1}
!23 = !{ptr @__UNIQUE_ID_license313, !22, !"__UNIQUE_ID_license313", i1 false, i1 false}
!24 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 90, i32 3}
!26 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 104, i32 3}
!28 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sun4i_tcon_channel_set_status._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @sun4i_tcon_channel_set_status._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 456, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 469, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 288, i32 2}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 557, i32 2}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 271, i32 2}
!41 = !{ptr @sun4i_a10_quirks, !42, !"sun4i_a10_quirks", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1456, i32 39}
!43 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 257, i32 2}
!45 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @sun4i_get_tcon0._entry, !44, !"_entry", i1 false, i1 false}
!49 = !{ptr @sun4i_get_tcon0._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @sun5i_a13_quirks, !51, !"sun5i_a13_quirks", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1463, i32 39}
!52 = !{ptr @sun6i_a31_quirks, !53, !"sun6i_a31_quirks", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1470, i32 39}
!54 = !{ptr @sun6i_a31s_quirks, !55, !"sun6i_a31s_quirks", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1479, i32 39}
!56 = !{ptr @sun7i_a20_quirks, !57, !"sun7i_a20_quirks", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1496, i32 39}
!58 = !{ptr @sun7i_a20_tcon0_quirks, !59, !"sun7i_a20_tcon0_quirks", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1486, i32 39}
!60 = !{ptr @sun8i_a33_quirks, !61, !"sun8i_a33_quirks", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1504, i32 39}
!62 = !{ptr @sun8i_a83t_lcd_quirks, !63, !"sun8i_a83t_lcd_quirks", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1512, i32 39}
!64 = !{ptr @sun8i_a83t_tv_quirks, !65, !"sun8i_a83t_tv_quirks", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1519, i32 39}
!66 = !{ptr @sun8i_r40_tv_quirks, !67, !"sun8i_r40_tv_quirks", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1523, i32 39}
!68 = !{ptr @.str.16, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 973, i32 38}
!70 = !{ptr @sun8i_v3s_quirks, !71, !"sun8i_v3s_quirks", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1529, i32 39}
!72 = !{ptr @sun9i_a80_tcon_lcd_quirks, !73, !"sun9i_a80_tcon_lcd_quirks", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1534, i32 39}
!74 = !{ptr @sun9i_a80_tcon_tv_quirks, !75, !"sun9i_a80_tcon_tv_quirks", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1540, i32 39}
!76 = !{ptr @.str.17, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1571, i32 12}
!78 = !{ptr @sun4i_tcon_platform_driver, !79, !"sun4i_tcon_platform_driver", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1567, i32 31}
!80 = !{ptr @sun4i_tcon_ops, !81, !"sun4i_tcon_ops", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1313, i32 35}
!82 = !{ptr @.str.18, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1124, i32 3}
!84 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @sun4i_tcon_bind._entry, !83, !"_entry", i1 false, i1 false}
!87 = !{ptr @sun4i_tcon_bind._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.21, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1137, i32 46}
!90 = !{ptr @.str.23, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1139, i32 3}
!92 = !{ptr @sun4i_tcon_bind._entry.22, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @sun4i_tcon_bind._entry_ptr.24, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.25, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1144, i32 49}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1146, i32 4}
!98 = !{ptr @sun4i_tcon_bind._entry.26, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @sun4i_tcon_bind._entry_ptr.28, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.30, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1152, i32 4}
!102 = !{ptr @sun4i_tcon_bind._entry.29, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @sun4i_tcon_bind._entry_ptr.31, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1160, i32 3}
!106 = !{ptr @sun4i_tcon_bind._entry.32, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @sun4i_tcon_bind._entry_ptr.34, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1172, i32 57}
!110 = !{ptr @sun4i_tcon_bind._entry.36, !111, !"_entry", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1174, i32 4}
!112 = !{ptr @sun4i_tcon_bind._entry_ptr.37, !111, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1191, i32 39}
!115 = !{ptr @.str.40, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1196, i32 6}
!117 = !{ptr @sun4i_tcon_bind._entry.39, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @sun4i_tcon_bind._entry_ptr.41, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.43, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1206, i32 4}
!121 = !{ptr @sun4i_tcon_bind._entry.42, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @sun4i_tcon_bind._entry_ptr.44, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1207, i32 4}
!125 = !{ptr @sun4i_tcon_bind._entry.45, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @sun4i_tcon_bind._entry_ptr.47, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.49, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1218, i32 3}
!129 = !{ptr @sun4i_tcon_bind._entry.48, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @sun4i_tcon_bind._entry_ptr.50, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.52, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1224, i32 3}
!133 = !{ptr @sun4i_tcon_bind._entry.51, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @sun4i_tcon_bind._entry_ptr.53, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.55, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1231, i32 4}
!137 = !{ptr @sun4i_tcon_bind._entry.54, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @sun4i_tcon_bind._entry_ptr.56, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.58, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1238, i32 3}
!141 = !{ptr @sun4i_tcon_bind._entry.57, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @sun4i_tcon_bind._entry_ptr.59, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.61, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1244, i32 3}
!145 = !{ptr @sun4i_tcon_bind._entry.60, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @sun4i_tcon_bind._entry_ptr.62, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.63, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 1256, i32 39}
!149 = !{ptr @.str.64, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 780, i32 32}
!151 = !{ptr @.str.65, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 782, i32 3}
!153 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @sun4i_tcon_init_clocks._entry, !152, !"_entry", i1 false, i1 false}
!155 = !{ptr @sun4i_tcon_init_clocks._entry_ptr, !152, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 788, i32 35}
!158 = !{ptr @.str.69, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 790, i32 4}
!160 = !{ptr @sun4i_tcon_init_clocks._entry.68, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @sun4i_tcon_init_clocks._entry_ptr.70, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 797, i32 35}
!164 = !{ptr @.str.73, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 799, i32 4}
!166 = !{ptr @sun4i_tcon_init_clocks._entry.72, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @sun4i_tcon_init_clocks._entry_ptr.74, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @sun4i_tcon_init_regmap._key, !169, !"_key", i1 false, i1 false}
!169 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 850, i32 15}
!170 = !{ptr @.str.75, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 853, i32 3}
!173 = !{ptr @.str.77, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @sun4i_tcon_init_regmap._entry, !172, !"_entry", i1 false, i1 false}
!175 = !{ptr @sun4i_tcon_init_regmap._entry_ptr, !172, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @sun4i_tcon_regmap_config, !177, !"sun4i_tcon_regmap_config", i1 false, i1 false}
!177 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 833, i32 35}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/gpu/drm/sun4i/sun4i_tcon.c", i32 826, i32 3}
!180 = !{ptr @.str.79, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @sun4i_tcon_init_irq._entry, !179, !"_entry", i1 false, i1 false}
!182 = !{ptr @sun4i_tcon_init_irq._entry_ptr, !179, !"_entry_ptr", i1 false, i1 false}
!183 = !{i32 1, !"wchar_size", i32 2}
!184 = !{i32 1, !"min_enum_size", i32 4}
!185 = !{i32 8, !"branch-target-enforcement", i32 0}
!186 = !{i32 8, !"sign-return-address", i32 0}
!187 = !{i32 8, !"sign-return-address-all", i32 0}
!188 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!189 = !{i32 7, !"uwtable", i32 1}
!190 = !{i32 7, !"frame-pointer", i32 2}
!191 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!192 = !{i8 0, i8 2}
!193 = !{!"branch_weights", i32 1, i32 2000}
!194 = !{!"auto-init"}
