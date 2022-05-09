; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/nxp-ptn3460.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/nxp-ptn3460.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
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
%struct.ptn3460_bridge = type { %struct.drm_connector, ptr, %struct.drm_bridge, ptr, ptr, ptr, i32, i8 }
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
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }

@__initcall__kmod_nxp_ptn3460__307_353_ptn3460_driver_init6 = internal global ptr @ptn3460_driver_init, section ".initcall6.init", align 4
@ptn3460_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @ptn3460_probe, ptr @ptn3460_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ptn3460_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ptn3460_i2c_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_ptn3460_driver_exit = internal global ptr @ptn3460_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [53 x i8] c"nxp_ptn3460.author=Sean Paul <seanpaul@chromium.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [62 x i8] c"nxp_ptn3460.description=NXP ptn3460 eDP-LVDS converter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [52 x i8] c"nxp_ptn3460.file=drivers/gpu/drm/bridge/nxp-ptn3460\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [27 x i8] c"nxp_ptn3460.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nxp,ptn3460\00", [20 x i8] zeroinitializer }, align 32
@ptn3460_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,ptn3460\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ptn3460_i2c_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"ptn3460\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"powerdown\00", [22 x i8] zeroinitializer }, align 32
@ptn3460_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 289, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cannot get gpio_pd_n %d\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ptn3460_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"drivers/gpu/drm/bridge/nxp-ptn3460.c\00", [59 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ptn3460_probe._entry_ptr = internal global ptr @ptn3460_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cannot get gpio_rst_n %d\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"edid-emulation\00", [17 x i8] zeroinitializer }, align 32
@ptn3460_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str.4, i32 308, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't read EDID emulation value\0A\00", [63 x i8] zeroinitializer }, align 32
@ptn3460_probe._entry_ptr.12 = internal global ptr @ptn3460_probe._entry.10, section ".printk_index", align 4
@ptn3460_bridge_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @ptn3460_bridge_attach, ptr null, ptr null, ptr null, ptr @ptn3460_disable, ptr null, ptr null, ptr @ptn3460_pre_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ptn3460_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Parent encoder object not found\00", [32 x i8] zeroinitializer }, align 32
@ptn3460_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize connector with drm\0A\00", [55 x i8] zeroinitializer }, align 32
@ptn3460_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @ptn3460_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Select EDID failed ret=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to transfer EDID to sram, ret=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to write EDID value, ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to send i2c command, ret=%d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Failed to allocate EDID\0A\00", [39 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to recv i2c data, ret=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@___asan_gen_.21 = private unnamed_addr constant [15 x i8] c"ptn3460_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 344, i32 26 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 349, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [14 x i8] c"ptn3460_match\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 338, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"ptn3460_i2c_table\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 332, i32 35 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 285, i32 55 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 289, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 297, i32 56 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 301, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 305, i32 43 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 308, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [21 x i8] c"ptn3460_bridge_funcs\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 253, i32 38 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 231, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [24 x i8] c"ptn3460_connector_funcs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 207, i32 41 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 239, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant [31 x i8] c"ptn3460_connector_helper_funcs\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 203, i32 48 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 138, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 98, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 108, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 82, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 170, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.100 = private constant [40 x i8] c"../drivers/gpu/drm/bridge/nxp-ptn3460.c\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.100, i32 64, i32 3 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_ptn3460_driver_exit, ptr @__initcall__kmod_nxp_ptn3460__307_353_ptn3460_driver_init6, ptr @ptn3460_driver_exit, ptr @ptn3460_probe._entry, ptr @ptn3460_probe._entry.10, ptr @ptn3460_probe._entry_ptr, ptr @ptn3460_probe._entry_ptr.12, ptr @ptn3460_driver, ptr @.str, ptr @ptn3460_match, ptr @ptn3460_i2c_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @ptn3460_bridge_funcs, ptr @.str.13, ptr @ptn3460_connector_funcs, ptr @.str.14, ptr @ptn3460_connector_helper_funcs, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn3460_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn3460_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn3460_i2c_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn3460_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn3460_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn3460_bridge_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn3460_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ptn3460_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ptn3460_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @ptn3460_driver) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ptn3460_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @i2c_del_driver(ptr noundef nonnull @ptn3460_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptn3460_probe(ptr noundef %client, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %panel = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %panel) #6
  %0 = ptrtoint ptr %panel to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %panel, align 4, !annotation !69
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1344, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call2 = call i32 @drm_of_find_panel_or_bridge(ptr noundef %2, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %panel, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %3 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %panel, align 4
  %call6 = call ptr @devm_drm_panel_bridge_add(ptr noundef %dev1, ptr noundef %4) #6
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call6 to i32
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %panel_bridge11 = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %panel_bridge11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call6, ptr %panel_bridge11, align 4
  %client12 = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %client12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %client, ptr %client12, align 8
  %call14 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef 7) #6
  %gpio_pd_n = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %gpio_pd_n to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call14, ptr %gpio_pd_n, align 8
  %cmp.i81 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call14 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2, i32 noundef %9) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end10
  %call22 = call ptr @devm_gpiod_get(ptr noundef %dev1, ptr noundef nonnull @.str.7, i32 noundef 3) #6
  %gpio_rst_n = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 5
  %10 = ptrtoint ptr %gpio_rst_n to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call22, ptr %gpio_rst_n, align 4
  %cmp.i82 = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i82, label %if.then25, label %if.end28

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %call22 to i32
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8, i32 noundef %11) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end20
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %edid_emulation = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 6
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.9, ptr noundef %edid_emulation, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool31.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.11) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %bridge = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 2
  %funcs = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 2, i32 7
  %14 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ptn3460_bridge_funcs, ptr %funcs, align 4
  %ops = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 2, i32 9
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %ops, align 4
  %type = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 2, i32 10
  %16 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 7, ptr %type, align 4
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %of_node41 = getelementptr inbounds %struct.ptn3460_bridge, ptr %call.i, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %of_node41 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %of_node41, align 4
  call void @drm_bridge_add(ptr noundef %bridge) #6
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %20 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end35, %if.then25, %if.then17, %if.then8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %if.then8 ], [ %9, %if.then17 ], [ %11, %if.then25 ], [ %call.i.i, %do.end35 ], [ 0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %panel) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptn3460_remove(ptr nocapture noundef readonly %client) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %client, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %bridge = getelementptr inbounds %struct.ptn3460_bridge, ptr %1, i32 0, i32 2
  tail call void @drm_bridge_remove(ptr noundef %bridge) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_drm_panel_bridge_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptn3460_bridge_attach(ptr noundef %bridge, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %bridge, i32 -1044
  %encoder = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %0 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %encoder, align 4
  %panel_bridge = getelementptr i8, ptr %bridge, i32 280
  %2 = ptrtoint ptr %panel_bridge to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel_bridge, align 4
  %or = or i32 %flags, 1
  %call1 = tail call i32 @drm_bridge_attach(ptr noundef %1, ptr noundef %3, ptr noundef %bridge, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %4 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.13) #6
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  %polled = getelementptr i8, ptr %bridge, i32 -344
  %6 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %polled, align 4
  %dev = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  %call9 = tail call i32 @drm_connector_init(ptr noundef %8, ptr noundef %add.ptr.i, ptr noundef nonnull @ptn3460_connector_funcs, i32 noundef 7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #6
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %helper_private.i = getelementptr i8, ptr %bridge, i32 -336
  %9 = ptrtoint ptr %helper_private.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @ptn3460_connector_helper_funcs, ptr %helper_private.i, align 4
  %call15 = tail call i32 @drm_connector_register(ptr noundef %add.ptr.i) #6
  %10 = ptrtoint ptr %encoder to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder, align 4
  %call18 = tail call i32 @drm_connector_attach_encoder(ptr noundef %add.ptr.i, ptr noundef %11) #6
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %add.ptr.i, align 8
  %call21 = tail call zeroext i1 @drm_helper_hpd_irq_event(ptr noundef %13) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.then11 ], [ 0, %if.end12 ], [ -19, %if.then6 ], [ %call1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ptn3460_disable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %bridge, i32 296
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %enabled, align 4
  %gpio_rst_n = getelementptr i8, ptr %bridge, i32 288
  %3 = ptrtoint ptr %gpio_rst_n to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %gpio_rst_n, align 4
  tail call void @gpiod_set_value(ptr noundef %4, i32 noundef 1) #6
  %gpio_pd_n = getelementptr i8, ptr %bridge, i32 284
  %5 = ptrtoint ptr %gpio_pd_n to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %gpio_pd_n, align 8
  tail call void @gpiod_set_value(ptr noundef %6, i32 noundef 0) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ptn3460_pre_enable(ptr nocapture noundef %bridge) #2 align 64 {
entry:
  %buf.i16.i = alloca [2 x i8], align 1
  %buf.i.i = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %bridge, i32 296
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %gpio_pd_n = getelementptr i8, ptr %bridge, i32 284
  %2 = ptrtoint ptr %gpio_pd_n to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_pd_n, align 8
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 1) #6
  %gpio_rst_n = getelementptr i8, ptr %bridge, i32 288
  %4 = ptrtoint ptr %gpio_rst_n to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpio_rst_n, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 0) #6
  tail call void @usleep_range_state(i32 noundef 10, i32 noundef 20, i32 noundef 2) #6
  %6 = ptrtoint ptr %gpio_rst_n to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %gpio_rst_n, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #6
  tail call void @msleep(i32 noundef 90) #6
  %edid_emulation.i = getelementptr i8, ptr %bridge, i32 292
  %8 = ptrtoint ptr %edid_emulation.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %edid_emulation.i, align 8
  %conv.i = trunc i32 %9 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 -123, ptr %buf.i.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv.i, ptr %10, align 1
  %client.i.i = getelementptr i8, ptr %bridge, i32 -4
  %13 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %client.i.i, align 8
  %call.i.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %14, ptr noundef nonnull %buf.i.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 1
  br i1 %cmp.i.i, label %ptn3460_write_byte.exit.i, label %ptn3460_write_byte.exit.thread.i

ptn3460_write_byte.exit.thread.i:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %if.end.i

ptn3460_write_byte.exit.i:                        ; preds = %if.end
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %call.i.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i, label %ptn3460_write_byte.exit.i.if.end.i_crit_edge, label %if.then.i

ptn3460_write_byte.exit.i.if.end.i_crit_edge:     ; preds = %ptn3460_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %ptn3460_write_byte.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.16, i32 noundef %call.i.i.i) #6
  br label %if.then4

if.end.i:                                         ; preds = %ptn3460_write_byte.exit.i.if.end.i_crit_edge, %ptn3460_write_byte.exit.thread.i
  %15 = ptrtoint ptr %edid_emulation.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %edid_emulation.i, align 8
  %.tr.i = trunc i32 %16 to i8
  %17 = shl i8 %.tr.i, 1
  %conv2.i = or i8 %17, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i16.i) #6
  %18 = getelementptr inbounds [2 x i8], ptr %buf.i16.i, i32 0, i32 1
  %19 = ptrtoint ptr %buf.i16.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 -124, ptr %buf.i16.i, align 1
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv2.i, ptr %18, align 1
  %21 = ptrtoint ptr %client.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %client.i.i, align 8
  %call.i.i18.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %buf.i16.i, i32 noundef 2, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i18.i)
  %cmp.i19.i = icmp slt i32 %call.i.i18.i, 1
  br i1 %cmp.i19.i, label %ptn3460_write_byte.exit22.i, label %ptn3460_write_byte.exit22.thread.i

ptn3460_write_byte.exit22.thread.i:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i16.i) #6
  br label %if.end5

ptn3460_write_byte.exit22.i:                      ; preds = %if.end.i
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %call.i.i18.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i16.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i18.i)
  %tobool4.not.i = icmp eq i32 %call.i.i18.i, 0
  br i1 %tobool4.not.i, label %ptn3460_write_byte.exit22.i.if.end5_crit_edge, label %if.then5.i

ptn3460_write_byte.exit22.i.if.end5_crit_edge:    ; preds = %ptn3460_write_byte.exit22.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then5.i:                                       ; preds = %ptn3460_write_byte.exit22.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %call.i.i18.i) #6
  br label %if.then4

if.then4:                                         ; preds = %if.then5.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i.i, %if.then.i ], [ %call.i.i18.i, %if.then5.i ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15, i32 noundef %retval.0.i) #6
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %ptn3460_write_byte.exit22.i.if.end5_crit_edge, %ptn3460_write_byte.exit22.thread.i
  %23 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %enabled, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ptn3460_get_edid(ptr nocapture noundef %bridge, ptr nocapture noundef readnone %connector) #2 align 64 {
entry:
  %addr.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr i8, ptr %bridge, i32 296
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  tail call void @ptn3460_pre_enable(ptr noundef %bridge)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 128) #10
  %tobool3.not = icmp eq ptr %call7.i, null
  br i1 %tobool3.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #6
  br label %out

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %addr.addr.i)
  %3 = ptrtoint ptr %addr.addr.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %addr.addr.i, align 1
  %client.i = getelementptr i8, ptr %bridge, i32 -4
  %4 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %client.i, align 8
  %call.i.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %5, ptr noundef nonnull %addr.addr.i, i32 noundef 1, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 1
  br i1 %cmp.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %call.i.i) #6
  br label %ptn3460_read_bytes.exit

if.end.i:                                         ; preds = %if.end
  %6 = ptrtoint ptr %client.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %client.i, align 8
  %call.i1.i = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %call7.i, i32 noundef 128, i16 noundef zeroext 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i1.i)
  %cmp3.i = icmp slt i32 %call.i1.i, 1
  br i1 %cmp3.i, label %if.then4.i, label %ptn3460_read_bytes.exit.thread

ptn3460_read_bytes.exit.thread:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  br label %out

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20, i32 noundef %call.i1.i) #6
  br label %ptn3460_read_bytes.exit

ptn3460_read_bytes.exit:                          ; preds = %if.then4.i, %if.then.i
  %retval.0.i = phi i32 [ %call.i.i, %if.then.i ], [ %call.i1.i, %if.then4.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %addr.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool5.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool5.not, label %ptn3460_read_bytes.exit.out_crit_edge, label %if.then6

ptn3460_read_bytes.exit.out_crit_edge:            ; preds = %ptn3460_read_bytes.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then6:                                         ; preds = %ptn3460_read_bytes.exit
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i) #6
  br label %out

out:                                              ; preds = %if.then6, %ptn3460_read_bytes.exit.out_crit_edge, %ptn3460_read_bytes.exit.thread, %if.then
  %edid.0 = phi ptr [ null, %if.then6 ], [ %call7.i, %ptn3460_read_bytes.exit.out_crit_edge ], [ null, %if.then ], [ %call7.i, %ptn3460_read_bytes.exit.thread ]
  br i1 %tobool.not, label %if.then9, label %out.if.end11_crit_edge

out.if.end11_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.then9:                                         ; preds = %out
  %8 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %enabled, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.then9.if.end11_crit_edge, label %if.end.i18

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

if.end.i18:                                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %enabled to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %enabled, align 4
  %gpio_rst_n.i = getelementptr i8, ptr %bridge, i32 288
  %11 = ptrtoint ptr %gpio_rst_n.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gpio_rst_n.i, align 4
  call void @gpiod_set_value(ptr noundef %12, i32 noundef 1) #6
  %gpio_pd_n.i = getelementptr i8, ptr %bridge, i32 284
  %13 = ptrtoint ptr %gpio_pd_n.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %gpio_pd_n.i, align 8
  call void @gpiod_set_value(ptr noundef %14, i32 noundef 0) #6
  br label %if.end11

if.end11:                                         ; preds = %if.end.i18, %if.then9.if.end11_crit_edge, %out.if.end11_crit_edge
  ret ptr %edid.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_helper_hpd_irq_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ptn3460_connector_get_modes(ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %bridge = getelementptr inbounds %struct.ptn3460_bridge, ptr %connector, i32 0, i32 2
  %call1 = tail call ptr @ptn3460_get_edid(ptr noundef %bridge, ptr noundef %connector)
  %call2 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call1) #6
  %call3 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %call1) #6
  tail call void @kfree(ptr noundef %call1) #6
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_nxp_ptn3460__307_353_ptn3460_driver_init6, !1, !"__initcall__kmod_nxp_ptn3460__307_353_ptn3460_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 353, i32 1}
!2 = !{ptr @__exitcall_ptn3460_driver_exit, !1, !"__exitcall_ptn3460_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 355, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 356, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 357, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 349, i32 11}
!12 = !{ptr @ptn3460_driver, !13, !"ptn3460_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 344, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 285, i32 55}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 289, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ptn3460_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @ptn3460_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 297, i32 56}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 301, i32 3}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 305, i32 43}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 308, i32 3}
!32 = !{ptr @ptn3460_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @ptn3460_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @ptn3460_bridge_funcs, !35, !"ptn3460_bridge_funcs", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 253, i32 38}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 231, i32 3}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 239, i32 3}
!40 = !{ptr @ptn3460_connector_funcs, !41, !"ptn3460_connector_funcs", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 207, i32 41}
!42 = !{ptr @ptn3460_connector_helper_funcs, !43, !"ptn3460_connector_helper_funcs", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 203, i32 48}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 138, i32 3}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 98, i32 3}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 108, i32 3}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 82, i32 3}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 170, i32 3}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 64, i32 3}
!56 = !{ptr @ptn3460_match, !57, !"ptn3460_match", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 338, i32 34}
!58 = !{ptr @ptn3460_i2c_table, !59, !"ptn3460_i2c_table", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/bridge/nxp-ptn3460.c", i32 332, i32 35}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{i8 0, i8 2}
