; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-innolux-p079zca.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-innolux-p079zca.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.panel_desc = type { ptr, i32, %struct.anon.84, i32, i32, ptr, i32, ptr, i32, i32, i32 }
%struct.anon.84 = type { i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.panel_init_cmd = type { i32, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mipi_dsi_device = type { ptr, %struct.device, [20 x i8], i32, i32, i32, i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.innolux_panel = type { %struct.drm_panel, ptr, ptr, ptr, ptr, i8, i8 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
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

@__initcall__kmod_panel_innolux_p079zca__307_548_innolux_panel_driver_init6 = internal global ptr @innolux_panel_driver_init, section ".initcall6.init", align 4
@innolux_panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @innolux_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @innolux_panel_probe, ptr @innolux_panel_remove, ptr @innolux_panel_shutdown }, [40 x i8] zeroinitializer }, align 32
@__exitcall_innolux_panel_driver_exit = internal global ptr @innolux_panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author308 = internal constant [62 x i8] c"panel_innolux_p079zca.author=Chris Zhong <zyw@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author309 = internal constant [59 x i8] c"panel_innolux_p079zca.author=Lin Huang <hl@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description310 = internal constant [63 x i8] c"panel_innolux_p079zca.description=Innolux P079ZCA panel driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file311 = internal constant [71 x i8] c"panel_innolux_p079zca.file=drivers/gpu/drm/panel/panel-innolux-p079zca\00", section ".modinfo", align 1
@__UNIQUE_ID_license312 = internal constant [37 x i8] c"panel_innolux_p079zca.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel-innolux-p079zca\00", [42 x i8] zeroinitializer }, align 32
@innolux_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,p079zca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_p079zca_panel_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"innolux,p097pfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @innolux_p097pfg_panel_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@innolux_p079zca_panel_desc = internal constant { %struct.panel_desc, [48 x i8] } { %struct.panel_desc { ptr @innolux_p079zca_mode, i32 8, %struct.anon.84 { i32 120, i32 160 }, i32 2053, i32 0, ptr null, i32 4, ptr @innolux_p079zca_supply_names, i32 1, i32 0, i32 80 }, [48 x i8] zeroinitializer }, align 32
@innolux_p097pfg_panel_desc = internal constant { %struct.panel_desc, [48 x i8] } { %struct.panel_desc { ptr @innolux_p097pfg_mode, i32 8, %struct.anon.84 { i32 147, i32 196 }, i32 2053, i32 0, ptr @innolux_p097pfg_init_cmds, i32 4, ptr @innolux_p097pfg_supply_names, i32 2, i32 100, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_p079zca_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 56900, i16 768, i16 808, i16 848, i16 888, i16 0, i16 1024, i16 1044, i16 1048, i16 1068, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_p079zca_supply_names = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.1], [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@innolux_p097pfg_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 229000, i16 1536, i16 1636, i16 1660, i16 1760, i16 0, i16 2048, i16 2148, i16 2150, i16 2168, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@innolux_p097pfg_init_cmds = internal constant { [85 x %struct.panel_init_cmd], [184 x i8] } { [85 x %struct.panel_init_cmd] [%struct.panel_init_cmd { i32 6, ptr @.compoundliteral }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.2 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.3 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.4 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.5 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.6 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.7 }, %struct.panel_init_cmd { i32 2, ptr @.compoundliteral.8 }, %struct.panel_init_cmd { i32 2, ptr @.compoundliteral.9 }, %struct.panel_init_cmd { i32 2, ptr @.compoundliteral.10 }, %struct.panel_init_cmd { i32 2, ptr @.compoundliteral.11 }, %struct.panel_init_cmd { i32 4, ptr @.compoundliteral.12 }, %struct.panel_init_cmd { i32 4, ptr @.compoundliteral.13 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.14 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.15 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.16 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.17 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.18 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.19 }, %struct.panel_init_cmd { i32 2, ptr @.compoundliteral.20 }, %struct.panel_init_cmd { i32 2, ptr @.compoundliteral.21 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.22 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.23 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.24 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.25 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.26 }, %struct.panel_init_cmd { i32 2, ptr @.compoundliteral.27 }, %struct.panel_init_cmd { i32 17, ptr @.compoundliteral.28 }, %struct.panel_init_cmd { i32 17, ptr @.compoundliteral.29 }, %struct.panel_init_cmd { i32 17, ptr @.compoundliteral.30 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.31 }, %struct.panel_init_cmd { i32 17, ptr @.compoundliteral.32 }, %struct.panel_init_cmd { i32 17, ptr @.compoundliteral.33 }, %struct.panel_init_cmd { i32 17, ptr @.compoundliteral.34 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.35 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.36 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.37 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.38 }, %struct.panel_init_cmd { i32 8, ptr @.compoundliteral.39 }, %struct.panel_init_cmd { i32 8, ptr @.compoundliteral.40 }, %struct.panel_init_cmd { i32 11, ptr @.compoundliteral.41 }, %struct.panel_init_cmd { i32 8, ptr @.compoundliteral.42 }, %struct.panel_init_cmd { i32 8, ptr @.compoundliteral.43 }, %struct.panel_init_cmd { i32 8, ptr @.compoundliteral.44 }, %struct.panel_init_cmd { i32 8, ptr @.compoundliteral.45 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.46 }, %struct.panel_init_cmd { i32 2, ptr @.compoundliteral.47 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.48 }, %struct.panel_init_cmd { i32 2, ptr @.compoundliteral.49 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.50 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.51 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.52 }, %struct.panel_init_cmd { i32 4, ptr @.compoundliteral.53 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.54 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.55 }, %struct.panel_init_cmd { i32 8, ptr @.compoundliteral.56 }, %struct.panel_init_cmd { i32 7, ptr @.compoundliteral.57 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.58 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.59 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.60 }, %struct.panel_init_cmd { i32 5, ptr @.compoundliteral.61 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.62 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.63 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.64 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.65 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.66 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.67 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.68 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.69 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.70 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.71 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.72 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.73 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.74 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.75 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.76 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.77 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.78 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.79 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.80 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.81 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.82 }, %struct.panel_init_cmd { i32 6, ptr @.compoundliteral.83 }, %struct.panel_init_cmd { i32 3, ptr @.compoundliteral.84 }, %struct.panel_init_cmd zeroinitializer], [184 x i8] zeroinitializer }, align 32
@innolux_p097pfg_supply_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.85, ptr @.str.86], [24 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.2 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B1\E8\11", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.3 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B2%\02", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B5\08\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.5 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\BC\0F\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\B8\03\06\00\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\BD\01\90\14\14", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"o\01", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\C0\03", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"o\02", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.11 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\C1\0D", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.12 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\D9\01\09p", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.13 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\C5\12!\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.14 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\BB\93\93", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\01", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B3<<", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.17 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B4\0F\0F", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B9EE", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\BA\14\14", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.20 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\CA\02", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\CE\04", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\C3\9B\9B", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.23 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\D8\C0\03", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\BC\82\01", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\BD\9E\01", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.26 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\02", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\B0\82", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\D1\00\00\00>\00\82\00\A5\00\C1\00\EA\01\0D\01@", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.29 = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\D2\01j\01\A8\01\DC\02)\02g\02h\02\A8\02\F0", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\D3\03\19\03I\03g\03\8C\03\A6\03\C7\03\DE\03\EC", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\D4\03\FF\03\FF", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.32 = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\E0\00\00\00\86\00\C5\00\E5\00\FF\01&\01E\01u", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\E1\01\9C\01\D5\02\05\02M\02\86\02\87\02\C3\03\03", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { [17 x i8], [47 x i8] } { [17 x i8] c"\E2\03*\03V\03r\03\94\03\AC\03\CB\03\E0\03\ED", [47 x i8] zeroinitializer }, align 32
@.compoundliteral.35 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\E3\03\FF\03\FF", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\03", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\B0\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.38 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\B1\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.39 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\B2\00\00\06\04\01@\85", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.40 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\B3\10\07\FC\04\01@\80", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.41 = internal global { [11 x i8], [21 x i8] } { [11 x i8] c"\B6\F0\08\00\04\00\00\00\01@\80", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.42 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\BA\C5\07\00\04\11%\8C", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.43 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\BB\C5\07\00\03\11%\8C", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.44 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\C0\00<\00\00\00\80\80", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.45 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\C1\00<\00\00\00\80\80", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.46 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\C4\00\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.47 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\EFA", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.48 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\04", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.49 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\ECL", [30 x i8] zeroinitializer }, align 32
@.compoundliteral.50 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\05", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.51 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\B0\13\03\03\01", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.52 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B10\00", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.53 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\B2\02\02\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.54 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\B3\82#\82\9D", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\B4\C5u$W", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.56 = internal global { [8 x i8], [24 x i8] } { [8 x i8] c"\B5\00\D4r\11\11\AB\0A", [24 x i8] zeroinitializer }, align 32
@.compoundliteral.57 = internal global { [7 x i8], [25 x i8] } { [7 x i8] c"\B6\00\00\D5r$V", [25 x i8] zeroinitializer }, align 32
@.compoundliteral.58 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\B7\\\DC\\\\", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.59 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B9\0C\00\00\01\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.60 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C0u\11\11T\05", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.61 = internal global { [5 x i8], [27 x i8] } { [5 x i8] c"\C6\00\00\00\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.62 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\D0\00H\08\00\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.63 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\D1\00H\09\00\00", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.64 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\F0U\AAR\08\06", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.65 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B0\0222\08/", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.66 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B1.\15\14\13\12", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.67 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B2\11\10\00==", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.68 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B3=====", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.69 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B4=2", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.70 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B5\0322\09/", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.71 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B6.\1B\1A\19\18", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.72 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B7\17\16\01==", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.73 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\B8=====", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.74 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\B9=2", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.75 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C0\0122\09/", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.76 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C1.\1A\1B\16\17", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.77 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C2\18\19\03==", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.78 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C3=====", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.79 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\C4=2", [29 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C5\0022\08/", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C6.\14\15\10\11", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.82 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C7\12\13\02==", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.83 = internal global { [6 x i8], [26 x i8] } { [6 x i8] c"\C8=====", [26 x i8] zeroinitializer }, align 32
@.compoundliteral.84 = internal global { [3 x i8], [29 x i8] } { [3 x i8] c"\C9=2", [29 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avdd\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"avee\00", [27 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@innolux_panel_add.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, i8 0, i8 115, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"panel_innolux_p079zca\00", [42 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"innolux_panel_add\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/gpu/drm/panel/panel-innolux-p079zca.c\00", [50 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to get enable gpio: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@innolux_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @innolux_panel_prepare, ptr @innolux_panel_enable, ptr @innolux_panel_disable, ptr @innolux_panel_unprepare, ptr @innolux_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@innolux_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.90, i32 147, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to write command %u\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"innolux_panel_prepare\00", [42 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@innolux_panel_prepare._entry_ptr = internal global ptr @innolux_panel_prepare._entry, section ".printk_index", align 4
@innolux_panel_prepare._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.93, ptr @.str.90, i32 158, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to send DCS nop: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@innolux_panel_prepare._entry_ptr.98 = internal global ptr @innolux_panel_prepare._entry.96, section ".printk_index", align 4
@innolux_panel_prepare._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.93, ptr @.str.90, i32 166, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to exit sleep mode: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@innolux_panel_prepare._entry_ptr.101 = internal global ptr @innolux_panel_prepare._entry.99, section ".printk_index", align 4
@innolux_panel_prepare._entry.102 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.93, ptr @.str.90, i32 175, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to set display on: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@innolux_panel_prepare._entry_ptr.104 = internal global ptr @innolux_panel_prepare._entry.102, section ".printk_index", align 4
@innolux_panel_unprepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.106, ptr @.str.90, i32 87, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to set display off: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"innolux_panel_unprepare\00", [40 x i8] zeroinitializer }, align 32
@innolux_panel_unprepare._entry_ptr = internal global ptr @innolux_panel_unprepare._entry, section ".printk_index", align 4
@innolux_panel_unprepare._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.108, ptr @.str.106, ptr @.str.90, i32 91, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to enter sleep mode: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@innolux_panel_unprepare._entry_ptr.109 = internal global ptr @innolux_panel_unprepare._entry.107, section ".printk_index", align 4
@innolux_panel_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.111, ptr @.str.90, i32 395, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to add mode %ux%u@%u\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"innolux_panel_get_modes\00", [40 x i8] zeroinitializer }, align 32
@innolux_panel_get_modes._entry_ptr = internal global ptr @innolux_panel_get_modes._entry, section ".printk_index", align 4
@innolux_panel_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.90, i32 516, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to unprepare panel: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"innolux_panel_remove\00", [43 x i8] zeroinitializer }, align 32
@innolux_panel_remove._entry_ptr = internal global ptr @innolux_panel_remove._entry, section ".printk_index", align 4
@innolux_panel_remove._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.90, i32 520, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to disable panel: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@innolux_panel_remove._entry_ptr.116 = internal global ptr @innolux_panel_remove._entry.114, section ".printk_index", align 4
@innolux_panel_remove._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.90, i32 524, ptr @.str.94, ptr @.str.95 }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"failed to detach from DSI host: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@innolux_panel_remove._entry_ptr.119 = internal global ptr @innolux_panel_remove._entry.117, section ".printk_index", align 4
@___asan_gen_.120 = private unnamed_addr constant [21 x i8] c"innolux_panel_driver\00", align 1
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 539, i32 31 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 541, i32 11 }
@___asan_gen_.126 = private unnamed_addr constant [17 x i8] c"innolux_of_match\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 418, i32 34 }
@___asan_gen_.129 = private unnamed_addr constant [27 x i8] c"innolux_p079zca_panel_desc\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 221, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant [27 x i8] c"innolux_p097pfg_panel_desc\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 368, i32 32 }
@___asan_gen_.135 = private unnamed_addr constant [21 x i8] c"innolux_p079zca_mode\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 209, i32 38 }
@___asan_gen_.138 = private unnamed_addr constant [29 x i8] c"innolux_p079zca_supply_names\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 205, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 206, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant [21 x i8] c"innolux_p097pfg_mode\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 242, i32 38 }
@___asan_gen_.147 = private unnamed_addr constant [26 x i8] c"innolux_p097pfg_init_cmds\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 259, i32 36 }
@___asan_gen_.150 = private unnamed_addr constant [29 x i8] c"innolux_p097pfg_supply_names\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 237, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c".compoundliteral.2\00", align 1
@___asan_gen_.155 = private unnamed_addr constant [19 x i8] c".compoundliteral.3\00", align 1
@___asan_gen_.156 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.157 = private unnamed_addr constant [19 x i8] c".compoundliteral.5\00", align 1
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.160 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.162 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [20 x i8] c".compoundliteral.11\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [20 x i8] c".compoundliteral.12\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [20 x i8] c".compoundliteral.13\00", align 1
@___asan_gen_.166 = private unnamed_addr constant [20 x i8] c".compoundliteral.14\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.168 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c".compoundliteral.17\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c".compoundliteral.20\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c".compoundliteral.23\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.178 = private unnamed_addr constant [20 x i8] c".compoundliteral.26\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.180 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c".compoundliteral.29\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [20 x i8] c".compoundliteral.32\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.186 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.187 = private unnamed_addr constant [20 x i8] c".compoundliteral.35\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c".compoundliteral.38\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [20 x i8] c".compoundliteral.39\00", align 1
@___asan_gen_.192 = private unnamed_addr constant [20 x i8] c".compoundliteral.40\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c".compoundliteral.41\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c".compoundliteral.42\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.43\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c".compoundliteral.44\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [20 x i8] c".compoundliteral.45\00", align 1
@___asan_gen_.198 = private unnamed_addr constant [20 x i8] c".compoundliteral.46\00", align 1
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c".compoundliteral.47\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c".compoundliteral.48\00", align 1
@___asan_gen_.201 = private unnamed_addr constant [20 x i8] c".compoundliteral.49\00", align 1
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c".compoundliteral.50\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [20 x i8] c".compoundliteral.51\00", align 1
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c".compoundliteral.52\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c".compoundliteral.53\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [20 x i8] c".compoundliteral.54\00", align 1
@___asan_gen_.207 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c".compoundliteral.56\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c".compoundliteral.57\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c".compoundliteral.58\00", align 1
@___asan_gen_.211 = private unnamed_addr constant [20 x i8] c".compoundliteral.59\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [20 x i8] c".compoundliteral.60\00", align 1
@___asan_gen_.213 = private unnamed_addr constant [20 x i8] c".compoundliteral.61\00", align 1
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c".compoundliteral.62\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.63\00", align 1
@___asan_gen_.216 = private unnamed_addr constant [20 x i8] c".compoundliteral.64\00", align 1
@___asan_gen_.217 = private unnamed_addr constant [20 x i8] c".compoundliteral.65\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [20 x i8] c".compoundliteral.66\00", align 1
@___asan_gen_.219 = private unnamed_addr constant [20 x i8] c".compoundliteral.67\00", align 1
@___asan_gen_.220 = private unnamed_addr constant [20 x i8] c".compoundliteral.68\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [20 x i8] c".compoundliteral.69\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [20 x i8] c".compoundliteral.70\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [20 x i8] c".compoundliteral.71\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [20 x i8] c".compoundliteral.72\00", align 1
@___asan_gen_.225 = private unnamed_addr constant [20 x i8] c".compoundliteral.73\00", align 1
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c".compoundliteral.74\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [20 x i8] c".compoundliteral.75\00", align 1
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c".compoundliteral.76\00", align 1
@___asan_gen_.229 = private unnamed_addr constant [20 x i8] c".compoundliteral.77\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [20 x i8] c".compoundliteral.78\00", align 1
@___asan_gen_.231 = private unnamed_addr constant [20 x i8] c".compoundliteral.79\00", align 1
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.234 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 238, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 239, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 456, i32 54 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 460, i32 3 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c"innolux_panel_funcs\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 410, i32 37 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 147, i32 5 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 158, i32 5 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 166, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 175, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 87, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 91, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 394, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 516, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 520, i32 3 }
@___asan_gen_.333 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.337 = private constant [49 x i8] c"../drivers/gpu/drm/panel/panel-innolux-p079zca.c\00", align 1
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.337, i32 524, i32 3 }
@llvm.compiler.used = appending global [147 x ptr] [ptr @__UNIQUE_ID_author308, ptr @__UNIQUE_ID_author309, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file311, ptr @__UNIQUE_ID_license312, ptr @__exitcall_innolux_panel_driver_exit, ptr @__initcall__kmod_panel_innolux_p079zca__307_548_innolux_panel_driver_init6, ptr @innolux_panel_driver_exit, ptr @innolux_panel_get_modes._entry, ptr @innolux_panel_get_modes._entry_ptr, ptr @innolux_panel_prepare._entry, ptr @innolux_panel_prepare._entry.102, ptr @innolux_panel_prepare._entry.96, ptr @innolux_panel_prepare._entry.99, ptr @innolux_panel_prepare._entry_ptr, ptr @innolux_panel_prepare._entry_ptr.101, ptr @innolux_panel_prepare._entry_ptr.104, ptr @innolux_panel_prepare._entry_ptr.98, ptr @innolux_panel_remove._entry, ptr @innolux_panel_remove._entry.114, ptr @innolux_panel_remove._entry.117, ptr @innolux_panel_remove._entry_ptr, ptr @innolux_panel_remove._entry_ptr.116, ptr @innolux_panel_remove._entry_ptr.119, ptr @innolux_panel_unprepare._entry, ptr @innolux_panel_unprepare._entry.107, ptr @innolux_panel_unprepare._entry_ptr, ptr @innolux_panel_unprepare._entry_ptr.109, ptr @innolux_panel_driver, ptr @.str, ptr @innolux_of_match, ptr @innolux_p079zca_panel_desc, ptr @innolux_p097pfg_panel_desc, ptr @innolux_p079zca_mode, ptr @innolux_p079zca_supply_names, ptr @.str.1, ptr @innolux_p097pfg_mode, ptr @innolux_p097pfg_init_cmds, ptr @innolux_p097pfg_supply_names, ptr @.compoundliteral, ptr @.compoundliteral.2, ptr @.compoundliteral.3, ptr @.compoundliteral.4, ptr @.compoundliteral.5, ptr @.compoundliteral.6, ptr @.compoundliteral.7, ptr @.compoundliteral.8, ptr @.compoundliteral.9, ptr @.compoundliteral.10, ptr @.compoundliteral.11, ptr @.compoundliteral.12, ptr @.compoundliteral.13, ptr @.compoundliteral.14, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.compoundliteral.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.compoundliteral.20, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.compoundliteral.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.compoundliteral.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.compoundliteral.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.compoundliteral.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.compoundliteral.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.compoundliteral.38, ptr @.compoundliteral.39, ptr @.compoundliteral.40, ptr @.compoundliteral.41, ptr @.compoundliteral.42, ptr @.compoundliteral.43, ptr @.compoundliteral.44, ptr @.compoundliteral.45, ptr @.compoundliteral.46, ptr @.compoundliteral.47, ptr @.compoundliteral.48, ptr @.compoundliteral.49, ptr @.compoundliteral.50, ptr @.compoundliteral.51, ptr @.compoundliteral.52, ptr @.compoundliteral.53, ptr @.compoundliteral.54, ptr @.compoundliteral.55, ptr @.compoundliteral.56, ptr @.compoundliteral.57, ptr @.compoundliteral.58, ptr @.compoundliteral.59, ptr @.compoundliteral.60, ptr @.compoundliteral.61, ptr @.compoundliteral.62, ptr @.compoundliteral.63, ptr @.compoundliteral.64, ptr @.compoundliteral.65, ptr @.compoundliteral.66, ptr @.compoundliteral.67, ptr @.compoundliteral.68, ptr @.compoundliteral.69, ptr @.compoundliteral.70, ptr @.compoundliteral.71, ptr @.compoundliteral.72, ptr @.compoundliteral.73, ptr @.compoundliteral.74, ptr @.compoundliteral.75, ptr @.compoundliteral.76, ptr @.compoundliteral.77, ptr @.compoundliteral.78, ptr @.compoundliteral.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @.compoundliteral.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @innolux_panel_funcs, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.103, ptr @.str.105, ptr @.str.106, ptr @.str.108, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118], section "llvm.metadata"
@0 = internal global [129 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_p079zca_panel_desc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_p097pfg_panel_desc to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_p079zca_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_p079zca_supply_names to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_p097pfg_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_p097pfg_init_cmds to i32), i32 680, i32 864, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_p097pfg_supply_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.29 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.38 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.39 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.49 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.50 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.52 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.53 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.58 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.61 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.69 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.74 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.75 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.77 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.78 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.79 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_prepare._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_prepare._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_prepare._entry.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_unprepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_unprepare._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_remove._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @innolux_panel_remove._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @innolux_panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @innolux_panel_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @innolux_panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @innolux_panel_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @innolux_panel_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %flags = getelementptr inbounds %struct.panel_desc, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %mode_flags, align 8
  %format = getelementptr inbounds %struct.panel_desc, ptr %call, i32 0, i32 4
  %3 = ptrtoint ptr %format to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %format, align 4
  %format1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %5 = ptrtoint ptr %format1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %format1, align 4
  %lanes = getelementptr inbounds %struct.panel_desc, ptr %call, i32 0, i32 6
  %6 = ptrtoint ptr %lanes to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %lanes, align 4
  %lanes2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %8 = ptrtoint ptr %lanes2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %lanes2, align 8
  %call3 = tail call fastcc i32 @innolux_panel_add(ptr noundef %dsi, ptr noundef %call)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.then6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %driver_data.i.i, align 4
  tail call void @drm_panel_remove(ptr noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %if.then6 ], [ %call3, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @innolux_panel_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.112, i32 noundef %call1) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call3 = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %do.end8, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %dev9 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.115, i32 noundef %call3) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end8, %if.end.if.end10_crit_edge
  %call11 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %do.end16, label %if.end10.if.end18_crit_edge

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end18

do.end16:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  %dev17 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef nonnull @.str.118, i32 noundef %call11) #9
  br label %if.end18

if.end18:                                         ; preds = %do.end16, %if.end10.if.end18_crit_edge
  tail call void @drm_panel_remove(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @innolux_panel_shutdown(ptr nocapture noundef readonly %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @drm_panel_unprepare(ptr noundef %1) #6
  %call3 = tail call i32 @drm_panel_disable(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @innolux_panel_add(ptr noundef %dsi, ptr noundef %desc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %desc2 = getelementptr inbounds %struct.innolux_panel, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %desc2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %desc, ptr %desc2, align 4
  %num_supplies = getelementptr inbounds %struct.panel_desc, ptr %desc, i32 0, i32 8
  %1 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %num_supplies, align 4
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 12) #6
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !103

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %supplies73 = getelementptr inbounds %struct.innolux_panel, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %supplies73 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %supplies73, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %6 = extractvalue { i32, i1 } %3, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %6, i32 noundef 3520) #6
  %supplies = getelementptr inbounds %struct.innolux_panel, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %supplies to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call5.i.i, ptr %supplies, align 4
  %tobool5.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool5.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %8 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_supplies, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp76.not = icmp eq i32 %9, 0
  br i1 %cmp76.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %supply_names = getelementptr inbounds %struct.panel_desc, ptr %desc, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.077 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %10 = ptrtoint ptr %supply_names to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %supply_names, align 4
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.077
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %14 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %supplies, align 4
  %arrayidx10 = getelementptr %struct.regulator_bulk_data, ptr %15, i32 %i.077
  %16 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %arrayidx10, align 4
  %inc = add nuw i32 %i.077, 1
  %17 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_supplies, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %18, %for.body.for.end_crit_edge ]
  %19 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %supplies, align 4
  %call13 = tail call i32 @devm_regulator_bulk_get(ptr noundef %dev1, i32 noundef %.lcssa, ptr noundef %20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %for.end.cleanup_crit_edge, label %if.end16

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %for.end
  %call17 = tail call ptr @devm_gpiod_get_optional(ptr noundef %dev1, ptr noundef nonnull @.str.87, i32 noundef 7) #6
  %enable_gpio = getelementptr inbounds %struct.innolux_panel, ptr %call.i, i32 0, i32 4
  %21 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call17, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then20, label %if.end16.if.end30_crit_edge

if.end16.if.end30_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.then20:                                        ; preds = %if.end16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @innolux_panel_add.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@innolux_panel_add, %if.then27)) #6
          to label %do.end [label %if.then27], !srcloc !104

if.then27:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %call17 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @innolux_panel_add.__UNIQUE_ID_ddebug306, ptr noundef %dev1, ptr noundef nonnull @.str.91, i32 noundef %22) #6
  br label %do.end

do.end:                                           ; preds = %if.then27, %if.then20
  %23 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %enable_gpio, align 4
  br label %if.end30

if.end30:                                         ; preds = %do.end, %if.end16.if.end30_crit_edge
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev1, ptr noundef nonnull @innolux_panel_funcs, i32 noundef 16) #6
  %call32 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #6
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %24 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %link = getelementptr inbounds %struct.innolux_panel, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %dsi, ptr %link, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end30.cleanup_crit_edge, %for.end.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end35 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call13, %for.end.cleanup_crit_edge ], [ %call32, %if.end30.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get_optional(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @innolux_panel_prepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup55_crit_edge

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end:                                           ; preds = %entry
  %enable_gpio = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 4
  %2 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %3, i32 noundef 0) #6
  %desc = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 2
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %num_supplies = getelementptr inbounds %struct.panel_desc, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 3
  %8 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %supplies, align 4
  %call1 = tail call i32 @regulator_bulk_enable(i32 noundef %7, ptr noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %if.end.cleanup55_crit_edge, label %if.end3

if.end.cleanup55_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup55

if.end3:                                          ; preds = %if.end
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 21000, i32 noundef 2) #6
  %10 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %11, i32 noundef 1) #6
  tail call void @usleep_range_state(i32 noundef 20000, i32 noundef 21000, i32 noundef 2) #6
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %init_cmds = getelementptr inbounds %struct.panel_desc, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %init_cmds to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_cmds, align 4
  %tobool6.not = icmp eq ptr %15, null
  br i1 %tobool6.not, label %if.end3.if.end30_crit_edge, label %for.cond.preheader

if.end3.if.end30_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

for.cond.preheader:                               ; preds = %if.end3
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp10.not99 = icmp eq i32 %17, 0
  br i1 %cmp10.not99, label %for.cond.preheader.if.end30_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end30_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %link = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %18 = phi i32 [ %17, %for.body.lr.ph ], [ %30, %for.inc.for.body_crit_edge ]
  %i.0100 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %19 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %link, align 4
  %data = getelementptr %struct.panel_init_cmd, ptr %15, i32 %i.0100, i32 1
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data, align 4
  %call13 = tail call i32 @mipi_dsi_generic_write(ptr noundef %20, ptr noundef %22, i32 noundef %18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %do.end, label %if.end16

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.92, i32 noundef %i.0100) #9
  br label %poweroff

if.end16:                                         ; preds = %for.body
  %25 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %link, align 4
  %call18 = tail call i32 @mipi_dsi_dcs_nop(ptr noundef %26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %do.end23, label %for.inc

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.97, i32 noundef %call18) #9
  br label %poweroff

for.inc:                                          ; preds = %if.end16
  %inc = add i32 %i.0100, 1
  %arrayidx = getelementptr %struct.panel_init_cmd, ptr %15, i32 %inc
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %cmp10.not = icmp eq i32 %30, 0
  br i1 %cmp10.not, label %for.inc.if.end30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.end30_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end30

if.end30:                                         ; preds = %for.inc.if.end30_crit_edge, %for.cond.preheader.if.end30_crit_edge, %if.end3.if.end30_crit_edge
  %link31 = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 1
  %31 = ptrtoint ptr %link31 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %link31, align 4
  %call32 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %32) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %if.end39

do.end37:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %33 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.100, i32 noundef %call32) #9
  br label %poweroff

if.end39:                                         ; preds = %if.end30
  tail call void @msleep(i32 noundef 120) #6
  %35 = ptrtoint ptr %link31 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %link31, align 4
  %call41 = tail call i32 @mipi_dsi_dcs_set_display_on(ptr noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %cmp42 = icmp slt i32 %call41, 0
  br i1 %cmp42, label %do.end46, label %if.end48

do.end46:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.103, i32 noundef %call41) #9
  br label %poweroff

if.end48:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  %39 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %prepared, align 4
  br label %cleanup55

poweroff:                                         ; preds = %do.end46, %do.end37, %do.end23, %do.end
  %err.3 = phi i32 [ %call32, %do.end37 ], [ %call41, %do.end46 ], [ %call18, %do.end23 ], [ %call13, %do.end ]
  %40 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %41, i32 noundef 0) #6
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %desc, align 4
  %num_supplies52 = getelementptr inbounds %struct.panel_desc, ptr %43, i32 0, i32 8
  %44 = ptrtoint ptr %num_supplies52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %num_supplies52, align 4
  %46 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %supplies, align 4
  %call54 = tail call i32 @regulator_bulk_disable(i32 noundef %45, ptr noundef %47) #6
  br label %cleanup55

cleanup55:                                        ; preds = %poweroff, %if.end48, %if.end.cleanup55_crit_edge, %entry.cleanup55_crit_edge
  %retval.0 = phi i32 [ %err.3, %poweroff ], [ 0, %if.end48 ], [ 0, %entry.cleanup55_crit_edge ], [ %call1, %if.end.cleanup55_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @innolux_panel_enable(ptr nocapture noundef %panel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !105
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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @innolux_panel_disable(ptr nocapture noundef %panel) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %enabled = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 6
  %0 = ptrtoint ptr %enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %enabled, align 1, !range !105
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
  store i8 0, ptr %enabled, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @innolux_panel_unprepare(ptr nocapture noundef %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %prepared = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 5
  %0 = ptrtoint ptr %prepared to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %prepared, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %link = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %link, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_set_display_off(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.105, i32 noundef %call1) #9
  br label %if.end3

if.end3:                                          ; preds = %do.end, %if.end.if.end3_crit_edge
  %6 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %link, align 4
  %call5 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end10, label %if.end12

do.end10:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %panel, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.108, i32 noundef %call5) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  %desc = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 2
  %10 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc, align 4
  %sleep_mode_delay = getelementptr inbounds %struct.panel_desc, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %sleep_mode_delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sleep_mode_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool13.not = icmp eq i32 %13, 0
  br i1 %tobool13.not, label %if.end12.if.end17_crit_edge, label %if.then14

if.end12.if.end17_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef %13) #6
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end12.if.end17_crit_edge
  %enable_gpio = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 4
  %14 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value_cansleep(ptr noundef %15, i32 noundef 0) #6
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc, align 4
  %power_down_delay = getelementptr inbounds %struct.panel_desc, ptr %17, i32 0, i32 10
  %18 = ptrtoint ptr %power_down_delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %power_down_delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool19.not = icmp eq i32 %19, 0
  br i1 %tobool19.not, label %if.end17.if.end23_crit_edge, label %if.then20

if.end17.if.end23_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end23

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msleep(i32 noundef %19) #6
  br label %if.end23

if.end23:                                         ; preds = %if.then20, %if.end17.if.end23_crit_edge
  %20 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %desc, align 4
  %num_supplies = getelementptr inbounds %struct.panel_desc, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %num_supplies to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_supplies, align 4
  %supplies = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 3
  %24 = ptrtoint ptr %supplies to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %supplies, align 4
  %call25 = tail call i32 @regulator_bulk_disable(i32 noundef %23, ptr noundef %25) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end23.cleanup_crit_edge, label %if.end28

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %prepared to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %prepared, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.end23.cleanup_crit_edge, %do.end10, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end10 ], [ 0, %if.end28 ], [ 0, %entry.cleanup_crit_edge ], [ %call25, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @innolux_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %desc = getelementptr inbounds %struct.innolux_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %connector, align 8
  %call2 = tail call ptr @drm_mode_duplicate(ptr noundef %5, ptr noundef %3) #6
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %panel, align 4
  %hdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %hdisplay to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %hdisplay, align 4
  %conv = zext i16 %9 to i32
  %vdisplay = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %vdisplay to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %vdisplay, align 2
  %conv4 = zext i16 %11 to i32
  %call5 = tail call i32 @drm_mode_vrefresh(ptr noundef %3) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.110, i32 noundef %conv, i32 noundef %conv4, i32 noundef %call5) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @drm_mode_set_name(ptr noundef nonnull %call2) #6
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call2) #6
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %size = getelementptr inbounds %struct.panel_desc, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %size, align 4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %16 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %display_info, align 8
  %17 = load ptr, ptr %desc, align 4
  %height = getelementptr inbounds %struct.panel_desc, ptr %17, i32 0, i32 2, i32 1
  %18 = ptrtoint ptr %height to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %height, align 4
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %20 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %height_mm, align 4
  %21 = load ptr, ptr %desc, align 4
  %bpc = getelementptr inbounds %struct.panel_desc, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %bpc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bpc, align 4
  %bpc12 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %24 = ptrtoint ptr %bpc12 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %bpc12, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value_cansleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_generic_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_nop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_set_display_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 129)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !43, !44, !45, !46, !48, !50, !51, !52, !53, !54, !55, !57, !58, !59, !61, !62, !63, !65, !66, !67, !69, !70, !71, !72, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !86, !88, !89, !90, !92, !93}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @__initcall__kmod_panel_innolux_p079zca__307_548_innolux_panel_driver_init6, !1, !"__initcall__kmod_panel_innolux_p079zca__307_548_innolux_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 548, i32 1}
!2 = !{ptr @__exitcall_innolux_panel_driver_exit, !1, !"__exitcall_innolux_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author308, !4, !"__UNIQUE_ID_author308", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 550, i32 1}
!5 = !{ptr @__UNIQUE_ID_author309, !6, !"__UNIQUE_ID_author309", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 551, i32 1}
!7 = !{ptr @__UNIQUE_ID_description310, !8, !"__UNIQUE_ID_description310", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 552, i32 1}
!9 = !{ptr @__UNIQUE_ID_file311, !10, !"__UNIQUE_ID_file311", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 553, i32 1}
!11 = !{ptr @__UNIQUE_ID_license312, !10, !"__UNIQUE_ID_license312", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 541, i32 11}
!14 = !{ptr @innolux_panel_driver, !15, !"innolux_panel_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 539, i32 31}
!16 = !{ptr @innolux_of_match, !17, !"innolux_of_match", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 418, i32 34}
!18 = !{ptr @innolux_p079zca_panel_desc, !19, !"innolux_p079zca_panel_desc", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 221, i32 32}
!20 = !{ptr @innolux_p079zca_mode, !21, !"innolux_p079zca_mode", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 209, i32 38}
!22 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 206, i32 2}
!24 = !{ptr @innolux_p079zca_supply_names, !25, !"innolux_p079zca_supply_names", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 205, i32 27}
!26 = !{ptr @innolux_p097pfg_panel_desc, !27, !"innolux_p097pfg_panel_desc", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 368, i32 32}
!28 = !{ptr @innolux_p097pfg_mode, !29, !"innolux_p097pfg_mode", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 242, i32 38}
!30 = !{ptr @innolux_p097pfg_init_cmds, !31, !"innolux_p097pfg_init_cmds", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 259, i32 36}
!32 = !{ptr @.str.85, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 238, i32 2}
!34 = !{ptr @.str.86, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 239, i32 2}
!36 = !{ptr @innolux_p097pfg_supply_names, !37, !"innolux_p097pfg_supply_names", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 237, i32 27}
!38 = !{ptr @.str.87, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 456, i32 54}
!40 = !{ptr @.str.88, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 460, i32 3}
!42 = !{ptr @.str.89, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.90, !41, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.91, !41, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @innolux_panel_add.__UNIQUE_ID_ddebug306, !41, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!46 = !{ptr @innolux_panel_funcs, !47, !"innolux_panel_funcs", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 410, i32 37}
!48 = !{ptr @.str.92, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 147, i32 5}
!50 = !{ptr @.str.93, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.94, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.95, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @innolux_panel_prepare._entry, !49, !"_entry", i1 false, i1 false}
!54 = !{ptr @innolux_panel_prepare._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.97, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 158, i32 5}
!57 = !{ptr @innolux_panel_prepare._entry.96, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @innolux_panel_prepare._entry_ptr.98, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.100, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 166, i32 3}
!61 = !{ptr @innolux_panel_prepare._entry.99, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @innolux_panel_prepare._entry_ptr.101, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.103, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 175, i32 3}
!65 = !{ptr @innolux_panel_prepare._entry.102, !64, !"_entry", i1 false, i1 false}
!66 = !{ptr @innolux_panel_prepare._entry_ptr.104, !64, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.105, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 87, i32 3}
!69 = !{ptr @.str.106, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @innolux_panel_unprepare._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @innolux_panel_unprepare._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.108, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 91, i32 3}
!74 = !{ptr @innolux_panel_unprepare._entry.107, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @innolux_panel_unprepare._entry_ptr.109, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.110, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 394, i32 3}
!78 = !{ptr @.str.111, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @innolux_panel_get_modes._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @innolux_panel_get_modes._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.112, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 516, i32 3}
!83 = !{ptr @.str.113, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @innolux_panel_remove._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @innolux_panel_remove._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.115, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 520, i32 3}
!88 = !{ptr @innolux_panel_remove._entry.114, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @innolux_panel_remove._entry_ptr.116, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.118, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/panel/panel-innolux-p079zca.c", i32 524, i32 3}
!92 = !{ptr @innolux_panel_remove._entry.117, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @innolux_panel_remove._entry_ptr.119, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{!"branch_weights", i32 1, i32 2000}
!104 = !{i64 2148769402, i64 2148769407, i64 2148769420, i64 2148769464, i64 2148769498, i64 2148769519}
!105 = !{i8 0, i8 2}
