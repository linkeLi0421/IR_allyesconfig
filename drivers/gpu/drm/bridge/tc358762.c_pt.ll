; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/tc358762.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/tc358762.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.tc358762 = type { ptr, %struct.drm_bridge, %struct.drm_connector, ptr, ptr, i8, i32 }
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.86 }
%union.anon.86 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_tc358762__307_276_tc358762_driver_init6 = internal global ptr @tc358762_driver_init, section ".initcall6.init", align 4
@tc358762_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tc358762_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @tc358762_probe, ptr @tc358762_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_tc358762_driver_exit = internal global ptr @tc358762_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [44 x i8] c"tc358762.author=Marek Vasut <marex@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [71 x i8] c"tc358762.description=MIPI-DSI based Driver for TC358762 DSI/DPI Bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [46 x i8] c"tc358762.file=drivers/gpu/drm/bridge/tc358762\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [24 x i8] c"tc358762.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tc358762\00", [23 x i8] zeroinitializer }, align 32
@tc358762_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tc358762\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@tc358762_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @tc358762_attach, ptr null, ptr null, ptr null, ptr null, ptr @tc358762_post_disable, ptr null, ptr @tc358762_pre_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tc358762_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 246, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to attach dsi\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tc358762_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/gpu/drm/bridge/tc358762.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tc358762_probe._entry_ptr = internal global ptr @tc358762_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vddc\00", [27 x i8] zeroinitializer }, align 32
@tc358762_post_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 144, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"error disabling regulators (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tc358762_post_disable\00", [42 x i8] zeroinitializer }, align 32
@tc358762_post_disable._entry_ptr = internal global ptr @tc358762_post_disable._entry, section ".printk_index", align 4
@tc358762_pre_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error enabling regulators (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tc358762_pre_enable\00", [44 x i8] zeroinitializer }, align 32
@tc358762_pre_enable._entry_ptr = internal global ptr @tc358762_pre_enable._entry, section ".printk_index", align 4
@tc358762_pre_enable._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 158, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"error initializing bridge (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@tc358762_pre_enable._entry_ptr.13 = internal global ptr @tc358762_pre_enable._entry.11, section ".printk_index", align 4
@___asan_gen_.14 = private unnamed_addr constant [16 x i8] c"tc358762_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 268, i32 31 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 272, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [18 x i8] c"tc358762_of_match\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 262, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant [22 x i8] c"tc358762_bridge_funcs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 172, i32 38 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 246, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 201, i32 48 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 144, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 154, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private constant [37 x i8] c"../drivers/gpu/drm/bridge/tc358762.c\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 158, i32 3 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_tc358762_driver_exit, ptr @__initcall__kmod_tc358762__307_276_tc358762_driver_init6, ptr @tc358762_driver_exit, ptr @tc358762_post_disable._entry, ptr @tc358762_post_disable._entry_ptr, ptr @tc358762_pre_enable._entry, ptr @tc358762_pre_enable._entry.11, ptr @tc358762_pre_enable._entry_ptr, ptr @tc358762_pre_enable._entry_ptr.13, ptr @tc358762_probe._entry, ptr @tc358762_probe._entry_ptr, ptr @tc358762_driver, ptr @.str, ptr @tc358762_of_match, ptr @tc358762_bridge_funcs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358762_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358762_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358762_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358762_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358762_post_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358762_pre_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc358762_pre_enable._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358762_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @tc358762_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tc358762_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @tc358762_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358762_probe(ptr noundef %dsi) #2 align 64 {
entry:
  %panel.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1344, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %call.i, align 8
  %pre_enabled = getelementptr inbounds %struct.tc358762, ptr %call.i, i32 0, i32 5
  %2 = ptrtoint ptr %pre_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pre_enabled, align 8
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %3 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %lanes, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %4 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %format, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %5 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 2053, ptr %mode_flags, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel.i) #5
  %6 = ptrtoint ptr %panel.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel.i, align 4, !annotation !51
  %of_node.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %call.i44 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %8, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %panel.i, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44)
  %tobool.not.i = icmp eq i32 %call.i44, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.tc358762_parse_dt.exit_crit_edge

if.end.tc358762_parse_dt.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_parse_dt.exit

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %panel.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %panel.i, align 4
  %call2.i = call ptr @devm_drm_panel_bridge_add(ptr noundef %dev1, ptr noundef %10) #5
  %cmp.i.i = icmp ugt ptr %call2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then4.i, label %tc358762_parse_dt.exit.thread

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %call2.i to i32
  br label %tc358762_parse_dt.exit

tc358762_parse_dt.exit.thread:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %panel_bridge7.i = getelementptr inbounds %struct.tc358762, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %panel_bridge7.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call2.i, ptr %panel_bridge7.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #5
  br label %if.end5

tc358762_parse_dt.exit:                           ; preds = %if.then4.i, %if.end.tc358762_parse_dt.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.then4.i ], [ %call.i44, %if.end.tc358762_parse_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %tc358762_parse_dt.exit.cleanup_crit_edge, label %tc358762_parse_dt.exit.if.end5_crit_edge

tc358762_parse_dt.exit.if.end5_crit_edge:         ; preds = %tc358762_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

tc358762_parse_dt.exit.cleanup_crit_edge:         ; preds = %tc358762_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %tc358762_parse_dt.exit.if.end5_crit_edge, %tc358762_parse_dt.exit.thread
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 8
  %call.i45 = call ptr @devm_regulator_get(ptr noundef %14, ptr noundef nonnull @.str.6) #5
  %regulator.i = getelementptr inbounds %struct.tc358762, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %regulator.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i45, ptr %regulator.i, align 8
  %cmp.i.i46 = icmp ugt ptr %call.i45, inttoptr (i32 -4096 to ptr)
  %16 = ptrtoint ptr %call.i45 to i32
  %cmp749 = icmp slt ptr %call.i45, null
  %cmp7 = and i1 %cmp.i.i46, %cmp749
  br i1 %cmp7, label %if.end5.cleanup_crit_edge, label %if.end9

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %bridge = getelementptr inbounds %struct.tc358762, ptr %call.i, i32 0, i32 1
  %funcs = getelementptr inbounds %struct.tc358762, ptr %call.i, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tc358762_bridge_funcs, ptr %funcs, align 4
  %type = getelementptr inbounds %struct.tc358762, ptr %call.i, i32 0, i32 1, i32 10
  %18 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 17, ptr %type, align 4
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %of_node12 = getelementptr inbounds %struct.tc358762, ptr %call.i, i32 0, i32 1, i32 4
  %21 = ptrtoint ptr %of_node12 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %of_node12, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #5
  %call14 = call i32 @mipi_dsi_attach(ptr noundef %dsi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_bridge_remove(ptr noundef %bridge) #5
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %tc358762_parse_dt.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %tc358762_parse_dt.exit.cleanup_crit_edge ], [ %16, %if.end5.cleanup_crit_edge ], [ %call14, %if.then16 ], [ %call14, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358762_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #5
  %bridge = getelementptr inbounds %struct.tc358762, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tc358762_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %panel_bridge = getelementptr i8, ptr %bridge, i32 1328
  %2 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_bridge, align 4
  %call1 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %flags) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358762_post_disable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %pre_enabled = getelementptr i8, ptr %bridge, i32 1332
  %0 = ptrtoint ptr %pre_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pre_enabled, align 8, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pre_enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %pre_enabled, align 8
  %regulator = getelementptr i8, ptr %bridge, i32 1324
  %3 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regulator, align 8
  %call2 = tail call i32 @regulator_disable(ptr noundef %4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.7, i32 noundef %call2) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tc358762_pre_enable(ptr noundef %bridge) #2 align 64 {
entry:
  %data.i93.i = alloca [6 x i8], align 1
  %data.i84.i = alloca [6 x i8], align 1
  %data.i75.i = alloca [6 x i8], align 1
  %data.i66.i = alloca [6 x i8], align 1
  %data.i57.i = alloca [6 x i8], align 1
  %data.i48.i = alloca [6 x i8], align 1
  %data.i39.i = alloca [6 x i8], align 1
  %data.i30.i = alloca [6 x i8], align 1
  %data.i21.i = alloca [6 x i8], align 1
  %data.i12.i = alloca [6 x i8], align 1
  %data.i.i = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -4
  %regulator = getelementptr i8, ptr %bridge, i32 1324
  %0 = ptrtoint ptr %regulator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regulator, align 8
  %call1 = tail call i32 @regulator_enable(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9, i32 noundef %call1) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i.i) #5
  %error.i.i = getelementptr i8, ptr %bridge, i32 1336
  %6 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.tc358762_write.exit.thread.i_crit_edge

if.end.tc358762_write.exit.thread.i_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit.thread.i

if.end.i.i:                                       ; preds = %if.end
  %8 = getelementptr inbounds [6 x i8], ptr %data.i.i, i32 0, i32 5
  %9 = getelementptr inbounds [6 x i8], ptr %data.i.i, i32 0, i32 4
  %10 = getelementptr inbounds [6 x i8], ptr %data.i.i, i32 0, i32 3
  %11 = getelementptr inbounds [6 x i8], ptr %data.i.i, i32 0, i32 2
  %12 = getelementptr inbounds [6 x i8], ptr %data.i.i, i32 0, i32 1
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 -8
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %data.i.i, align 1
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %12, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 3, ptr %11, align 1
  %16 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %10, align 1
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %9, align 1
  %18 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %8, align 1
  %call15.i.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i.i, ptr noundef nonnull %data.i.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp.i.i, label %if.then17.i.i, label %tc358762_write.exit.i

if.then17.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call15.i.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit.thread.i

tc358762_write.exit.thread.i:                     ; preds = %if.then17.i.i, %if.end.tc358762_write.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i12.i) #5
  br label %tc358762_write.exit20.i

tc358762_write.exit.i:                            ; preds = %if.end.i.i
  %20 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i.i) #5
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i12.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i14.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i14.i, label %if.end.i18.i, label %tc358762_write.exit.i.tc358762_write.exit20.thread.i_crit_edge

tc358762_write.exit.i.tc358762_write.exit20.thread.i_crit_edge: ; preds = %tc358762_write.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit20.thread.i

if.end.i18.i:                                     ; preds = %tc358762_write.exit.i
  %23 = getelementptr inbounds [6 x i8], ptr %data.i12.i, i32 0, i32 5
  %24 = getelementptr inbounds [6 x i8], ptr %data.i12.i, i32 0, i32 4
  %25 = getelementptr inbounds [6 x i8], ptr %data.i12.i, i32 0, i32 3
  %26 = getelementptr inbounds [6 x i8], ptr %data.i12.i, i32 0, i32 2
  %27 = getelementptr inbounds [6 x i8], ptr %data.i12.i, i32 0, i32 1
  %add.ptr.i.i15.i = getelementptr i8, ptr %22, i32 -8
  %28 = ptrtoint ptr %data.i12.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 100, ptr %data.i12.i, align 1
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %27, align 1
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 5, ptr %26, align 1
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %25, align 1
  %32 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %24, align 1
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %23, align 1
  %call15.i16.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i15.i, ptr noundef nonnull %data.i12.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i16.i)
  %cmp.i17.i = icmp slt i32 %call15.i16.i, 0
  br i1 %cmp.i17.i, label %if.then17.i19.i, label %if.end.i18.i.tc358762_write.exit20.i_crit_edge

if.end.i18.i.tc358762_write.exit20.i_crit_edge:   ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit20.i

if.then17.i19.i:                                  ; preds = %if.end.i18.i
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call15.i16.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit20.thread.i

tc358762_write.exit20.thread.i:                   ; preds = %if.then17.i19.i, %tc358762_write.exit.i.tc358762_write.exit20.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i12.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i21.i) #5
  br label %tc358762_write.exit29.i

tc358762_write.exit20.i:                          ; preds = %if.end.i18.i.tc358762_write.exit20.i_crit_edge, %tc358762_write.exit.thread.i
  %35 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pr104.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i12.i) #5
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i21.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr104.i)
  %tobool.not.i23.i = icmp eq i32 %.pr104.i, 0
  br i1 %tobool.not.i23.i, label %if.end.i27.i, label %tc358762_write.exit20.i.tc358762_write.exit29.thread.i_crit_edge

tc358762_write.exit20.i.tc358762_write.exit29.thread.i_crit_edge: ; preds = %tc358762_write.exit20.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit29.thread.i

if.end.i27.i:                                     ; preds = %tc358762_write.exit20.i
  %38 = getelementptr inbounds [6 x i8], ptr %data.i21.i, i32 0, i32 5
  %39 = getelementptr inbounds [6 x i8], ptr %data.i21.i, i32 0, i32 4
  %40 = getelementptr inbounds [6 x i8], ptr %data.i21.i, i32 0, i32 3
  %41 = getelementptr inbounds [6 x i8], ptr %data.i21.i, i32 0, i32 2
  %42 = getelementptr inbounds [6 x i8], ptr %data.i21.i, i32 0, i32 1
  %add.ptr.i.i24.i = getelementptr i8, ptr %37, i32 -8
  %43 = ptrtoint ptr %data.i21.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 104, ptr %data.i21.i, align 1
  %44 = ptrtoint ptr %42 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %42, align 1
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 5, ptr %41, align 1
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %40, align 1
  %47 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %39, align 1
  %48 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 0, ptr %38, align 1
  %call15.i25.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i24.i, ptr noundef nonnull %data.i21.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i25.i)
  %cmp.i26.i = icmp slt i32 %call15.i25.i, 0
  br i1 %cmp.i26.i, label %if.then17.i28.i, label %if.end.i27.i.tc358762_write.exit29.i_crit_edge

if.end.i27.i.tc358762_write.exit29.i_crit_edge:   ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit29.i

if.then17.i28.i:                                  ; preds = %if.end.i27.i
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %call15.i25.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit29.thread.i

tc358762_write.exit29.thread.i:                   ; preds = %if.then17.i28.i, %tc358762_write.exit20.i.tc358762_write.exit29.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i21.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i30.i) #5
  br label %tc358762_write.exit38.i

tc358762_write.exit29.i:                          ; preds = %if.end.i27.i.tc358762_write.exit29.i_crit_edge, %tc358762_write.exit20.thread.i
  %50 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.pr106.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i21.i) #5
  %51 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i30.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr106.i)
  %tobool.not.i32.i = icmp eq i32 %.pr106.i, 0
  br i1 %tobool.not.i32.i, label %if.end.i36.i, label %tc358762_write.exit29.i.tc358762_write.exit38.thread.i_crit_edge

tc358762_write.exit29.i.tc358762_write.exit38.thread.i_crit_edge: ; preds = %tc358762_write.exit29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit38.thread.i

if.end.i36.i:                                     ; preds = %tc358762_write.exit29.i
  %53 = getelementptr inbounds [6 x i8], ptr %data.i30.i, i32 0, i32 2
  %54 = getelementptr inbounds [6 x i8], ptr %data.i30.i, i32 0, i32 1
  %add.ptr.i.i33.i = getelementptr i8, ptr %52, i32 -8
  %55 = ptrtoint ptr %data.i30.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 68, ptr %data.i30.i, align 1
  %56 = ptrtoint ptr %54 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 1, ptr %54, align 1
  %57 = ptrtoint ptr %53 to i32
  call void @__asan_storeN_noabort(i32 %57, i32 4)
  store i32 0, ptr %53, align 1
  %call15.i34.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i33.i, ptr noundef nonnull %data.i30.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i34.i)
  %cmp.i35.i = icmp slt i32 %call15.i34.i, 0
  br i1 %cmp.i35.i, label %if.then17.i37.i, label %if.end.i36.i.tc358762_write.exit38.i_crit_edge

if.end.i36.i.tc358762_write.exit38.i_crit_edge:   ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit38.i

if.then17.i37.i:                                  ; preds = %if.end.i36.i
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %call15.i34.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit38.thread.i

tc358762_write.exit38.thread.i:                   ; preds = %if.then17.i37.i, %tc358762_write.exit29.i.tc358762_write.exit38.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i30.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i39.i) #5
  br label %tc358762_write.exit47.i

tc358762_write.exit38.i:                          ; preds = %if.end.i36.i.tc358762_write.exit38.i_crit_edge, %tc358762_write.exit29.thread.i
  %59 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %.pr108.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i30.i) #5
  %60 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i39.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr108.i)
  %tobool.not.i41.i = icmp eq i32 %.pr108.i, 0
  br i1 %tobool.not.i41.i, label %if.end.i45.i, label %tc358762_write.exit38.i.tc358762_write.exit47.thread.i_crit_edge

tc358762_write.exit38.i.tc358762_write.exit47.thread.i_crit_edge: ; preds = %tc358762_write.exit38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit47.thread.i

if.end.i45.i:                                     ; preds = %tc358762_write.exit38.i
  %62 = getelementptr inbounds [6 x i8], ptr %data.i39.i, i32 0, i32 2
  %63 = getelementptr inbounds [6 x i8], ptr %data.i39.i, i32 0, i32 1
  %add.ptr.i.i42.i = getelementptr i8, ptr %61, i32 -8
  %64 = ptrtoint ptr %data.i39.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 72, ptr %data.i39.i, align 1
  %65 = ptrtoint ptr %63 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %63, align 1
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_storeN_noabort(i32 %66, i32 4)
  store i32 0, ptr %62, align 1
  %call15.i43.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i42.i, ptr noundef nonnull %data.i39.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i43.i)
  %cmp.i44.i = icmp slt i32 %call15.i43.i, 0
  br i1 %cmp.i44.i, label %if.then17.i46.i, label %if.end.i45.i.tc358762_write.exit47.i_crit_edge

if.end.i45.i.tc358762_write.exit47.i_crit_edge:   ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit47.i

if.then17.i46.i:                                  ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call15.i43.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit47.thread.i

tc358762_write.exit47.thread.i:                   ; preds = %if.then17.i46.i, %tc358762_write.exit38.i.tc358762_write.exit47.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i39.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i48.i) #5
  br label %tc358762_write.exit56.i

tc358762_write.exit47.i:                          ; preds = %if.end.i45.i.tc358762_write.exit47.i_crit_edge, %tc358762_write.exit38.thread.i
  %68 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %.pr110.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i39.i) #5
  %69 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i48.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr110.i)
  %tobool.not.i50.i = icmp eq i32 %.pr110.i, 0
  br i1 %tobool.not.i50.i, label %if.end.i54.i, label %tc358762_write.exit47.i.tc358762_write.exit56.thread.i_crit_edge

tc358762_write.exit47.i.tc358762_write.exit56.thread.i_crit_edge: ; preds = %tc358762_write.exit47.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit56.thread.i

if.end.i54.i:                                     ; preds = %tc358762_write.exit47.i
  %71 = getelementptr inbounds [6 x i8], ptr %data.i48.i, i32 0, i32 5
  %72 = getelementptr inbounds [6 x i8], ptr %data.i48.i, i32 0, i32 4
  %73 = getelementptr inbounds [6 x i8], ptr %data.i48.i, i32 0, i32 3
  %74 = getelementptr inbounds [6 x i8], ptr %data.i48.i, i32 0, i32 2
  %75 = getelementptr inbounds [6 x i8], ptr %data.i48.i, i32 0, i32 1
  %add.ptr.i.i51.i = getelementptr i8, ptr %70, i32 -8
  %76 = ptrtoint ptr %data.i48.i to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 20, ptr %data.i48.i, align 1
  %77 = ptrtoint ptr %75 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %75, align 1
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 3, ptr %74, align 1
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %73, align 1
  %80 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %72, align 1
  %81 = ptrtoint ptr %71 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 0, ptr %71, align 1
  %call15.i52.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i51.i, ptr noundef nonnull %data.i48.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i52.i)
  %cmp.i53.i = icmp slt i32 %call15.i52.i, 0
  br i1 %cmp.i53.i, label %if.then17.i55.i, label %if.end.i54.i.tc358762_write.exit56.i_crit_edge

if.end.i54.i.tc358762_write.exit56.i_crit_edge:   ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit56.i

if.then17.i55.i:                                  ; preds = %if.end.i54.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call15.i52.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit56.thread.i

tc358762_write.exit56.thread.i:                   ; preds = %if.then17.i55.i, %tc358762_write.exit47.i.tc358762_write.exit56.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i48.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i57.i) #5
  br label %tc358762_write.exit65.i

tc358762_write.exit56.i:                          ; preds = %if.end.i54.i.tc358762_write.exit56.i_crit_edge, %tc358762_write.exit47.thread.i
  %83 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %.pr112.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i48.i) #5
  %84 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i57.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr112.i)
  %tobool.not.i59.i = icmp eq i32 %.pr112.i, 0
  br i1 %tobool.not.i59.i, label %if.end.i63.i, label %tc358762_write.exit56.i.tc358762_write.exit65.thread.i_crit_edge

tc358762_write.exit56.i.tc358762_write.exit65.thread.i_crit_edge: ; preds = %tc358762_write.exit56.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit65.thread.i

if.end.i63.i:                                     ; preds = %tc358762_write.exit56.i
  %86 = getelementptr inbounds [6 x i8], ptr %data.i57.i, i32 0, i32 2
  %87 = getelementptr inbounds [6 x i8], ptr %data.i57.i, i32 0, i32 1
  %add.ptr.i.i60.i = getelementptr i8, ptr %85, i32 -8
  %88 = ptrtoint ptr %data.i57.i to i32
  call void @__asan_store1_noabort(i32 %88)
  store i8 80, ptr %data.i57.i, align 1
  %89 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 4, ptr %87, align 1
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 0, ptr %86, align 1
  %call15.i61.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i60.i, ptr noundef nonnull %data.i57.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i61.i)
  %cmp.i62.i = icmp slt i32 %call15.i61.i, 0
  br i1 %cmp.i62.i, label %if.then17.i64.i, label %if.end.i63.i.tc358762_write.exit65.i_crit_edge

if.end.i63.i.tc358762_write.exit65.i_crit_edge:   ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit65.i

if.then17.i64.i:                                  ; preds = %if.end.i63.i
  call void @__sanitizer_cov_trace_pc() #7
  %91 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %call15.i61.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit65.thread.i

tc358762_write.exit65.thread.i:                   ; preds = %if.then17.i64.i, %tc358762_write.exit56.i.tc358762_write.exit65.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i57.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i66.i) #5
  br label %tc358762_write.exit74.i

tc358762_write.exit65.i:                          ; preds = %if.end.i63.i.tc358762_write.exit65.i_crit_edge, %tc358762_write.exit56.thread.i
  %92 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr114.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i57.i) #5
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i66.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr114.i)
  %tobool.not.i68.i = icmp eq i32 %.pr114.i, 0
  br i1 %tobool.not.i68.i, label %if.end.i72.i, label %tc358762_write.exit65.i.tc358762_write.exit74.thread.i_crit_edge

tc358762_write.exit65.i.tc358762_write.exit74.thread.i_crit_edge: ; preds = %tc358762_write.exit65.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit74.thread.i

if.end.i72.i:                                     ; preds = %tc358762_write.exit65.i
  %95 = getelementptr inbounds [6 x i8], ptr %data.i66.i, i32 0, i32 5
  %96 = getelementptr inbounds [6 x i8], ptr %data.i66.i, i32 0, i32 4
  %97 = getelementptr inbounds [6 x i8], ptr %data.i66.i, i32 0, i32 3
  %98 = getelementptr inbounds [6 x i8], ptr %data.i66.i, i32 0, i32 2
  %99 = getelementptr inbounds [6 x i8], ptr %data.i66.i, i32 0, i32 1
  %add.ptr.i.i69.i = getelementptr i8, ptr %94, i32 -8
  %100 = ptrtoint ptr %data.i66.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 32, ptr %data.i66.i, align 1
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 4, ptr %99, align 1
  %102 = ptrtoint ptr %98 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 80, ptr %98, align 1
  %103 = ptrtoint ptr %97 to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 1, ptr %97, align 1
  %104 = ptrtoint ptr %96 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 16, ptr %96, align 1
  %105 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 0, ptr %95, align 1
  %call15.i70.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i69.i, ptr noundef nonnull %data.i66.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i70.i)
  %cmp.i71.i = icmp slt i32 %call15.i70.i, 0
  br i1 %cmp.i71.i, label %if.then17.i73.i, label %if.end.i72.i.tc358762_write.exit74.i_crit_edge

if.end.i72.i.tc358762_write.exit74.i_crit_edge:   ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit74.i

if.then17.i73.i:                                  ; preds = %if.end.i72.i
  call void @__sanitizer_cov_trace_pc() #7
  %106 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %call15.i70.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit74.thread.i

tc358762_write.exit74.thread.i:                   ; preds = %if.then17.i73.i, %tc358762_write.exit65.i.tc358762_write.exit74.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i66.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i75.i) #5
  br label %tc358762_write.exit83.i

tc358762_write.exit74.i:                          ; preds = %if.end.i72.i.tc358762_write.exit74.i_crit_edge, %tc358762_write.exit65.thread.i
  %107 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr116.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i66.i) #5
  %108 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i75.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr116.i)
  %tobool.not.i77.i = icmp eq i32 %.pr116.i, 0
  br i1 %tobool.not.i77.i, label %if.end.i81.i, label %tc358762_write.exit74.i.tc358762_write.exit83.i_crit_edge

tc358762_write.exit74.i.tc358762_write.exit83.i_crit_edge: ; preds = %tc358762_write.exit74.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit83.i

if.end.i81.i:                                     ; preds = %tc358762_write.exit74.i
  %110 = getelementptr inbounds [6 x i8], ptr %data.i75.i, i32 0, i32 5
  %111 = getelementptr inbounds [6 x i8], ptr %data.i75.i, i32 0, i32 4
  %112 = getelementptr inbounds [6 x i8], ptr %data.i75.i, i32 0, i32 3
  %113 = getelementptr inbounds [6 x i8], ptr %data.i75.i, i32 0, i32 2
  %114 = getelementptr inbounds [6 x i8], ptr %data.i75.i, i32 0, i32 1
  %add.ptr.i.i78.i = getelementptr i8, ptr %109, i32 -8
  %115 = ptrtoint ptr %data.i75.i to i32
  call void @__asan_store1_noabort(i32 %115)
  store i8 100, ptr %data.i75.i, align 1
  %116 = ptrtoint ptr %114 to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 4, ptr %114, align 1
  %117 = ptrtoint ptr %113 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 15, ptr %113, align 1
  %118 = ptrtoint ptr %112 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 4, ptr %112, align 1
  %119 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %111, align 1
  %120 = ptrtoint ptr %110 to i32
  call void @__asan_store1_noabort(i32 %120)
  store i8 0, ptr %110, align 1
  %call15.i79.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i78.i, ptr noundef nonnull %data.i75.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i79.i)
  %cmp.i80.i = icmp slt i32 %call15.i79.i, 0
  br i1 %cmp.i80.i, label %if.then17.i82.i, label %if.end.i81.i.tc358762_write.exit83.i_crit_edge

if.end.i81.i.tc358762_write.exit83.i_crit_edge:   ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit83.i

if.then17.i82.i:                                  ; preds = %if.end.i81.i
  call void @__sanitizer_cov_trace_pc() #7
  %121 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %call15.i79.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit83.i

tc358762_write.exit83.i:                          ; preds = %if.then17.i82.i, %if.end.i81.i.tc358762_write.exit83.i_crit_edge, %tc358762_write.exit74.i.tc358762_write.exit83.i_crit_edge, %tc358762_write.exit74.thread.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i75.i) #5
  call void @msleep(i32 noundef 100) #5
  %122 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i84.i) #5
  %124 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i86.i = icmp eq i32 %125, 0
  br i1 %tobool.not.i86.i, label %if.end.i90.i, label %tc358762_write.exit83.i.tc358762_write.exit92.thread.i_crit_edge

tc358762_write.exit83.i.tc358762_write.exit92.thread.i_crit_edge: ; preds = %tc358762_write.exit83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_write.exit92.thread.i

if.end.i90.i:                                     ; preds = %tc358762_write.exit83.i
  %126 = getelementptr inbounds [6 x i8], ptr %data.i84.i, i32 0, i32 5
  %127 = getelementptr inbounds [6 x i8], ptr %data.i84.i, i32 0, i32 4
  %128 = getelementptr inbounds [6 x i8], ptr %data.i84.i, i32 0, i32 3
  %129 = getelementptr inbounds [6 x i8], ptr %data.i84.i, i32 0, i32 2
  %130 = getelementptr inbounds [6 x i8], ptr %data.i84.i, i32 0, i32 1
  %add.ptr.i.i87.i = getelementptr i8, ptr %123, i32 -8
  %131 = ptrtoint ptr %data.i84.i to i32
  call void @__asan_store1_noabort(i32 %131)
  store i8 4, ptr %data.i84.i, align 1
  %132 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 1, ptr %130, align 1
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 1, ptr %129, align 1
  %134 = ptrtoint ptr %128 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %128, align 1
  %135 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %127, align 1
  %136 = ptrtoint ptr %126 to i32
  call void @__asan_store1_noabort(i32 %136)
  store i8 0, ptr %126, align 1
  %call15.i88.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i87.i, ptr noundef nonnull %data.i84.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i88.i)
  %cmp.i89.i = icmp slt i32 %call15.i88.i, 0
  br i1 %cmp.i89.i, label %if.then17.i91.i, label %tc358762_write.exit92.i

if.then17.i91.i:                                  ; preds = %if.end.i90.i
  call void @__sanitizer_cov_trace_pc() #7
  %137 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %call15.i88.i, ptr %error.i.i, align 4
  br label %tc358762_write.exit92.thread.i

tc358762_write.exit92.thread.i:                   ; preds = %if.then17.i91.i, %tc358762_write.exit83.i.tc358762_write.exit92.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i84.i) #5
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i93.i) #5
  br label %tc358762_init.exit

tc358762_write.exit92.i:                          ; preds = %if.end.i90.i
  %138 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %.pr118.i = load i32, ptr %error.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i84.i) #5
  %139 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %add.ptr.i, align 8
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %data.i93.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr118.i)
  %tobool.not.i95.i = icmp eq i32 %.pr118.i, 0
  br i1 %tobool.not.i95.i, label %if.end.i99.i, label %tc358762_write.exit92.i.tc358762_init.exit_crit_edge

tc358762_write.exit92.i.tc358762_init.exit_crit_edge: ; preds = %tc358762_write.exit92.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_init.exit

if.end.i99.i:                                     ; preds = %tc358762_write.exit92.i
  %141 = getelementptr inbounds [6 x i8], ptr %data.i93.i, i32 0, i32 5
  %142 = getelementptr inbounds [6 x i8], ptr %data.i93.i, i32 0, i32 4
  %143 = getelementptr inbounds [6 x i8], ptr %data.i93.i, i32 0, i32 3
  %144 = getelementptr inbounds [6 x i8], ptr %data.i93.i, i32 0, i32 2
  %145 = getelementptr inbounds [6 x i8], ptr %data.i93.i, i32 0, i32 1
  %add.ptr.i.i96.i = getelementptr i8, ptr %140, i32 -8
  %146 = ptrtoint ptr %data.i93.i to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 4, ptr %data.i93.i, align 1
  %147 = ptrtoint ptr %145 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 2, ptr %145, align 1
  %148 = ptrtoint ptr %144 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 1, ptr %144, align 1
  %149 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %149)
  store i8 0, ptr %143, align 1
  %150 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %142, align 1
  %151 = ptrtoint ptr %141 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 0, ptr %141, align 1
  %call15.i97.i = call i32 @mipi_dsi_generic_write(ptr noundef %add.ptr.i.i96.i, ptr noundef nonnull %data.i93.i, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i97.i)
  %cmp.i98.i = icmp slt i32 %call15.i97.i, 0
  br i1 %cmp.i98.i, label %if.then17.i100.i, label %if.end.i99.i.tc358762_init.exit_crit_edge

if.end.i99.i.tc358762_init.exit_crit_edge:        ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %tc358762_init.exit

if.then17.i100.i:                                 ; preds = %if.end.i99.i
  call void @__sanitizer_cov_trace_pc() #7
  %152 = ptrtoint ptr %error.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %call15.i97.i, ptr %error.i.i, align 4
  br label %tc358762_init.exit

tc358762_init.exit:                               ; preds = %if.then17.i100.i, %if.end.i99.i.tc358762_init.exit_crit_edge, %tc358762_write.exit92.i.tc358762_init.exit_crit_edge, %tc358762_write.exit92.thread.i
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %data.i93.i) #5
  call void @msleep(i32 noundef 100) #5
  %153 = ptrtoint ptr %error.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %error.i.i, align 4
  store i32 0, ptr %error.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp3 = icmp slt i32 %154, 0
  br i1 %cmp3, label %do.end7, label %tc358762_init.exit.if.end9_crit_edge

tc358762_init.exit.if.end9_crit_edge:             ; preds = %tc358762_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

do.end7:                                          ; preds = %tc358762_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  %155 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %add.ptr.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %156, ptr noundef nonnull @.str.12, i32 noundef %154) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end7, %tc358762_init.exit.if.end9_crit_edge
  %pre_enabled = getelementptr i8, ptr %bridge, i32 1332
  %157 = ptrtoint ptr %pre_enabled to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 1, ptr %pre_enabled, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_tc358762__307_276_tc358762_driver_init6, !1, !"__initcall__kmod_tc358762__307_276_tc358762_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 276, i32 1}
!2 = !{ptr @__exitcall_tc358762_driver_exit, !1, !"__exitcall_tc358762_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 278, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 279, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 280, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 272, i32 11}
!12 = !{ptr @tc358762_driver, !13, !"tc358762_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 268, i32 31}
!14 = !{ptr @tc358762_of_match, !15, !"tc358762_of_match", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 262, i32 34}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 246, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @tc358762_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @tc358762_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 201, i32 48}
!26 = !{ptr @tc358762_bridge_funcs, !27, !"tc358762_bridge_funcs", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 172, i32 38}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 144, i32 3}
!30 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @tc358762_post_disable._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @tc358762_post_disable._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 154, i32 3}
!35 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tc358762_pre_enable._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @tc358762_pre_enable._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/tc358762.c", i32 158, i32 3}
!40 = !{ptr @tc358762_pre_enable._entry.11, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @tc358762_pre_enable._entry_ptr.13, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{i8 0, i8 2}
