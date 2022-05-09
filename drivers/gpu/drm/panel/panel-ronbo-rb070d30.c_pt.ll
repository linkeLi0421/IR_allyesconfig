; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-ronbo-rb070d30.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mipi_dsi_driver = type { %struct.device_driver, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.rb070d30_panel = type { %struct.drm_panel, ptr, ptr, %struct.anon.86 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.anon.86 = type { ptr, ptr, ptr, ptr }
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

@__initcall__kmod_panel_ronbo_rb070d30__302_235_rb070d30_panel_driver_init6 = internal global ptr @rb070d30_panel_driver_init, section ".initcall6.init", align 4
@rb070d30_panel_driver = internal global { %struct.mipi_dsi_driver, [40 x i8] } { %struct.mipi_dsi_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rb070d30_panel_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @rb070d30_panel_dsi_probe, ptr @rb070d30_panel_dsi_remove, ptr null }, [40 x i8] zeroinitializer }, align 32
@__exitcall_rb070d30_panel_driver_exit = internal global ptr @rb070d30_panel_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author303 = internal constant [74 x i8] c"panel_ronbo_rb070d30.author=Boris Brezillon <boris.brezillon@bootlin.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author304 = internal constant [78 x i8] c"panel_ronbo_rb070d30.author=Konstantin Sudakov <k.sudakov@integrasources.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [61 x i8] c"panel_ronbo_rb070d30.description=Ronbo RB070D30 Panel Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [69 x i8] c"panel_ronbo_rb070d30.file=drivers/gpu/drm/panel/panel-ronbo-rb070d30\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [33 x i8] c"panel_ronbo_rb070d30.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"panel-ronbo-rb070d30\00", [43 x i8] zeroinitializer }, align 32
@rb070d30_panel_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ronbo,rb070d30\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vcc-lcd\00", [24 x i8] zeroinitializer }, align 32
@rb070d30_panel_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr @rb070d30_panel_prepare, ptr @rb070d30_panel_enable, ptr @rb070d30_panel_disable, ptr @rb070d30_panel_unprepare, ptr @rb070d30_panel_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"reset\00", [26 x i8] zeroinitializer }, align 32
@rb070d30_panel_dsi_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 162, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our reset GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rb070d30_panel_dsi_probe\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"drivers/gpu/drm/panel/panel-ronbo-rb070d30.c\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rb070d30_panel_dsi_probe._entry_ptr = internal global ptr @rb070d30_panel_dsi_probe._entry, section ".printk_index", align 4
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"power\00", [26 x i8] zeroinitializer }, align 32
@rb070d30_panel_dsi_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 168, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Couldn't get our power GPIO\0A\00", [35 x i8] zeroinitializer }, align 32
@rb070d30_panel_dsi_probe._entry_ptr.11 = internal global ptr @rb070d30_panel_dsi_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"updn\00", [27 x i8] zeroinitializer }, align 32
@rb070d30_panel_dsi_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.4, ptr @.str.5, i32 178, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't get our updn GPIO\0A\00", [36 x i8] zeroinitializer }, align 32
@rb070d30_panel_dsi_probe._entry_ptr.15 = internal global ptr @rb070d30_panel_dsi_probe._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"shlr\00", [27 x i8] zeroinitializer }, align 32
@rb070d30_panel_dsi_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.5, i32 188, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't get our shlr GPIO\0A\00", [36 x i8] zeroinitializer }, align 32
@rb070d30_panel_dsi_probe._entry_ptr.19 = internal global ptr @rb070d30_panel_dsi_probe._entry.17, section ".printk_index", align 4
@rb070d30_panel_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 52, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to enable supply: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rb070d30_panel_prepare\00", [41 x i8] zeroinitializer }, align 32
@rb070d30_panel_prepare._entry_ptr = internal global ptr @rb070d30_panel_prepare._entry, section ".printk_index", align 4
@rb070d30_panel_get_modes.bus_format = internal constant { i32, [28 x i8] } { i32 4106, [28 x i8] zeroinitializer }, align 32
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 51206, i16 1024, i16 1184, i16 1264, i16 1344, i16 0, i16 600, i16 612, i16 622, i16 635, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 154, i16 85, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@rb070d30_panel_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.5, i32 115, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [66 x i8], [62 x i8] } { [66 x i8] c"Failed to add mode \22%s\22: %d %d %d %d %d %d %d %d %d %d 0x%x 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rb070d30_panel_get_modes\00", [39 x i8] zeroinitializer }, align 32
@rb070d30_panel_get_modes._entry_ptr = internal global ptr @rb070d30_panel_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.24 = private unnamed_addr constant [22 x i8] c"rb070d30_panel_driver\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 227, i32 31 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 231, i32 11 }
@___asan_gen_.30 = private unnamed_addr constant [24 x i8] c"rb070d30_panel_of_match\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 221, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 150, i32 46 }
@___asan_gen_.36 = private unnamed_addr constant [21 x i8] c"rb070d30_panel_funcs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 133, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 160, i32 47 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 162, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 166, i32 47 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 168, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 176, i32 46 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 178, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 186, i32 46 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 188, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 52, i32 3 }
@___asan_gen_.96 = private unnamed_addr constant [11 x i8] c"bus_format\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 110, i32 19 }
@___asan_gen_.99 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 90, i32 38 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [48 x i8] c"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 114, i32 3 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @__UNIQUE_ID_author303, ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__exitcall_rb070d30_panel_driver_exit, ptr @__initcall__kmod_panel_ronbo_rb070d30__302_235_rb070d30_panel_driver_init6, ptr @rb070d30_panel_driver_exit, ptr @rb070d30_panel_dsi_probe._entry, ptr @rb070d30_panel_dsi_probe._entry.13, ptr @rb070d30_panel_dsi_probe._entry.17, ptr @rb070d30_panel_dsi_probe._entry.9, ptr @rb070d30_panel_dsi_probe._entry_ptr, ptr @rb070d30_panel_dsi_probe._entry_ptr.11, ptr @rb070d30_panel_dsi_probe._entry_ptr.15, ptr @rb070d30_panel_dsi_probe._entry_ptr.19, ptr @rb070d30_panel_get_modes._entry, ptr @rb070d30_panel_get_modes._entry_ptr, ptr @rb070d30_panel_prepare._entry, ptr @rb070d30_panel_prepare._entry_ptr, ptr @rb070d30_panel_driver, ptr @.str, ptr @rb070d30_panel_of_match, ptr @.str.1, ptr @rb070d30_panel_funcs, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @rb070d30_panel_get_modes.bus_format, ptr @default_mode, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_driver to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_dsi_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_dsi_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_dsi_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_dsi_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_get_modes.bus_format to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rb070d30_panel_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 66, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rb070d30_panel_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @mipi_dsi_driver_register_full(ptr noundef nonnull @rb070d30_panel_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rb070d30_panel_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mipi_dsi_driver_unregister(ptr noundef nonnull @rb070d30_panel_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mipi_dsi_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_driver_register_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb070d30_panel_dsi_probe(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 48, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_regulator_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #4
  %supply = getelementptr inbounds %struct.rb070d30_panel, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %supply, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end8

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dsi9 = getelementptr inbounds %struct.rb070d30_panel, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %dsi9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dsi, ptr %dsi9, align 4
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %dev, ptr noundef nonnull @rb070d30_panel_funcs, i32 noundef 16) #4
  %call12 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef 3) #4
  %gpios = getelementptr inbounds %struct.rb070d30_panel, ptr %call.i, i32 0, i32 3
  %reset = getelementptr inbounds %struct.rb070d30_panel, ptr %call.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %reset to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call12, ptr %reset, align 4
  %cmp.i118 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i118, label %do.end, label %if.end21

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3) #7
  %5 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %reset, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end8
  %call23 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef 3) #4
  %8 = ptrtoint ptr %gpios to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call23, ptr %gpios, align 4
  %cmp.i119 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i119, label %do.end31, label %if.end36

do.end31:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  %9 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %gpios, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end36:                                         ; preds = %if.end21
  %call38 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef 3) #4
  %updn = getelementptr inbounds %struct.rb070d30_panel, ptr %call.i, i32 0, i32 3, i32 2
  %12 = ptrtoint ptr %updn to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call38, ptr %updn, align 4
  %cmp.i120 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %do.end46, label %if.end51

do.end46:                                         ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #7
  %13 = ptrtoint ptr %updn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %updn, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end51:                                         ; preds = %if.end36
  %call53 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 3) #4
  %shlr = getelementptr inbounds %struct.rb070d30_panel, ptr %call.i, i32 0, i32 3, i32 3
  %16 = ptrtoint ptr %shlr to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call53, ptr %shlr, align 4
  %cmp.i121 = icmp ugt ptr %call53, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i121, label %do.end61, label %if.end66

do.end61:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #7
  %17 = ptrtoint ptr %shlr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %shlr, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end66:                                         ; preds = %if.end51
  %call68 = tail call i32 @drm_panel_of_backlight(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #4
  %mode_flags = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 6
  %20 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2051, ptr %mode_flags, align 8
  %format = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 5
  %21 = ptrtoint ptr %format to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %format, align 4
  %lanes = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 4
  %22 = ptrtoint ptr %lanes to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 4, ptr %lanes, align 8
  %call73 = tail call i32 @mipi_dsi_attach(ptr noundef %dsi) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp = icmp slt i32 %call73, 0
  br i1 %cmp, label %if.then74, label %if.end71.cleanup_crit_edge

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_panel_remove(ptr noundef nonnull %call.i) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then74, %if.end71.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %do.end61, %do.end46, %do.end31, %do.end, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ %7, %do.end ], [ %11, %do.end31 ], [ %15, %do.end46 ], [ %19, %do.end61 ], [ %call73, %if.then74 ], [ -12, %entry.cleanup_crit_edge ], [ %call68, %if.end66.cleanup_crit_edge ], [ 0, %if.end71.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb070d30_panel_dsi_remove(ptr noundef %dsi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.mipi_dsi_device, ptr %dsi, i32 0, i32 1, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @mipi_dsi_detach(ptr noundef %dsi) #4
  tail call void @drm_panel_remove(ptr noundef %1) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_of_backlight(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_attach(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb070d30_panel_prepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %supply = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 2
  %0 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %supply, align 4
  %call1 = tail call i32 @regulator_enable(ptr noundef %1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dsi = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi, align 4
  %dev = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call1) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @msleep(i32 noundef 20) #4
  %gpios = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 3
  %4 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %gpios, align 4
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef 1) #4
  tail call void @msleep(i32 noundef 20) #4
  %reset = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 1) #4
  tail call void @msleep(i32 noundef 20) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %call1, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb070d30_panel_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb070d30_panel_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dsi = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 1
  %0 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dsi, align 4
  %call1 = tail call i32 @mipi_dsi_dcs_enter_sleep_mode(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb070d30_panel_unprepare(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %gpios = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 3
  %reset = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %reset to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reset, align 4
  tail call void @gpiod_set_value(ptr noundef %1, i32 noundef 0) #4
  %2 = ptrtoint ptr %gpios to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpios, align 4
  tail call void @gpiod_set_value(ptr noundef %3, i32 noundef 0) #4
  %supply = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 2
  %4 = ptrtoint ptr %supply to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %supply, align 4
  %call2 = tail call i32 @regulator_disable(ptr noundef %5) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rb070d30_panel_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call1 = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @default_mode) #4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dsi = getelementptr inbounds %struct.rb070d30_panel, ptr %panel, i32 0, i32 1
  %2 = ptrtoint ptr %dsi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dsi, align 4
  %dev2 = getelementptr inbounds %struct.mipi_dsi_device, ptr %3, i32 0, i32 1
  %call3 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev2, ptr noundef nonnull @.str.22, ptr noundef getelementptr inbounds (%struct.drm_display_mode, ptr @default_mode, i32 0, i32 31), i32 noundef %call3, i32 noundef 51206, i32 noundef 1024, i32 noundef 1184, i32 noundef 1264, i32 noundef 1344, i32 noundef 600, i32 noundef 612, i32 noundef 622, i32 noundef 635, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @drm_mode_set_name(ptr noundef nonnull %call1) #4
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call1) #4
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %bpc = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 2
  %5 = ptrtoint ptr %bpc to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %bpc, align 8
  %width_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 26
  %6 = ptrtoint ptr %width_mm to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %width_mm, align 2
  %conv12 = zext i16 %7 to i32
  %8 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv12, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_display_mode, ptr %call1, i32 0, i32 27
  %9 = ptrtoint ptr %height_mm to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %height_mm, align 4
  %conv15 = zext i16 %10 to i32
  %height_mm17 = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %11 = ptrtoint ptr %height_mm17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv15, ptr %height_mm17, align 4
  %call19 = tail call i32 @drm_display_info_set_bus_formats(ptr noundef %display_info, ptr noundef nonnull @rb070d30_panel_get_modes.bus_format, i32 noundef 1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_dcs_exit_sleep_mode(ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @drm_display_info_set_bus_formats(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mipi_dsi_detach(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !24, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_panel_ronbo_rb070d30__302_235_rb070d30_panel_driver_init6, !1, !"__initcall__kmod_panel_ronbo_rb070d30__302_235_rb070d30_panel_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 235, i32 1}
!2 = !{ptr @__exitcall_rb070d30_panel_driver_exit, !1, !"__exitcall_rb070d30_panel_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author303, !4, !"__UNIQUE_ID_author303", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 237, i32 1}
!5 = !{ptr @__UNIQUE_ID_author304, !6, !"__UNIQUE_ID_author304", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 238, i32 1}
!7 = !{ptr @__UNIQUE_ID_description305, !8, !"__UNIQUE_ID_description305", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 239, i32 1}
!9 = !{ptr @__UNIQUE_ID_file306, !10, !"__UNIQUE_ID_file306", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 240, i32 1}
!11 = !{ptr @__UNIQUE_ID_license307, !10, !"__UNIQUE_ID_license307", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 231, i32 11}
!14 = !{ptr @rb070d30_panel_driver, !15, !"rb070d30_panel_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 227, i32 31}
!16 = !{ptr @rb070d30_panel_of_match, !17, !"rb070d30_panel_of_match", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 221, i32 34}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 150, i32 46}
!20 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 160, i32 47}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 162, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @rb070d30_panel_dsi_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @rb070d30_panel_dsi_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 166, i32 47}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 168, i32 3}
!34 = !{ptr @rb070d30_panel_dsi_probe._entry.9, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @rb070d30_panel_dsi_probe._entry_ptr.11, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 176, i32 46}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 178, i32 3}
!40 = !{ptr @rb070d30_panel_dsi_probe._entry.13, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @rb070d30_panel_dsi_probe._entry_ptr.15, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 186, i32 46}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 188, i32 3}
!46 = !{ptr @rb070d30_panel_dsi_probe._entry.17, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @rb070d30_panel_dsi_probe._entry_ptr.19, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @rb070d30_panel_funcs, !49, !"rb070d30_panel_funcs", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 133, i32 37}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 52, i32 3}
!52 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rb070d30_panel_prepare._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rb070d30_panel_prepare._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @rb070d30_panel_get_modes.bus_format, !56, !"bus_format", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 110, i32 19}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 114, i32 3}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @rb070d30_panel_get_modes._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @rb070d30_panel_get_modes._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @default_mode, !63, !"default_mode", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/panel/panel-ronbo-rb070d30.c", i32 90, i32 38}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
