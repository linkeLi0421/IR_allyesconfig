; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-lvds.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-lvds.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.panel_lvds = type { %struct.drm_panel, ptr, ptr, i32, i32, %struct.videomode, i32, i8, ptr, ptr, ptr, i32 }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.88 }
%union.anon.88 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }

@__initcall__kmod_panel_lvds__307_262_panel_lvds_driver_init6 = internal global ptr @panel_lvds_driver_init, section ".initcall6.init", align 4
@panel_lvds_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @panel_lvds_probe, ptr @panel_lvds_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @panel_lvds_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_panel_lvds_driver_exit = internal global ptr @panel_lvds_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [71 x i8] c"panel_lvds.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description309 = internal constant [41 x i8] c"panel_lvds.description=LVDS Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file310 = internal constant [49 x i8] c"panel_lvds.file=drivers/gpu/drm/panel/panel-lvds\00", section ".modinfo", align 1
@__UNIQUE_ID_license311 = internal constant [23 x i8] c"panel_lvds.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"panel-lvds\00", [21 x i8] zeroinitializer }, align 32
@panel_lvds_of_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"panel-lvds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@panel_lvds_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 188, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to request regulator: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"panel_lvds_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/panel/panel-lvds.c\00", [61 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@panel_lvds_probe._entry_ptr = internal global ptr @panel_lvds_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@panel_lvds_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request %s GPIO: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@panel_lvds_probe._entry_ptr.10 = internal global ptr @panel_lvds_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@panel_lvds_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 210, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@panel_lvds_probe._entry_ptr.13 = internal global ptr @panel_lvds_probe._entry.12, section ".printk_index", align 4
@panel_lvds_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @panel_lvds_prepare, ptr null, ptr null, ptr @panel_lvds_unprepare, ptr @panel_lvds_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%pOF: failed to get orientation %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"panel_lvds_parse_dt\00", [44 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry_ptr = internal global ptr @panel_lvds_parse_dt._entry, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"panel-timing\00", [19 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.4, i32 131, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%pOF: problems parsing panel-timing (%d)\0A\00", [54 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry_ptr.19 = internal global ptr @panel_lvds_parse_dt._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"width-mm\00", [23 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.4, i32 140, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%pOF: invalid or missing %s DT property\0A\00", [55 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry_ptr.23 = internal global ptr @panel_lvds_parse_dt._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"height-mm\00", [22 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.4, i32 146, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry_ptr.26 = internal global ptr @panel_lvds_parse_dt._entry.25, section ".printk_index", align 4
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.4, i32 155, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@panel_lvds_parse_dt._entry_ptr.29 = internal global ptr @panel_lvds_parse_dt._entry.28, section ".printk_index", align 4
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"data-mapping\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"data-mirror\00", [20 x i8] zeroinitializer }, align 32
@panel_lvds_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 73, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to enable supply: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"panel_lvds_prepare\00", [45 x i8] zeroinitializer }, align 32
@panel_lvds_prepare._entry_ptr = internal global ptr @panel_lvds_prepare._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967277]
@___asan_gen_.34 = private unnamed_addr constant [18 x i8] c"panel_lvds_driver\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 253, i32 31 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 257, i32 11 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"panel_lvds_of_table\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 246, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 181, i32 56 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 187, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 196, i32 57 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 200, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 205, i32 56 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 209, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"panel_lvds_funcs\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 110, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 124, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 128, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 130, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 137, i32 33 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 139, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 143, i32 33 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 145, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 150, i32 30 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 154, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 161, i32 48 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.134 = private constant [38 x i8] c"../drivers/gpu/drm/panel/panel-lvds.c\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.134, i32 72, i32 4 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_description309, ptr @__UNIQUE_ID_file310, ptr @__UNIQUE_ID_license311, ptr @__exitcall_panel_lvds_driver_exit, ptr @__initcall__kmod_panel_lvds__307_262_panel_lvds_driver_init6, ptr @panel_lvds_driver_exit, ptr @panel_lvds_parse_dt._entry, ptr @panel_lvds_parse_dt._entry.17, ptr @panel_lvds_parse_dt._entry.21, ptr @panel_lvds_parse_dt._entry.25, ptr @panel_lvds_parse_dt._entry.28, ptr @panel_lvds_parse_dt._entry_ptr, ptr @panel_lvds_parse_dt._entry_ptr.19, ptr @panel_lvds_parse_dt._entry_ptr.23, ptr @panel_lvds_parse_dt._entry_ptr.26, ptr @panel_lvds_parse_dt._entry_ptr.29, ptr @panel_lvds_prepare._entry, ptr @panel_lvds_prepare._entry_ptr, ptr @panel_lvds_probe._entry, ptr @panel_lvds_probe._entry.12, ptr @panel_lvds_probe._entry.8, ptr @panel_lvds_probe._entry_ptr, ptr @panel_lvds_probe._entry_ptr.10, ptr @panel_lvds_probe._entry_ptr.13, ptr @panel_lvds_driver, ptr @.str, ptr @panel_lvds_of_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @panel_lvds_funcs, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_of_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_parse_dt._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_parse_dt._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_parse_dt._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_parse_dt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @panel_lvds_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_lvds_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @panel_lvds_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @panel_lvds_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @panel_lvds_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_lvds_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %timing.i = alloca %struct.display_timing, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev2 = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev2, align 4
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %timing.i) #5
  %3 = call ptr @memset(ptr %timing.i, i32 255, i32 112)
  %orientation.i = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 11
  %call.i91 = tail call i32 @of_drm_get_panel_orientation(ptr noundef %2, ptr noundef %orientation.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %cmp.i = icmp slt i32 %call.i91, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.14, ptr noundef %2, i32 noundef %call.i91) #8
  br label %panel_lvds_parse_dt.exit.thread

if.end.i:                                         ; preds = %if.end
  %call2.i = call i32 @of_get_display_timing(ptr noundef %2, ptr noundef nonnull @.str.16, ptr noundef nonnull %timing.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %do.end7.i, label %if.end9.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef %2, i32 noundef %call2.i) #8
  br label %panel_lvds_parse_dt.exit.thread

if.end9.i:                                        ; preds = %if.end.i
  %video_mode.i = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 5
  call void @videomode_from_timing(ptr noundef nonnull %timing.i, ptr noundef %video_mode.i) #5
  %width.i = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 3
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.20, ptr noundef %width.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp11.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp11.i, label %do.end15.i, label %if.end17.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.22, ptr noundef %2, ptr noundef nonnull @.str.20) #8
  br label %panel_lvds_parse_dt.exit.thread

if.end17.i:                                       ; preds = %if.end9.i
  %height.i = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 4
  %call.i.i71.i = call i32 @of_property_read_variable_u32_array(ptr noundef %2, ptr noundef nonnull @.str.24, ptr noundef %height.i, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i71.i)
  %cmp19.i = icmp slt i32 %call.i.i71.i, 0
  br i1 %cmp19.i, label %do.end23.i, label %if.end25.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.22, ptr noundef %2, ptr noundef nonnull @.str.24) #8
  br label %panel_lvds_parse_dt.exit.thread

if.end25.i:                                       ; preds = %if.end17.i
  %label.i = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 2
  %call26.i = call i32 @of_property_read_string(ptr noundef %2, ptr noundef nonnull @.str.27, ptr noundef %label.i) #5
  %call27.i = call i32 @drm_of_lvds_get_data_mapping(ptr noundef %2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27.i)
  %cmp28.i = icmp slt i32 %call27.i, 0
  br i1 %cmp28.i, label %do.end32.i, label %if.end5

do.end32.i:                                       ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.22, ptr noundef %2, ptr noundef nonnull @.str.30) #8
  br label %panel_lvds_parse_dt.exit.thread

panel_lvds_parse_dt.exit.thread:                  ; preds = %do.end32.i, %do.end23.i, %do.end15.i, %do.end7.i, %do.end.i
  %retval.0.i.ph = phi i32 [ %call27.i, %do.end32.i ], [ -19, %do.end23.i ], [ -19, %do.end15.i ], [ %call2.i, %do.end7.i ], [ %call.i91, %do.end.i ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %timing.i) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end25.i
  %bus_format.i = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 6
  %14 = ptrtoint ptr %bus_format.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call27.i, ptr %bus_format.i, align 4
  %call.i.i = call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str.31, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i.i, null
  %data_mirror.i = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 7
  %frombool.i = zext i1 %tobool.i.i to i8
  %15 = ptrtoint ptr %data_mirror.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %frombool.i, ptr %data_mirror.i, align 4
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %timing.i) #5
  %16 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev2, align 4
  %call7 = call ptr @devm_regulator_get_optional(ptr noundef %17, ptr noundef nonnull @.str.1) #5
  %supply = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 8
  %18 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7, ptr %supply, align 4
  %cmp.i92 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %if.then10, label %if.end5.if.end21_crit_edge

if.end5.if.end21_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.then10:                                        ; preds = %if.end5
  %19 = ptrtoint ptr %call7 to i32
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.end [
    i32 -19, label %if.end19
    i32 -517, label %if.then10.cleanup_crit_edge
  ]

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.2, i32 noundef %19) #8
  br label %cleanup

if.end19:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %supply, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.end19, %if.end5.if.end21_crit_edge
  %24 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev2, align 4
  %call23 = call ptr @devm_gpiod_get_optional(ptr noundef %25, ptr noundef nonnull @.str.7, i32 noundef 3) #5
  %enable_gpio = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 9
  %26 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call23, ptr %enable_gpio, align 4
  %cmp.i93 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i93, label %if.then26, label %if.end33

if.then26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %call23 to i32
  %28 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %27) #8
  br label %cleanup

if.end33:                                         ; preds = %if.end21
  %30 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev2, align 4
  %call35 = call ptr @devm_gpiod_get_optional(ptr noundef %31, ptr noundef nonnull @.str.11, i32 noundef 7) #5
  %reset_gpio = getelementptr inbounds %struct.panel_lvds, ptr %call.i, i32 0, i32 10
  %32 = ptrtoint ptr %reset_gpio to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call35, ptr %reset_gpio, align 4
  %cmp.i94 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i94, label %if.then38, label %if.end45

if.then38:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %call35 to i32
  %34 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11, i32 noundef %33) #8
  br label %cleanup

if.end45:                                         ; preds = %if.end33
  %36 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev2, align 4
  call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %37, ptr noundef nonnull @panel_lvds_funcs, i32 noundef 7) #5
  %call48 = call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end51, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  %38 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev2, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 8
  %40 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i, ptr %driver_data.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end51, %if.end45.cleanup_crit_edge, %if.then38, %if.then26, %do.end, %if.then10.cleanup_crit_edge, %panel_lvds_parse_dt.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %27, %if.then26 ], [ %33, %if.then38 ], [ 0, %if.end51 ], [ -12, %entry.cleanup_crit_edge ], [ %19, %if.then10.cleanup_crit_edge ], [ %19, %do.end ], [ %call48, %if.end45.cleanup_crit_edge ], [ %retval.0.i.ph, %panel_lvds_parse_dt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_lvds_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %1) #5
  %call2 = tail call i32 @drm_panel_disable(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_drm_get_panel_orientation(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_display_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @videomode_from_timing(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_lvds_get_data_mapping(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_lvds_prepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %supply = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 8
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supply, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @regulator_enable(ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.32, i32 noundef %call2) #8
  br label %cleanup9

if.end4:                                          ; preds = %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %enable_gpio = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 9
  %4 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable_gpio, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %if.end4.cleanup9_crit_edge, label %if.then6

if.end4.cleanup9_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %5, i32 noundef 1) #5
  br label %cleanup9

cleanup9:                                         ; preds = %if.then6, %if.end4.cleanup9_crit_edge, %do.end
  %retval.1 = phi i32 [ %call2, %do.end ], [ 0, %if.then6 ], [ 0, %if.end4.cleanup9_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_lvds_unprepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_gpio = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 9
  %0 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %enable_gpio, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @gpiod_set_value_cansleep(ptr noundef nonnull %1, i32 noundef 0) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %supply = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 8
  %2 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %supply, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @regulator_disable(ptr noundef nonnull %3) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @panel_lvds_get_modes(ptr noundef %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_create(ptr noundef %1) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %video_mode = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 5
  tail call void @drm_display_mode_from_videomode(ptr noundef %video_mode, ptr noundef nonnull %call1) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 28
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type, align 2
  %4 = or i8 %3, 72
  store i8 %4, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call1) #5
  %width = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 3
  %5 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %width, align 4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %7 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %display_info, align 8
  %height = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 4
  %8 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %height, align 4
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %10 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %height_mm, align 4
  %bus_format = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 6
  %call5 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef %bus_format, i32 noundef 1) #5
  %data_mirror = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 7
  %11 = ptrtoint ptr %data_mirror to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data_mirror, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool6.not = icmp eq i8 %12, 0
  %cond = select i1 %tobool6.not, i32 16, i32 32
  %bus_flags = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 8
  %13 = ptrtoint ptr %bus_flags to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %cond, ptr %bus_flags, align 8
  %orientation = getelementptr inbounds %struct.panel_lvds, ptr %panel, i32 0, i32 11
  %14 = ptrtoint ptr %orientation to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %orientation, align 4
  %call9 = tail call i32 @drm_connector_set_panel_orientation(ptr noundef %connector, i32 noundef %15) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_display_mode_from_videomode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_panel_orientation(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !34, !35, !37, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !59, !61, !62, !63, !65, !67, !69, !70, !71, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_panel_lvds__307_262_panel_lvds_driver_init6, !1, !"__initcall__kmod_panel_lvds__307_262_panel_lvds_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 262, i32 1}
!2 = !{ptr @__exitcall_panel_lvds_driver_exit, !1, !"__exitcall_panel_lvds_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 264, i32 1}
!5 = !{ptr @__UNIQUE_ID_description309, !6, !"__UNIQUE_ID_description309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 265, i32 1}
!7 = !{ptr @__UNIQUE_ID_file310, !8, !"__UNIQUE_ID_file310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 266, i32 1}
!9 = !{ptr @__UNIQUE_ID_license311, !8, !"__UNIQUE_ID_license311", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 257, i32 11}
!12 = !{ptr @panel_lvds_driver, !13, !"panel_lvds_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 253, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 181, i32 56}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 187, i32 5}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @panel_lvds_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @panel_lvds_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 196, i32 57}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 200, i32 3}
!28 = !{ptr @panel_lvds_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @panel_lvds_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 205, i32 56}
!32 = !{ptr @panel_lvds_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 209, i32 3}
!34 = !{ptr @panel_lvds_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 124, i32 3}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @panel_lvds_parse_dt._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @panel_lvds_parse_dt._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 128, i32 34}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 130, i32 3}
!44 = !{ptr @panel_lvds_parse_dt._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @panel_lvds_parse_dt._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 137, i32 33}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 139, i32 3}
!50 = !{ptr @panel_lvds_parse_dt._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @panel_lvds_parse_dt._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 143, i32 33}
!54 = !{ptr @panel_lvds_parse_dt._entry.25, !55, !"_entry", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 145, i32 3}
!56 = !{ptr @panel_lvds_parse_dt._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 150, i32 30}
!59 = !{ptr @panel_lvds_parse_dt._entry.28, !60, !"_entry", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 154, i32 3}
!61 = !{ptr @panel_lvds_parse_dt._entry_ptr.29, !60, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 161, i32 48}
!65 = !{ptr @panel_lvds_funcs, !66, !"panel_lvds_funcs", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 110, i32 37}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 72, i32 4}
!69 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @panel_lvds_prepare._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @panel_lvds_prepare._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @panel_lvds_of_table, !73, !"panel_lvds_of_table", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-lvds.c", i32 246, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{i8 0, i8 2}
