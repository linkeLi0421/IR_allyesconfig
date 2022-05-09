; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c_pt.bc'
source_filename = "../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ge_b850v3_lvds = type { %struct.drm_connector, %struct.drm_bridge, ptr, ptr }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }

@__initcall__kmod_megachips_stdpxxxx_ge_b850v3_fw__307_447_stdpxxxx_ge_b850v3_init6 = internal global ptr @stdpxxxx_ge_b850v3_init, section ".initcall6.init", align 4
@stdp2690_ge_b850v3_fw_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @stdp2690_ge_b850v3_fw_probe, ptr @stdp2690_ge_b850v3_fw_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stdp2690_ge_b850v3_fw_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @stdp2690_ge_b850v3_fw_i2c_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@stdp4028_ge_b850v3_fw_driver = internal global { %struct.i2c_driver, [32 x i8] } { %struct.i2c_driver { i32 0, ptr @stdp4028_ge_b850v3_fw_probe, ptr @stdp4028_ge_b850v3_fw_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stdp4028_ge_b850v3_fw_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @stdp4028_ge_b850v3_fw_i2c_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, [32 x i8] zeroinitializer }, align 32
@__exitcall_stdpxxxx_ge_b850v3_exit = internal global ptr @stdpxxxx_ge_b850v3_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [88 x i8] c"megachips_stdpxxxx_ge_b850v3_fw.author=Peter Senna Tschudin <peter.senna@collabora.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [83 x i8] c"megachips_stdpxxxx_ge_b850v3_fw.author=Martyn Welch <martyn.welch@collabora.co.uk>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [76 x i8] c"megachips_stdpxxxx_ge_b850v3_fw.description=GE LVDS to DP++ display bridge)\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [92 x i8] c"megachips_stdpxxxx_ge_b850v3_fw.file=drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [47 x i8] c"megachips_stdpxxxx_ge_b850v3_fw.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stdp2690-ge-b850v3-fw\00", [42 x i8] zeroinitializer }, align 32
@stdp2690_ge_b850v3_fw_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"megachips,stdp2690-ge-b850v3-fw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stdp2690_ge_b850v3_fw_i2c_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"stdp2690_ge_fw\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@ge_b850v3_lvds_ptr = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@ge_b850v3_lvds_dev_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @ge_b850v3_lvds_dev_mutex, i64 52), ptr getelementptr (i8, ptr @ge_b850v3_lvds_dev_mutex, i64 52) }, ptr @ge_b850v3_lvds_dev_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.2, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ge_b850v3_lvds_dev_mutex.wait_lock\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ge_b850v3_lvds_dev_mutex\00", [39 x i8] zeroinitializer }, align 32
@ge_b850v3_lvds_funcs = internal constant { %struct.drm_bridge_funcs, [60 x i8] } { %struct.drm_bridge_funcs { ptr @ge_b850v3_lvds_attach, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ge_b850v3_lvds_bridge_detect, ptr null, ptr @ge_b850v3_lvds_get_edid, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ge-b850v3-lvds-dp\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Parent encoder object not found\00", [32 x i8] zeroinitializer }, align 32
@ge_b850v3_lvds_connector_helper_funcs = internal constant { %struct.drm_connector_helper_funcs, [56 x i8] } { %struct.drm_connector_helper_funcs { ptr @ge_b850v3_lvds_get_modes, ptr null, ptr @ge_b850v3_lvds_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@ge_b850v3_lvds_connector_funcs = internal constant { %struct.drm_connector_funcs, [36 x i8] } { %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @ge_b850v3_lvds_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Failed to initialize connector with drm\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unable to read EDID.\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid EDID data\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unable to read EDID extension blocks.\0A\00", [57 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stdp4028-ge-b850v3-fw\00", [42 x i8] zeroinitializer }, align 32
@stdp4028_ge_b850v3_fw_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"megachips,stdp4028-ge-b850v3-fw\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stdp4028_ge_b850v3_fw_i2c_table = internal constant { [2 x %struct.i2c_device_id], [48 x i8] } { [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"stdp4028_ge_fw\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.10 = private unnamed_addr constant [29 x i8] c"stdp2690_ge_b850v3_fw_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 427, i32 26 }
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"stdp4028_ge_b850v3_fw_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 377, i32 26 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 432, i32 12 }
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"stdp2690_ge_b850v3_fw_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 421, i32 34 }
@___asan_gen_.22 = private unnamed_addr constant [32 x i8] c"stdp2690_ge_b850v3_fw_i2c_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 415, i32 35 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"ge_b850v3_lvds_ptr\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 66, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"ge_b850v3_lvds_dev_mutex\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 57, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant [21 x i8] c"ge_b850v3_lvds_funcs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 265, i32 38 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 334, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 208, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [38 x i8] c"ge_b850v3_lvds_connector_helper_funcs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 164, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant [31 x i8] c"ge_b850v3_lvds_connector_funcs\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 193, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 221, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 93, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 98, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 117, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 382, i32 12 }
@___asan_gen_.67 = private unnamed_addr constant [28 x i8] c"stdp4028_ge_b850v3_fw_match\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 371, i32 34 }
@___asan_gen_.70 = private unnamed_addr constant [32 x i8] c"stdp4028_ge_b850v3_fw_i2c_table\00", align 1
@___asan_gen_.71 = private constant [60 x i8] c"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 365, i32 35 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_stdpxxxx_ge_b850v3_exit, ptr @__initcall__kmod_megachips_stdpxxxx_ge_b850v3_fw__307_447_stdpxxxx_ge_b850v3_init6, ptr @stdpxxxx_ge_b850v3_exit, ptr @stdp2690_ge_b850v3_fw_driver, ptr @stdp4028_ge_b850v3_fw_driver, ptr @.str, ptr @stdp2690_ge_b850v3_fw_match, ptr @stdp2690_ge_b850v3_fw_i2c_table, ptr @ge_b850v3_lvds_ptr, ptr @ge_b850v3_lvds_dev_mutex, ptr @.str.1, ptr @.str.2, ptr @ge_b850v3_lvds_funcs, ptr @.str.3, ptr @.str.4, ptr @ge_b850v3_lvds_connector_helper_funcs, ptr @ge_b850v3_lvds_connector_funcs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @stdp4028_ge_b850v3_fw_match, ptr @stdp4028_ge_b850v3_fw_i2c_table], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdp2690_ge_b850v3_fw_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdp4028_ge_b850v3_fw_driver to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdp2690_ge_b850v3_fw_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdp2690_ge_b850v3_fw_i2c_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge_b850v3_lvds_ptr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge_b850v3_lvds_dev_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge_b850v3_lvds_funcs to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge_b850v3_lvds_connector_helper_funcs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ge_b850v3_lvds_connector_funcs to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdp4028_ge_b850v3_fw_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stdp4028_ge_b850v3_fw_i2c_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stdpxxxx_ge_b850v3_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stdp4028_ge_b850v3_fw_driver) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @i2c_register_driver(ptr noundef null, ptr noundef nonnull @stdp2690_ge_b850v3_fw_driver) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stdpxxxx_ge_b850v3_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @i2c_del_driver(ptr noundef nonnull @stdp2690_ge_b850v3_fw_driver) #7
  tail call void @i2c_del_driver(ptr noundef nonnull @stdp4028_ge_b850v3_fw_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stdp2690_ge_b850v3_fw_probe(ptr noundef %stdp2690_i2c, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %stdp2690_i2c, i32 0, i32 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1328, i32 noundef 3520) #7
  store ptr %call.i.i, ptr @ge_b850v3_lvds_ptr, align 4
  %tobool1.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i, label %ge_b850v3_lvds_init.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ge_b850v3_lvds_init.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex) #7
  %1 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %stdp2690_i2c2 = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %stdp2690_i2c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %stdp2690_i2c, ptr %stdp2690_i2c2, align 4
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %stdp2690_i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %driver_data.i.i, align 4
  %stdp4028_i2c = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %stdp4028_i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stdp4028_i2c, align 8
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %funcs.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1, i32 7
  %6 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @ge_b850v3_lvds_funcs, ptr %funcs.i, align 4
  %ops.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1, i32 9
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %ops.i, align 4
  %type.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1, i32 10
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 10, ptr %type.i, align 8
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4, i32 27
  %9 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node.i, align 8
  %of_node6.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %of_node6.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %of_node6.i, align 4
  %bridge7.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_add(ptr noundef %bridge7.i) #7
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef nonnull %5, i8 noundef zeroext 61, i16 noundef zeroext 9216) #7
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i11 = icmp eq i32 %13, 0
  br i1 %tobool.not.i11, label %if.end5.cleanup_crit_edge, label %if.end.i12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i12:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %5, i32 0, i32 4
  %14 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %call10.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev2.i, i32 noundef %13, ptr noundef null, ptr noundef nonnull @ge_b850v3_lvds_irq_handler, i32 noundef 8196, ptr noundef nonnull @.str.3, ptr noundef %14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ge_b850v3_lvds_init.exit
  %retval.0 = phi i32 [ -12, %ge_b850v3_lvds_init.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call10.i, %if.end.i12 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stdp2690_ge_b850v3_fw_remove(ptr nocapture noundef readnone %stdp2690_i2c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.ge_b850v3_lvds_remove.exit_crit_edge, label %if.end.i

entry.ge_b850v3_lvds_remove.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ge_b850v3_lvds_remove.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bridge.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %0, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge.i) #7
  store ptr null, ptr @ge_b850v3_lvds_ptr, align 4
  br label %ge_b850v3_lvds_remove.exit

ge_b850v3_lvds_remove.exit:                       ; preds = %if.end.i, %entry.ge_b850v3_lvds_remove.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_write_word_data(ptr noundef, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge_b850v3_lvds_irq_handler(i32 noundef %irq, ptr nocapture noundef readnone %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %stdp4028_i2c1 = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %stdp4028_i2c1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stdp4028_i2c1, align 8
  %call = tail call i32 @i2c_smbus_write_word_data(ptr noundef %2, i8 noundef zeroext 61, i16 noundef zeroext 9216) #7
  %3 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %dev = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @drm_kms_helper_hotplug_event(ptr noundef nonnull %5) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge_b850v3_lvds_attach(ptr nocapture noundef readonly %bridge, i32 noundef %flags) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %stdp4028_i2c1 = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %stdp4028_i2c1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stdp4028_i2c1, align 8
  %call = tail call i32 @i2c_smbus_write_word_data(ptr noundef %2, i8 noundef zeroext 2, i16 noundef zeroext 4096) #7
  %call2 = tail call i32 @i2c_smbus_write_word_data(ptr noundef %2, i8 noundef zeroext 60, i16 noundef zeroext 9216) #7
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %encoder.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 2
  %4 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %encoder.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #7
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %polled.i = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 33
  %6 = ptrtoint ptr %polled.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %polled.i, align 4
  %helper_private.i.i = getelementptr inbounds %struct.drm_connector, ptr %3, i32 0, i32 35
  %7 = ptrtoint ptr %helper_private.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @ge_b850v3_lvds_connector_helper_funcs, ptr %helper_private.i.i, align 4
  %dev.i = getelementptr inbounds %struct.drm_bridge, ptr %bridge, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @drm_connector_init(ptr noundef %9, ptr noundef %3, ptr noundef nonnull @ge_b850v3_lvds_connector_funcs, i32 noundef 10) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %encoder.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %encoder.i, align 4
  %call6.i = tail call i32 @drm_connector_attach_encoder(ptr noundef %3, ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end4.i, %if.then3.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call.i, %if.then3.i ], [ %call6.i, %if.end4.i ], [ -19, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge_b850v3_lvds_bridge_detect(ptr nocapture noundef readnone %bridge) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %stdp4028_i2c1 = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %stdp4028_i2c1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stdp4028_i2c1, align 8
  %call = tail call i32 @i2c_smbus_read_word_data(ptr noundef %2, i8 noundef zeroext 62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %switch.selectcmp = icmp eq i32 %call, 0
  %switch.select = select i1 %switch.selectcmp, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4608, i32 %call)
  %switch.selectcmp7 = icmp eq i32 %call, 4608
  %switch.select8 = select i1 %switch.selectcmp7, i32 1, i32 %switch.select
  ret i32 %switch.select8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ge_b850v3_lvds_get_edid(ptr nocapture noundef readnone %bridge, ptr nocapture noundef readnone %connector) #3 align 64 {
entry:
  %start.i = alloca i8, align 1
  %msgs.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %stdp2690_i2c = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %stdp2690_i2c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stdp2690_i2c, align 4
  %adapter1.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %adapter1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adapter1.i, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %start.i) #7
  %5 = ptrtoint ptr %start.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %start.i, align 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 128) #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msgs.i) #7
  %7 = getelementptr inbounds i8, ptr %msgs.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
  %addr2.i = getelementptr inbounds %struct.i2c_client, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %addr2.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %addr2.i, align 2
  %11 = ptrtoint ptr %msgs.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %msgs.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %7, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %start.i, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1
  %15 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %10, ptr %arrayinit.element.i, align 4
  %flags5.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 1
  %16 = ptrtoint ptr %flags5.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 1, ptr %flags5.i, align 2
  %len6.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 2
  %17 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 128, ptr %len6.i, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msgs.i, i32 1, i32 3
  %18 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i, ptr %buf7.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.stdp2690_get_edid.exit_crit_edge, label %if.end.i

entry.stdp2690_get_edid.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %stdp2690_get_edid.exit

if.end.i:                                         ; preds = %entry
  %call8.i = call i32 @i2c_transfer(ptr noundef %4, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call8.i)
  %cmp.not.i = icmp eq i32 %call8.i, 2
  br i1 %cmp.not.i, label %if.end10.i, label %if.end.i.err.i_crit_edge

if.end.i.err.i_crit_edge:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end10.i:                                       ; preds = %if.end.i
  %call11.i = call zeroext i1 @drm_edid_block_valid(ptr noundef nonnull %call7.i.i, i32 noundef 0, i1 noundef zeroext false, ptr noundef null) #7
  br i1 %call11.i, label %if.end13.i, label %if.end10.i.err.i_crit_edge

if.end10.i.err.i_crit_edge:                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end13.i:                                       ; preds = %if.end10.i
  %arrayidx.i = getelementptr i8, ptr %call7.i.i, i32 126
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i, align 2
  %conv.i = zext i8 %20 to i32
  %add.i = shl nuw nsw i32 %conv.i, 7
  %mul.i = add nuw nsw i32 %add.i, 128
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp14.not.i = icmp eq i8 %20, 0
  br i1 %cmp14.not.i, label %if.end13.i.stdp2690_get_edid.exit_crit_edge, label %if.then16.i

if.end13.i.stdp2690_get_edid.exit_crit_edge:      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stdp2690_get_edid.exit

if.then16.i:                                      ; preds = %if.end13.i
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3264) #11
  %tobool18.not.i = icmp eq ptr %call9.i.i, null
  br i1 %tobool18.not.i, label %if.then16.i.stdp2690_get_edid.exit_crit_edge, label %if.end20.i

if.then16.i.stdp2690_get_edid.exit_crit_edge:     ; preds = %if.then16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stdp2690_get_edid.exit

if.end20.i:                                       ; preds = %if.then16.i
  %21 = ptrtoint ptr %start.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %start.i, align 1
  %conv21.i = trunc i32 %mul.i to i16
  %22 = ptrtoint ptr %len6.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv21.i, ptr %len6.i, align 4
  %23 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9.i.i, ptr %buf7.i, align 4
  %call27.i = call i32 @i2c_transfer(ptr noundef %4, ptr noundef nonnull %msgs.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call27.i)
  %cmp28.not.i = icmp eq i32 %call27.i, 2
  br i1 %cmp28.not.i, label %if.end31.i, label %if.end20.i.err.i_crit_edge

if.end20.i.err.i_crit_edge:                       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end31.i:                                       ; preds = %if.end20.i
  %call32.i = call zeroext i1 @drm_edid_block_valid(ptr noundef nonnull %call9.i.i, i32 noundef 1, i1 noundef zeroext false, ptr noundef null) #7
  br i1 %call32.i, label %if.end31.i.stdp2690_get_edid.exit_crit_edge, label %if.end31.i.err.i_crit_edge

if.end31.i.err.i_crit_edge:                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err.i

if.end31.i.stdp2690_get_edid.exit_crit_edge:      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %stdp2690_get_edid.exit

err.i:                                            ; preds = %if.end31.i.err.i_crit_edge, %if.end20.i.err.i_crit_edge, %if.end10.i.err.i_crit_edge, %if.end.i.err.i_crit_edge
  %.str.7.sink.i = phi ptr [ @.str.6, %if.end.i.err.i_crit_edge ], [ @.str.7, %if.end10.i.err.i_crit_edge ], [ @.str.8, %if.end20.i.err.i_crit_edge ], [ @.str.7, %if.end31.i.err.i_crit_edge ]
  %block.1.i = phi ptr [ %call7.i.i, %if.end.i.err.i_crit_edge ], [ %call7.i.i, %if.end10.i.err.i_crit_edge ], [ %call9.i.i, %if.end20.i.err.i_crit_edge ], [ %call9.i.i, %if.end31.i.err.i_crit_edge ]
  call void (ptr, ...) @__drm_err(ptr noundef nonnull %.str.7.sink.i) #7
  call void @kfree(ptr noundef nonnull %block.1.i) #7
  br label %stdp2690_get_edid.exit

stdp2690_get_edid.exit:                           ; preds = %err.i, %if.end31.i.stdp2690_get_edid.exit_crit_edge, %if.then16.i.stdp2690_get_edid.exit_crit_edge, %if.end13.i.stdp2690_get_edid.exit_crit_edge, %entry.stdp2690_get_edid.exit_crit_edge
  %retval.0.i = phi ptr [ null, %err.i ], [ null, %entry.stdp2690_get_edid.exit_crit_edge ], [ null, %if.then16.i.stdp2690_get_edid.exit_crit_edge ], [ %call9.i.i, %if.end31.i.stdp2690_get_edid.exit_crit_edge ], [ %call7.i.i, %if.end13.i.stdp2690_get_edid.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msgs.i) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %start.i) #7
  ret ptr %retval.0.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge_b850v3_lvds_get_modes(ptr noundef %connector) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %bridge = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %0, i32 0, i32 1
  %call = tail call ptr @ge_b850v3_lvds_get_edid(ptr noundef %bridge, ptr noundef %connector)
  %call1 = tail call i32 @drm_connector_update_edid_property(ptr noundef %connector, ptr noundef %call) #7
  %call2 = tail call i32 @drm_add_edid_modes(ptr noundef %connector, ptr noundef %call) #7
  tail call void @kfree(ptr noundef %call) #7
  ret i32 %call2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ge_b850v3_lvds_mode_valid(ptr nocapture noundef readnone %connector, ptr nocapture noundef readnone %mode) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ge_b850v3_lvds_detect(ptr nocapture noundef readnone %connector, i1 noundef zeroext %force) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %stdp4028_i2c1.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %0, i32 0, i32 2
  %1 = ptrtoint ptr %stdp4028_i2c1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %stdp4028_i2c1.i, align 8
  %call.i = tail call i32 @i2c_smbus_read_word_data(ptr noundef %2, i8 noundef zeroext 62) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %switch.selectcmp.i = icmp eq i32 %call.i, 0
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4608, i32 %call.i)
  %switch.selectcmp7.i = icmp eq i32 %call.i, 4608
  %switch.select8.i = select i1 %switch.selectcmp7.i, i32 1, i32 %switch.select.i
  ret i32 %switch.select8.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_smbus_read_word_data(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_edid_block_valid(ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stdp4028_ge_b850v3_fw_probe(ptr noundef %stdp4028_i2c, ptr nocapture noundef readnone %id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end.i:                                         ; preds = %entry
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %stdp4028_i2c, i32 0, i32 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1328, i32 noundef 3520) #7
  store ptr %call.i.i, ptr @ge_b850v3_lvds_ptr, align 4
  %tobool1.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool1.not.i, label %ge_b850v3_lvds_init.exit, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

ge_b850v3_lvds_init.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex) #7
  %1 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %stdp4028_i2c2 = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stdp4028_i2c2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %stdp4028_i2c, ptr %stdp4028_i2c2, align 8
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %stdp4028_i2c, i32 0, i32 4, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %driver_data.i.i, align 4
  %stdp2690_i2c = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %stdp2690_i2c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stdp2690_i2c, align 4
  %tobool3.not = icmp eq ptr %5, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %6 = ptrtoint ptr %stdp4028_i2c2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %stdp4028_i2c2, align 8
  %funcs.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1, i32 7
  %8 = ptrtoint ptr %funcs.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @ge_b850v3_lvds_funcs, ptr %funcs.i, align 4
  %ops.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1, i32 9
  %9 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %ops.i, align 4
  %type.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1, i32 10
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 10, ptr %type.i, align 8
  %of_node.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4, i32 27
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %of_node6.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1, i32 4
  %13 = ptrtoint ptr %of_node6.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %of_node6.i, align 4
  %bridge7.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %1, i32 0, i32 1
  tail call void @drm_bridge_add(ptr noundef %bridge7.i) #7
  %call.i = tail call i32 @i2c_smbus_write_word_data(ptr noundef %7, i8 noundef zeroext 61, i16 noundef zeroext 9216) #7
  %irq.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 6
  %14 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i11 = icmp eq i32 %15, 0
  br i1 %tobool.not.i11, label %if.end5.cleanup_crit_edge, label %if.end.i12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i12:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %dev2.i = getelementptr inbounds %struct.i2c_client, ptr %7, i32 0, i32 4
  %16 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %call10.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev2.i, i32 noundef %15, ptr noundef null, ptr noundef nonnull @ge_b850v3_lvds_irq_handler, i32 noundef 8196, ptr noundef nonnull @.str.3, ptr noundef %16) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end.i12, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %ge_b850v3_lvds_init.exit
  %retval.0 = phi i32 [ -12, %ge_b850v3_lvds_init.exit ], [ 0, %if.end.cleanup_crit_edge ], [ %call10.i, %if.end.i12 ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stdp4028_ge_b850v3_fw_remove(ptr nocapture noundef readnone %stdp4028_i2c) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex, i32 noundef 0) #7
  %0 = load ptr, ptr @ge_b850v3_lvds_ptr, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %entry.ge_b850v3_lvds_remove.exit_crit_edge, label %if.end.i

entry.ge_b850v3_lvds_remove.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ge_b850v3_lvds_remove.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %bridge.i = getelementptr inbounds %struct.ge_b850v3_lvds, ptr %0, i32 0, i32 1
  tail call void @drm_bridge_remove(ptr noundef %bridge.i) #7
  store ptr null, ptr @ge_b850v3_lvds_ptr, align 4
  br label %ge_b850v3_lvds_remove.exit

ge_b850v3_lvds_remove.exit:                       ; preds = %if.end.i, %entry.ge_b850v3_lvds_remove.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @ge_b850v3_lvds_dev_mutex) #7
  ret i32 0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51}
!llvm.module.flags = !{!53, !54, !55, !56, !57, !58, !59, !60}
!llvm.ident = !{!61}

!0 = !{ptr @__initcall__kmod_megachips_stdpxxxx_ge_b850v3_fw__307_447_stdpxxxx_ge_b850v3_init6, !1, !"__initcall__kmod_megachips_stdpxxxx_ge_b850v3_fw__307_447_stdpxxxx_ge_b850v3_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 447, i32 1}
!2 = !{ptr @__exitcall_stdpxxxx_ge_b850v3_exit, !3, !"__exitcall_stdpxxxx_ge_b850v3_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 454, i32 1}
!4 = !{ptr @__UNIQUE_ID_author308, !5, !"__UNIQUE_ID_author308", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 456, i32 1}
!6 = !{ptr @__UNIQUE_ID_author309, !7, !"__UNIQUE_ID_author309", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 457, i32 1}
!8 = !{ptr @__UNIQUE_ID_description310, !9, !"__UNIQUE_ID_description310", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 458, i32 1}
!10 = !{ptr @__UNIQUE_ID_file311, !11, !"__UNIQUE_ID_file311", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 459, i32 1}
!12 = !{ptr @__UNIQUE_ID_license312, !11, !"__UNIQUE_ID_license312", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 432, i32 12}
!15 = !{ptr @stdp2690_ge_b850v3_fw_driver, !16, !"stdp2690_ge_b850v3_fw_driver", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 427, i32 26}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 57, i32 8}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ge_b850v3_lvds_dev_mutex, !18, !"ge_b850v3_lvds_dev_mutex", i1 false, i1 false}
!21 = !{ptr @ge_b850v3_lvds_ptr, !22, !"ge_b850v3_lvds_ptr", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 66, i32 31}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 334, i32 4}
!25 = !{ptr @ge_b850v3_lvds_funcs, !26, !"ge_b850v3_lvds_funcs", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 265, i32 38}
!27 = !{ptr @.str.4, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 208, i32 3}
!29 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 221, i32 3}
!31 = !{ptr @ge_b850v3_lvds_connector_helper_funcs, !32, !"ge_b850v3_lvds_connector_helper_funcs", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 164, i32 28}
!33 = !{ptr @ge_b850v3_lvds_connector_funcs, !34, !"ge_b850v3_lvds_connector_funcs", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 193, i32 41}
!35 = !{ptr @.str.6, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 93, i32 3}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 98, i32 3}
!39 = !{ptr @.str.8, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 117, i32 4}
!41 = !{ptr @stdp2690_ge_b850v3_fw_match, !42, !"stdp2690_ge_b850v3_fw_match", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 421, i32 34}
!43 = !{ptr @stdp2690_ge_b850v3_fw_i2c_table, !44, !"stdp2690_ge_b850v3_fw_i2c_table", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 415, i32 35}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 382, i32 12}
!47 = !{ptr @stdp4028_ge_b850v3_fw_driver, !48, !"stdp4028_ge_b850v3_fw_driver", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 377, i32 26}
!49 = !{ptr @stdp4028_ge_b850v3_fw_match, !50, !"stdp4028_ge_b850v3_fw_match", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 371, i32 34}
!51 = !{ptr @stdp4028_ge_b850v3_fw_i2c_table, !52, !"stdp4028_ge_b850v3_fw_i2c_table", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/bridge/megachips-stdpxxxx-ge-b850v3-fw.c", i32 365, i32 35}
!53 = !{i32 1, !"wchar_size", i32 2}
!54 = !{i32 1, !"min_enum_size", i32 4}
!55 = !{i32 8, !"branch-target-enforcement", i32 0}
!56 = !{i32 8, !"sign-return-address", i32 0}
!57 = !{i32 8, !"sign-return-address-all", i32 0}
!58 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!59 = !{i32 7, !"uwtable", i32 1}
!60 = !{i32 7, !"frame-pointer", i32 2}
!61 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
