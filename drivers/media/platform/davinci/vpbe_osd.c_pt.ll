; ModuleID = '/llk/IR_all_yes/drivers/media/platform/davinci/vpbe_osd.c_pt.bc'
source_filename = "../drivers/media/platform/davinci/vpbe_osd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.vpbe_osd_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.osd_state = type { i32, %struct.spinlock, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [256 x [3 x i8]], %struct.osd_cursor_state, [4 x %struct.osd_window_state], [2 x %struct.osd_osdwin_state], %struct.vpbe_osd_ops }
%struct.osd_cursor_state = type { i32, %struct.osd_cursor_config }
%struct.osd_cursor_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i8 }
%struct.osd_window_state = type { i32, i32, i32, i32, i32, %struct.osd_layer_config }
%struct.osd_layer_config = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.osd_osdwin_state = type { i32, i32, i32, i32, i32, [16 x i8] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_vpbe_osd__302_1578_osd_driver_init6 = internal global ptr @osd_driver_init, section ".initcall6.init", align 4
@osd_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @osd_probe, ptr @osd_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @vpbe_osd_devtype, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_osd_driver_exit = internal global ptr @osd_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file303 = internal constant [54 x i8] c"vpbe_osd.file=drivers/media/platform/davinci/vpbe_osd\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [21 x i8] c"vpbe_osd.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [48 x i8] c"vpbe_osd.description=DaVinci OSD Manager Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author306 = internal constant [34 x i8] c"vpbe_osd.author=Texas Instruments\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"davinci-vpbe-osd\00", [47 x i8] zeroinitializer }, align 32
@vpbe_osd_devtype = internal constant { [4 x %struct.platform_device_id], [32 x i8] } { [4 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"dm644x,vpbe-osd\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"dm365,vpbe-osd\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id { [20 x i8] c"dm355,vpbe-osd\00\00\00\00\00\00", i32 3 }, %struct.platform_device_id zeroinitializer], [32 x i8] zeroinitializer }, align 32
@osd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&osd->lock\00", [21 x i8] zeroinitializer }, align 32
@osd_ops = internal constant { %struct.vpbe_osd_ops, [40 x i8] } { %struct.vpbe_osd_ops { ptr @osd_initialize, ptr @osd_request_layer, ptr @osd_release_layer, ptr @osd_enable_layer, ptr @osd_disable_layer, ptr @osd_set_layer_config, ptr @osd_get_layer_config, ptr @osd_start_layer, ptr @osd_set_left_margin, ptr @osd_set_top_margin, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@osd_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1559, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"OSD sub device probe success\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"osd_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/platform/davinci/vpbe_osd.c\00", [54 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\015\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@osd_probe._entry_ptr = internal global ptr @osd_probe._entry, section ".printk_index", align 4
@_osd_set_palette_map.map_2bpp = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 5, i32 10, i32 15], [16 x i8] zeroinitializer }, align 32
@_osd_set_palette_map.map_1bpp = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 15], [24 x i8] zeroinitializer }, align 32
@switch.table.osd_set_layer_config = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 2, i32 4, i32 16], [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.7 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 6]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 32, i64 5, i64 7, i64 8]
@__sancov_gen_cov_switch_values.15 = internal global [10 x i64] [i64 8, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.20 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.21 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.22 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 7]
@__sancov_gen_cov_switch_values.27 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.29 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.30 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.31 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 7]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.38 = private unnamed_addr constant [11 x i8] c"osd_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1569, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1573, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [17 x i8] c"vpbe_osd_devtype\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 29, i32 40 }
@___asan_gen_.47 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1556, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [8 x i8] c"osd_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1518, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 1559, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [9 x i8] c"map_2bpp\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 202, i32 19 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"map_1bpp\00", align 1
@___asan_gen_.78 = private constant [45 x i8] c"../drivers/media/platform/davinci/vpbe_osd.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 203, i32 19 }
@___asan_gen_.80 = private unnamed_addr constant [34 x i8] c"switch.table.osd_set_layer_config\00", align 1
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_license304, ptr @__exitcall_osd_driver_exit, ptr @__initcall__kmod_vpbe_osd__302_1578_osd_driver_init6, ptr @osd_driver_exit, ptr @osd_probe._entry, ptr @osd_probe._entry_ptr, ptr @osd_driver, ptr @.str, ptr @vpbe_osd_devtype, ptr @osd_probe.__key, ptr @.str.1, ptr @osd_ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @_osd_set_palette_map.map_2bpp, ptr @_osd_set_palette_map.map_1bpp, ptr @switch.table.osd_set_layer_config], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpbe_osd_devtype to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osd_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_osd_set_palette_map.map_2bpp to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_osd_set_palette_map.map_1bpp to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.osd_set_layer_config to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @osd_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @osd_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @osd_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @osd_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @osd_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %0 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %id_entry, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 1244, i32 noundef 3520) #7
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %dev4 = getelementptr inbounds %struct.osd_state, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev, ptr %dev4, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %driver_data, align 4
  %5 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %call.i, align 4
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call7 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call5) #7
  %osd_base = getelementptr inbounds %struct.osd_state, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %osd_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call7, ptr %osd_base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call5, align 4
  %osd_base_phys = getelementptr inbounds %struct.osd_state, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %osd_base_phys to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %osd_base_phys, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %11 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end.i, align 4
  %13 = load i32, ptr %call5, align 4
  %sub.i = add i32 %12, 1
  %add.i = sub i32 %sub.i, %13
  %osd_size = getelementptr inbounds %struct.osd_state, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %osd_size to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %osd_size, align 4
  %lock = getelementptr inbounds %struct.osd_state, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @osd_probe.__key, i16 noundef signext 3) #7
  %ops = getelementptr inbounds %struct.osd_state, ptr %call.i, i32 0, i32 23
  %15 = call ptr @memcpy(ptr %ops, ptr @osd_ops, i32 56)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %17 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev4, align 4
  tail call void (ptr, ptr, ...) @_dev_notice(ptr noundef %18, ptr noundef nonnull @.str.2) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then10 ], [ 0, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @osd_remove(ptr nocapture noundef readnone %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_notice(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @osd_initialize(ptr noundef %osd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %osd, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %osd_base.i.i = getelementptr inbounds %struct.osd_state, ptr %osd, i32 0, i32 4
  %0 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %osd_base.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %2 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i20.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20.i, i32 0) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %6 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i22.i = getelementptr i8, ptr %7, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i22.i, i32 0) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %8 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 0) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %10 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i26.i = getelementptr i8, ptr %11, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26.i, i32 0) #7, !srcloc !43
  %12 = ptrtoint ptr %osd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %osd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp.i = icmp eq i32 %13, 3
  br i1 %cmp.i, label %_osd_init.exit, label %_osd_init.exit.thread

_osd_init.exit.thread:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %yc_pixfmt31 = getelementptr inbounds %struct.osd_state, ptr %osd, i32 0, i32 18
  %14 = ptrtoint ptr %yc_pixfmt31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 5, ptr %yc_pixfmt31, align 4
  br label %if.end3

_osd_init.exit:                                   ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i28.i = getelementptr i8, ptr %16, i32 224
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28.i, i32 0) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %17 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %18, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 0) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %20, i32 232
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 1073741824) #7, !srcloc !43
  %21 = ptrtoint ptr %osd to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr = load i32, ptr %osd, align 4
  %yc_pixfmt = getelementptr inbounds %struct.osd_state, ptr %osd, i32 0, i32 18
  %22 = ptrtoint ptr %yc_pixfmt to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 5, ptr %yc_pixfmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp1 = icmp eq i32 %.pr, 3
  br i1 %cmp1, label %if.then2, label %_osd_init.exit.if.end3_crit_edge

_osd_init.exit.if.end3_crit_edge:                 ; preds = %_osd_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %_osd_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %rom_clut = getelementptr inbounds %struct.osd_state, ptr %osd, i32 0, i32 15
  %23 = ptrtoint ptr %rom_clut to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %rom_clut, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %_osd_init.exit.if.end3_crit_edge, %_osd_init.exit.thread
  %yc_pixfmt33 = phi ptr [ %yc_pixfmt31, %_osd_init.exit.thread ], [ %yc_pixfmt, %if.then2 ], [ %yc_pixfmt, %_osd_init.exit.if.end3_crit_edge ]
  %field_inversion = getelementptr inbounds %struct.osd_state, ptr %osd, i32 0, i32 8
  %24 = ptrtoint ptr %field_inversion to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %field_inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  %spec.store.select.i = select i1 %tobool.not.i, i32 0, i32 512
  %26 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %osd_base.i.i, align 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %29 = and i32 %28, -131073
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  %or.i.i = or i32 %30, %spec.store.select.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %31) #7, !srcloc !43
  %rom_clut4 = getelementptr inbounds %struct.osd_state, ptr %osd, i32 0, i32 15
  %32 = ptrtoint ptr %rom_clut4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rom_clut4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i18 = icmp eq i32 %33, 0
  %34 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i.i20 = getelementptr i8, ptr %35, i32 232
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  br i1 %cmp.i18, label %if.then.i21, label %if.else.i

if.then.i21:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %37 = and i32 %36, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20, i32 %37) #7, !srcloc !43
  br label %_osd_set_rom_clut.exit

if.else.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %38 = or i32 %36, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i20, i32 %38) #7, !srcloc !43
  br label %_osd_set_rom_clut.exit

_osd_set_rom_clut.exit:                           ; preds = %if.else.i, %if.then.i21
  tail call fastcc void @osd_init_layer(ptr noundef nonnull %osd, i32 noundef 0)
  %lconfig.i = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 1, i32 5
  %lock.i = getelementptr inbounds %struct.osd_state, ptr %osd, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %is_enabled.i = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 1, i32 1
  %39 = ptrtoint ptr %is_enabled.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %is_enabled.i, align 4
  %40 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %41, i32 4
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %43 = and i32 %42, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %43) #7, !srcloc !43
  %h_zoom.i = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 1, i32 3
  %44 = ptrtoint ptr %h_zoom.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %h_zoom.i, align 4
  %v_zoom.i = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 1, i32 4
  %45 = ptrtoint ptr %v_zoom.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %v_zoom.i, align 4
  %46 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i2.i.i = getelementptr i8, ptr %47, i32 4
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %49 = and i32 %48, -1006632961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i.i, i32 %49) #7, !srcloc !43
  %fb_base_phys.i = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 1, i32 2
  %50 = ptrtoint ptr %fb_base_phys.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %fb_base_phys.i, align 4
  tail call fastcc void @_osd_start_layer(ptr noundef nonnull %osd, i32 noundef 1, i32 noundef 0, i32 noundef 0) #7
  %line_length.i = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 1, i32 5, i32 1
  %51 = call ptr @memset(ptr %line_length.i, i32 0, i32 24)
  %52 = ptrtoint ptr %yc_pixfmt33 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %yc_pixfmt33, align 4
  %54 = ptrtoint ptr %lconfig.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %lconfig.i, align 4
  tail call fastcc void @_osd_set_layer_config(ptr noundef nonnull %osd, i32 noundef 1, ptr noundef %lconfig.i) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  tail call fastcc void @osd_init_layer(ptr noundef nonnull %osd, i32 noundef 2)
  %lconfig.i22 = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 3, i32 5
  %call3.i24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %is_enabled.i25 = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 3, i32 1
  %55 = ptrtoint ptr %is_enabled.i25 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %is_enabled.i25, align 4
  %56 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %57, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %59 = and i32 %58, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %59) #7, !srcloc !43
  %h_zoom.i26 = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 3, i32 3
  %60 = ptrtoint ptr %h_zoom.i26 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %h_zoom.i26, align 4
  %v_zoom.i27 = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 3, i32 4
  %61 = ptrtoint ptr %v_zoom.i27 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %v_zoom.i27, align 4
  %62 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i12.i.i = getelementptr i8, ptr %63, i32 4
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %65 = and i32 %64, -3932161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i.i, i32 %65) #7, !srcloc !43
  %fb_base_phys.i28 = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 3, i32 2
  %66 = ptrtoint ptr %fb_base_phys.i28 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 0, ptr %fb_base_phys.i28, align 4
  tail call fastcc void @_osd_start_layer(ptr noundef nonnull %osd, i32 noundef 3, i32 noundef 0, i32 noundef 0) #7
  %line_length.i29 = getelementptr %struct.osd_state, ptr %osd, i32 0, i32 21, i32 3, i32 5, i32 1
  %67 = call ptr @memset(ptr %line_length.i29, i32 0, i32 24)
  %68 = ptrtoint ptr %yc_pixfmt33 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %yc_pixfmt33, align 4
  %70 = ptrtoint ptr %lconfig.i22 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %lconfig.i22, align 4
  tail call fastcc void @_osd_set_layer_config(ptr noundef nonnull %osd, i32 noundef 3, ptr noundef %lconfig.i22) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i24) #7
  br label %return

return:                                           ; preds = %_osd_set_rom_clut.exit, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %_osd_set_rom_clut.exit ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @osd_request_layer(ptr noundef %sd, i32 noundef %layer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer
  %lock = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @osd_release_layer(ptr noundef %sd, i32 noundef %layer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer
  %lock = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @osd_init_layer(ptr noundef %sd, i32 noundef %layer)
  %call17 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %arrayidx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call17) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @osd_enable_layer(ptr noundef %sd, i32 noundef %layer, i32 noundef %otherwin) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lconfig = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5
  %lock = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %otherwin)
  %tobool.not = icmp eq i32 %otherwin, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool6.not = icmp eq i32 %1, 0
  br i1 %tobool6.not, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %fb_base_phys = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 2
  %2 = ptrtoint ptr %fb_base_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %fb_base_phys, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool7.not = icmp eq i32 %3, 0
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %line_length = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5, i32 1
  %4 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %line_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %xsize = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5, i32 2
  %6 = ptrtoint ptr %xsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool11.not = icmp eq i32 %7, 0
  br i1 %tobool11.not, label %lor.lhs.false10.cleanup_crit_edge, label %lor.lhs.false12

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false12:                                  ; preds = %lor.lhs.false10
  %ysize = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5, i32 3
  %8 = ptrtoint ptr %ysize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ysize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not = icmp eq i32 %9, 0
  br i1 %tobool13.not, label %lor.lhs.false12.cleanup_crit_edge, label %lor.lhs.false12.if.end_crit_edge

lor.lhs.false12.if.end_crit_edge:                 ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

lor.lhs.false12.cleanup_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false12.if.end_crit_edge, %entry.if.end_crit_edge
  %is_enabled = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 1
  %10 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %is_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool15.not = icmp eq i32 %11, 0
  br i1 %tobool15.not, label %if.end18, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.end
  %12 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %is_enabled, align 4
  %13 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %14)
  %cmp20.not = icmp eq i32 %14, 9
  br i1 %cmp20.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end18
  %15 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values)
  switch i32 %layer, label %if.then22.cleanup_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb5.i
  ]

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb.i:                                          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %16 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %19 = or i32 %18, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %19) #7, !srcloc !43
  br label %cleanup

sw.bb1.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i10.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %20 = ptrtoint ptr %osd_base.i10.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %osd_base.i10.i, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %23 = or i32 %22, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %23) #7, !srcloc !43
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i13.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %24 = ptrtoint ptr %osd_base.i13.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %osd_base.i13.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %25, i32 12
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %27 = and i32 %26, -25165825
  %28 = or i32 %27, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %28) #7, !srcloc !43
  br label %cleanup

sw.bb5.i:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i16.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %29 = ptrtoint ptr %osd_base.i16.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %osd_base.i16.i, align 4
  %add.ptr.i17.i = getelementptr i8, ptr %30, i32 4
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %32 = or i32 %31, 65536
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17.i, i32 %32) #7, !srcloc !43
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i.i47 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %33 = ptrtoint ptr %osd_base.i.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %osd_base.i.i47, align 4
  %add.ptr.i.i48 = getelementptr i8, ptr %34, i32 12
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i48) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %36 = or i32 %35, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i48, i32 %36) #7, !srcloc !43
  %is_blinking = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 16
  %37 = ptrtoint ptr %is_blinking to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %is_blinking, align 4
  %blink = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 17
  %39 = ptrtoint ptr %blink to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %blink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  %shl.i = shl i32 %40, 6
  %41 = ptrtoint ptr %osd_base.i.i47 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %osd_base.i.i47, align 4
  %add.ptr.i.i50 = getelementptr i8, ptr %42, i32 12
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i50) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %44 = and i32 %43, 1056964607
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %or1.i = and i32 %shl.i, 192
  %or1.op.i = or i32 %or1.i, 1
  %and2.i.i = select i1 %tobool.not.i, i32 0, i32 %or1.op.i
  %or.i.i = or i32 %45, %and2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %46 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i50, i32 %46) #7, !srcloc !43
  br label %cleanup

cleanup:                                          ; preds = %if.else, %sw.bb5.i, %sw.bb3.i, %sw.bb1.i, %sw.bb.i, %if.then22.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false12.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false12.cleanup_crit_edge ], [ -1, %lor.lhs.false10.cleanup_crit_edge ], [ -1, %lor.lhs.false8.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %sw.bb5.i ], [ 0, %sw.bb3.i ], [ 0, %sw.bb1.i ], [ 0, %sw.bb.i ], [ 0, %if.then22.cleanup_crit_edge ], [ 0, %if.else ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @osd_disable_layer(ptr noundef %sd, i32 noundef %layer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %is_enabled = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 1
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %is_enabled, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %is_enabled, align 4
  tail call fastcc void @_osd_disable_layer(ptr noundef %sd, i32 noundef %layer)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @osd_set_layer_config(ptr noundef %sd, i32 noundef %layer, ptr noundef %lconfig) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lconfig2 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5
  %lock = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lconfig, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i32 %1, label %entry.if.then_crit_edge [
    i32 0, label %entry.sw.bb.i_crit_edge
    i32 1, label %entry.sw.bb.i_crit_edge253
    i32 2, label %entry.sw.bb.i_crit_edge254
    i32 3, label %entry.sw.bb.i_crit_edge255
    i32 4, label %entry.sw.bb.i_crit_edge256
    i32 5, label %entry.sw.bb4.i_crit_edge
    i32 7, label %entry.sw.bb4.i_crit_edge257
    i32 6, label %sw.bb11.i
    i32 8, label %sw.bb34.i
    i32 9, label %sw.bb44.i
  ]

entry.sw.bb4.i_crit_edge257:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i

entry.sw.bb4.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb4.i

entry.sw.bb.i_crit_edge256:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge255:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge254:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge253:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.sw.bb.i_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb.i:                                          ; preds = %entry.sw.bb.i_crit_edge, %entry.sw.bb.i_crit_edge253, %entry.sw.bb.i_crit_edge254, %entry.sw.bb.i_crit_edge255, %entry.sw.bb.i_crit_edge256
  %3 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp.i = icmp eq i32 %4, 1
  br i1 %cmp.i, label %sw.epilog.i, label %sw.bb.i.if.end125.i_crit_edge

sw.bb.i.if.end125.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

sw.bb4.i:                                         ; preds = %entry.sw.bb4.i_crit_edge, %entry.sw.bb4.i_crit_edge257
  %5 = and i32 %layer, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %.not281.i = icmp eq i32 %5, 1
  br i1 %.not281.i, label %sw.bb4.i.if.end48thread-pre-split.i_crit_edge, label %sw.bb4.i.if.then_crit_edge

sw.bb4.i.if.then_crit_edge:                       ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb4.i.if.end48thread-pre-split.i_crit_edge:    ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48thread-pre-split.i

sw.bb11.i:                                        ; preds = %entry
  %6 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sd, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.8)
  switch i32 %7, label %sw.bb11.i.if.end48.i_crit_edge [
    i32 1, label %if.then14.i
    i32 3, label %sw.bb11.i.if.then25.i_crit_edge
    i32 2, label %sw.bb11.i.if.then25.i_crit_edge258
  ]

sw.bb11.i.if.then25.i_crit_edge258:               ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

sw.bb11.i.if.then25.i_crit_edge:                  ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then25.i

sw.bb11.i.if.end48.i_crit_edge:                   ; preds = %sw.bb11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48.i

if.then14.i:                                      ; preds = %sw.bb11.i
  %9 = and i32 %layer, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %.not280.i = icmp eq i32 %9, 1
  br i1 %.not280.i, label %if.then14.i.if.end48thread-pre-split.i_crit_edge, label %if.then14.i.if.then_crit_edge

if.then14.i.if.then_crit_edge:                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then14.i.if.end48thread-pre-split.i_crit_edge: ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48thread-pre-split.i

if.then25.i:                                      ; preds = %sw.bb11.i.if.then25.i_crit_edge, %sw.bb11.i.if.then25.i_crit_edge258
  %10 = and i32 %layer, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %.not.i = icmp eq i32 %10, 0
  br i1 %.not.i, label %if.then25.i.if.end48thread-pre-split.i_crit_edge, label %if.then25.i.if.then_crit_edge

if.then25.i.if.then_crit_edge:                    ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then25.i.if.end48thread-pre-split.i_crit_edge: ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48thread-pre-split.i

sw.bb34.i:                                        ; preds = %entry
  %11 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp36.not.i = icmp eq i32 %12, 2
  br i1 %cmp36.not.i, label %if.else38.i, label %sw.bb34.i.if.then_crit_edge

sw.bb34.i.if.then_crit_edge:                      ; preds = %sw.bb34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else38.i:                                      ; preds = %sw.bb34.i
  %13 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.9)
  switch i32 %layer, label %if.else38.i.if.end48thread-pre-split.i_crit_edge [
    i32 2, label %if.else38.i.if.then_crit_edge
    i32 0, label %if.else38.i.if.then_crit_edge259
  ]

if.else38.i.if.then_crit_edge259:                 ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else38.i.if.then_crit_edge:                    ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.else38.i.if.end48thread-pre-split.i_crit_edge: ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48thread-pre-split.i

sw.bb44.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layer)
  %cmp45.not.i = icmp eq i32 %layer, 2
  br i1 %cmp45.not.i, label %sw.bb44.i.if.end48thread-pre-split.i_crit_edge, label %sw.bb44.i.if.then_crit_edge

sw.bb44.i.if.then_crit_edge:                      ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.bb44.i.if.end48thread-pre-split.i_crit_edge:   ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48thread-pre-split.i

sw.epilog.i:                                      ; preds = %sw.bb.i
  %14 = and i32 %layer, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %.not282.i = icmp eq i32 %14, 1
  br i1 %.not282.i, label %sw.epilog.i.if.end48thread-pre-split.i_crit_edge, label %sw.epilog.i.if.then_crit_edge

sw.epilog.i.if.then_crit_edge:                    ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

sw.epilog.i.if.end48thread-pre-split.i_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48thread-pre-split.i

if.end48thread-pre-split.i:                       ; preds = %sw.epilog.i.if.end48thread-pre-split.i_crit_edge, %sw.bb44.i.if.end48thread-pre-split.i_crit_edge, %if.else38.i.if.end48thread-pre-split.i_crit_edge, %if.then25.i.if.end48thread-pre-split.i_crit_edge, %if.then14.i.if.end48thread-pre-split.i_crit_edge, %sw.bb4.i.if.end48thread-pre-split.i_crit_edge
  %15 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i = load i32, ptr %sd, align 4
  br label %if.end48.i

if.end48.i:                                       ; preds = %if.end48thread-pre-split.i, %sw.bb11.i.if.end48.i_crit_edge
  %16 = phi i32 [ %.pr.i, %if.end48thread-pre-split.i ], [ %7, %sw.bb11.i.if.end48.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp50.i = icmp eq i32 %16, 1
  br i1 %cmp50.i, label %land.lhs.true.i, label %if.end48.i.if.end125.i_crit_edge

if.end48.i.if.end125.i_crit_edge:                 ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

land.lhs.true.i:                                  ; preds = %if.end48.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %layer)
  %cmp52.i = icmp eq i32 %layer, 0
  %17 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.10)
  switch i32 %layer, label %land.lhs.true.i.land.lhs.true92.i_crit_edge [
    i32 2, label %land.lhs.true.i.land.lhs.true57.i_crit_edge
    i32 0, label %land.lhs.true.i.land.lhs.true57.i_crit_edge260
  ]

land.lhs.true.i.land.lhs.true57.i_crit_edge260:   ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true57.i

land.lhs.true.i.land.lhs.true57.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true57.i

land.lhs.true.i.land.lhs.true92.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true92.i

land.lhs.true57.i:                                ; preds = %land.lhs.true.i.land.lhs.true57.i_crit_edge, %land.lhs.true.i.land.lhs.true57.i_crit_edge260
  %18 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %1, label %land.lhs.true57.i.land.lhs.true92.i_crit_edge [
    i32 4, label %land.lhs.true57.i.if.then65.i_crit_edge
    i32 6, label %land.lhs.true57.i.if.then65.i_crit_edge261
  ]

land.lhs.true57.i.if.then65.i_crit_edge261:       ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

land.lhs.true57.i.if.then65.i_crit_edge:          ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then65.i

land.lhs.true57.i.land.lhs.true92.i_crit_edge:    ; preds = %land.lhs.true57.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true92.i

if.then65.i:                                      ; preds = %land.lhs.true57.i.if.then65.i_crit_edge, %land.lhs.true57.i.if.then65.i_crit_edge261
  %lconfig72.i = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 2, i32 5
  %lconfig77.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 21, i32 0, i32 5
  %pixfmt66.0.in.i = select i1 %cmp52.i, ptr %lconfig72.i, ptr %lconfig77.i
  %19 = ptrtoint ptr %pixfmt66.0.in.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %pixfmt66.0.i = load i32, ptr %pixfmt66.0.in.i, align 4
  %20 = zext i32 %pixfmt66.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %pixfmt66.0.i, label %if.then65.i.land.lhs.true92.i_crit_edge [
    i32 4, label %if.then65.i.if.then_crit_edge
    i32 6, label %if.then65.i.if.then_crit_edge262
  ]

if.then65.i.if.then_crit_edge262:                 ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then65.i.if.then_crit_edge:                    ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then65.i.land.lhs.true92.i_crit_edge:          ; preds = %if.then65.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true92.i

land.lhs.true92.i:                                ; preds = %if.then65.i.land.lhs.true92.i_crit_edge, %land.lhs.true57.i.land.lhs.true92.i_crit_edge, %land.lhs.true.i.land.lhs.true92.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layer)
  %cmp93.i = icmp eq i32 %layer, 1
  %21 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %layer, label %land.lhs.true92.i.if.end125.i_crit_edge [
    i32 3, label %land.lhs.true92.i.land.lhs.true98.i_crit_edge
    i32 1, label %land.lhs.true92.i.land.lhs.true98.i_crit_edge263
  ]

land.lhs.true92.i.land.lhs.true98.i_crit_edge263: ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true98.i

land.lhs.true92.i.land.lhs.true98.i_crit_edge:    ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true98.i

land.lhs.true92.i.if.end125.i_crit_edge:          ; preds = %land.lhs.true92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

land.lhs.true98.i:                                ; preds = %land.lhs.true92.i.land.lhs.true98.i_crit_edge, %land.lhs.true92.i.land.lhs.true98.i_crit_edge263
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %1)
  %cmp100.i = icmp eq i32 %1, 6
  br i1 %cmp100.i, label %if.then102.i, label %land.lhs.true98.i.if.end125.i_crit_edge

land.lhs.true98.i.if.end125.i_crit_edge:          ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

if.then102.i:                                     ; preds = %land.lhs.true98.i
  %lconfig109.i = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 3, i32 5
  %lconfig114.i = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 1, i32 5
  %pixfmt103.0.in.i = select i1 %cmp93.i, ptr %lconfig109.i, ptr %lconfig114.i
  %22 = ptrtoint ptr %pixfmt103.0.in.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %pixfmt103.0.i = load i32, ptr %pixfmt103.0.in.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %pixfmt103.0.i)
  %cmp117.i = icmp eq i32 %pixfmt103.0.i, 6
  br i1 %cmp117.i, label %if.then102.i.if.then_crit_edge, label %if.then102.i.if.end125.i_crit_edge

if.then102.i.if.end125.i_crit_edge:               ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125.i

if.then102.i.if.then_crit_edge:                   ; preds = %if.then102.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end125.i:                                      ; preds = %if.then102.i.if.end125.i_crit_edge, %land.lhs.true98.i.if.end125.i_crit_edge, %land.lhs.true92.i.if.end125.i_crit_edge, %if.end48.i.if.end125.i_crit_edge, %sw.bb.i.if.end125.i_crit_edge
  %line_length.i = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 1
  %23 = ptrtoint ptr %line_length.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %line_length.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool126.not.i = icmp eq i32 %24, 0
  br i1 %tobool126.not.i, label %if.end125.i.if.then_crit_edge, label %lor.lhs.false127.i

if.end125.i.if.then_crit_edge:                    ; preds = %if.end125.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false127.i:                               ; preds = %if.end125.i
  %xsize.i = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 2
  %25 = ptrtoint ptr %xsize.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %xsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool128.not.i = icmp eq i32 %26, 0
  br i1 %tobool128.not.i, label %lor.lhs.false127.i.if.then_crit_edge, label %lor.lhs.false129.i

lor.lhs.false127.i.if.then_crit_edge:             ; preds = %lor.lhs.false127.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false129.i:                               ; preds = %lor.lhs.false127.i
  %ysize.i = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 3
  %27 = ptrtoint ptr %ysize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ysize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool130.not.i = icmp eq i32 %28, 0
  br i1 %tobool130.not.i, label %lor.lhs.false129.i.if.then_crit_edge, label %if.end133.i

lor.lhs.false129.i.if.then_crit_edge:             ; preds = %lor.lhs.false129.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.end133.i:                                      ; preds = %lor.lhs.false129.i
  %add.i = add i32 %24, 31
  %div266.i = and i32 %add.i, -32
  %29 = tail call i32 @llvm.umin.i32(i32 %div266.i, i32 16352) #7
  %30 = ptrtoint ptr %line_length.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %line_length.i, align 4
  %31 = tail call i32 @llvm.umin.i32(i32 %26, i32 2047) #7
  %32 = ptrtoint ptr %xsize.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %xsize.i, align 4
  %33 = tail call i32 @llvm.umin.i32(i32 %28, i32 2047) #7
  %34 = ptrtoint ptr %ysize.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %ysize.i, align 4
  %xpos.i = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 4
  %35 = ptrtoint ptr %xpos.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %xpos.i, align 4
  %37 = tail call i32 @llvm.umin.i32(i32 %36, i32 2047) #7
  %38 = ptrtoint ptr %xpos.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %xpos.i, align 4
  %ypos.i = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 5
  %39 = ptrtoint ptr %ypos.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ypos.i, align 4
  %41 = tail call i32 @llvm.umin.i32(i32 %40, i32 2047) #7
  %42 = ptrtoint ptr %ypos.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %ypos.i, align 4
  %interlaced.i = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 6
  %43 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %interlaced.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp174.i = icmp ne i32 %44, 0
  %conv175.i = zext i1 %cmp174.i to i32
  %45 = ptrtoint ptr %interlaced.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv175.i, ptr %interlaced.i, align 4
  br i1 %cmp174.i, label %if.then179.i, label %if.end133.i.if.end_crit_edge

if.end133.i.if.end_crit_edge:                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then179.i:                                     ; preds = %if.end133.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %33, 2046
  %46 = ptrtoint ptr %ysize.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i, ptr %ysize.i, align 4
  %and182.i = and i32 %41, 2046
  %47 = ptrtoint ptr %ypos.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %and182.i, ptr %ypos.i, align 4
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false129.i.if.then_crit_edge, %lor.lhs.false127.i.if.then_crit_edge, %if.end125.i.if.then_crit_edge, %if.then102.i.if.then_crit_edge, %if.then65.i.if.then_crit_edge, %if.then65.i.if.then_crit_edge262, %sw.epilog.i.if.then_crit_edge, %sw.bb44.i.if.then_crit_edge, %if.else38.i.if.then_crit_edge, %if.else38.i.if.then_crit_edge259, %sw.bb34.i.if.then_crit_edge, %if.then25.i.if.then_crit_edge, %if.then14.i.if.then_crit_edge, %sw.bb4.i.if.then_crit_edge, %entry.if.then_crit_edge
  %48 = call ptr @memcpy(ptr %lconfig, ptr %lconfig2, i32 28)
  br label %cleanup

if.end:                                           ; preds = %if.then179.i, %if.end133.i.if.end_crit_edge
  %49 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %lconfig, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %50, label %if.end.if.end20_crit_edge [
    i32 5, label %if.end.if.then18_crit_edge
    i32 7, label %if.end.if.then18_crit_edge264
    i32 8, label %if.end.if.then18_crit_edge265
  ]

if.end.if.then18_crit_edge265:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end.if.then18_crit_edge264:                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end.if.then18_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then18

if.end.if.end20_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end20

if.then18:                                        ; preds = %if.end.if.then18_crit_edge, %if.end.if.then18_crit_edge264, %if.end.if.then18_crit_edge265
  %yc_pixfmt = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 18
  %52 = ptrtoint ptr %yc_pixfmt to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %50, ptr %yc_pixfmt, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %if.end.if.end20_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %layer)
  %cmp21 = icmp eq i32 %layer, 2
  br i1 %cmp21, label %if.then23, label %if.end68.critedge

if.then23:                                        ; preds = %if.end20
  %53 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %54)
  %cmp25 = icmp eq i32 %54, 9
  %55 = ptrtoint ptr %lconfig2 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %lconfig2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %56)
  %cmp28.not = icmp eq i32 %56, 9
  br i1 %cmp25, label %land.lhs.true, label %land.lhs.true34

land.lhs.true:                                    ; preds = %if.then23
  br i1 %cmp28.not, label %land.lhs.true.if.then43_crit_edge, label %land.lhs.true.if.then38_crit_edge

land.lhs.true.if.then38_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

land.lhs.true.if.then43_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

land.lhs.true34:                                  ; preds = %if.then23
  br i1 %cmp28.not, label %land.lhs.true34.if.then38_crit_edge, label %land.lhs.true34.if.then43_crit_edge

land.lhs.true34.if.then43_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then43

land.lhs.true34.if.then38_crit_edge:              ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then38

if.then38:                                        ; preds = %land.lhs.true34.if.then38_crit_edge, %land.lhs.true.if.then38_crit_edge
  %is_enabled = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 2, i32 1
  %57 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %is_enabled, align 4
  %osd_base.i13.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %58 = ptrtoint ptr %osd_base.i13.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %osd_base.i13.i, align 4
  %add.ptr.i14.i = getelementptr i8, ptr %59, i32 12
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %61 = and i32 %60, -25165825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %61) #7, !srcloc !43
  br label %if.then43

if.then43:                                        ; preds = %if.then38, %land.lhs.true34.if.then43_crit_edge, %land.lhs.true.if.then43_crit_edge
  tail call fastcc void @_osd_set_layer_config(ptr noundef %sd, i32 noundef 2, ptr noundef %lconfig)
  %arrayidx44 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 1
  %62 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %63)
  %cmp46.not = icmp eq i32 %63, 9
  %64 = ptrtoint ptr %lconfig2 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %lconfig2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %65)
  %cmp63.not = icmp eq i32 %65, 9
  br i1 %cmp46.not, label %land.lhs.true61, label %land.lhs.true48

land.lhs.true48:                                  ; preds = %if.then43
  br i1 %cmp63.not, label %if.then52, label %land.lhs.true48.if.end68_crit_edge

land.lhs.true48.if.end68_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then52:                                        ; preds = %land.lhs.true48
  %66 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %67)
  %cmp2.i = icmp eq i32 %67, 1
  %spec.select12.i = select i1 %cmp2.i, i32 4096, i32 0
  %osd_base.i13.i210 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %68 = ptrtoint ptr %osd_base.i13.i210 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %osd_base.i13.i210, align 4
  %add.ptr.i14.i211 = getelementptr i8, ptr %69, i32 12
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i211) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %71 = and i32 %70, -1048577
  %72 = tail call i32 @llvm.bswap.i32(i32 %71) #7
  %or.i16.i = or i32 %72, %spec.select12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %73 = tail call i32 @llvm.bswap.i32(i32 %or.i16.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i211, i32 %73) #7, !srcloc !43
  %blend = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 1, i32 1
  %74 = ptrtoint ptr %blend to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %blend, align 4
  %shl2.i = shl i32 %75, 3
  %76 = ptrtoint ptr %osd_base.i13.i210 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %osd_base.i13.i210, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %77, i32 12
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %79 = and i32 %78, -939524097
  %80 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  %and2.i9.i = and i32 %shl2.i, 56
  %or.i10.i = or i32 %80, %and2.i9.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %81 = tail call i32 @llvm.bswap.i32(i32 %or.i10.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %81) #7, !srcloc !43
  %colorkey_blending = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 1, i32 2
  %82 = ptrtoint ptr %colorkey_blending to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %colorkey_blending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool53.not = icmp eq i32 %83, 0
  br i1 %tobool53.not, label %if.else, label %if.then54

if.then54:                                        ; preds = %if.then52
  %colorkey = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 1, i32 3
  %84 = ptrtoint ptr %colorkey to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %colorkey, align 4
  %86 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %lconfig, align 4
  %88 = zext i32 %87 to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %87, label %if.then54._osd_enable_color_key.exit_crit_edge [
    i32 0, label %if.then54.sw.bb.i215_crit_edge
    i32 1, label %if.then54.sw.bb.i215_crit_edge266
    i32 2, label %if.then54.sw.bb.i215_crit_edge267
    i32 3, label %if.then54.sw.bb.i215_crit_edge268
    i32 4, label %sw.bb5.i
    i32 5, label %if.then54.sw.bb17.i_crit_edge
    i32 7, label %if.then54.sw.bb17.i_crit_edge269
    i32 6, label %sw.bb23.i
  ]

if.then54.sw.bb17.i_crit_edge269:                 ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17.i

if.then54.sw.bb17.i_crit_edge:                    ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb17.i

if.then54.sw.bb.i215_crit_edge268:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i215

if.then54.sw.bb.i215_crit_edge267:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i215

if.then54.sw.bb.i215_crit_edge266:                ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i215

if.then54.sw.bb.i215_crit_edge:                   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i215

if.then54._osd_enable_color_key.exit_crit_edge:   ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %_osd_enable_color_key.exit

sw.bb.i215:                                       ; preds = %if.then54.sw.bb.i215_crit_edge, %if.then54.sw.bb.i215_crit_edge266, %if.then54.sw.bb.i215_crit_edge267, %if.then54.sw.bb.i215_crit_edge268
  %89 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %90)
  %cmp.i214 = icmp eq i32 %90, 3
  br i1 %cmp.i214, label %sw.bb2.i, label %sw.bb.i215._osd_enable_color_key.exit_crit_edge

sw.bb.i215._osd_enable_color_key.exit_crit_edge:  ; preds = %sw.bb.i215
  call void @__sanitizer_cov_trace_pc() #9
  br label %_osd_enable_color_key.exit

sw.bb2.i:                                         ; preds = %sw.bb.i215
  call void @__sanitizer_cov_trace_pc() #9
  %shl3.i = shl i32 %85, 8
  %91 = ptrtoint ptr %osd_base.i13.i210 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %osd_base.i13.i210, align 4
  %add.ptr.i.i = getelementptr i8, ptr %92, i32 252
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %94 = and i32 %93, -16711681
  %95 = tail call i32 @llvm.bswap.i32(i32 %94) #7
  %and2.i.i = and i32 %shl3.i, 65280
  %or.i.i = or i32 %95, %and2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %96) #7, !srcloc !43
  br label %_osd_enable_color_key.exit

sw.bb5.i:                                         ; preds = %if.then54
  %97 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %sd, align 4
  %99 = zext i32 %98 to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %98, label %sw.bb5.i._osd_enable_color_key.exit_crit_edge [
    i32 1, label %if.then8.i
    i32 3, label %if.then12.i
  ]

sw.bb5.i._osd_enable_color_key.exit_crit_edge:    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_osd_enable_color_key.exit

if.then8.i:                                       ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i216 = and i32 %85, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %100 = tail call i32 @llvm.bswap.i32(i32 %and.i216) #7
  %101 = ptrtoint ptr %osd_base.i13.i210 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %osd_base.i13.i210, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %102, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %100) #7, !srcloc !43
  br label %_osd_enable_color_key.exit

if.then12.i:                                      ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #9
  %and13.i = and i32 %85, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %103 = tail call i32 @llvm.bswap.i32(i32 %and13.i) #7
  %104 = ptrtoint ptr %osd_base.i13.i210 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %osd_base.i13.i210, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %105, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4.i, i32 %103) #7, !srcloc !43
  br label %_osd_enable_color_key.exit

sw.bb17.i:                                        ; preds = %if.then54.sw.bb17.i_crit_edge, %if.then54.sw.bb17.i_crit_edge269
  %106 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %107)
  %cmp19.i = icmp eq i32 %107, 3
  br i1 %cmp19.i, label %if.then20.i, label %sw.bb17.i._osd_enable_color_key.exit_crit_edge

sw.bb17.i._osd_enable_color_key.exit_crit_edge:   ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_osd_enable_color_key.exit

if.then20.i:                                      ; preds = %sw.bb17.i
  call void @__sanitizer_cov_trace_pc() #9
  %108 = ptrtoint ptr %osd_base.i13.i210 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %osd_base.i13.i210, align 4
  %add.ptr.i6.i = getelementptr i8, ptr %109, i32 248
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i6.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %111 = and i32 %110, -16711681
  %112 = tail call i32 @llvm.bswap.i32(i32 %111) #7
  %and2.i8.i = and i32 %85, 65280
  %or.i9.i = or i32 %112, %and2.i8.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %113 = tail call i32 @llvm.bswap.i32(i32 %or.i9.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i, i32 %113) #7, !srcloc !43
  br label %_osd_enable_color_key.exit

sw.bb23.i:                                        ; preds = %if.then54
  %114 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %115)
  %cmp25.i = icmp eq i32 %115, 3
  br i1 %cmp25.i, label %if.then26.i, label %sw.bb23.i._osd_enable_color_key.exit_crit_edge

sw.bb23.i._osd_enable_color_key.exit_crit_edge:   ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %_osd_enable_color_key.exit

if.then26.i:                                      ; preds = %sw.bb23.i
  call void @__sanitizer_cov_trace_pc() #9
  %and27.i = and i32 %85, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %116 = tail call i32 @llvm.bswap.i32(i32 %and27.i) #7
  %117 = ptrtoint ptr %osd_base.i13.i210 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %osd_base.i13.i210, align 4
  %add.ptr.i11.i = getelementptr i8, ptr %118, i32 244
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11.i, i32 %116) #7, !srcloc !43
  %shr.i = lshr i32 %85, 16
  %119 = ptrtoint ptr %osd_base.i13.i210 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %osd_base.i13.i210, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %120, i32 248
  %121 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %122 = and i32 %121, 16777215
  %123 = tail call i32 @llvm.bswap.i32(i32 %122) #7
  %and2.i15.i = and i32 %shr.i, 255
  %or.i16.i217 = or i32 %123, %and2.i15.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %124 = tail call i32 @llvm.bswap.i32(i32 %or.i16.i217) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i13.i, i32 %124) #7, !srcloc !43
  br label %_osd_enable_color_key.exit

_osd_enable_color_key.exit:                       ; preds = %if.then26.i, %sw.bb23.i._osd_enable_color_key.exit_crit_edge, %if.then20.i, %sw.bb17.i._osd_enable_color_key.exit_crit_edge, %if.then12.i, %if.then8.i, %sw.bb5.i._osd_enable_color_key.exit_crit_edge, %sw.bb2.i, %sw.bb.i215._osd_enable_color_key.exit_crit_edge, %if.then54._osd_enable_color_key.exit_crit_edge
  %125 = ptrtoint ptr %osd_base.i13.i210 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %osd_base.i13.i210, align 4
  %add.ptr.i18.i = getelementptr i8, ptr %126, i32 12
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %128 = or i32 %127, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18.i, i32 %128) #7, !srcloc !43
  br label %if.end56

if.else:                                          ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_osd_disable_color_key(ptr noundef %sd, i32 noundef 1)
  br label %if.end56

if.end56:                                         ; preds = %if.else, %_osd_enable_color_key.exit
  %rec601_attenuation = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 1, i32 4
  %129 = ptrtoint ptr %rec601_attenuation to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %rec601_attenuation, align 4
  tail call fastcc void @_osd_set_rec601_attenuation(ptr noundef %sd, i32 noundef 1, i32 noundef %130)
  br label %if.end68thread-pre-split

land.lhs.true61:                                  ; preds = %if.then43
  br i1 %cmp63.not, label %land.lhs.true61.if.end106_crit_edge, label %if.then65

land.lhs.true61.if.end106_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then65:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #9
  %is_blinking = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 16
  %131 = ptrtoint ptr %is_blinking to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %is_blinking, align 4
  %blink = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 17
  %133 = ptrtoint ptr %blink to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %blink, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %tobool.not.i = icmp eq i32 %132, 0
  %shl.i = shl i32 %134, 6
  %osd_base.i.i219 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %135 = ptrtoint ptr %osd_base.i.i219 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %osd_base.i.i219, align 4
  %add.ptr.i.i220 = getelementptr i8, ptr %136, i32 12
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i220) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %138 = and i32 %137, 1056964607
  %139 = tail call i32 @llvm.bswap.i32(i32 %138) #7
  %or1.i = and i32 %shl.i, 192
  %or1.op.i = or i32 %or1.i, 1
  %and2.i.i221 = select i1 %tobool.not.i, i32 0, i32 %or1.op.i
  %or.i.i222 = or i32 %139, %and2.i.i221
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %140 = tail call i32 @llvm.bswap.i32(i32 %or.i.i222) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i220, i32 %140) #7, !srcloc !43
  br label %if.end68thread-pre-split

if.end68.critedge:                                ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_osd_set_layer_config(ptr noundef %sd, i32 noundef %layer, ptr noundef %lconfig)
  br label %if.end68thread-pre-split

if.end68thread-pre-split:                         ; preds = %if.end68.critedge, %if.then65, %if.end56
  %141 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %141)
  %.pr = load i32, ptr %lconfig, align 4
  br label %if.end68

if.end68:                                         ; preds = %if.end68thread-pre-split, %land.lhs.true48.if.end68_crit_edge
  %142 = phi i32 [ %.pr, %if.end68thread-pre-split ], [ %63, %land.lhs.true48.if.end68_crit_edge ]
  %143 = ptrtoint ptr %lconfig2 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %lconfig2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %142, i32 %144)
  %cmp71.not = icmp ne i32 %142, %144
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %142)
  %switch = icmp ult i32 %142, 3
  %or.cond = and i1 %switch, %cmp71.not
  br i1 %or.cond, label %if.then85, label %if.end68.if.end106_crit_edge

if.end68.if.end106_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then85:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %layer)
  %cmp87 = icmp ne i32 %layer, 0
  %cond = zext i1 %cmp87 to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.osd_set_layer_config, i32 0, i32 %142
  %145 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %145)
  %switch.load = load i32, ptr %switch.gep, align 4
  %spec.select = select i1 %cmp87, i32 192, i32 160
  %osd_base.i.i229 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.then85
  %indvars.iv = phi i32 [ 0, %if.then85 ], [ %indvars.iv.next, %for.inc.for.body_crit_edge ]
  %arrayidx98 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 %cond, i32 5, i32 %indvars.iv
  %146 = trunc i32 %indvars.iv to i8
  %147 = ptrtoint ptr %arrayidx98 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 %146, ptr %arrayidx98, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %switch.load, i32 %indvars.iv)
  %cmp101 = icmp ugt i32 %switch.load, %indvars.iv
  br i1 %cmp101, label %if.then103, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then103:                                       ; preds = %for.body
  %148 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %lconfig, align 4
  %150 = zext i32 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %149, label %if.then103.for.inc_crit_edge [
    i32 0, label %sw.bb.i224
    i32 1, label %sw.bb1.i
    i32 2, label %if.then103.sw.epilog.i226_crit_edge
  ]

if.then103.sw.epilog.i226_crit_edge:              ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog.i226

if.then103.for.inc_crit_edge:                     ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

sw.bb.i224:                                       ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  %151 = and i32 %indvars.iv, 1
  %arrayidx.i = getelementptr [2 x i32], ptr @_osd_set_palette_map.map_1bpp, i32 0, i32 %151
  br label %sw.epilog.i226.sink.split

sw.bb1.i:                                         ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #9
  %152 = and i32 %indvars.iv, 3
  %arrayidx4.i = getelementptr [4 x i32], ptr @_osd_set_palette_map.map_2bpp, i32 0, i32 %152
  br label %sw.epilog.i226.sink.split

sw.epilog.i226.sink.split:                        ; preds = %sw.bb1.i, %sw.bb.i224
  %arrayidx4.i.sink = phi ptr [ %arrayidx4.i, %sw.bb1.i ], [ %arrayidx.i, %sw.bb.i224 ]
  %153 = ptrtoint ptr %arrayidx4.i.sink to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %arrayidx4.i.sink, align 4
  br label %sw.epilog.i226

sw.epilog.i226:                                   ; preds = %sw.epilog.i226.sink.split, %if.then103.sw.epilog.i226_crit_edge
  %bmp_reg.0.i = phi i32 [ %indvars.iv, %if.then103.sw.epilog.i226_crit_edge ], [ %154, %sw.epilog.i226.sink.split ]
  %155 = shl i32 %bmp_reg.0.i, 1
  %156 = add i32 %155, %spec.select
  %bmp_offset.0.i = and i32 %156, -4
  %and15.i = and i32 %bmp_reg.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool.not.i227 = icmp eq i32 %and15.i, 0
  %157 = shl nuw nsw i32 %and15.i, 3
  %.24.i = select i1 %tobool.not.i227, i32 255, i32 65280
  %shl.i228 = shl nuw nsw i32 %indvars.iv, %157
  %158 = ptrtoint ptr %osd_base.i.i229 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %osd_base.i.i229, align 4
  %add.ptr.i.i230 = getelementptr i8, ptr %159, i32 %bmp_offset.0.i
  %160 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i230) #7, !srcloc !44
  %161 = tail call i32 @llvm.bswap.i32(i32 %160) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %neg.i.i = xor i32 %.24.i, -1
  %and.i.i = and i32 %161, %neg.i.i
  %and2.i.i231 = and i32 %shl.i228, %.24.i
  %or.i.i232 = or i32 %and.i.i, %and2.i.i231
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %162 = tail call i32 @llvm.bswap.i32(i32 %or.i.i232) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i230, i32 %162) #7, !srcloc !43
  br label %for.inc

for.inc:                                          ; preds = %sw.epilog.i226, %if.then103.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 16
  br i1 %exitcond.not, label %for.inc.if.end106_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.end106_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.end106:                                        ; preds = %for.inc.if.end106_crit_edge, %if.end68.if.end106_crit_edge, %land.lhs.true61.if.end106_crit_edge
  %163 = call ptr @memcpy(ptr %lconfig2, ptr %lconfig, i32 28)
  %lconfig109 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 1, i32 5
  %164 = ptrtoint ptr %lconfig109 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %lconfig109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %165)
  %cmp111 = icmp eq i32 %165, 6
  br i1 %cmp111, label %if.then113, label %if.else114

if.then113:                                       ; preds = %if.end106
  %166 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %167)
  %cmp.i233 = icmp eq i32 %167, 1
  br i1 %cmp.i233, label %if.then.i, label %if.then113.if.end124_crit_edge

if.then113.if.end124_crit_edge:                   ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then.i:                                        ; preds = %if.then113
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i.i234 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %168 = ptrtoint ptr %osd_base.i.i234 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %osd_base.i.i234, align 4
  %add.ptr.i.i235 = getelementptr i8, ptr %169, i32 232
  %170 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i235) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %171 = and i32 %170, 1073741823
  %172 = or i32 %171, -2147483648
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i235, i32 %172) #7, !srcloc !43
  br label %if.end124

if.else114:                                       ; preds = %if.end106
  %lconfig117 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 3, i32 5
  %173 = ptrtoint ptr %lconfig117 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %lconfig117, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %174)
  %cmp119 = icmp eq i32 %174, 6
  %175 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %176)
  %cmp.i236 = icmp eq i32 %176, 1
  br i1 %cmp119, label %if.then121, label %if.else122

if.then121:                                       ; preds = %if.else114
  br i1 %cmp.i236, label %if.then.i237, label %if.then121.if.end124_crit_edge

if.then121.if.end124_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then.i237:                                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i11.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %177 = ptrtoint ptr %osd_base.i11.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %osd_base.i11.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %178, i32 232
  %179 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %180 = or i32 %179, -1073741824
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %180) #7, !srcloc !43
  br label %if.end124

if.else122:                                       ; preds = %if.else114
  br i1 %cmp.i236, label %if.then.i242, label %if.else122.if.end124_crit_edge

if.else122.if.end124_crit_edge:                   ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end124

if.then.i242:                                     ; preds = %if.else122
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i.i240 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %181 = ptrtoint ptr %osd_base.i.i240 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %osd_base.i.i240, align 4
  %add.ptr.i.i241 = getelementptr i8, ptr %182, i32 232
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i241) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %184 = and i32 %183, 2147483647
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i241, i32 %184) #7, !srcloc !43
  br label %if.end124

if.end124:                                        ; preds = %if.then.i242, %if.else122.if.end124_crit_edge, %if.then.i237, %if.then121.if.end124_crit_edge, %if.then.i, %if.then113.if.end124_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layer)
  %cmp125 = icmp eq i32 %layer, 1
  br i1 %cmp125, label %if.then127, label %if.end124.cleanup_crit_edge

if.end124.cleanup_crit_edge:                      ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then127:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %field_inversion = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 8
  %185 = ptrtoint ptr %field_inversion to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %field_inversion, align 4
  %fb_base_phys = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 1, i32 2
  %187 = ptrtoint ptr %fb_base_phys to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %fb_base_phys, align 4
  %call128 = tail call fastcc i32 @_osd_dm6446_vid0_pingpong(ptr noundef %sd, i32 noundef %186, i32 noundef %188, ptr noundef %lconfig2)
  %pingpong = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 6
  %189 = ptrtoint ptr %pingpong to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 %call128, ptr %pingpong, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %if.end124.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %if.then127 ], [ 0, %if.end124.cleanup_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @osd_get_layer_config(ptr noundef %sd, i32 noundef %layer, ptr nocapture noundef writeonly %lconfig) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %lconfig6 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5
  %0 = call ptr @memcpy(ptr %lconfig, ptr %lconfig6, i32 28)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @osd_start_layer(ptr noundef %sd, i32 noundef %layer, i32 noundef %fb_base_phys, i32 noundef %cbcr_ofst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %and = and i32 %fb_base_phys, -32
  %fb_base_phys6 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 2
  %0 = ptrtoint ptr %fb_base_phys6 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %and, ptr %fb_base_phys6, align 4
  tail call fastcc void @_osd_start_layer(ptr noundef %sd, i32 noundef %layer, i32 noundef %fb_base_phys, i32 noundef %cbcr_ofst)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %layer)
  %cmp7 = icmp eq i32 %layer, 1
  br i1 %cmp7, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %lconfig = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 1, i32 5
  %field_inversion = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 8
  %1 = ptrtoint ptr %field_inversion to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %field_inversion, align 4
  %3 = ptrtoint ptr %fb_base_phys6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fb_base_phys6, align 4
  %call10 = tail call fastcc i32 @_osd_dm6446_vid0_pingpong(ptr noundef %sd, i32 noundef %2, i32 noundef %4, ptr noundef %lconfig)
  %pingpong = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 6
  %5 = ptrtoint ptr %pingpong to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call10, ptr %pingpong, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @osd_set_left_margin(ptr nocapture noundef readonly %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %osd_base.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %1 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #7, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @osd_set_top_margin(ptr nocapture noundef readonly %sd, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %0 = tail call i32 @llvm.bswap.i32(i32 %val) #7
  %osd_base.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %1 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %0) #7, !srcloc !43
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @osd_init_layer(ptr noundef %sd, i32 noundef %layer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lconfig = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5
  %lock = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %is_enabled = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 1
  %0 = ptrtoint ptr %is_enabled to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %is_enabled, align 4
  tail call fastcc void @_osd_disable_layer(ptr noundef %sd, i32 noundef %layer)
  %h_zoom = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 3
  %1 = ptrtoint ptr %h_zoom to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %h_zoom, align 4
  %v_zoom = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 4
  %2 = ptrtoint ptr %v_zoom to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %v_zoom, align 4
  %3 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %layer, label %entry._osd_set_zoom.exit_crit_edge [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb3.i
    i32 2, label %sw.bb9.i
    i32 3, label %sw.bb15.i
  ]

entry._osd_set_zoom.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_osd_set_zoom.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %4 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %osd_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %7 = and i32 %6, -983041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %7) #7, !srcloc !43
  br label %_osd_set_zoom.exit

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i1.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %8 = ptrtoint ptr %osd_base.i1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %osd_base.i1.i, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %9, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i2.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %11 = and i32 %10, -1006632961
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %11) #7, !srcloc !43
  br label %_osd_set_zoom.exit

sw.bb9.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i6.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %12 = ptrtoint ptr %osd_base.i6.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %osd_base.i6.i, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %13, i32 12
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %15 = and i32 %14, -983041
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %15) #7, !srcloc !43
  br label %_osd_set_zoom.exit

sw.bb15.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i11.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %16 = ptrtoint ptr %osd_base.i11.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %osd_base.i11.i, align 4
  %add.ptr.i12.i = getelementptr i8, ptr %17, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i12.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %19 = and i32 %18, -3932161
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12.i, i32 %19) #7, !srcloc !43
  br label %_osd_set_zoom.exit

_osd_set_zoom.exit:                               ; preds = %sw.bb15.i, %sw.bb9.i, %sw.bb3.i, %sw.bb.i, %entry._osd_set_zoom.exit_crit_edge
  %fb_base_phys = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 2
  %20 = ptrtoint ptr %fb_base_phys to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %fb_base_phys, align 4
  tail call fastcc void @_osd_start_layer(ptr noundef %sd, i32 noundef %layer, i32 noundef 0, i32 noundef 0)
  %line_length = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5, i32 1
  %21 = call ptr @memset(ptr %line_length, i32 0, i32 24)
  %22 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %layer, label %_osd_set_zoom.exit.sw.epilog_crit_edge [
    i32 0, label %_osd_set_zoom.exit.sw.bb_crit_edge
    i32 2, label %_osd_set_zoom.exit.sw.bb_crit_edge92
    i32 1, label %_osd_set_zoom.exit.sw.bb18_crit_edge
    i32 3, label %_osd_set_zoom.exit.sw.bb18_crit_edge93
  ]

_osd_set_zoom.exit.sw.bb18_crit_edge93:           ; preds = %_osd_set_zoom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18

_osd_set_zoom.exit.sw.bb18_crit_edge:             ; preds = %_osd_set_zoom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18

_osd_set_zoom.exit.sw.bb_crit_edge92:             ; preds = %_osd_set_zoom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

_osd_set_zoom.exit.sw.bb_crit_edge:               ; preds = %_osd_set_zoom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

_osd_set_zoom.exit.sw.epilog_crit_edge:           ; preds = %_osd_set_zoom.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %_osd_set_zoom.exit.sw.bb_crit_edge, %_osd_set_zoom.exit.sw.bb_crit_edge92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %layer)
  %cmp9 = icmp ne i32 %layer, 0
  %cond = zext i1 %cmp9 to i32
  %arrayidx12 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 %cond
  %23 = ptrtoint ptr %lconfig to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %lconfig, align 4
  tail call fastcc void @_osd_set_layer_config(ptr noundef %sd, i32 noundef %layer, ptr noundef %lconfig)
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx12, align 4
  %osd_base.i13.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %25 = ptrtoint ptr %osd_base.i13.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %osd_base.i13.i, align 4
  br i1 %cmp9, label %_osd_set_osd_clut.exit.thread85, label %_osd_set_osd_clut.exit.thread

_osd_set_osd_clut.exit.thread:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i.i71 = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i71) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %28 = or i32 %27, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i71, i32 %28) #7, !srcloc !43
  %colorkey_blending84 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 %cond, i32 2
  %29 = ptrtoint ptr %colorkey_blending84 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %colorkey_blending84, align 4
  %30 = ptrtoint ptr %osd_base.i13.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %osd_base.i13.i, align 4
  %add.ptr.i.i74 = getelementptr i8, ptr %31, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i74) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %33 = and i32 %32, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i74, i32 %33) #7, !srcloc !43
  %blend87 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 %cond, i32 1
  %34 = ptrtoint ptr %blend87 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 7, ptr %blend87, align 4
  %35 = ptrtoint ptr %osd_base.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %osd_base.i13.i, align 4
  %add.ptr.i.i78 = getelementptr i8, ptr %36, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i78) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %38 = or i32 %37, 939524096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i78, i32 %38) #7, !srcloc !43
  %rec601_attenuation.c = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 %cond, i32 4
  %39 = ptrtoint ptr %rec601_attenuation.c to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %rec601_attenuation.c, align 4
  tail call fastcc void @_osd_set_rec601_attenuation(ptr noundef %sd, i32 noundef %cond, i32 noundef 0)
  br label %sw.epilog

_osd_set_osd_clut.exit.thread85:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i14.i = getelementptr i8, ptr %26, i32 12
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %41 = or i32 %40, 1048576
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14.i, i32 %41) #7, !srcloc !43
  %colorkey_blending86 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 %cond, i32 2
  %42 = ptrtoint ptr %colorkey_blending86 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %colorkey_blending86, align 4
  %43 = ptrtoint ptr %osd_base.i13.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %osd_base.i13.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %44, i32 12
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %46 = and i32 %45, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %46) #7, !srcloc !43
  %blend89 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 %cond, i32 1
  %47 = ptrtoint ptr %blend89 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 7, ptr %blend89, align 4
  %48 = ptrtoint ptr %osd_base.i13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %osd_base.i13.i, align 4
  %add.ptr.i7.i82 = getelementptr i8, ptr %49, i32 12
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i82) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %51 = or i32 %50, 939524096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i82, i32 %51) #7, !srcloc !43
  %rec601_attenuation.c91 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 22, i32 %cond, i32 4
  %52 = ptrtoint ptr %rec601_attenuation.c91 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 0, ptr %rec601_attenuation.c91, align 4
  tail call fastcc void @_osd_set_rec601_attenuation(ptr noundef %sd, i32 noundef %cond, i32 noundef 0)
  %is_blinking = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 16
  %53 = ptrtoint ptr %is_blinking to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %is_blinking, align 4
  %blink = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 17
  %54 = ptrtoint ptr %blink to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %blink, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %_osd_set_zoom.exit.sw.bb18_crit_edge, %_osd_set_zoom.exit.sw.bb18_crit_edge93
  %yc_pixfmt = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 18
  %55 = ptrtoint ptr %yc_pixfmt to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %yc_pixfmt, align 4
  %57 = ptrtoint ptr %lconfig to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %lconfig, align 4
  tail call fastcc void @_osd_set_layer_config(ptr noundef %sd, i32 noundef %layer, ptr noundef %lconfig)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %_osd_set_osd_clut.exit.thread85, %_osd_set_osd_clut.exit.thread, %_osd_set_zoom.exit.sw.epilog_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @osd_modify(ptr nocapture noundef readonly %sd, i32 noundef %mask, i32 noundef %val, i32 noundef %offset) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %osd_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %osd_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !44
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %neg = xor i32 %mask, -1
  %and = and i32 %3, %neg
  %and2 = and i32 %val, %mask
  %or = or i32 %and, %and2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #7, !srcloc !43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_osd_disable_layer(ptr nocapture noundef readonly %sd, i32 noundef %layer) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %layer, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb3
    i32 3, label %sw.bb5
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %1 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %4 = and i32 %3, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !43
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i10 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %5 = ptrtoint ptr %osd_base.i10 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %osd_base.i10, align 4
  %add.ptr.i11 = getelementptr i8, ptr %6, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %8 = and i32 %7, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %8) #7, !srcloc !43
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i13 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %9 = ptrtoint ptr %osd_base.i13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %osd_base.i13, align 4
  %add.ptr.i14 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i14) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %12 = and i32 %11, -25165825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i14, i32 %12) #7, !srcloc !43
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i16 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %13 = ptrtoint ptr %osd_base.i16 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %osd_base.i16, align 4
  %add.ptr.i17 = getelementptr i8, ptr %14, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i17) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %16 = and i32 %15, -65537
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %16) #7, !srcloc !43
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb3, %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_osd_start_layer(ptr noundef readonly %sd, i32 noundef %layer, i32 noundef %fb_base_phys, i32 noundef %cbcr_ofst) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sd, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %1, label %entry.if.end122_crit_edge [
    i32 1, label %if.then
    i32 3, label %if.then12
    i32 2, label %if.then37
  ]

entry.if.end122_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then:                                          ; preds = %entry
  %3 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %layer, label %if.then.if.end122_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb4
    i32 3, label %sw.bb7
  ]

if.then.if.end122_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %and = and i32 %fb_base_phys, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %4 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %osd_base.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %5 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !43
  br label %if.end122

sw.bb1:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %and2 = and i32 %fb_base_phys, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %7 = tail call i32 @llvm.bswap.i32(i32 %and2) #7
  %osd_base.i197 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %8 = ptrtoint ptr %osd_base.i197 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %osd_base.i197, align 4
  %add.ptr.i198 = getelementptr i8, ptr %9, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i198, i32 %7) #7, !srcloc !43
  br label %if.end122

sw.bb4:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %and5 = and i32 %fb_base_phys, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %10 = tail call i32 @llvm.bswap.i32(i32 %and5) #7
  %osd_base.i199 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %11 = ptrtoint ptr %osd_base.i199 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %osd_base.i199, align 4
  %add.ptr.i200 = getelementptr i8, ptr %12, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i200, i32 %10) #7, !srcloc !43
  br label %if.end122

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %and8 = and i32 %fb_base_phys, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and8) #7
  %osd_base.i201 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %14 = ptrtoint ptr %osd_base.i201 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %osd_base.i201, align 4
  %add.ptr.i202 = getelementptr i8, ptr %15, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i202, i32 %13) #7, !srcloc !43
  br label %if.end122

if.then12:                                        ; preds = %entry
  %sub = lshr i32 %fb_base_phys, 5
  %16 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %layer, label %if.then12.if.end122_crit_edge [
    i32 0, label %sw.bb13
    i32 1, label %sw.bb18
    i32 2, label %sw.bb23
    i32 3, label %sw.bb28
  ]

if.then12.if.end122_crit_edge:                    ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

sw.bb13:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %shr = lshr i32 %fb_base_phys, 21
  %osd_base.i203 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %17 = ptrtoint ptr %osd_base.i203 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %osd_base.i203, align 4
  %add.ptr.i204 = getelementptr i8, ptr %18, i32 52
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i204) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %20 = and i32 %19, -2130706433
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %and2.i = and i32 %shr, 127
  %or.i = or i32 %21, %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i204, i32 %22) #7, !srcloc !43
  %and16 = and i32 %sub, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %23 = tail call i32 @llvm.bswap.i32(i32 %and16) #7
  %24 = ptrtoint ptr %osd_base.i203 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %osd_base.i203, align 4
  %add.ptr.i206 = getelementptr i8, ptr %25, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i206, i32 %23) #7, !srcloc !43
  br label %if.end122

sw.bb18:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %shr19 = lshr i32 %fb_base_phys, 21
  %osd_base.i207 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %26 = ptrtoint ptr %osd_base.i207 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %osd_base.i207, align 4
  %add.ptr.i208 = getelementptr i8, ptr %27, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i208) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %29 = and i32 %28, -2130706433
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %and2.i210 = and i32 %shr19, 127
  %or.i211 = or i32 %30, %and2.i210
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %31 = tail call i32 @llvm.bswap.i32(i32 %or.i211) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i208, i32 %31) #7, !srcloc !43
  %and21 = and i32 %sub, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %and21) #7
  %33 = ptrtoint ptr %osd_base.i207 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %osd_base.i207, align 4
  %add.ptr.i213 = getelementptr i8, ptr %34, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i213, i32 %32) #7, !srcloc !43
  br label %if.end122

sw.bb23:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %shr24 = lshr i32 %fb_base_phys, 13
  %osd_base.i214 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %35 = ptrtoint ptr %osd_base.i214 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %osd_base.i214, align 4
  %add.ptr.i215 = getelementptr i8, ptr %36, i32 52
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i215) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %38 = and i32 %37, -8323073
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %and2.i217 = and i32 %shr24, 32512
  %or.i218 = or i32 %39, %and2.i217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %or.i218) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i215, i32 %40) #7, !srcloc !43
  %and26 = and i32 %sub, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %41 = tail call i32 @llvm.bswap.i32(i32 %and26) #7
  %42 = ptrtoint ptr %osd_base.i214 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %osd_base.i214, align 4
  %add.ptr.i220 = getelementptr i8, ptr %43, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i220, i32 %41) #7, !srcloc !43
  br label %if.end122

sw.bb28:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %shr29 = lshr i32 %fb_base_phys, 13
  %osd_base.i221 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %44 = ptrtoint ptr %osd_base.i221 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %osd_base.i221, align 4
  %add.ptr.i222 = getelementptr i8, ptr %45, i32 40
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %47 = and i32 %46, -8323073
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  %and2.i224 = and i32 %shr29, 32512
  %or.i225 = or i32 %48, %and2.i224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i225) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i222, i32 %49) #7, !srcloc !43
  %and31 = and i32 %sub, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %and31) #7
  %51 = ptrtoint ptr %osd_base.i221 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %osd_base.i221, align 4
  %add.ptr.i227 = getelementptr i8, ptr %52, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i227, i32 %50) #7, !srcloc !43
  br label %if.end122

if.then37:                                        ; preds = %entry
  %sub40 = xor i32 %fb_base_phys, -2147483648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cbcr_ofst)
  %tobool.not = icmp eq i32 %cbcr_ofst, 0
  br i1 %tobool.not, label %if.else42, label %if.then37.if.end_crit_edge

if.then37.if.end_crit_edge:                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else42:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %line_length = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5, i32 1
  %53 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %line_length, align 4
  %ysize = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5, i32 3
  %55 = ptrtoint ptr %ysize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ysize, align 4
  %mul = mul i32 %56, %54
  br label %if.end

if.end:                                           ; preds = %if.else42, %if.then37.if.end_crit_edge
  %cbcr_offset_32.0 = phi i32 [ %mul, %if.else42 ], [ %cbcr_ofst, %if.then37.if.end_crit_edge ]
  %add = add i32 %cbcr_offset_32.0, %sub40
  %shr44 = lshr i32 %sub40, 5
  %shr45 = lshr i32 %add, 5
  %lconfig46 = getelementptr %struct.osd_state, ptr %sd, i32 0, i32 21, i32 %layer, i32 5
  %57 = ptrtoint ptr %lconfig46 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %lconfig46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %58)
  %cmp47 = icmp eq i32 %58, 8
  br i1 %cmp47, label %if.then48, label %if.end.if.end68_crit_edge

if.end.if.end68_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end68

if.then48:                                        ; preds = %if.end
  %59 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %layer, label %if.then48.if.end122_crit_edge [
    i32 1, label %if.then48.sw.bb49_crit_edge
    i32 3, label %if.then48.sw.bb49_crit_edge272
    i32 0, label %if.then48.sw.bb69_crit_edge
    i32 2, label %if.then48.sw.bb94_crit_edge
  ]

if.then48.sw.bb94_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb94

if.then48.sw.bb69_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb69

if.then48.sw.bb49_crit_edge272:                   ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

if.then48.sw.bb49_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb49

if.then48.if.end122_crit_edge:                    ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

sw.bb49:                                          ; preds = %if.then48.sw.bb49_crit_edge, %if.then48.sw.bb49_crit_edge272
  %and50 = lshr i32 %fb_base_phys, 19
  %shr51 = and i32 %and50, 3584
  %osd_base.i228 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %60 = ptrtoint ptr %osd_base.i228 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %osd_base.i228, align 4
  %add.ptr.i229 = getelementptr i8, ptr %61, i32 24
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i229) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %63 = and i32 %62, -1966081
  %64 = tail call i32 @llvm.bswap.i32(i32 %63)
  %or = or i32 %shr51, %64
  %or.i231 = or i32 %or, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %or.i231) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i229, i32 %65) #7, !srcloc !43
  %and53 = lshr i32 %fb_base_phys, 21
  %shr54 = and i32 %and53, 127
  %66 = ptrtoint ptr %osd_base.i228 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %osd_base.i228, align 4
  %add.ptr.i233 = getelementptr i8, ptr %67, i32 40
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i233) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %69 = and i32 %68, -2130706433
  %70 = tail call i32 @llvm.bswap.i32(i32 %69)
  %or.i235 = or i32 %70, %shr54
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %71 = tail call i32 @llvm.bswap.i32(i32 %or.i235) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i233, i32 %71) #7, !srcloc !43
  %and56 = and i32 %shr44, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %72 = tail call i32 @llvm.bswap.i32(i32 %and56) #7
  %73 = ptrtoint ptr %osd_base.i228 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %osd_base.i228, align 4
  %add.ptr.i237 = getelementptr i8, ptr %74, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i237, i32 %72) #7, !srcloc !43
  %and58 = lshr i32 %add, 19
  %shr59 = and i32 %and58, 3584
  %75 = ptrtoint ptr %osd_base.i228 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %osd_base.i228, align 4
  %add.ptr.i239 = getelementptr i8, ptr %76, i32 28
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i239) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %78 = and i32 %77, -1966081
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %or60 = or i32 %shr59, %79
  %or.i241 = or i32 %or60, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i241) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i239, i32 %80) #7, !srcloc !43
  %and62 = lshr i32 %add, 13
  %shr63 = and i32 %and62, 32512
  %81 = ptrtoint ptr %osd_base.i228 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %osd_base.i228, align 4
  %add.ptr.i243 = getelementptr i8, ptr %82, i32 40
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i243) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %84 = and i32 %83, -8323073
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %or.i245 = or i32 %85, %shr63
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %86 = tail call i32 @llvm.bswap.i32(i32 %or.i245) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i243, i32 %86) #7, !srcloc !43
  %and65 = and i32 %shr45, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %87 = tail call i32 @llvm.bswap.i32(i32 %and65) #7
  %88 = ptrtoint ptr %osd_base.i228 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %osd_base.i228, align 4
  %add.ptr.i247 = getelementptr i8, ptr %89, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i247, i32 %87) #7, !srcloc !43
  br label %if.end68

if.end68:                                         ; preds = %sw.bb49, %if.end.if.end68_crit_edge
  %90 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %layer, label %if.end68.if.end122_crit_edge [
    i32 0, label %if.end68.sw.bb69_crit_edge
    i32 1, label %sw.bb79
    i32 2, label %if.end68.sw.bb94_crit_edge
    i32 3, label %sw.bb104
  ]

if.end68.sw.bb94_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb94

if.end68.sw.bb69_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb69

if.end68.if.end122_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

sw.bb69:                                          ; preds = %if.end68.sw.bb69_crit_edge, %if.then48.sw.bb69_crit_edge
  %and70 = lshr i32 %fb_base_phys, 19
  %shr71 = and i32 %and70, 3584
  %osd_base.i248 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %91 = ptrtoint ptr %osd_base.i248 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %osd_base.i248, align 4
  %add.ptr.i249 = getelementptr i8, ptr %92, i32 32
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i249) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %94 = and i32 %93, -1966081
  %95 = tail call i32 @llvm.bswap.i32(i32 %94)
  %or72 = or i32 %shr71, %95
  %or.i251 = or i32 %or72, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %96 = tail call i32 @llvm.bswap.i32(i32 %or.i251) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i249, i32 %96) #7, !srcloc !43
  %and74 = lshr i32 %fb_base_phys, 21
  %shr75 = and i32 %and74, 127
  %97 = ptrtoint ptr %osd_base.i248 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %osd_base.i248, align 4
  %add.ptr.i253 = getelementptr i8, ptr %98, i32 52
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i253) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %100 = and i32 %99, -2130706433
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %or.i255 = or i32 %101, %shr75
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %102 = tail call i32 @llvm.bswap.i32(i32 %or.i255) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i253, i32 %102) #7, !srcloc !43
  %and77 = and i32 %shr44, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %103 = tail call i32 @llvm.bswap.i32(i32 %and77) #7
  %104 = ptrtoint ptr %osd_base.i248 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %osd_base.i248, align 4
  %add.ptr.i257 = getelementptr i8, ptr %105, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i257, i32 %103) #7, !srcloc !43
  br label %if.end122

sw.bb79:                                          ; preds = %if.end68
  %106 = ptrtoint ptr %lconfig46 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %lconfig46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %107)
  %cmp82.not = icmp eq i32 %107, 8
  br i1 %cmp82.not, label %sw.bb79.if.end122_crit_edge, label %if.then83

sw.bb79.if.end122_crit_edge:                      ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then83:                                        ; preds = %sw.bb79
  call void @__sanitizer_cov_trace_pc() #9
  %and84 = lshr i32 %fb_base_phys, 19
  %shr85 = and i32 %and84, 3584
  %or86 = or i32 %shr85, 4096
  tail call fastcc void @osd_modify(ptr noundef %sd, i32 noundef 7680, i32 noundef %or86, i32 noundef 24)
  %and88 = lshr i32 %fb_base_phys, 21
  %shr89 = and i32 %and88, 127
  tail call fastcc void @osd_modify(ptr noundef %sd, i32 noundef 127, i32 noundef %shr89, i32 noundef 40)
  %and91 = and i32 %shr44, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %108 = tail call i32 @llvm.bswap.i32(i32 %and91) #7
  %osd_base.i258 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %109 = ptrtoint ptr %osd_base.i258 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %osd_base.i258, align 4
  %add.ptr.i259 = getelementptr i8, ptr %110, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i259, i32 %108) #7, !srcloc !43
  br label %if.end122

sw.bb94:                                          ; preds = %if.end68.sw.bb94_crit_edge, %if.then48.sw.bb94_crit_edge
  %and95 = lshr i32 %fb_base_phys, 19
  %shr96 = and i32 %and95, 3584
  %osd_base.i260 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %111 = ptrtoint ptr %osd_base.i260 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %osd_base.i260, align 4
  %add.ptr.i261 = getelementptr i8, ptr %112, i32 36
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i261) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %114 = and i32 %113, -1966081
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  %or97 = or i32 %shr96, %115
  %or.i263 = or i32 %or97, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %116 = tail call i32 @llvm.bswap.i32(i32 %or.i263) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i261, i32 %116) #7, !srcloc !43
  %and99 = lshr i32 %fb_base_phys, 13
  %shr100 = and i32 %and99, 32512
  %117 = ptrtoint ptr %osd_base.i260 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %osd_base.i260, align 4
  %add.ptr.i265 = getelementptr i8, ptr %118, i32 52
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i265) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %120 = and i32 %119, -8323073
  %121 = tail call i32 @llvm.bswap.i32(i32 %120)
  %or.i267 = or i32 %121, %shr100
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %122 = tail call i32 @llvm.bswap.i32(i32 %or.i267) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i265, i32 %122) #7, !srcloc !43
  %and102 = and i32 %shr44, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %123 = tail call i32 @llvm.bswap.i32(i32 %and102) #7
  %124 = ptrtoint ptr %osd_base.i260 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %osd_base.i260, align 4
  %add.ptr.i269 = getelementptr i8, ptr %125, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i269, i32 %123) #7, !srcloc !43
  br label %if.end122

sw.bb104:                                         ; preds = %if.end68
  %126 = ptrtoint ptr %lconfig46 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %lconfig46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %127)
  %cmp107.not = icmp eq i32 %127, 8
  br i1 %cmp107.not, label %sw.bb104.if.end122_crit_edge, label %if.then108

sw.bb104.if.end122_crit_edge:                     ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then108:                                       ; preds = %sw.bb104
  call void @__sanitizer_cov_trace_pc() #9
  %and109 = lshr i32 %fb_base_phys, 19
  %shr110 = and i32 %and109, 3584
  %or111 = or i32 %shr110, 4096
  tail call fastcc void @osd_modify(ptr noundef %sd, i32 noundef 7680, i32 noundef %or111, i32 noundef 28)
  %and113 = lshr i32 %fb_base_phys, 13
  %shr114 = and i32 %and113, 32512
  tail call fastcc void @osd_modify(ptr noundef %sd, i32 noundef 32512, i32 noundef %shr114, i32 noundef 40)
  %and116 = and i32 %shr44, 65535
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %128 = tail call i32 @llvm.bswap.i32(i32 %and116) #7
  %osd_base.i270 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %129 = ptrtoint ptr %osd_base.i270 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %osd_base.i270, align 4
  %add.ptr.i271 = getelementptr i8, ptr %130, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i271, i32 %128) #7, !srcloc !43
  br label %if.end122

if.end122:                                        ; preds = %if.then108, %sw.bb104.if.end122_crit_edge, %sw.bb94, %if.then83, %sw.bb79.if.end122_crit_edge, %sw.bb69, %if.end68.if.end122_crit_edge, %if.then48.if.end122_crit_edge, %sw.bb28, %sw.bb23, %sw.bb18, %sw.bb13, %if.then12.if.end122_crit_edge, %sw.bb7, %sw.bb4, %sw.bb1, %sw.bb, %if.then.if.end122_crit_edge, %entry.if.end122_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_osd_set_layer_config(ptr noundef readonly %sd, i32 noundef %layer, ptr noundef readonly %lconfig) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lconfig, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %1, label %entry._osd_set_cbcr_order.exit_crit_edge [
    i32 5, label %if.then.i
    i32 7, label %if.then2.i
  ]

entry._osd_set_cbcr_order.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %_osd_set_cbcr_order.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %3 = ptrtoint ptr %osd_base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %osd_base.i.i, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %6 = and i32 %5, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %6) #7, !srcloc !43
  br label %_osd_set_cbcr_order.exit

if.then2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i7.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %7 = ptrtoint ptr %osd_base.i7.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %osd_base.i7.i, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  %10 = or i32 %9, 8388608
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %10) #7, !srcloc !43
  br label %_osd_set_cbcr_order.exit

_osd_set_cbcr_order.exit:                         ; preds = %if.then2.i, %if.then.i, %entry._osd_set_cbcr_order.exit_crit_edge
  %11 = zext i32 %layer to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %layer, label %_osd_set_cbcr_order.exit.sw.epilog301_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb48
    i32 2, label %sw.bb142
    i32 3, label %sw.bb222
  ]

_osd_set_cbcr_order.exit.sw.epilog301_crit_edge:  ; preds = %_osd_set_cbcr_order.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog301

sw.bb:                                            ; preds = %_osd_set_cbcr_order.exit
  %12 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sd, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %13, label %sw.bb.if.end19thread-pre-split_crit_edge [
    i32 1, label %if.then
    i32 3, label %sw.bb.if.then9_crit_edge
    i32 2, label %sw.bb.if.then9_crit_edge618
  ]

sw.bb.if.then9_crit_edge618:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

sw.bb.if.then9_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

sw.bb.if.end19thread-pre-split_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19thread-pre-split

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp2 = icmp eq i32 %16, 4
  %spec.select = select i1 %cmp2, i32 8192, i32 0
  br label %if.end19

if.then9:                                         ; preds = %sw.bb.if.then9_crit_edge, %sw.bb.if.then9_crit_edge618
  %17 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %lconfig, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %18, label %if.then9.if.end19_crit_edge [
    i32 4, label %if.then9.sw.epilog27_crit_edge
    i32 6, label %sw.bb14
    i32 5, label %if.then9.if.end19thread-pre-split_crit_edge
    i32 7, label %if.then9.if.end19thread-pre-split_crit_edge619
  ]

if.then9.if.end19thread-pre-split_crit_edge619:   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19thread-pre-split

if.then9.if.end19thread-pre-split_crit_edge:      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19thread-pre-split

if.then9.sw.epilog27_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

sw.bb14:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i.i488 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %20 = ptrtoint ptr %osd_base.i.i488 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %osd_base.i.i488, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 232
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %23 = and i32 %22, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %23) #7, !srcloc !43
  %24 = ptrtoint ptr %osd_base.i.i488 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %osd_base.i.i488, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %25, i32 228
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %27 = or i32 %26, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %27) #7, !srcloc !43
  br label %if.end19thread-pre-split

if.end19thread-pre-split:                         ; preds = %sw.bb14, %if.then9.if.end19thread-pre-split_crit_edge, %if.then9.if.end19thread-pre-split_crit_edge619, %sw.bb.if.end19thread-pre-split_crit_edge
  %winmd.0.ph = phi i32 [ 0, %sw.bb.if.end19thread-pre-split_crit_edge ], [ 16384, %sw.bb14 ], [ 24576, %if.then9.if.end19thread-pre-split_crit_edge ], [ 24576, %if.then9.if.end19thread-pre-split_crit_edge619 ]
  %winmd_mask.0.ph = phi i32 [ 194, %sw.bb.if.end19thread-pre-split_crit_edge ], [ 24770, %sw.bb14 ], [ 24770, %if.then9.if.end19thread-pre-split_crit_edge ], [ 24770, %if.then9.if.end19thread-pre-split_crit_edge619 ]
  %28 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pr = load i32, ptr %lconfig, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end19thread-pre-split, %if.then9.if.end19_crit_edge, %if.then
  %29 = phi i32 [ %.pr, %if.end19thread-pre-split ], [ %16, %if.then ], [ %18, %if.then9.if.end19_crit_edge ]
  %winmd.0 = phi i32 [ %winmd.0.ph, %if.end19thread-pre-split ], [ %spec.select, %if.then ], [ 0, %if.then9.if.end19_crit_edge ]
  %winmd_mask.0 = phi i32 [ %winmd_mask.0.ph, %if.end19thread-pre-split ], [ 8386, %if.then ], [ 24770, %if.then9.if.end19_crit_edge ]
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %29, label %if.end19.sw.epilog27_crit_edge [
    i32 3, label %sw.bb25
    i32 1, label %sw.bb23
    i32 2, label %sw.bb24
  ]

if.end19.sw.epilog27_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

sw.bb23:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

sw.bb24:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

sw.bb25:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog27

sw.epilog27:                                      ; preds = %sw.bb25, %sw.bb24, %sw.bb23, %if.end19.sw.epilog27_crit_edge, %if.then9.sw.epilog27_crit_edge
  %winmd_mask.0616 = phi i32 [ %winmd_mask.0, %sw.bb25 ], [ %winmd_mask.0, %sw.bb24 ], [ %winmd_mask.0, %sw.bb23 ], [ %winmd_mask.0, %if.end19.sw.epilog27_crit_edge ], [ 24770, %if.then9.sw.epilog27_crit_edge ]
  %winmd.0615 = phi i32 [ %winmd.0, %sw.bb25 ], [ %winmd.0, %sw.bb24 ], [ %winmd.0, %sw.bb23 ], [ %winmd.0, %if.end19.sw.epilog27_crit_edge ], [ 8192, %if.then9.sw.epilog27_crit_edge ]
  %bmw.0 = phi i32 [ 192, %sw.bb25 ], [ 128, %sw.bb24 ], [ 64, %sw.bb23 ], [ 0, %if.end19.sw.epilog27_crit_edge ], [ 0, %if.then9.sw.epilog27_crit_edge ]
  %or28 = or i32 %bmw.0, %winmd.0615
  %interlaced = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 6
  %31 = ptrtoint ptr %interlaced to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %interlaced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  %or30 = or i32 %or28, 2
  %spec.select483 = select i1 %tobool.not, i32 %or28, i32 %or30
  %osd_base.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %33 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 8
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !44
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %neg.i = xor i32 %winmd_mask.0616, -1
  %and.i = and i32 %36, %neg.i
  %and2.i = and i32 %spec.select483, %winmd_mask.0616
  %or.i = or i32 %and.i, %and2.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %37 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %37) #7, !srcloc !43
  %line_length = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 1
  %38 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %line_length, align 4
  %shr = lshr i32 %39, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %40 = tail call i32 @llvm.bswap.i32(i32 %shr) #7
  %41 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i490 = getelementptr i8, ptr %42, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i490, i32 %40) #7, !srcloc !43
  %xpos = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 4
  %43 = ptrtoint ptr %xpos to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %xpos, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %46 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i492 = getelementptr i8, ptr %47, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i492, i32 %45) #7, !srcloc !43
  %xsize = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 2
  %48 = ptrtoint ptr %xsize to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %xsize, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  %51 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i494 = getelementptr i8, ptr %52, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i494, i32 %50) #7, !srcloc !43
  %53 = ptrtoint ptr %interlaced to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interlaced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool36.not = icmp eq i32 %54, 0
  %ypos43 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 5
  %55 = ptrtoint ptr %ypos43 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ypos43, align 4
  br i1 %tobool36.not, label %if.else42, label %if.then37

if.then37:                                        ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  %shr38 = lshr i32 %56, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %57 = tail call i32 @llvm.bswap.i32(i32 %shr38) #7
  %58 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i496 = getelementptr i8, ptr %59, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i496, i32 %57) #7, !srcloc !43
  %ysize = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 3
  %60 = ptrtoint ptr %ysize to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ysize, align 4
  %shr40 = lshr i32 %61, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %62 = tail call i32 @llvm.bswap.i32(i32 %shr40) #7
  %63 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i498 = getelementptr i8, ptr %64, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i498, i32 %62) #7, !srcloc !43
  br label %sw.epilog301

if.else42:                                        ; preds = %sw.epilog27
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %65 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  %66 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i500 = getelementptr i8, ptr %67, i32 108
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i500, i32 %65) #7, !srcloc !43
  %ysize45 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 3
  %68 = ptrtoint ptr %ysize45 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ysize45, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %70 = tail call i32 @llvm.bswap.i32(i32 %69) #7
  %71 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i502 = getelementptr i8, ptr %72, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i502, i32 %70) #7, !srcloc !43
  br label %sw.epilog301

sw.bb48:                                          ; preds = %_osd_set_cbcr_order.exit
  %interlaced50 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 6
  %73 = ptrtoint ptr %interlaced50 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %interlaced50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool51.not = icmp eq i32 %74, 0
  %spec.select484 = select i1 %tobool51.not, i32 0, i32 2
  %osd_base.i503 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %75 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i504 = getelementptr i8, ptr %76, i32 4
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i504) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %78 = and i32 %77, -33554433
  %79 = tail call i32 @llvm.bswap.i32(i32 %78)
  %or.i506 = or i32 %79, %spec.select484
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %80 = tail call i32 @llvm.bswap.i32(i32 %or.i506) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i504, i32 %80) #7, !srcloc !43
  %line_length56 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 1
  %81 = ptrtoint ptr %line_length56 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %line_length56, align 4
  %shr57 = lshr i32 %82, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %83 = tail call i32 @llvm.bswap.i32(i32 %shr57) #7
  %84 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i508 = getelementptr i8, ptr %85, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i508, i32 %83) #7, !srcloc !43
  %xpos59 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 4
  %86 = ptrtoint ptr %xpos59 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %xpos59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %88 = tail call i32 @llvm.bswap.i32(i32 %87) #7
  %89 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i510 = getelementptr i8, ptr %90, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i510, i32 %88) #7, !srcloc !43
  %xsize61 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 2
  %91 = ptrtoint ptr %xsize61 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %xsize61, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %93 = tail call i32 @llvm.bswap.i32(i32 %92) #7
  %94 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i512 = getelementptr i8, ptr %95, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i512, i32 %93) #7, !srcloc !43
  %96 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %97)
  %cmp64 = icmp eq i32 %97, 2
  br i1 %cmp64, label %land.lhs.true, label %sw.bb48.if.end102_crit_edge

sw.bb48.if.end102_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

land.lhs.true:                                    ; preds = %sw.bb48
  %98 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %99)
  %cmp66 = icmp eq i32 %99, 8
  br i1 %cmp66, label %if.then67, label %land.lhs.true96

if.then67:                                        ; preds = %land.lhs.true
  %100 = ptrtoint ptr %interlaced50 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %interlaced50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool69.not = icmp eq i32 %101, 0
  br i1 %tobool69.not, label %if.then67.if.end74_crit_edge, label %if.then70

if.then67.if.end74_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then70:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #9
  %102 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i514 = getelementptr i8, ptr %103, i32 4
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i514) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %105 = and i32 %104, -33685505
  %106 = tail call i32 @llvm.bswap.i32(i32 %105)
  %or72 = or i32 %spec.select484, %106
  %or.i516 = or i32 %or72, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %107 = tail call i32 @llvm.bswap.i32(i32 %or.i516) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i514, i32 %107) #7, !srcloc !43
  br label %if.end74

if.end74:                                         ; preds = %if.then70, %if.then67.if.end74_crit_edge
  %108 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i518 = getelementptr i8, ptr %109, i32 232
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i518) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %111 = or i32 %110, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i518, i32 %111) #7, !srcloc !43
  %112 = ptrtoint ptr %line_length56 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %line_length56, align 4
  %shr77 = lshr i32 %113, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %114 = tail call i32 @llvm.bswap.i32(i32 %shr77) #7
  %115 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i522 = getelementptr i8, ptr %116, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i522, i32 %114) #7, !srcloc !43
  %117 = ptrtoint ptr %xpos59 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %xpos59, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %119 = tail call i32 @llvm.bswap.i32(i32 %118) #7
  %120 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i524 = getelementptr i8, ptr %121, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i524, i32 %119) #7, !srcloc !43
  %122 = ptrtoint ptr %xsize61 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %xsize61, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %124 = tail call i32 @llvm.bswap.i32(i32 %123) #7
  %125 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i526 = getelementptr i8, ptr %126, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i526, i32 %124) #7, !srcloc !43
  %127 = ptrtoint ptr %xsize61 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %xsize61, align 4
  %rem = and i32 %128, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool84.not = icmp eq i32 %rem, 0
  br i1 %tobool84.not, label %if.end74.if.end102_crit_edge, label %if.then85

if.end74.if.end102_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then85:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %128, 31
  %and = and i32 %add, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %129 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %130 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i528 = getelementptr i8, ptr %131, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i528, i32 %129) #7, !srcloc !43
  %132 = ptrtoint ptr %xsize61 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %xsize61, align 4
  %add89 = add i32 %133, 31
  %and90 = and i32 %add89, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %134 = tail call i32 @llvm.bswap.i32(i32 %and90) #7
  %135 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i530 = getelementptr i8, ptr %136, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i530, i32 %134) #7, !srcloc !43
  br label %if.end102

land.lhs.true96:                                  ; preds = %land.lhs.true
  %137 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %138)
  %cmp98.not = icmp eq i32 %138, 8
  br i1 %cmp98.not, label %land.lhs.true96.if.end102_crit_edge, label %if.then99

land.lhs.true96.if.end102_crit_edge:              ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then99:                                        ; preds = %land.lhs.true96
  call void @__sanitizer_cov_trace_pc() #9
  %139 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i532 = getelementptr i8, ptr %140, i32 232
  %141 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i532) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %142 = and i32 %141, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i532, i32 %142) #7, !srcloc !43
  br label %if.end102

if.end102:                                        ; preds = %if.then99, %land.lhs.true96.if.end102_crit_edge, %if.then85, %if.end74.if.end102_crit_edge, %sw.bb48.if.end102_crit_edge
  %143 = ptrtoint ptr %interlaced50 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %interlaced50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %tobool104.not = icmp eq i32 %144, 0
  %ypos126 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 5
  %145 = ptrtoint ptr %ypos126 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %ypos126, align 4
  br i1 %tobool104.not, label %if.else125, label %if.then105

if.then105:                                       ; preds = %if.end102
  %shr107 = lshr i32 %146, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %147 = tail call i32 @llvm.bswap.i32(i32 %shr107) #7
  %148 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i535 = getelementptr i8, ptr %149, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i535, i32 %147) #7, !srcloc !43
  %ysize109 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 3
  %150 = ptrtoint ptr %ysize109 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %ysize109, align 4
  %shr110 = lshr i32 %151, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %152 = tail call i32 @llvm.bswap.i32(i32 %shr110) #7
  %153 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i537 = getelementptr i8, ptr %154, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i537, i32 %152) #7, !srcloc !43
  %155 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %156)
  %cmp113 = icmp eq i32 %156, 2
  br i1 %cmp113, label %land.lhs.true114, label %if.then105.sw.epilog301_crit_edge

if.then105.sw.epilog301_crit_edge:                ; preds = %if.then105
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog301

land.lhs.true114:                                 ; preds = %if.then105
  %157 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %158)
  %cmp116 = icmp eq i32 %158, 8
  br i1 %cmp116, label %if.then117, label %land.lhs.true114.sw.epilog301_crit_edge

land.lhs.true114.sw.epilog301_crit_edge:          ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog301

if.then117:                                       ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #9
  %159 = ptrtoint ptr %ypos126 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %ypos126, align 4
  %shr119 = lshr i32 %160, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %161 = tail call i32 @llvm.bswap.i32(i32 %shr119) #7
  %162 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i539 = getelementptr i8, ptr %163, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i539, i32 %161) #7, !srcloc !43
  %164 = ptrtoint ptr %ysize109 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %ysize109, align 4
  %shr122 = lshr i32 %165, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %166 = tail call i32 @llvm.bswap.i32(i32 %shr122) #7
  %167 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i541 = getelementptr i8, ptr %168, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i541, i32 %166) #7, !srcloc !43
  br label %sw.epilog301

if.else125:                                       ; preds = %if.end102
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %169 = tail call i32 @llvm.bswap.i32(i32 %146) #7
  %170 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i543 = getelementptr i8, ptr %171, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i543, i32 %169) #7, !srcloc !43
  %ysize128 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 3
  %172 = ptrtoint ptr %ysize128 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %ysize128, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %174 = tail call i32 @llvm.bswap.i32(i32 %173) #7
  %175 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i545 = getelementptr i8, ptr %176, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i545, i32 %174) #7, !srcloc !43
  %177 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %178)
  %cmp131 = icmp eq i32 %178, 2
  br i1 %cmp131, label %land.lhs.true132, label %if.else125.sw.epilog301_crit_edge

if.else125.sw.epilog301_crit_edge:                ; preds = %if.else125
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog301

land.lhs.true132:                                 ; preds = %if.else125
  %179 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %180)
  %cmp134 = icmp eq i32 %180, 8
  br i1 %cmp134, label %if.then135, label %land.lhs.true132.sw.epilog301_crit_edge

land.lhs.true132.sw.epilog301_crit_edge:          ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog301

if.then135:                                       ; preds = %land.lhs.true132
  call void @__sanitizer_cov_trace_pc() #9
  %181 = ptrtoint ptr %ypos126 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %ypos126, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %183 = tail call i32 @llvm.bswap.i32(i32 %182) #7
  %184 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i547 = getelementptr i8, ptr %185, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i547, i32 %183) #7, !srcloc !43
  %186 = ptrtoint ptr %ysize128 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %ysize128, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %188 = tail call i32 @llvm.bswap.i32(i32 %187) #7
  %189 = ptrtoint ptr %osd_base.i503 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %osd_base.i503, align 4
  %add.ptr.i549 = getelementptr i8, ptr %190, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i549, i32 %188) #7, !srcloc !43
  br label %sw.epilog301

sw.bb142:                                         ; preds = %_osd_set_cbcr_order.exit
  %191 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %192)
  %cmp144 = icmp eq i32 %192, 9
  br i1 %cmp144, label %sw.bb142.if.end192_crit_edge, label %if.else153

sw.bb142.if.end192_crit_edge:                     ; preds = %sw.bb142
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

if.else153:                                       ; preds = %sw.bb142
  %193 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %sd, align 4
  %195 = zext i32 %194 to i64
  call void @__sanitizer_cov_trace_switch(i64 %195, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %194, label %if.else153.if.end181_crit_edge [
    i32 1, label %if.then156
    i32 3, label %if.else153.if.then169_crit_edge
    i32 2, label %if.else153.if.then169_crit_edge620
  ]

if.else153.if.then169_crit_edge620:               ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then169

if.else153.if.then169_crit_edge:                  ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then169

if.else153.if.end181_crit_edge:                   ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181

if.then156:                                       ; preds = %if.else153
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %192)
  %cmp159 = icmp eq i32 %192, 4
  %spec.select485 = select i1 %cmp159, i32 8192, i32 0
  br label %if.end181thread-pre-split

if.then169:                                       ; preds = %if.else153.if.then169_crit_edge, %if.else153.if.then169_crit_edge620
  %196 = zext i32 %192 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %192, label %if.then169.if.end181thread-pre-split_crit_edge [
    i32 4, label %sw.bb172
    i32 6, label %sw.bb174
    i32 5, label %if.then169.sw.bb176_crit_edge
    i32 7, label %if.then169.sw.bb176_crit_edge621
  ]

if.then169.sw.bb176_crit_edge621:                 ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb176

if.then169.sw.bb176_crit_edge:                    ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb176

if.then169.if.end181thread-pre-split_crit_edge:   ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181thread-pre-split

sw.bb172:                                         ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end181thread-pre-split

sw.bb174:                                         ; preds = %if.then169
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @_osd_enable_rgb888_pixblend(ptr noundef %sd, i32 noundef 1)
  br label %if.end181thread-pre-split

sw.bb176:                                         ; preds = %if.then169.sw.bb176_crit_edge, %if.then169.sw.bb176_crit_edge621
  br label %if.end181thread-pre-split

if.end181thread-pre-split:                        ; preds = %sw.bb176, %sw.bb174, %sw.bb172, %if.then169.if.end181thread-pre-split_crit_edge, %if.then156
  %winmd.3.ph = phi i32 [ %spec.select485, %if.then156 ], [ 8192, %sw.bb172 ], [ 16384, %sw.bb174 ], [ 24576, %sw.bb176 ], [ 0, %if.then169.if.end181thread-pre-split_crit_edge ]
  %winmd_mask.1.ph = phi i32 [ 8384, %if.then156 ], [ 24768, %sw.bb172 ], [ 24768, %sw.bb174 ], [ 24768, %sw.bb176 ], [ 24768, %if.then169.if.end181thread-pre-split_crit_edge ]
  %197 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %197)
  %.pr617 = load i32, ptr %lconfig, align 4
  br label %if.end181

if.end181:                                        ; preds = %if.end181thread-pre-split, %if.else153.if.end181_crit_edge
  %198 = phi i32 [ %.pr617, %if.end181thread-pre-split ], [ %192, %if.else153.if.end181_crit_edge ]
  %winmd.3 = phi i32 [ %winmd.3.ph, %if.end181thread-pre-split ], [ 0, %if.else153.if.end181_crit_edge ]
  %winmd_mask.1 = phi i32 [ %winmd_mask.1.ph, %if.end181thread-pre-split ], [ 192, %if.else153.if.end181_crit_edge ]
  %switch.tableidx = add i32 %198, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %switch.tableidx)
  %199 = icmp ult i32 %switch.tableidx, 3
  %switch.idx.mult = shl i32 %switch.tableidx, 6
  %switch.offset = add i32 %switch.idx.mult, 64
  %bmw.1 = select i1 %199, i32 %switch.offset, i32 0
  %or191 = or i32 %bmw.1, %winmd.3
  br label %if.end192

if.end192:                                        ; preds = %if.end181, %sw.bb142.if.end192_crit_edge
  %winmd.4 = phi i32 [ %or191, %if.end181 ], [ 0, %sw.bb142.if.end192_crit_edge ]
  %winmd_mask.2 = phi i32 [ %winmd_mask.1, %if.end181 ], [ 28732, %sw.bb142.if.end192_crit_edge ]
  %or193 = or i32 %winmd_mask.2, 2
  %interlaced194 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 6
  %200 = ptrtoint ptr %interlaced194 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %interlaced194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %201)
  %tobool195.not = icmp eq i32 %201, 0
  %or197 = or i32 %winmd.4, 2
  %spec.select486 = select i1 %tobool195.not, i32 %winmd.4, i32 %or197
  %osd_base.i550 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %202 = ptrtoint ptr %osd_base.i550 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %osd_base.i550, align 4
  %add.ptr.i551 = getelementptr i8, ptr %203, i32 12
  %204 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i551) #7, !srcloc !44
  %205 = tail call i32 @llvm.bswap.i32(i32 %204) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %neg.i552 = xor i32 %or193, -1
  %and.i553 = and i32 %205, %neg.i552
  %and2.i554 = and i32 %spec.select486, %or193
  %or.i555 = or i32 %and.i553, %and2.i554
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %206 = tail call i32 @llvm.bswap.i32(i32 %or.i555) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i551, i32 %206) #7, !srcloc !43
  %line_length200 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 1
  %207 = ptrtoint ptr %line_length200 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %line_length200, align 4
  %shr201 = lshr i32 %208, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %209 = tail call i32 @llvm.bswap.i32(i32 %shr201) #7
  %210 = ptrtoint ptr %osd_base.i550 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %osd_base.i550, align 4
  %add.ptr.i557 = getelementptr i8, ptr %211, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i557, i32 %209) #7, !srcloc !43
  %xpos203 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 4
  %212 = ptrtoint ptr %xpos203 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %xpos203, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %214 = tail call i32 @llvm.bswap.i32(i32 %213) #7
  %215 = ptrtoint ptr %osd_base.i550 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %osd_base.i550, align 4
  %add.ptr.i559 = getelementptr i8, ptr %216, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i559, i32 %214) #7, !srcloc !43
  %xsize205 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 2
  %217 = ptrtoint ptr %xsize205 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %xsize205, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %219 = tail call i32 @llvm.bswap.i32(i32 %218) #7
  %220 = ptrtoint ptr %osd_base.i550 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %osd_base.i550, align 4
  %add.ptr.i561 = getelementptr i8, ptr %221, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i561, i32 %219) #7, !srcloc !43
  %222 = ptrtoint ptr %interlaced194 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %interlaced194, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %223)
  %tobool208.not = icmp eq i32 %223, 0
  %ypos217 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 5
  %224 = ptrtoint ptr %ypos217 to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %ypos217, align 4
  br i1 %tobool208.not, label %if.else216, label %if.then209

if.then209:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  %shr211 = lshr i32 %225, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %226 = tail call i32 @llvm.bswap.i32(i32 %shr211) #7
  %227 = ptrtoint ptr %osd_base.i550 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %osd_base.i550, align 4
  %add.ptr.i563 = getelementptr i8, ptr %228, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i563, i32 %226) #7, !srcloc !43
  %ysize213 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 3
  %229 = ptrtoint ptr %ysize213 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %ysize213, align 4
  %shr214 = lshr i32 %230, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %231 = tail call i32 @llvm.bswap.i32(i32 %shr214) #7
  %232 = ptrtoint ptr %osd_base.i550 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %osd_base.i550, align 4
  %add.ptr.i565 = getelementptr i8, ptr %233, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i565, i32 %231) #7, !srcloc !43
  br label %sw.epilog301

if.else216:                                       ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %234 = tail call i32 @llvm.bswap.i32(i32 %225) #7
  %235 = ptrtoint ptr %osd_base.i550 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %osd_base.i550, align 4
  %add.ptr.i567 = getelementptr i8, ptr %236, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i567, i32 %234) #7, !srcloc !43
  %ysize219 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 3
  %237 = ptrtoint ptr %ysize219 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %ysize219, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %239 = tail call i32 @llvm.bswap.i32(i32 %238) #7
  %240 = ptrtoint ptr %osd_base.i550 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load ptr, ptr %osd_base.i550, align 4
  %add.ptr.i569 = getelementptr i8, ptr %241, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i569, i32 %239) #7, !srcloc !43
  br label %sw.epilog301

sw.bb222:                                         ; preds = %_osd_set_cbcr_order.exit
  %interlaced224 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 6
  %242 = ptrtoint ptr %interlaced224 to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %interlaced224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %tobool225.not = icmp eq i32 %243, 0
  %spec.select487 = select i1 %tobool225.not, i32 0, i32 512
  %osd_base.i570 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %244 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i571 = getelementptr i8, ptr %245, i32 4
  %246 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i571) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %247 = and i32 %246, -131073
  %248 = tail call i32 @llvm.bswap.i32(i32 %247)
  %or.i573 = or i32 %248, %spec.select487
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %249 = tail call i32 @llvm.bswap.i32(i32 %or.i573) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i571, i32 %249) #7, !srcloc !43
  %line_length230 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 1
  %250 = ptrtoint ptr %line_length230 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %line_length230, align 4
  %shr231 = lshr i32 %251, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %252 = tail call i32 @llvm.bswap.i32(i32 %shr231) #7
  %253 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i575 = getelementptr i8, ptr %254, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i575, i32 %252) #7, !srcloc !43
  %xpos233 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 4
  %255 = ptrtoint ptr %xpos233 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %xpos233, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %257 = tail call i32 @llvm.bswap.i32(i32 %256) #7
  %258 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i577 = getelementptr i8, ptr %259, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i577, i32 %257) #7, !srcloc !43
  %xsize235 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 2
  %260 = ptrtoint ptr %xsize235 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %xsize235, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %262 = tail call i32 @llvm.bswap.i32(i32 %261) #7
  %263 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i579 = getelementptr i8, ptr %264, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i579, i32 %262) #7, !srcloc !43
  %265 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %266)
  %cmp238 = icmp eq i32 %266, 2
  br i1 %cmp238, label %if.then239, label %sw.bb222.if.end261_crit_edge

sw.bb222.if.end261_crit_edge:                     ; preds = %sw.bb222
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end261

if.then239:                                       ; preds = %sw.bb222
  %267 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %268)
  %cmp241 = icmp eq i32 %268, 8
  br i1 %cmp241, label %if.then242, label %if.else258

if.then242:                                       ; preds = %if.then239
  %269 = ptrtoint ptr %interlaced224 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %interlaced224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %tobool244.not = icmp eq i32 %270, 0
  br i1 %tobool244.not, label %if.then242.if.end249_crit_edge, label %if.then245

if.then242.if.end249_crit_edge:                   ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end249

if.then245:                                       ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #9
  %271 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i581 = getelementptr i8, ptr %272, i32 4
  %273 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i581) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %274 = and i32 %273, -33685505
  %275 = tail call i32 @llvm.bswap.i32(i32 %274)
  %or247 = or i32 %spec.select487, %275
  %or.i583 = or i32 %or247, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %276 = tail call i32 @llvm.bswap.i32(i32 %or.i583) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i581, i32 %276) #7, !srcloc !43
  br label %if.end249

if.end249:                                        ; preds = %if.then245, %if.then242.if.end249_crit_edge
  %277 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i585 = getelementptr i8, ptr %278, i32 232
  %279 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i585) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %280 = or i32 %279, 4194304
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i585, i32 %280) #7, !srcloc !43
  %281 = ptrtoint ptr %line_length230 to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %line_length230, align 4
  %shr252 = lshr i32 %282, 5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %283 = tail call i32 @llvm.bswap.i32(i32 %shr252) #7
  %284 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i589 = getelementptr i8, ptr %285, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i589, i32 %283) #7, !srcloc !43
  %286 = ptrtoint ptr %xpos233 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %xpos233, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %288 = tail call i32 @llvm.bswap.i32(i32 %287) #7
  %289 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i591 = getelementptr i8, ptr %290, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i591, i32 %288) #7, !srcloc !43
  %291 = ptrtoint ptr %xsize235 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %xsize235, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %293 = tail call i32 @llvm.bswap.i32(i32 %292) #7
  %294 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i593 = getelementptr i8, ptr %295, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i593, i32 %293) #7, !srcloc !43
  br label %if.end261

if.else258:                                       ; preds = %if.then239
  call void @__sanitizer_cov_trace_pc() #9
  %296 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i595 = getelementptr i8, ptr %297, i32 232
  %298 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i595) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %299 = and i32 %298, -4194305
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i595, i32 %299) #7, !srcloc !43
  br label %if.end261

if.end261:                                        ; preds = %if.else258, %if.end249, %sw.bb222.if.end261_crit_edge
  %300 = ptrtoint ptr %interlaced224 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %interlaced224, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool263.not = icmp eq i32 %301, 0
  %ypos285 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 5
  %302 = ptrtoint ptr %ypos285 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %ypos285, align 4
  br i1 %tobool263.not, label %if.else284, label %if.then264

if.then264:                                       ; preds = %if.end261
  %shr266 = lshr i32 %303, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %304 = tail call i32 @llvm.bswap.i32(i32 %shr266) #7
  %305 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i598 = getelementptr i8, ptr %306, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i598, i32 %304) #7, !srcloc !43
  %ysize268 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 3
  %307 = ptrtoint ptr %ysize268 to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load i32, ptr %ysize268, align 4
  %shr269 = lshr i32 %308, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %309 = tail call i32 @llvm.bswap.i32(i32 %shr269) #7
  %310 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i600 = getelementptr i8, ptr %311, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i600, i32 %309) #7, !srcloc !43
  %312 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %313)
  %cmp272 = icmp eq i32 %313, 2
  br i1 %cmp272, label %land.lhs.true273, label %if.then264.sw.epilog301_crit_edge

if.then264.sw.epilog301_crit_edge:                ; preds = %if.then264
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog301

land.lhs.true273:                                 ; preds = %if.then264
  %314 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %315)
  %cmp275 = icmp eq i32 %315, 8
  br i1 %cmp275, label %if.then276, label %land.lhs.true273.sw.epilog301_crit_edge

land.lhs.true273.sw.epilog301_crit_edge:          ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog301

if.then276:                                       ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #9
  %316 = ptrtoint ptr %ypos285 to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %ypos285, align 4
  %shr278 = lshr i32 %317, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %318 = tail call i32 @llvm.bswap.i32(i32 %shr278) #7
  %319 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i602 = getelementptr i8, ptr %320, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i602, i32 %318) #7, !srcloc !43
  %321 = ptrtoint ptr %ysize268 to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %ysize268, align 4
  %shr281 = lshr i32 %322, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %323 = tail call i32 @llvm.bswap.i32(i32 %shr281) #7
  %324 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %324)
  %325 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i604 = getelementptr i8, ptr %325, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i604, i32 %323) #7, !srcloc !43
  br label %sw.epilog301

if.else284:                                       ; preds = %if.end261
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %326 = tail call i32 @llvm.bswap.i32(i32 %303) #7
  %327 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i606 = getelementptr i8, ptr %328, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i606, i32 %326) #7, !srcloc !43
  %ysize287 = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 3
  %329 = ptrtoint ptr %ysize287 to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %ysize287, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %331 = tail call i32 @llvm.bswap.i32(i32 %330) #7
  %332 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i608 = getelementptr i8, ptr %333, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i608, i32 %331) #7, !srcloc !43
  %334 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load i32, ptr %sd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %335)
  %cmp290 = icmp eq i32 %335, 2
  br i1 %cmp290, label %land.lhs.true291, label %if.else284.sw.epilog301_crit_edge

if.else284.sw.epilog301_crit_edge:                ; preds = %if.else284
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog301

land.lhs.true291:                                 ; preds = %if.else284
  %336 = ptrtoint ptr %lconfig to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load i32, ptr %lconfig, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %337)
  %cmp293 = icmp eq i32 %337, 8
  br i1 %cmp293, label %if.then294, label %land.lhs.true291.sw.epilog301_crit_edge

land.lhs.true291.sw.epilog301_crit_edge:          ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog301

if.then294:                                       ; preds = %land.lhs.true291
  call void @__sanitizer_cov_trace_pc() #9
  %338 = ptrtoint ptr %ypos285 to i32
  call void @__asan_load4_noabort(i32 %338)
  %339 = load i32, ptr %ypos285, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %340 = tail call i32 @llvm.bswap.i32(i32 %339) #7
  %341 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i610 = getelementptr i8, ptr %342, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i610, i32 %340) #7, !srcloc !43
  %343 = ptrtoint ptr %ysize287 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %ysize287, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %345 = tail call i32 @llvm.bswap.i32(i32 %344) #7
  %346 = ptrtoint ptr %osd_base.i570 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %osd_base.i570, align 4
  %add.ptr.i612 = getelementptr i8, ptr %347, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i612, i32 %345) #7, !srcloc !43
  br label %sw.epilog301

sw.epilog301:                                     ; preds = %if.then294, %land.lhs.true291.sw.epilog301_crit_edge, %if.else284.sw.epilog301_crit_edge, %if.then276, %land.lhs.true273.sw.epilog301_crit_edge, %if.then264.sw.epilog301_crit_edge, %if.else216, %if.then209, %if.then135, %land.lhs.true132.sw.epilog301_crit_edge, %if.else125.sw.epilog301_crit_edge, %if.then117, %land.lhs.true114.sw.epilog301_crit_edge, %if.then105.sw.epilog301_crit_edge, %if.else42, %if.then37, %_osd_set_cbcr_order.exit.sw.epilog301_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_osd_disable_color_key(ptr nocapture noundef readonly %sd, i32 noundef %osdwin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %osdwin to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %osdwin, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %1 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %4 = and i32 %3, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %4) #7, !srcloc !43
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %osd_base.i4 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %5 = ptrtoint ptr %osd_base.i4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %osd_base.i4, align 4
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %8 = and i32 %7, -67108865
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5, i32 %8) #7, !srcloc !43
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_osd_set_rec601_attenuation(ptr nocapture noundef readonly %sd, i32 noundef %osdwin, i32 noundef %enable) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %osdwin to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %osdwin, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb13
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %cond = select i1 %tobool.not, i32 0, i32 16384
  %osd_base.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %1 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 8
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %4 = and i32 %3, -4194305
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %or.i = or i32 %5, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !43
  %7 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sd, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %8, label %sw.bb.sw.epilog_crit_edge [
    i32 1, label %if.then
    i32 3, label %sw.bb.if.then8_crit_edge
    i32 2, label %sw.bb.if.then8_crit_edge72
  ]

sw.bb.if.then8_crit_edge72:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

sw.bb.if.then8_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then8

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i53 = getelementptr i8, ptr %11, i32 8
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i53) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %13 = and i32 %12, -4194305
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  %or.i55 = or i32 %14, %cond
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %15 = tail call i32 @llvm.bswap.i32(i32 %or.i55) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i53, i32 %15) #7, !srcloc !43
  br label %sw.epilog

if.then8:                                         ; preds = %sw.bb.if.then8_crit_edge, %sw.bb.if.then8_crit_edge72
  %cond10 = select i1 %tobool.not, i32 0, i32 256
  %16 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i57 = getelementptr i8, ptr %17, i32 228
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i57) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %19 = and i32 %18, -65537
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %or.i59 = or i32 %20, %cond10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %21 = tail call i32 @llvm.bswap.i32(i32 %or.i59) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i57, i32 %21) #7, !srcloc !43
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool14.not = icmp eq i32 %enable, 0
  %cond15 = select i1 %tobool14.not, i32 0, i32 16384
  %osd_base.i60 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %22 = ptrtoint ptr %osd_base.i60 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %osd_base.i60, align 4
  %add.ptr.i61 = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i61) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %25 = and i32 %24, -4194305
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  %or.i63 = or i32 %26, %cond15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i63) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61, i32 %27) #7, !srcloc !43
  %28 = ptrtoint ptr %sd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sd, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %29, label %sw.bb13.sw.epilog_crit_edge [
    i32 1, label %if.then19
    i32 3, label %sw.bb13.if.then29_crit_edge
    i32 2, label %sw.bb13.if.then29_crit_edge73
  ]

sw.bb13.if.then29_crit_edge73:                    ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

sw.bb13.if.then29_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then29

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then19:                                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %osd_base.i60 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %osd_base.i60, align 4
  %add.ptr.i65 = getelementptr i8, ptr %32, i32 12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i65) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %34 = and i32 %33, -4194305
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %or.i67 = or i32 %35, %cond15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %36 = tail call i32 @llvm.bswap.i32(i32 %or.i67) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65, i32 %36) #7, !srcloc !43
  br label %sw.epilog

if.then29:                                        ; preds = %sw.bb13.if.then29_crit_edge, %sw.bb13.if.then29_crit_edge73
  %cond31 = select i1 %tobool14.not, i32 0, i32 512
  %37 = ptrtoint ptr %osd_base.i60 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %osd_base.i60, align 4
  %add.ptr.i69 = getelementptr i8, ptr %38, i32 228
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %40 = and i32 %39, -131073
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %or.i71 = or i32 %41, %cond31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  %42 = tail call i32 @llvm.bswap.i32(i32 %or.i71) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 %42) #7, !srcloc !43
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then29, %if.then19, %sw.bb13.sw.epilog_crit_edge, %if.then8, %if.then, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_osd_enable_rgb888_pixblend(ptr nocapture noundef readonly %sd, i32 noundef %osdwin) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %osd_base.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %0 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 232
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %3 = and i32 %2, -8388609
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %3) #7, !srcloc !43
  %4 = zext i32 %osdwin to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %osdwin, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %6, i32 228
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i7) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %8 = or i32 %7, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 %8) #7, !srcloc !43
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i10 = getelementptr i8, ptr %10, i32 228
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i10) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %12 = or i32 %11, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %12) #7, !srcloc !43
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @_osd_dm6446_vid0_pingpong(ptr nocapture noundef readonly %sd, i32 noundef %field_inversion, i32 noundef %fb_base_phys, ptr nocapture noundef readonly %lconfig) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %platform_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %cmp.not = icmp eq ptr %3, null
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup_crit_edge, label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %field_inversion)
  %tobool1.not = icmp eq i32 %field_inversion, 0
  br i1 %tobool1.not, label %if.then.if.then3_crit_edge, label %lor.lhs.false

if.then.if.then3_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

lor.lhs.false:                                    ; preds = %if.then
  %interlaced = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 6
  %6 = ptrtoint ptr %interlaced to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %interlaced, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.then3_crit_edge, label %if.else

lor.lhs.false.if.then3_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

if.then3:                                         ; preds = %lor.lhs.false.if.then3_crit_edge, %if.then.if.then3_crit_edge
  %and = and i32 %fb_base_phys, -32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %and) #7
  %osd_base.i = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %9 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !43
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %11 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %12, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 %8) #7, !srcloc !43
  %13 = ptrtoint ptr %osd_base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %osd_base.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %14, i32 232
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i28) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %16 = and i32 %15, -100663297
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i28, i32 %16) #7, !srcloc !43
  br label %cleanup

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %and7 = and i32 %fb_base_phys, -32
  %line_length = getelementptr inbounds %struct.osd_layer_config, ptr %lconfig, i32 0, i32 1
  %17 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %line_length, align 4
  %sub = sub i32 %and7, %18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %19 = tail call i32 @llvm.bswap.i32(i32 %sub) #7
  %osd_base.i29 = getelementptr inbounds %struct.osd_state, ptr %sd, i32 0, i32 4
  %20 = ptrtoint ptr %osd_base.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %osd_base.i29, align 4
  %add.ptr.i30 = getelementptr i8, ptr %21, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30, i32 %19) #7, !srcloc !43
  %22 = ptrtoint ptr %line_length to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %line_length, align 4
  %add = add i32 %23, %and7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  tail call void @arm_heavy_mb() #7
  %24 = tail call i32 @llvm.bswap.i32(i32 %add) #7
  %25 = ptrtoint ptr %osd_base.i29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %osd_base.i29, align 4
  %add.ptr.i32 = getelementptr i8, ptr %26, i32 252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32, i32 %24) #7, !srcloc !43
  %27 = ptrtoint ptr %osd_base.i29 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %osd_base.i29, align 4
  %add.ptr.i34 = getelementptr i8, ptr %28, i32 232
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #7, !srcloc !44
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %30 = and i32 %29, -100663297
  %31 = or i32 %30, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %31) #7, !srcloc !43
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then3, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.else ], [ 0, %if.then3 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !19, !20, !21, !22, !23, !24, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_vpbe_osd__302_1578_osd_driver_init6, !1, !"__initcall__kmod_vpbe_osd__302_1578_osd_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 1578, i32 1}
!2 = !{ptr @__exitcall_osd_driver_exit, !1, !"__exitcall_osd_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file303, !4, !"__UNIQUE_ID_file303", i1 false, i1 false}
!4 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 1580, i32 1}
!5 = !{ptr @__UNIQUE_ID_license304, !4, !"__UNIQUE_ID_license304", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description305, !7, !"__UNIQUE_ID_description305", i1 false, i1 false}
!7 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 1581, i32 1}
!8 = !{ptr @__UNIQUE_ID_author306, !9, !"__UNIQUE_ID_author306", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 1582, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 1573, i32 11}
!12 = !{ptr @osd_driver, !13, !"osd_driver", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 1569, i32 31}
!14 = !{ptr @osd_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 1556, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 1559, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @osd_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @osd_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @osd_ops, !26, !"osd_ops", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 1518, i32 34}
!27 = !{ptr @_osd_set_palette_map.map_2bpp, !28, !"map_2bpp", i1 false, i1 false}
!28 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 202, i32 19}
!29 = !{ptr @_osd_set_palette_map.map_1bpp, !30, !"map_1bpp", i1 false, i1 false}
!30 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 203, i32 19}
!31 = !{ptr @vpbe_osd_devtype, !32, !"vpbe_osd_devtype", i1 false, i1 false}
!32 = !{!"../drivers/media/platform/davinci/vpbe_osd.c", i32 29, i32 40}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{i64 2156207774}
!43 = !{i64 4686121}
!44 = !{i64 4686539}
!45 = !{i64 2156210489}
!46 = !{i64 2156210694}
!47 = !{i64 2156209724}
!48 = !{i64 2156208758}
!49 = !{i64 2156209523}
!50 = !{i64 2156208557}
