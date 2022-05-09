; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.ls037v7dw01_panel = type { %struct.drm_panel, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.84 }
%union.anon.84 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_sharp_ls037v7dw01__302_219_ls037v7dw01_driver_init6 = internal global ptr @ls037v7dw01_driver_init, section ".initcall6.init", align 4
@ls037v7dw01_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ls037v7dw01_probe, ptr @ls037v7dw01_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ls037v7dw01_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ls037v7dw01_driver_exit = internal global ptr @ls037v7dw01_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [70 x i8] c"panel_sharp_ls037v7dw01.author=Tomi Valkeinen <tomi.valkeinen@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description304 = internal constant [67 x i8] c"panel_sharp_ls037v7dw01.description=Sharp LS037V7DW01 Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file305 = internal constant [75 x i8] c"panel_sharp_ls037v7dw01.file=drivers/gpu/drm/panel/panel-sharp-ls037v7dw01\00", section ".modinfo", align 1
@__UNIQUE_ID_license306 = internal constant [36 x i8] c"panel_sharp_ls037v7dw01.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"panel-sharp-ls037v7dw01\00", [40 x i8] zeroinitializer }, align 32
@ls037v7dw01_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"sharp,ls037v7dw01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"envdd\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to get regulator\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"failed to get enable gpio\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get reset gpio\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mode\00", [27 x i8] zeroinitializer }, align 32
@ls037v7dw01_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 166, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get mode[0] gpio\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ls037v7dw01_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c\00", [48 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ls037v7dw01_probe._entry_ptr = internal global ptr @ls037v7dw01_probe._entry, section ".printk_index", align 4
@ls037v7dw01_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 173, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get mode[1] gpio\0A\00", [36 x i8] zeroinitializer }, align 32
@ls037v7dw01_probe._entry_ptr.15 = internal global ptr @ls037v7dw01_probe._entry.13, section ".printk_index", align 4
@ls037v7dw01_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 180, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get mode[2] gpio\0A\00", [36 x i8] zeroinitializer }, align 32
@ls037v7dw01_probe._entry_ptr.18 = internal global ptr @ls037v7dw01_probe._entry.16, section ".printk_index", align 4
@ls037v7dw01_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @ls037v7dw01_prepare, ptr @ls037v7dw01_enable, ptr @ls037v7dw01_disable, ptr @ls037v7dw01_unprepare, ptr @ls037v7dw01_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@ls037v7dw01_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.10, i32 68, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: failed to enable regulator\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ls037v7dw01_prepare\00", [44 x i8] zeroinitializer }, align 32
@ls037v7dw01_prepare._entry_ptr = internal global ptr @ls037v7dw01_prepare._entry, section ".printk_index", align 4
@ls037v7dw01_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 19200, i16 480, i16 481, i16 483, i16 511, i16 0, i16 640, i16 641, i16 642, i16 643, i16 0, i32 10, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 56, i16 75, i8 72, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [19 x i8] c"ls037v7dw01_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 210, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 214, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [21 x i8] c"ls037v7dw01_of_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 203, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 148, i32 44 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 151, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 153, i32 45 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 156, i32 10 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 158, i32 46 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 161, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 163, i32 50 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 166, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 173, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 180, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [18 x i8] c"ls037v7dw01_funcs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 129, i32 37 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.90 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 67, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [17 x i8] c"ls037v7dw01_mode\00", align 1
@___asan_gen_.94 = private constant [51 x i8] c"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.94, i32 86, i32 38 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_description304, ptr @__UNIQUE_ID_file305, ptr @__UNIQUE_ID_license306, ptr @__exitcall_ls037v7dw01_driver_exit, ptr @__initcall__kmod_panel_sharp_ls037v7dw01__302_219_ls037v7dw01_driver_init6, ptr @ls037v7dw01_driver_exit, ptr @ls037v7dw01_prepare._entry, ptr @ls037v7dw01_prepare._entry_ptr, ptr @ls037v7dw01_probe._entry, ptr @ls037v7dw01_probe._entry.13, ptr @ls037v7dw01_probe._entry.16, ptr @ls037v7dw01_probe._entry_ptr, ptr @ls037v7dw01_probe._entry_ptr.15, ptr @ls037v7dw01_probe._entry_ptr.18, ptr @ls037v7dw01_driver, ptr @.str, ptr @ls037v7dw01_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @ls037v7dw01_funcs, ptr @.str.19, ptr @.str.20, ptr @ls037v7dw01_mode], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls037v7dw01_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls037v7dw01_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls037v7dw01_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls037v7dw01_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls037v7dw01_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls037v7dw01_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls037v7dw01_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls037v7dw01_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ls037v7dw01_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ls037v7dw01_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ls037v7dw01_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ls037v7dw01_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls037v7dw01_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 52, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pdev1 = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %pdev1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %pdev, ptr %pdev1, align 4
  %call3 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  %vdd = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %vdd to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %vdd, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end11

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %call3 to i32
  %call10 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @.str.2) #4
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call13 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef 3) #4
  %ini_gpio = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %ini_gpio to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %ini_gpio, align 4
  %cmp.i104 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104, label %if.then16, label %if.end21

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %call13 to i32
  %call20 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull @.str.4) #4
  br label %cleanup

if.end21:                                         ; preds = %if.end11
  %call23 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef 3) #4
  %resb_gpio = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %resb_gpio to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %resb_gpio, align 4
  %cmp.i105 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105, label %if.then26, label %if.end31

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %call23 to i32
  %call30 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %7, ptr noundef nonnull @.str.6) #4
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %call33 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 0, i32 noundef 3) #4
  %mo_gpio = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %call.i, i32 0, i32 5
  %8 = ptrtoint ptr %mo_gpio to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call33, ptr %mo_gpio, align 4
  %cmp.i106 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i106, label %do.end, label %if.end40

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #7
  %9 = ptrtoint ptr %mo_gpio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %mo_gpio, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end31
  %call42 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 1, i32 noundef 3) #4
  %lr_gpio = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %call.i, i32 0, i32 6
  %12 = ptrtoint ptr %lr_gpio to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call42, ptr %lr_gpio, align 4
  %cmp.i107 = icmp ugt ptr %call42, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i107, label %do.end48, label %if.end52

do.end48:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  %13 = ptrtoint ptr %lr_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lr_gpio, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end52:                                         ; preds = %if.end40
  %call54 = tail call ptr @devm_gpiod_get_index(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 3) #4
  %ud_gpio = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %call.i, i32 0, i32 7
  %16 = ptrtoint ptr %ud_gpio to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call54, ptr %ud_gpio, align 4
  %cmp.i108 = icmp ugt ptr %call54, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i108, label %do.end60, label %if.end64

do.end60:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #7
  %17 = ptrtoint ptr %ud_gpio to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ud_gpio, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end64:                                         ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @ls037v7dw01_funcs, i32 noundef 17) #4
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end64, %do.end60, %do.end48, %do.end, %if.then26, %if.then16, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call10, %if.then6 ], [ %call20, %if.then16 ], [ %call30, %if.then26 ], [ %11, %do.end ], [ %15, %do.end48 ], [ %19, %do.end60 ], [ 0, %if.end64 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls037v7dw01_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #4
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #4
  %call4 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls037v7dw01_prepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %pdev = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls037v7dw01_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 50) #4
  %resb_gpio = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %panel, i32 0, i32 3
  %0 = ptrtoint ptr %resb_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resb_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 1) #4
  %ini_gpio = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %ini_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ini_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls037v7dw01_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ini_gpio = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %panel, i32 0, i32 4
  %0 = ptrtoint ptr %ini_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ini_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %1, i32 noundef 0) #4
  %resb_gpio = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %panel, i32 0, i32 3
  %2 = ptrtoint ptr %resb_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resb_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #4
  tail call void @msleep(i32 noundef 100) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls037v7dw01_unprepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %vdd = getelementptr inbounds %struct.ls037v7dw01_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %vdd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdd, align 4
  %call = tail call i32 @regulator_disable(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ls037v7dw01_get_modes(ptr nocapture noundef readnone %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @ls037v7dw01_mode) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #4
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %2 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 56, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %3 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 75, ptr %height_mm, align 4
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %4 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 134, ptr %bus_flags, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !46, !48, !49, !50, !51, !53}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__initcall__kmod_panel_sharp_ls037v7dw01__302_219_ls037v7dw01_driver_init6, !1, !"__initcall__kmod_panel_sharp_ls037v7dw01__302_219_ls037v7dw01_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 219, i32 1}
!2 = !{ptr @__exitcall_ls037v7dw01_driver_exit, !1, !"__exitcall_ls037v7dw01_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 221, i32 1}
!5 = !{ptr @__UNIQUE_ID_description304, !6, !"__UNIQUE_ID_description304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 222, i32 1}
!7 = !{ptr @__UNIQUE_ID_file305, !8, !"__UNIQUE_ID_file305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 223, i32 1}
!9 = !{ptr @__UNIQUE_ID_license306, !8, !"__UNIQUE_ID_license306", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 214, i32 11}
!12 = !{ptr @ls037v7dw01_driver, !13, !"ls037v7dw01_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 210, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 148, i32 44}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 151, i32 10}
!18 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 153, i32 45}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 156, i32 10}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 158, i32 46}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 161, i32 10}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 163, i32 50}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 166, i32 3}
!30 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @ls037v7dw01_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @ls037v7dw01_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 173, i32 3}
!38 = !{ptr @ls037v7dw01_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @ls037v7dw01_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 180, i32 3}
!42 = !{ptr @ls037v7dw01_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @ls037v7dw01_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @ls037v7dw01_funcs, !45, !"ls037v7dw01_funcs", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 129, i32 37}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 67, i32 3}
!48 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @ls037v7dw01_prepare._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @ls037v7dw01_prepare._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @ls037v7dw01_mode, !52, !"ls037v7dw01_mode", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 86, i32 38}
!53 = !{ptr @ls037v7dw01_of_match, !54, !"ls037v7dw01_of_match", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/panel/panel-sharp-ls037v7dw01.c", i32 203, i32 34}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
