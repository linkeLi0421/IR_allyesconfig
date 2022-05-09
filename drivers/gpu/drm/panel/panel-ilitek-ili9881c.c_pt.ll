; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.ili9881c_desc = type { ptr, i32, ptr, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.ili9881c_instr = type { i32, %union.arg }
%union.arg = type { %struct.cmd }
%struct.cmd = type { i8, i8 }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ili9881c = type { %struct.drm_panel, ptr, ptr, ptr, ptr, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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

@__initcall__kmod_panel_ilitek_ili9881c__302_962_ili9881c_dsi_driver_init6 = internal global ptr @ili9881c_dsi_driver_init, section ".initcall6.init", align 4
@ili9881c_dsi_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ili9881c_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ili9881c_dsi_probe, ptr @ili9881c_dsi_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_ili9881c_dsi_driver_exit = internal global ptr @ili9881c_dsi_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [78 x i8] c"panel_ilitek_ili9881c.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [68 x i8] c"panel_ilitek_ili9881c.description=Ilitek ILI9881C Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [71 x i8] c"panel_ilitek_ili9881c.file=drivers/gpu/drm/panel/panel-ilitek-ili9881c\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [37 x i8] c"panel_ilitek_ili9881c.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ili9881c-dsi\00", [19 x i8] zeroinitializer }, align 32
@ili9881c_of_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bananapi,lhr050h41\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @lhr050h41_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"feixin,k101-im2byl02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @k101_im2byl02_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"wanchanglong,w552946aba\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @w552946aba_desc }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@lhr050h41_desc = internal constant { %struct.ili9881c_desc, [16 x i8] } { %struct.ili9881c_desc { ptr @lhr050h41_init, i32 185, ptr @lhr050h41_default_mode, i32 4 }, [16 x i8] zeroinitializer }, align 32
@k101_im2byl02_desc = internal constant { %struct.ili9881c_desc, [16 x i8] } { %struct.ili9881c_desc { ptr @k101_im2byl02_init, i32 190, ptr @k101_im2byl02_default_mode, i32 4 }, [16 x i8] zeroinitializer }, align 32
@w552946aba_desc = internal constant { %struct.ili9881c_desc, [16 x i8] } { %struct.ili9881c_desc { ptr @w552946ab_init, i32 192, ptr @w552946aba_default_mode, i32 2563 }, [16 x i8] zeroinitializer }, align 32
@lhr050h41_default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 62000, i16 720, i16 730, i16 750, i16 780, i16 0, i16 1280, i16 1290, i16 1300, i16 1320, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 62, i16 110, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lhr050h41_init = internal constant { <{ { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr }>, [376 x i8] } { <{ { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr }> <{ { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 3, i8 undef } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 1, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 2, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 3, i8 115 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 4, i8 3 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 5, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 6, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 7, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 8, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 9, i8 24 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 10, i8 4 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 11, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 12, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 13, i8 3 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 14, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 15, i8 37 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 16, i8 37 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 17, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 18, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 19, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 20, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 21, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 22, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 23, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 24, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 25, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 26, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 27, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 28, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 29, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 30, i8 -64 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 31, i8 -128 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 32, i8 4 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 33, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 34, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 35, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 36, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 37, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 38, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 39, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 40, i8 51 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 41, i8 3 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 42, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 43, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 44, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 45, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 46, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 47, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 48, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 49, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 50, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 51, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 52, i8 4 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 53, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 54, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 55, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 56, i8 60 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 57, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 58, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 59, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 60, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 61, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 62, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 63, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 64, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 65, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 66, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 67, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 68, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 80, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 81, i8 35 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 82, i8 69 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 83, i8 103 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 84, i8 -119 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 85, i8 -85 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 86, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 87, i8 35 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 88, i8 69 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 89, i8 103 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 90, i8 -119 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 91, i8 -85 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 92, i8 -51 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 93, i8 -17 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 94, i8 17 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 95, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 96, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 97, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 98, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 99, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 100, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 101, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 102, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 103, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 104, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 105, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 106, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 107, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 108, i8 15 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 109, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 110, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 111, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 112, i8 7 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 113, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 114, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 115, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 116, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 117, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 118, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 119, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 120, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 121, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 122, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 123, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 124, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 125, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 126, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 127, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -128, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -127, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -126, i8 15 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -125, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -124, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -123, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -122, i8 7 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -121, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -120, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -119, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -118, i8 2 } } }, { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 4, i8 undef } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 108, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 110, i8 34 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 111, i8 51 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 58, i8 -92 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -115, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -121, i8 -70 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 38, i8 118 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -78, i8 -47 } } }, { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 1, i8 undef } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 34, i8 10 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 83, i8 -36 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 85, i8 -89 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 80, i8 120 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 81, i8 120 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 49, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 96, i8 20 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -96, i8 42 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -95, i8 57 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -94, i8 70 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -93, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -92, i8 18 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -91, i8 37 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -90, i8 25 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -89, i8 29 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -88, i8 -90 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -87, i8 28 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -86, i8 41 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -85, i8 -123 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -84, i8 28 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -83, i8 27 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -82, i8 81 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -81, i8 34 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -80, i8 45 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -79, i8 79 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -78, i8 89 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -77, i8 63 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -64, i8 42 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -63, i8 58 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -62, i8 69 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -61, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -60, i8 17 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -59, i8 36 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -58, i8 26 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -57, i8 28 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -56, i8 -86 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -55, i8 28 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -54, i8 41 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -53, i8 -106 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -52, i8 28 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -51, i8 27 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -50, i8 81 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -49, i8 34 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -48, i8 43 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -47, i8 75 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -46, i8 89 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -45, i8 63 } } } }>, [376 x i8] zeroinitializer }, align 32
@k101_im2byl02_default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 69700, i16 800, i16 852, i16 860, i16 908, i16 0, i16 1280, i16 1296, i16 1302, i16 1317, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 135, i16 217, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@k101_im2byl02_init = internal constant { <{ { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr }>, [368 x i8] } { <{ { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr }> <{ { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 3, i8 undef } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 1, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 2, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 3, i8 115 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 4, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 5, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 6, i8 8 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 7, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 8, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 9, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 10, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 11, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 12, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 13, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 14, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 15, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 16, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 17, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 18, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 19, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 20, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 21, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 22, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 23, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 24, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 25, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 26, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 27, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 28, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 29, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 30, i8 64 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 31, i8 -64 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 32, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 33, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 34, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 35, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 36, i8 -120 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 37, i8 -120 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 38, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 39, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 40, i8 59 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 41, i8 3 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 42, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 43, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 44, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 45, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 46, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 47, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 48, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 49, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 50, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 51, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 52, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 53, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 54, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 55, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 56, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 57, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 58, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 59, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 60, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 61, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 62, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 63, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 64, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 65, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 66, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 67, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 68, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 80, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 81, i8 35 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 82, i8 69 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 83, i8 103 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 84, i8 -119 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 85, i8 -85 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 86, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 87, i8 35 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 88, i8 69 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 89, i8 103 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 90, i8 -119 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 91, i8 -85 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 92, i8 -51 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 93, i8 -17 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 94, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 95, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 96, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 97, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 98, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 99, i8 7 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 100, i8 7 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 101, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 102, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 103, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 104, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 105, i8 5 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 106, i8 5 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 107, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 108, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 109, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 110, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 111, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 112, i8 15 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 113, i8 15 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 114, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 115, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 116, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 117, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 118, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 119, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 120, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 121, i8 7 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 122, i8 7 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 123, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 124, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 125, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 126, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 127, i8 5 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -128, i8 5 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -127, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -126, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -125, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -124, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -123, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -122, i8 15 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -121, i8 15 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -120, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -119, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -118, i8 2 } } }, { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 4, i8 undef } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 59, i8 -64 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 108, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 110, i8 42 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 111, i8 51 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -115, i8 27 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -121, i8 -70 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 58, i8 36 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 38, i8 118 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -78, i8 -47 } } }, { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 1, i8 undef } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 34, i8 10 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 49, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 64, i8 83 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 67, i8 102 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 83, i8 76 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 80, i8 -121 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 81, i8 -126 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 96, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 97, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 98, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 99, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -96, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -95, i8 19 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -94, i8 35 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -93, i8 20 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -92, i8 22 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -91, i8 41 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -90, i8 30 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -89, i8 29 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -88, i8 -122 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -87, i8 30 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -86, i8 41 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -85, i8 116 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -84, i8 25 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -83, i8 23 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -82, i8 75 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -81, i8 32 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -80, i8 38 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -79, i8 76 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -78, i8 93 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -77, i8 63 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -64, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -63, i8 19 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -62, i8 35 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -61, i8 20 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -60, i8 22 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -59, i8 41 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -58, i8 30 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -57, i8 29 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -56, i8 -122 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -55, i8 30 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -54, i8 41 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -53, i8 116 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -52, i8 25 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -51, i8 23 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -50, i8 75 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -49, i8 32 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -48, i8 38 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -47, i8 76 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -46, i8 93 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -45, i8 63 } } } }>, [368 x i8] zeroinitializer }, align 32
@w552946aba_default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 64000, i16 720, i16 760, i16 770, i16 810, i16 0, i16 1280, i16 1302, i16 1306, i16 1317, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 68, i16 121, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@w552946ab_init = internal constant { <{ { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } } }>, [384 x i8] } { <{ { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } }, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, %struct.ili9881c_instr, { i32, { i8, i8 } } }> <{ { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 3, i8 undef } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 1, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 2, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 3, i8 83 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 4, i8 83 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 5, i8 19 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 6, i8 4 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 7, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 8, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 9, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 10, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 11, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 12, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 13, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 14, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 15, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 16, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 17, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 18, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 19, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 20, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 21, i8 8 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 22, i8 16 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 23, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 24, i8 8 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 25, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 26, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 27, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 28, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 29, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 30, i8 -64 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 31, i8 -128 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 32, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 33, i8 9 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 34, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 35, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 36, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 37, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 38, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 39, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 40, i8 85 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 41, i8 3 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 42, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 43, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 44, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 45, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 46, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 47, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 48, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 49, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 50, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 51, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 52, i8 4 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 53, i8 5 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 54, i8 5 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 55, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 56, i8 60 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 57, i8 53 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 58, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 59, i8 64 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 60, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 61, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 62, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 63, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 64, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 65, i8 -120 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 66, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 67, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 68, i8 31 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 80, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 81, i8 35 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 82, i8 69 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 83, i8 103 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 84, i8 -119 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 85, i8 -85 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 86, i8 1 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 87, i8 35 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 88, i8 69 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 89, i8 103 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 90, i8 -119 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 91, i8 -85 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 92, i8 -51 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 93, i8 -17 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 94, i8 3 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 95, i8 20 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 96, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 97, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 98, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 99, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 100, i8 15 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 101, i8 16 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 102, i8 17 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 103, i8 8 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 104, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 105, i8 10 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 106, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 107, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 108, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 109, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 110, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 111, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 112, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 113, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 114, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 115, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 116, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 117, i8 20 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 118, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 119, i8 15 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 120, i8 14 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 121, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 122, i8 12 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 123, i8 17 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 124, i8 16 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 125, i8 6 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 126, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 127, i8 10 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -128, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -127, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -126, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -125, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -124, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -123, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -122, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -121, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -120, i8 8 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -119, i8 2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -118, i8 2 } } }, { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 4, i8 undef } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 0, i8 -128 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 112, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 113, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 102, i8 -2 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -126, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -124, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -123, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 58, i8 36 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 50, i8 -84 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -116, i8 -128 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 60, i8 -11 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -120, i8 51 } } }, { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 1, i8 undef } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 34, i8 10 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 49, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 83, i8 120 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 80, i8 91 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 81, i8 91 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 96, i8 32 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 97, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 98, i8 13 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 99, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -96, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -95, i8 16 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -94, i8 28 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -93, i8 19 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -92, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -91, i8 38 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -90, i8 26 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -89, i8 29 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -88, i8 103 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -87, i8 28 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -86, i8 41 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -85, i8 91 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -84, i8 38 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -83, i8 40 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -82, i8 92 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -81, i8 48 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -80, i8 49 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -79, i8 46 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -78, i8 50 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -77, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -64, i8 0 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -63, i8 16 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -62, i8 28 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -61, i8 19 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -60, i8 21 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -59, i8 38 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -58, i8 26 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -57, i8 29 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -56, i8 103 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -55, i8 28 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -54, i8 41 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -53, i8 91 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -52, i8 38 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -51, i8 40 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -50, i8 92 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -49, i8 48 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -48, i8 49 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -47, i8 46 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -46, i8 50 } } }, %struct.ili9881c_instr { i32 1, %union.arg { %struct.cmd { i8 -45, i8 0 } } }, { i32, { i8, i8 } } { i32 0, { i8, i8 } { i8 0, i8 undef } } }>, [384 x i8] zeroinitializer }, align 32
@ili9881c_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @ili9881c_prepare, ptr @ili9881c_enable, ptr @ili9881c_disable, ptr @ili9881c_unprepare, ptr @ili9881c_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Couldn't get our power regulator\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@ili9881c_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 897, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%pOF: failed to get orientation: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ili9881c_dsi_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-ilitek-ili9881c.c\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ili9881c_dsi_probe._entry_ptr = internal global ptr @ili9881c_dsi_probe._entry, section ".printk_index", align 4
@ili9881c_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.10, i32 844, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ili9881c_get_modes\00", [45 x i8] zeroinitializer }, align 32
@ili9881c_get_modes._entry_ptr = internal global ptr @ili9881c_get_modes._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"ili9881c_dsi_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 954, i32 31 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 958, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [18 x i8] c"ili9881c_of_match\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 946, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [15 x i8] c"lhr050h41_desc\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 924, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"k101_im2byl02_desc\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 931, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"w552946aba_desc\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 938, i32 35 }
@___asan_gen_.33 = private unnamed_addr constant [23 x i8] c"lhr050h41_default_mode\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 782, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant [15 x i8] c"lhr050h41_init\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 78, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [27 x i8] c"k101_im2byl02_default_mode\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 799, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant [19 x i8] c"k101_im2byl02_init\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 266, i32 36 }
@___asan_gen_.45 = private unnamed_addr constant [24 x i8] c"w552946aba_default_mode\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 816, i32 38 }
@___asan_gen_.48 = private unnamed_addr constant [15 x i8] c"w552946ab_init\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 459, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant [15 x i8] c"ili9881c_funcs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 861, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 884, i32 45 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 887, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 889, i32 50 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 892, i32 10 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 896, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.91 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 841, i32 3 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_ili9881c_dsi_driver_exit, ptr @__initcall__kmod_panel_ilitek_ili9881c__302_962_ili9881c_dsi_driver_init6, ptr @ili9881c_dsi_driver_exit, ptr @ili9881c_dsi_probe._entry, ptr @ili9881c_dsi_probe._entry_ptr, ptr @ili9881c_get_modes._entry, ptr @ili9881c_get_modes._entry_ptr, ptr @ili9881c_dsi_driver, ptr @.str, ptr @ili9881c_of_match, ptr @lhr050h41_desc, ptr @k101_im2byl02_desc, ptr @w552946aba_desc, ptr @lhr050h41_default_mode, ptr @lhr050h41_init, ptr @k101_im2byl02_default_mode, ptr @k101_im2byl02_init, ptr @w552946aba_default_mode, ptr @w552946ab_init, ptr @ili9881c_funcs, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9881c_dsi_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9881c_of_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lhr050h41_desc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2byl02_desc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w552946aba_desc to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lhr050h41_default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lhr050h41_init to i32), i32 1480, i32 1856, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2byl02_default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @k101_im2byl02_init to i32), i32 1520, i32 1888, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w552946aba_default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w552946ab_init to i32), i32 1536, i32 1920, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9881c_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9881c_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ili9881c_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9881c_dsi_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @ili9881c_dsi_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ili9881c_dsi_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @ili9881c_dsi_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9881c_dsi_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dsi1 = getelementptr inbounds %struct.ili9881c, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dsi1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dsi, ptr %dsi1, align 4
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %desc = getelementptr inbounds %struct.ili9881c, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %desc, align 4
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @ili9881c_funcs, i32 noundef 16) #6
  %call6 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.4) #6
  %power = getelementptr inbounds %struct.ili9881c, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %power to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call6, ptr %power, align 4
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then9, label %if.end14

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call6 to i32
  %call13 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %4, ptr noundef nonnull @.str.5) #6
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %call16 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef 3) #6
  %reset = getelementptr inbounds %struct.ili9881c, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call16, ptr %reset, align 4
  %cmp.i76 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then19, label %if.end24

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %call16 to i32
  %call23 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %6, ptr noundef nonnull @.str.7) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %of_node = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %orientation = getelementptr inbounds %struct.ili9881c, ptr %call.i, i32 0, i32 5
  %call26 = tail call i32 @of_drm_get_panel_orientation(ptr noundef %8, ptr noundef %orientation) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end32, label %do.end

do.end:                                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %10, i32 noundef %call26) #9
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %call34 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  %11 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc, align 4
  %mode_flags = getelementptr inbounds %struct.ili9881c_desc, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mode_flags, align 4
  %mode_flags40 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %15 = ptrtoint ptr %mode_flags40 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %mode_flags40, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %16 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %format, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %17 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4, ptr %lanes, align 8
  %call41 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.end32.cleanup_crit_edge, %do.end, %if.then19, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %if.then9 ], [ %call23, %if.then19 ], [ %call26, %do.end ], [ %call41, %if.end37 ], [ -12, %entry.cleanup_crit_edge ], [ %call34, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9881c_dsi_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  tail call void @drm_panel_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_drm_get_panel_orientation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9881c_prepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  %buf.i61 = alloca [4 x i8], align 1
  %buf.i58 = alloca [2 x i8], align 1
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %power = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %power, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup31_crit_edge

entry.cleanup31_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

if.end:                                           ; preds = %entry
  tail call void @msleep(i32 noundef 5) #6
  %reset = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 20) #6
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #6
  tail call void @msleep(i32 noundef 20) #6
  %desc = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 2
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %init_length69 = getelementptr inbounds %struct.ili9881c_desc, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %init_length69 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %init_length69, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp70.not = icmp eq i32 %9, 0
  br i1 %cmp70.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i58, i32 0, i32 1
  %dsi.i59 = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %12 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %13 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %14 = phi ptr [ %7, %for.body.lr.ph ], [ %39, %for.inc.for.body_crit_edge ]
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %arrayidx = getelementptr %struct.ili9881c_instr, ptr %16, i32 %i.071
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %for.body.for.inc_crit_edge [
    i32 0, label %if.then5
    i32 1, label %if.then9
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arg = getelementptr %struct.ili9881c_instr, ptr %16, i32 %i.071, i32 1
  %20 = ptrtoint ptr %arg to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arg, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #6
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 -1, ptr %buf.i, align 1
  %23 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 -104, ptr %11, align 1
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 -127, ptr %12, align 1
  %25 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %21, ptr %13, align 1
  %26 = ptrtoint ptr %dsi.i59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dsi.i59, align 4
  %call.i = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %27, ptr noundef nonnull %buf.i, i32 noundef 4) #6
  %28 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #6
  br label %if.end14

if.then9:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arg10 = getelementptr %struct.ili9881c_instr, ptr %16, i32 %i.071, i32 1
  %29 = ptrtoint ptr %arg10 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arg10, align 4
  %data = getelementptr inbounds %struct.cmd, ptr %arg10, i32 0, i32 1
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i58) #6
  %33 = ptrtoint ptr %buf.i58 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %30, ptr %buf.i58, align 1
  %34 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %32, ptr %10, align 1
  %35 = ptrtoint ptr %dsi.i59 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dsi.i59, align 4
  %call.i60 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %36, ptr noundef nonnull %buf.i58, i32 noundef 2) #6
  %37 = call i32 @llvm.smin.i32(i32 %call.i60, i32 0) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i58) #6
  br label %if.end14

if.end14:                                         ; preds = %if.then9, %if.then5
  %ret.1 = phi i32 [ %28, %if.then5 ], [ %37, %if.then9 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool15.not = icmp eq i32 %ret.1, 0
  br i1 %tobool15.not, label %if.end14.for.inc_crit_edge, label %if.end14.cleanup31_crit_edge

if.end14.cleanup31_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.071, 1
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc, align 4
  %init_length = getelementptr inbounds %struct.ili9881c_desc, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %init_length to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %init_length, align 4
  %cmp = icmp ult i32 %inc, %41
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i61) #6
  %42 = getelementptr inbounds [4 x i8], ptr %buf.i61, i32 0, i32 1
  %43 = getelementptr inbounds [4 x i8], ptr %buf.i61, i32 0, i32 2
  %44 = getelementptr inbounds [4 x i8], ptr %buf.i61, i32 0, i32 3
  %45 = ptrtoint ptr %buf.i61 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 -1, ptr %buf.i61, align 1
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 -104, ptr %42, align 1
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 -127, ptr %43, align 1
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %44, align 1
  %dsi.i62 = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 1
  %49 = ptrtoint ptr %dsi.i62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dsi.i62, align 4
  %call.i63 = call i32 @mipi_dsi_dcs_write_buffer(ptr noundef %50, ptr noundef nonnull %buf.i61, i32 noundef 4) #6
  %51 = call i32 @llvm.smin.i32(i32 %call.i63, i32 0) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i61) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i63)
  %tobool19.not = icmp sgt i32 %call.i63, -1
  br i1 %tobool19.not, label %if.end21, label %for.end.cleanup31_crit_edge

for.end.cleanup31_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

if.end21:                                         ; preds = %for.end
  %52 = ptrtoint ptr %dsi.i62 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dsi.i62, align 4
  %call22 = call i32 @mipi_dsi_dcs_set_tear_on(ptr noundef %53, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end25, label %if.end21.cleanup31_crit_edge

if.end21.cleanup31_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31

if.end25:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %dsi.i62 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dsi.i62, align 4
  %call27 = call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %55) #6
  br label %cleanup31

cleanup31:                                        ; preds = %if.end25, %if.end21.cleanup31_crit_edge, %for.end.cleanup31_crit_edge, %if.end14.cleanup31_crit_edge, %entry.cleanup31_crit_edge
  %retval.2 = phi i32 [ %call1, %entry.cleanup31_crit_edge ], [ %51, %for.end.cleanup31_crit_edge ], [ %call22, %if.end21.cleanup31_crit_edge ], [ %call27, %if.end25 ], [ %ret.1, %if.end14.cleanup31_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9881c_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 120) #6
  %dsi = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9881c_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %1) #6
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9881c_unprepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #6
  %power = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 3
  %2 = ptrtoint ptr %power to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %power, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %3) #6
  %reset = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 4
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ili9881c_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %desc = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 2
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %mode1 = getelementptr inbounds %struct.ili9881c_desc, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %mode1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode1, align 4
  %call2 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef %5) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dsi = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 1
  %6 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dsi, align 4
  %dev3 = getelementptr inbounds %struct.mipi_dsi_device, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %mode5 = getelementptr inbounds %struct.ili9881c_desc, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %mode5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mode5, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %13 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %11, i32 0, i32 6
  %14 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %vdisplay, align 2
  %conv8 = zext i16 %15 to i32
  %call11 = tail call i32 @drm_mode_vrefresh(ptr noundef %11) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev3, ptr noundef nonnull @.str.13, i32 noundef %conv, i32 noundef %conv8, i32 noundef %call11) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call2) #6
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 28
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call2) #6
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 26
  %17 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %width_mm, align 2
  %conv12 = zext i16 %18 to i32
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %19 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv12, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call2, i32 0, i32 27
  %20 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %height_mm, align 4
  %conv14 = zext i16 %21 to i32
  %height_mm16 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %22 = ptrtoint ptr %height_mm16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv14, ptr %height_mm16, align 4
  %orientation = getelementptr inbounds %struct.ili9881c, ptr %panel, i32 0, i32 5
  %23 = ptrtoint ptr %orientation to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %orientation, align 4
  %call17 = tail call i32 @drm_connector_set_panel_orientation(ptr noundef %connector, i32 noundef %24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_tear_on(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_write_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_panel_orientation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !45, !46, !47, !48, !49, !50, !52, !54, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_panel_ilitek_ili9881c__302_962_ili9881c_dsi_driver_init6, !1, !"__initcall__kmod_panel_ilitek_ili9881c__302_962_ili9881c_dsi_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 962, i32 1}
!2 = !{ptr @__exitcall_ili9881c_dsi_driver_exit, !1, !"__exitcall_ili9881c_dsi_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 964, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 965, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 966, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 958, i32 12}
!12 = !{ptr @ili9881c_dsi_driver, !13, !"ili9881c_dsi_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 954, i32 31}
!14 = !{ptr @ili9881c_of_match, !15, !"ili9881c_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 946, i32 34}
!16 = !{ptr @lhr050h41_desc, !17, !"lhr050h41_desc", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 924, i32 35}
!18 = !{ptr @lhr050h41_init, !19, !"lhr050h41_init", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 78, i32 36}
!20 = !{ptr @lhr050h41_default_mode, !21, !"lhr050h41_default_mode", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 782, i32 38}
!22 = !{ptr @k101_im2byl02_desc, !23, !"k101_im2byl02_desc", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 931, i32 35}
!24 = !{ptr @k101_im2byl02_init, !25, !"k101_im2byl02_init", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 266, i32 36}
!26 = !{ptr @k101_im2byl02_default_mode, !27, !"k101_im2byl02_default_mode", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 799, i32 38}
!28 = !{ptr @w552946aba_desc, !29, !"w552946aba_desc", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 938, i32 35}
!30 = !{ptr @w552946ab_init, !31, !"w552946ab_init", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 459, i32 36}
!32 = !{ptr @w552946aba_default_mode, !33, !"w552946aba_default_mode", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 816, i32 38}
!34 = !{ptr @.str.4, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 884, i32 45}
!36 = !{ptr @.str.5, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 887, i32 10}
!38 = !{ptr @.str.6, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 889, i32 50}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 892, i32 10}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 896, i32 3}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ili9881c_dsi_probe._entry, !43, !"_entry", i1 false, i1 false}
!49 = !{ptr @ili9881c_dsi_probe._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @ili9881c_funcs, !51, !"ili9881c_funcs", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 861, i32 37}
!52 = !{ptr @.str.13, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-ilitek-ili9881c.c", i32 841, i32 3}
!54 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ili9881c_get_modes._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ili9881c_get_modes._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
