; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.wuxga_nt_panel = type { %struct.drm_panel, ptr, ptr, i8, i8, i64, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_panasonic_vvx10f034n00__306_287_wuxga_nt_panel_driver_init6 = internal global ptr @wuxga_nt_panel_driver_init, section ".initcall6.init", align 4
@wuxga_nt_panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @wuxga_nt_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @wuxga_nt_panel_probe, ptr @wuxga_nt_panel_remove, ptr @wuxga_nt_panel_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_wuxga_nt_panel_driver_exit = internal global ptr @wuxga_nt_panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [87 x i8] c"panel_panasonic_vvx10f034n00.author=Werner Johansson <werner.johansson@sonymobile.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [127 x i8] c"panel_panasonic_vvx10f034n00.description=Panasonic VVX10F034N00 Novatek NT1397-based WUXGA (1920x1200) video mode panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [85 x i8] c"panel_panasonic_vvx10f034n00.file=drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [44 x i8] c"panel_panasonic_vvx10f034n00.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"panel-panasonic-vvx10f034n00\00", [35 x i8] zeroinitializer }, align 32
@wuxga_nt_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"panasonic,vvx10f034n00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 164402, i16 1920, i16 2072, i16 2124, i16 2144, i16 0, i16 1200, i16 1224, i16 1230, i16 1278, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@wuxga_nt_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @wuxga_nt_panel_prepare, ptr @wuxga_nt_panel_enable, ptr @wuxga_nt_panel_disable, ptr @wuxga_nt_panel_unprepare, ptr @wuxga_nt_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@wuxga_nt_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 116, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to set panel on: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wuxga_nt_panel_prepare\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wuxga_nt_panel_prepare._entry_ptr = internal global ptr @wuxga_nt_panel_prepare._entry, section ".printk_index", align 4
@wuxga_nt_panel_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 163, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"wuxga_nt_panel_get_modes\00", [39 x i8] zeroinitializer }, align 32
@wuxga_nt_panel_get_modes._entry_ptr = internal global ptr @wuxga_nt_panel_get_modes._entry, section ".printk_index", align 4
@wuxga_nt_panel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 260, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"wuxga_nt_panel_remove\00", [42 x i8] zeroinitializer }, align 32
@wuxga_nt_panel_remove._entry_ptr = internal global ptr @wuxga_nt_panel_remove._entry, section ".printk_index", align 4
@wuxga_nt_panel_remove._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 264, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@wuxga_nt_panel_remove._entry_ptr.13 = internal global ptr @wuxga_nt_panel_remove._entry.11, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [22 x i8] c"wuxga_nt_panel_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 278, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 280, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"wuxga_nt_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 185, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 142, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 198, i32 45 }
@___asan_gen_.29 = private unnamed_addr constant [21 x i8] c"wuxga_nt_panel_funcs\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 177, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 116, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 161, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 260, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private constant [56 x i8] c"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.72, i32 264, i32 3 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_wuxga_nt_panel_driver_exit, ptr @__initcall__kmod_panel_panasonic_vvx10f034n00__306_287_wuxga_nt_panel_driver_init6, ptr @wuxga_nt_panel_driver_exit, ptr @wuxga_nt_panel_get_modes._entry, ptr @wuxga_nt_panel_get_modes._entry_ptr, ptr @wuxga_nt_panel_prepare._entry, ptr @wuxga_nt_panel_prepare._entry_ptr, ptr @wuxga_nt_panel_remove._entry, ptr @wuxga_nt_panel_remove._entry.11, ptr @wuxga_nt_panel_remove._entry_ptr, ptr @wuxga_nt_panel_remove._entry_ptr.13, ptr @wuxga_nt_panel_driver, ptr @.str, ptr @wuxga_nt_of_match, ptr @default_mode, ptr @.str.1, ptr @wuxga_nt_panel_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wuxga_nt_panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wuxga_nt_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wuxga_nt_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wuxga_nt_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wuxga_nt_panel_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wuxga_nt_panel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wuxga_nt_panel_remove._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wuxga_nt_panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @wuxga_nt_panel_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @wuxga_nt_panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @wuxga_nt_panel_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wuxga_nt_panel_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %0 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 4, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %1 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3089, ptr %mode_flags, align 8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 56, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dsi1 = getelementptr inbounds %struct.wuxga_nt_panel, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %dsi1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dsi, ptr %dsi1, align 8
  %mode.i = getelementptr inbounds %struct.wuxga_nt_panel, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @default_mode, ptr %mode.i, align 8
  %call.i23 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %supply.i = getelementptr inbounds %struct.wuxga_nt_panel, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %supply.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i23, ptr %supply.i, align 4
  %cmp.i.i = icmp ugt ptr %call.i23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call.i23 to i32
  br label %wuxga_nt_panel_add.exit

if.end.i:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dsi1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dsi1, align 8
  %dev7.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %9, i32 0, i32 1
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev7.i, ptr noundef nonnull @wuxga_nt_panel_funcs, i32 noundef 16) #6
  %call9.i = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool.not.i, label %wuxga_nt_panel_add.exit.thread, label %if.end.i.wuxga_nt_panel_add.exit_crit_edge

if.end.i.wuxga_nt_panel_add.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wuxga_nt_panel_add.exit

wuxga_nt_panel_add.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  br label %if.end4

wuxga_nt_panel_add.exit:                          ; preds = %if.end.i.wuxga_nt_panel_add.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %7, %if.then.i ], [ %call9.i, %if.end.i.wuxga_nt_panel_add.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %wuxga_nt_panel_add.exit.cleanup_crit_edge, label %wuxga_nt_panel_add.exit.if.end4_crit_edge

wuxga_nt_panel_add.exit.if.end4_crit_edge:        ; preds = %wuxga_nt_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

wuxga_nt_panel_add.exit.cleanup_crit_edge:        ; preds = %wuxga_nt_panel_add.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %wuxga_nt_panel_add.exit.if.end4_crit_edge, %wuxga_nt_panel_add.exit.thread
  %call5 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.then7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then7:                                         ; preds = %if.end4
  %10 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call.i, align 8
  %tobool.not.i24 = icmp eq ptr %11, null
  br i1 %tobool.not.i24, label %if.then7.cleanup_crit_edge, label %if.then.i25

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i25:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then.i25, %if.then7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %wuxga_nt_panel_add.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %wuxga_nt_panel_add.exit.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ %call5, %if.then7.cleanup_crit_edge ], [ %call5, %if.then.i25 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wuxga_nt_panel_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call2 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %do.end7, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev8 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev8, ptr noundef nonnull @.str.12, i32 noundef %call2) #9
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %if.end.if.end9_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end9.wuxga_nt_panel_del.exit_crit_edge, label %if.then.i

if.end9.wuxga_nt_panel_del.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %wuxga_nt_panel_del.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_remove(ptr noundef %1) #6
  br label %wuxga_nt_panel_del.exit

wuxga_nt_panel_del.exit:                          ; preds = %if.then.i, %if.end9.wuxga_nt_panel_del.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wuxga_nt_panel_shutdown(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wuxga_nt_panel_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %earliest_wake = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %earliest_wake to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %earliest_wake, align 8
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  %sub.i = sub i64 %3, %call.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i)
  %cmp8.i.i.i = icmp slt i64 %sub.i, 0
  %4 = tail call i64 @llvm.abs.i64(i64 %sub.i, i1 false) #6
  %5 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %4) #10, !srcloc !54
  %6 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %4, i64 %5, i32 0) #10, !srcloc !55
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %6, 0
  %div1811.i.i.i = lshr i64 %asmresult10.i.i.i.i, 18
  %sub210.i.i.i = sub nsw i64 0, %div1811.i.i.i
  %cond213.i.i.i = select i1 %cmp8.i.i.i, i64 %sub210.i.i.i, i64 %div1811.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cond213.i.i.i)
  %cmp5 = icmp sgt i64 %cond213.i.i.i, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end7_crit_edge

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %7 = tail call i64 @llvm.smin.i64(i64 %cond213.i.i.i, i64 500)
  %conv = trunc i64 %7 to i32
  tail call void @msleep(i32 noundef %conv) #6
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end.if.end7_crit_edge
  %supply = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 2
  %8 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supply, align 4
  %call8 = tail call i32 @regulator_enable(ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  tail call void @msleep(i32 noundef 250) #6
  %dsi.i = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 1
  %10 = ptrtoint ptr %dsi.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dsi.i, align 8
  %call.i35 = tail call i32 @mipi_dsi_turn_on_peripheral(ptr noundef %11) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %cmp14 = icmp slt i32 %call.i35, 0
  br i1 %cmp14, label %do.end, label %if.end17

do.end:                                           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2, i32 noundef %call.i35) #9
  %14 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %supply, align 4
  %call20 = tail call i32 @regulator_disable(ptr noundef %15) #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %prepared, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %do.end, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i35, %do.end ], [ 0, %if.end17 ], [ 0, %entry.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wuxga_nt_panel_enable(ptr nocapture noundef %panel) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wuxga_nt_panel_disable(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dsi = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi, align 8
  %call1 = tail call i32 @mipi_dsi_shutdown_peripheral(ptr noundef %3) #6
  %4 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wuxga_nt_panel_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 8, !range !53
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %supply = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 2
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #6
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #6
  %add.i = add i64 %call.i, 500000000
  %earliest_wake = getelementptr inbounds %struct.wuxga_nt_panel, ptr %panel, i32 0, i32 5
  %4 = ptrtoint ptr %earliest_wake to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add.i, ptr %earliest_wake, align 8
  %5 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %prepared, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wuxga_nt_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @default_mode) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7, i32 noundef 1920, i32 noundef 1200, i32 noundef %call3) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #6
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #6
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %4 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 217, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %5 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 136, ptr %height_mm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_turn_on_peripheral(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_shutdown_peripheral(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !35, !37, !38, !39, !40, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @__initcall__kmod_panel_panasonic_vvx10f034n00__306_287_wuxga_nt_panel_driver_init6, !1, !"__initcall__kmod_panel_panasonic_vvx10f034n00__306_287_wuxga_nt_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 287, i32 1}
!2 = !{ptr @__exitcall_wuxga_nt_panel_driver_exit, !1, !"__exitcall_wuxga_nt_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 289, i32 1}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 290, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 291, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 280, i32 11}
!12 = !{ptr @wuxga_nt_panel_driver, !13, !"wuxga_nt_panel_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 278, i32 31}
!14 = !{ptr @wuxga_nt_of_match, !15, !"wuxga_nt_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 185, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 198, i32 45}
!18 = !{ptr @default_mode, !19, !"default_mode", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 142, i32 38}
!20 = !{ptr @wuxga_nt_panel_funcs, !21, !"wuxga_nt_panel_funcs", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 177, i32 37}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 116, i32 3}
!24 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @wuxga_nt_panel_prepare._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @wuxga_nt_panel_prepare._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 161, i32 3}
!32 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @wuxga_nt_panel_get_modes._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @wuxga_nt_panel_get_modes._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 260, i32 3}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @wuxga_nt_panel_remove._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @wuxga_nt_panel_remove._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-panasonic-vvx10f034n00.c", i32 264, i32 3}
!42 = !{ptr @wuxga_nt_panel_remove._entry.11, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @wuxga_nt_panel_remove._entry_ptr.13, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{i8 0, i8 2}
!54 = !{i64 479145, i64 479172}
!55 = !{i64 479840, i64 479867, i64 479900, i64 479921, i64 479948, i64 479974}
