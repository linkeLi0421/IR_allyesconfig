; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-seiko-43wvf1g.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.seiko_panel_desc = type { ptr, i32, ptr, i32, i32, %struct.anon.84, i32, i32 }
%struct.anon.84 = type { i32, i32 }
%struct.display_timing = type { %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, %struct.timing_entry, i32 }
%struct.timing_entry = type { i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.seiko_panel = type { %struct.drm_panel, i8, i8, ptr, ptr, ptr }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.89 }
%union.anon.89 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_seiko_43wvf1g__306_340_seiko_panel_platform_driver_init6 = internal global ptr @seiko_panel_platform_driver_init, section ".initcall6.init", align 4
@seiko_panel_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @seiko_panel_platform_probe, ptr @seiko_panel_remove, ptr @seiko_panel_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @platform_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_seiko_panel_platform_driver_exit = internal global ptr @seiko_panel_platform_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author307 = internal constant [65 x i8] c"panel_seiko_43wvf1g.author=Marco Franchi <marco.franchi@nxp.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [59 x i8] c"panel_seiko_43wvf1g.description=Seiko 43WVF1G panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [67 x i8] c"panel_seiko_43wvf1g.file=drivers/gpu/drm/panel/panel-seiko-43wvf1g\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [35 x i8] c"panel_seiko_43wvf1g.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"seiko_panel\00", [20 x i8] zeroinitializer }, align 32
@platform_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sii,43wvf1g\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @seiko_43wvf1g }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dvdd\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@seiko_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @seiko_panel_prepare, ptr @seiko_panel_enable, ptr @seiko_panel_disable, ptr @seiko_panel_unprepare, ptr @seiko_panel_get_modes, ptr @seiko_panel_get_timings }, [40 x i8] zeroinitializer }, align 32
@seiko_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 163, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable dvdd: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"seiko_panel_prepare\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/panel/panel-seiko-43wvf1g.c\00", [52 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@seiko_panel_prepare._entry_ptr = internal global ptr @seiko_panel_prepare._entry, section ".printk_index", align 4
@seiko_panel_prepare._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 172, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to enable avdd: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@seiko_panel_prepare._entry_ptr.10 = internal global ptr @seiko_panel_prepare._entry.8, section ".printk_index", align 4
@seiko_panel_get_fixed_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.5, i32 74, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to add mode %ux%u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"seiko_panel_get_fixed_modes\00", [36 x i8] zeroinitializer }, align 32
@seiko_panel_get_fixed_modes._entry_ptr = internal global ptr @seiko_panel_get_fixed_modes._entry, section ".printk_index", align 4
@seiko_panel_get_fixed_modes._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.5, i32 96, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@seiko_panel_get_fixed_modes._entry_ptr.15 = internal global ptr @seiko_panel_get_fixed_modes._entry.13, section ".printk_index", align 4
@seiko_43wvf1g = internal constant { %struct.seiko_panel_desc, [60 x i8] } { %struct.seiko_panel_desc { ptr null, i32 0, ptr @seiko_43wvf1g_timing, i32 1, i32 8, %struct.anon.84 { i32 93, i32 57 }, i32 4106, i32 10 }, [60 x i8] zeroinitializer }, align 32
@seiko_43wvf1g_timing = internal constant { %struct.display_timing, [48 x i8] } { %struct.display_timing { %struct.timing_entry { i32 33500000, i32 33500000, i32 33500000 }, %struct.timing_entry { i32 800, i32 800, i32 800 }, %struct.timing_entry { i32 164, i32 164, i32 164 }, %struct.timing_entry { i32 89, i32 89, i32 89 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, %struct.timing_entry { i32 480, i32 480, i32 480 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, %struct.timing_entry { i32 23, i32 23, i32 23 }, %struct.timing_entry { i32 10, i32 10, i32 10 }, i32 16 }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"seiko_panel_platform_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 331, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 333, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [18 x i8] c"platform_of_match\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 310, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 246, i32 40 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 250, i32 40 }
@___asan_gen_.31 = private unnamed_addr constant [18 x i8] c"seiko_panel_funcs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 223, i32 37 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 163, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 172, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 73, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 94, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"seiko_43wvf1g\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 298, i32 38 }
@___asan_gen_.76 = private unnamed_addr constant [21 x i8] c"seiko_43wvf1g_timing\00", align 1
@___asan_gen_.77 = private constant [47 x i8] c"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.77, i32 285, i32 36 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_seiko_panel_platform_driver_exit, ptr @__initcall__kmod_panel_seiko_43wvf1g__306_340_seiko_panel_platform_driver_init6, ptr @seiko_panel_get_fixed_modes._entry, ptr @seiko_panel_get_fixed_modes._entry.13, ptr @seiko_panel_get_fixed_modes._entry_ptr, ptr @seiko_panel_get_fixed_modes._entry_ptr.15, ptr @seiko_panel_platform_driver_exit, ptr @seiko_panel_prepare._entry, ptr @seiko_panel_prepare._entry.8, ptr @seiko_panel_prepare._entry_ptr, ptr @seiko_panel_prepare._entry_ptr.10, ptr @seiko_panel_platform_driver, ptr @.str, ptr @platform_of_match, ptr @.str.1, ptr @.str.2, ptr @seiko_panel_funcs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @seiko_43wvf1g, ptr @seiko_43wvf1g_timing], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seiko_panel_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seiko_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seiko_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seiko_panel_prepare._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seiko_panel_get_fixed_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seiko_panel_get_fixed_modes._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seiko_43wvf1g to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seiko_43wvf1g_timing to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @seiko_panel_platform_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @seiko_panel_platform_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @seiko_panel_platform_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @seiko_panel_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seiko_panel_platform_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @platform_of_match, ptr noundef %1) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #8
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %enabled.i = getelementptr inbounds %struct.seiko_panel, ptr %call.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %enabled.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %enabled.i, align 1
  %prepared.i = getelementptr inbounds %struct.seiko_panel, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %prepared.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %prepared.i, align 4
  %desc1.i = getelementptr inbounds %struct.seiko_panel, ptr %call.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %desc1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %desc1.i, align 4
  %call2.i = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  %dvdd.i = getelementptr inbounds %struct.seiko_panel, ptr %call.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %dvdd.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.i, ptr %dvdd.i, align 4
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then5.i, label %if.end8.i

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call2.i to i32
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %call9.i = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #8
  %avdd.i = getelementptr inbounds %struct.seiko_panel, ptr %call.i.i, i32 0, i32 5
  %9 = ptrtoint ptr %avdd.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9.i, ptr %avdd.i, align 4
  %cmp.i41.i = icmp ugt ptr %call9.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41.i, label %if.then12.i, label %if.end15.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  %10 = ptrtoint ptr %call9.i to i32
  br label %cleanup

if.end15.i:                                       ; preds = %if.end8.i
  tail call void @drm_panel_init(ptr noundef nonnull %call.i.i, ptr noundef %dev, ptr noundef nonnull @seiko_panel_funcs, i32 noundef 17) #8
  %call17.i = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  br i1 %tobool18.not.i, label %if.end20.i, label %if.end15.i.cleanup_crit_edge

if.end15.i.cleanup_crit_edge:                     ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end20.i:                                       ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @drm_panel_add(ptr noundef nonnull %call.i.i) #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call.i.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20.i, %if.end15.i.cleanup_crit_edge, %if.then12.i, %if.then5.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ %8, %if.then5.i ], [ %10, %if.then12.i ], [ 0, %if.end20.i ], [ -12, %if.end.cleanup_crit_edge ], [ %call17.i, %if.end15.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seiko_panel_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #8
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @seiko_panel_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_panel_disable(ptr noundef %1) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seiko_panel_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %dvdd = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dvdd, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.3, i32 noundef %call1) #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  tail call void @msleep(i32 noundef 100) #8
  %avdd = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 5
  %6 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %avdd, align 4
  %call4 = tail call i32 @regulator_enable(ptr noundef %7) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.end9, label %if.end11

do.end9:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.9, i32 noundef %call4) #11
  %10 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvdd, align 4
  %call14 = tail call i32 @regulator_disable(ptr noundef %11) #8
  br label %cleanup

if.end11:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %do.end ], [ %call4, %do.end9 ], [ 0, %if.end11 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @seiko_panel_enable(ptr nocapture noundef %panel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @seiko_panel_disable(ptr nocapture noundef %panel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seiko_panel_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %avdd = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 5
  %2 = ptrtoint ptr %avdd to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %avdd, align 4
  %call1 = tail call i32 @regulator_disable(ptr noundef %3) #8
  tail call void @msleep(i32 noundef 100) #8
  %dvdd = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 4
  %4 = ptrtoint ptr %dvdd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dvdd, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #8
  %6 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seiko_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  %vm.i = alloca %struct.videomode, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc.i = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.seiko_panel_get_fixed_modes.exit_crit_edge, label %for.cond.preheader.i

entry.seiko_panel_get_fixed_modes.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %seiko_panel_get_fixed_modes.exit

for.cond.preheader.i:                             ; preds = %entry
  %num_timings126.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_timings126.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_timings126.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp127.not.i = icmp eq i32 %3, 0
  br i1 %cmp127.not.i, label %for.cond.preheader.i.for.cond21.preheader.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.cond21.preheader.i_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond21.preheader.i

for.cond21.preheader.i:                           ; preds = %cleanup.i.for.cond21.preheader.i_crit_edge, %for.cond.preheader.i.for.cond21.preheader.i_crit_edge
  %num.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.cond21.preheader.i_crit_edge ], [ %num.1.i, %cleanup.i.for.cond21.preheader.i_crit_edge ]
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc.i, align 4
  %num_modes131.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %num_modes131.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_modes131.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23132.not.i = icmp eq i32 %7, 0
  br i1 %cmp23132.not.i, label %for.cond21.preheader.i.for.end61.i_crit_edge, label %for.cond21.preheader.i.for.body25.i_crit_edge

for.cond21.preheader.i.for.body25.i_crit_edge:    ; preds = %for.cond21.preheader.i
  br label %for.body25.i

for.cond21.preheader.i.for.end61.i_crit_edge:     ; preds = %for.cond21.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end61.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %8 = phi ptr [ %30, %cleanup.i.for.body.i_crit_edge ], [ %1, %for.cond.preheader.i.for.body.i_crit_edge ]
  %num.0130.i = phi i32 [ %num.1.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %i.0128.i = phi i32 [ %inc20.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %timings.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %8, i32 0, i32 2
  %9 = ptrtoint ptr %timings.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %timings.i, align 4
  %arrayidx.i = getelementptr %struct.display_timing, ptr %10, i32 %i.0128.i
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %vm.i) #8
  %11 = call ptr @memset(ptr %vm.i, i32 255, i32 40)
  call void @videomode_from_timing(ptr noundef %arrayidx.i, ptr noundef nonnull %vm.i) #8
  %12 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %connector, align 8
  %call.i = call ptr @drm_mode_create(ptr noundef %13) #8
  %tobool3.not.i = icmp eq ptr %call.i, null
  br i1 %tobool3.not.i, label %do.end.i, label %if.end7.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %panel, align 4
  %typ.i = getelementptr %struct.display_timing, ptr %10, i32 %i.0128.i, i32 1, i32 1
  %16 = ptrtoint ptr %typ.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %typ.i, align 4
  %typ6.i = getelementptr %struct.display_timing, ptr %10, i32 %i.0128.i, i32 5, i32 1
  %18 = ptrtoint ptr %typ6.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %typ6.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %17, i32 noundef %19) #11
  br label %cleanup.i

if.end7.i:                                        ; preds = %for.body.i
  call void @drm_display_mode_from_videomode(ptr noundef nonnull %vm.i, ptr noundef nonnull %call.i) #8
  %type.i = getelementptr inbounds %struct.drm_display_mode, ptr %call.i, i32 0, i32 28
  %20 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %type.i, align 2
  %22 = or i8 %21, 64
  store i8 %22, ptr %type.i, align 2
  %23 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc.i, align 4
  %num_timings10.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %num_timings10.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_timings10.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp11.i = icmp eq i32 %26, 1
  br i1 %cmp11.i, label %if.then13.i, label %if.end7.i.if.end18.i_crit_edge

if.end7.i.if.end18.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18.i

if.then13.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = or i8 %21, 72
  %28 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %type.i, align 2
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then13.i, %if.end7.i.if.end18.i_crit_edge
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call.i) #8
  %inc.i = add i32 %num.0130.i, 1
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end18.i, %do.end.i
  %num.1.i = phi i32 [ %inc.i, %if.end18.i ], [ %num.0130.i, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %vm.i) #8
  %inc20.i = add nuw i32 %i.0128.i, 1
  %29 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %desc.i, align 4
  %num_timings.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %num_timings.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_timings.i, align 4
  %cmp.i = icmp ult i32 %inc20.i, %32
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.cond21.preheader.i_crit_edge

cleanup.i.for.cond21.preheader.i_crit_edge:       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond21.preheader.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body25.i:                                     ; preds = %cleanup56.i.for.body25.i_crit_edge, %for.cond21.preheader.i.for.body25.i_crit_edge
  %33 = phi ptr [ %54, %cleanup56.i.for.body25.i_crit_edge ], [ %5, %for.cond21.preheader.i.for.body25.i_crit_edge ]
  %num.2135.i = phi i32 [ %num.3.i, %cleanup56.i.for.body25.i_crit_edge ], [ %num.0.lcssa.i, %for.cond21.preheader.i.for.body25.i_crit_edge ]
  %i.1133.i = phi i32 [ %inc60.i, %cleanup56.i.for.body25.i_crit_edge ], [ 0, %for.cond21.preheader.i.for.body25.i_crit_edge ]
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %33, align 4
  %arrayidx27.i = getelementptr %struct.drm_display_mode, ptr %35, i32 %i.1133.i
  %36 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %connector, align 8
  %call29.i = call ptr @drm_mode_duplicate(ptr noundef %37, ptr noundef %arrayidx27.i) #8
  %tobool30.not.i = icmp eq ptr %call29.i, null
  br i1 %tobool30.not.i, label %do.end34.i, label %if.end40.i

do.end34.i:                                       ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  %38 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %panel, align 4
  %hdisplay.i = getelementptr %struct.drm_display_mode, ptr %35, i32 %i.1133.i, i32 1
  %40 = ptrtoint ptr %hdisplay.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %hdisplay.i, align 4
  %conv37.i = zext i16 %41 to i32
  %vdisplay.i = getelementptr %struct.drm_display_mode, ptr %35, i32 %i.1133.i, i32 6
  %42 = ptrtoint ptr %vdisplay.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vdisplay.i, align 2
  %conv38.i = zext i16 %43 to i32
  %call39.i = call i32 @drm_mode_vrefresh(ptr noundef %arrayidx27.i) #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.14, i32 noundef %conv37.i, i32 noundef %conv38.i, i32 noundef %call39.i) #11
  br label %cleanup56.i

if.end40.i:                                       ; preds = %for.body25.i
  %type41.i = getelementptr inbounds %struct.drm_display_mode, ptr %call29.i, i32 0, i32 28
  %44 = ptrtoint ptr %type41.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %type41.i, align 2
  %46 = or i8 %45, 64
  store i8 %46, ptr %type41.i, align 2
  %47 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %desc.i, align 4
  %num_modes46.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %num_modes46.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %num_modes46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %50)
  %cmp47.i = icmp eq i32 %50, 1
  br i1 %cmp47.i, label %if.then49.i, label %if.end40.i.if.end54.i_crit_edge

if.end40.i.if.end54.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54.i

if.then49.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %51 = or i8 %45, 72
  %52 = ptrtoint ptr %type41.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %type41.i, align 2
  br label %if.end54.i

if.end54.i:                                       ; preds = %if.then49.i, %if.end40.i.if.end54.i_crit_edge
  call void @drm_mode_set_name(ptr noundef nonnull %call29.i) #8
  call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call29.i) #8
  %inc55.i = add i32 %num.2135.i, 1
  br label %cleanup56.i

cleanup56.i:                                      ; preds = %if.end54.i, %do.end34.i
  %num.3.i = phi i32 [ %inc55.i, %if.end54.i ], [ %num.2135.i, %do.end34.i ]
  %inc60.i = add nuw i32 %i.1133.i, 1
  %53 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %desc.i, align 4
  %num_modes.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %num_modes.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %num_modes.i, align 4
  %cmp23.i = icmp ult i32 %inc60.i, %56
  br i1 %cmp23.i, label %cleanup56.i.for.body25.i_crit_edge, label %cleanup56.i.for.end61.i_crit_edge

cleanup56.i.for.end61.i_crit_edge:                ; preds = %cleanup56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end61.i

cleanup56.i.for.body25.i_crit_edge:               ; preds = %cleanup56.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25.i

for.end61.i:                                      ; preds = %cleanup56.i.for.end61.i_crit_edge, %for.cond21.preheader.i.for.end61.i_crit_edge
  %num.2.lcssa.i = phi i32 [ %num.0.lcssa.i, %for.cond21.preheader.i.for.end61.i_crit_edge ], [ %num.3.i, %cleanup56.i.for.end61.i_crit_edge ]
  %.lcssa.i = phi ptr [ %5, %for.cond21.preheader.i.for.end61.i_crit_edge ], [ %54, %cleanup56.i.for.end61.i_crit_edge ]
  %bpc.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %.lcssa.i, i32 0, i32 4
  %57 = ptrtoint ptr %bpc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %bpc.i, align 4
  %display_info.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %bpc63.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %59 = ptrtoint ptr %bpc63.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %bpc63.i, align 8
  %60 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc.i, align 4
  %size.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %61, i32 0, i32 5
  %62 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %size.i, align 4
  %64 = ptrtoint ptr %display_info.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %display_info.i, align 8
  %65 = load ptr, ptr %desc.i, align 4
  %height.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %65, i32 0, i32 5, i32 1
  %66 = ptrtoint ptr %height.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %height.i, align 4
  %height_mm.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %68 = ptrtoint ptr %height_mm.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %height_mm.i, align 4
  %69 = load ptr, ptr %desc.i, align 4
  %bus_format.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %69, i32 0, i32 6
  %70 = ptrtoint ptr %bus_format.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bus_format.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool70.not.i = icmp eq i32 %71, 0
  br i1 %tobool70.not.i, label %for.end61.i.if.end76.i_crit_edge, label %if.then71.i

for.end61.i.if.end76.i_crit_edge:                 ; preds = %for.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end76.i

if.then71.i:                                      ; preds = %for.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  %call75.i = call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info.i, ptr noundef %bus_format.i, i32 noundef 1) #8
  br label %if.end76.i

if.end76.i:                                       ; preds = %if.then71.i, %for.end61.i.if.end76.i_crit_edge
  %72 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc.i, align 4
  %bus_flags.i = getelementptr inbounds %struct.seiko_panel_desc, ptr %73, i32 0, i32 7
  %74 = ptrtoint ptr %bus_flags.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %bus_flags.i, align 4
  %bus_flags79.i = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %76 = ptrtoint ptr %bus_flags79.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %bus_flags79.i, align 8
  br label %seiko_panel_get_fixed_modes.exit

seiko_panel_get_fixed_modes.exit:                 ; preds = %if.end76.i, %entry.seiko_panel_get_fixed_modes.exit_crit_edge
  %retval.0.i = phi i32 [ %num.2.lcssa.i, %if.end76.i ], [ 0, %entry.seiko_panel_get_fixed_modes.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @seiko_panel_get_timings(ptr nocapture noundef readonly %panel, i32 noundef %num_timings, ptr noundef writeonly %timings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.seiko_panel, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %num_timings1 = getelementptr inbounds %struct.seiko_panel_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %num_timings1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_timings1, align 4
  %4 = tail call i32 @llvm.umin.i32(i32 %3, i32 %num_timings)
  %tobool.not = icmp ne ptr %timings, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp520 = icmp ne i32 %4, 0
  %or.cond = select i1 %tobool.not, i1 %cmp520, i1 false
  br i1 %or.cond, label %entry.for.body_crit_edge, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.display_timing, ptr %timings, i32 %i.021
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %desc, align 4
  %timings7 = getelementptr inbounds %struct.seiko_panel_desc, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %timings7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %timings7, align 4
  %arrayidx8 = getelementptr %struct.display_timing, ptr %8, i32 %i.021
  %9 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx8, i32 112)
  %inc = add nuw i32 %i.021, 1
  %exitcond.not = icmp eq i32 %inc, %4
  br i1 %exitcond.not, label %for.body.if.end9_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.end9:                                          ; preds = %for.body.if.end9_crit_edge, %entry.if.end9_crit_edge
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %num_timings11 = getelementptr inbounds %struct.seiko_panel_desc, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %num_timings11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_timings11, align 4
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videomode_from_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !40, !41, !43, !45}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @__initcall__kmod_panel_seiko_43wvf1g__306_340_seiko_panel_platform_driver_init6, !1, !"__initcall__kmod_panel_seiko_43wvf1g__306_340_seiko_panel_platform_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 340, i32 1}
!2 = !{ptr @__exitcall_seiko_panel_platform_driver_exit, !1, !"__exitcall_seiko_panel_platform_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author307, !4, !"__UNIQUE_ID_author307", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 342, i32 1}
!5 = !{ptr @__UNIQUE_ID_description308, !6, !"__UNIQUE_ID_description308", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 343, i32 1}
!7 = !{ptr @__UNIQUE_ID_file309, !8, !"__UNIQUE_ID_file309", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 344, i32 1}
!9 = !{ptr @__UNIQUE_ID_license310, !8, !"__UNIQUE_ID_license310", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 333, i32 11}
!12 = !{ptr @seiko_panel_platform_driver, !13, !"seiko_panel_platform_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 331, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 246, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 250, i32 40}
!18 = !{ptr @seiko_panel_funcs, !19, !"seiko_panel_funcs", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 223, i32 37}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 163, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @seiko_panel_prepare._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @seiko_panel_prepare._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 172, i32 3}
!30 = !{ptr @seiko_panel_prepare._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @seiko_panel_prepare._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 73, i32 4}
!34 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @seiko_panel_get_fixed_modes._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @seiko_panel_get_fixed_modes._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 94, i32 4}
!39 = !{ptr @seiko_panel_get_fixed_modes._entry.13, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @seiko_panel_get_fixed_modes._entry_ptr.15, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @platform_of_match, !42, !"platform_of_match", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 310, i32 34}
!43 = !{ptr @seiko_43wvf1g, !44, !"seiko_43wvf1g", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 298, i32 38}
!45 = !{ptr @seiko_43wvf1g_timing, !46, !"seiko_43wvf1g_timing", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-seiko-43wvf1g.c", i32 285, i32 36}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
