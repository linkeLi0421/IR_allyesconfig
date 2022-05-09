; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/panel/panel-lg-lg4573.c_pt.bc'
source_filename = "../drivers/gpu/drm/panel/panel-lg-lg4573.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spi_driver = type { ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.lg4573 = type { %struct.drm_panel, ptr, %struct.videomode }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.videomode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
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
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }

@__initcall__kmod_panel_lg_lg4573__309_293_lg4573_driver_init6 = internal global ptr @lg4573_driver_init, section ".initcall6.init", align 4
@lg4573_driver = internal global { %struct.spi_driver, [36 x i8] } { %struct.spi_driver { ptr null, ptr @lg4573_probe, ptr @lg4573_remove, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lg4573_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null } }, [36 x i8] zeroinitializer }, align 32
@__exitcall_lg4573_driver_exit = internal global ptr @lg4573_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author310 = internal constant [51 x i8] c"panel_lg_lg4573.author=Heiko Schocher <hs@denx.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description311 = internal constant [46 x i8] c"panel_lg_lg4573.description=lg4573 LCD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [59 x i8] c"panel_lg_lg4573.file=drivers/gpu/drm/panel/panel-lg-lg4573\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [31 x i8] c"panel_lg_lg4573.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lg4573\00", [25 x i8] zeroinitializer }, align 32
@lg4573_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lg,lg4573\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lg4573_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 257, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SPI setup failed: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lg4573_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/gpu/drm/panel/panel-lg-lg4573.c\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lg4573_probe._entry_ptr = internal global ptr @lg4573_probe._entry, section ".printk_index", align 4
@lg4573_drm_funcs = internal constant { %struct.drm_panel_funcs, [40 x i8] } { %struct.drm_panel_funcs { ptr null, ptr @lg4573_enable, ptr @lg4573_disable, ptr null, ptr @lg4573_get_modes, ptr null }, [40 x i8] zeroinitializer }, align 32
@lg4573_init.__UNIQUE_ID_ddebug308 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.7, ptr @.str.3, ptr @.str.8, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"panel_lg_lg4573\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lg4573_init\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"initializing LCD\0A\00", [46 x i8] zeroinitializer }, align 32
@lg4573_display_mode_settings.display_mode_settings = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 28730, i16 29296, i16 28849, i16 29192, i16 29243, i16 29199, i16 28850, i16 29184, i16 29384, i16 28851, i16 29184, i16 28852, i16 29184, i16 28853, i16 29250, i16 29200, i16 29200, i16 29184, i16 29216, i16 28854, i16 29195, i16 29199, i16 29244, i16 29203, i16 29203, i16 29416, i16 28855, i16 29254, i16 29190, i16 29196, i16 29184, i16 29184], [32 x i8] zeroinitializer }, align 32
@lg4573_display_mode_settings.__UNIQUE_ID_ddebug305 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 28, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"lg4573_display_mode_settings\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"transfer display mode settings\0A\00", [32 x i8] zeroinitializer }, align 32
@lg4573_spi_write_u16.__UNIQUE_ID_ddebug304 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 12, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"lg4573_spi_write_u16\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"writing data: %x\0A\00", [46 x i8] zeroinitializer }, align 32
@lg4573_power_settings.power_settings = internal constant { [21 x i16], [54 x i8] } { [21 x i16] [i16 28864, i16 29185, i16 29201, i16 28867, i16 29191, i16 29187, i16 29188, i16 29188, i16 29188, i16 28868, i16 29202, i16 29220, i16 29208, i16 29208, i16 29186, i16 29257, i16 28869, i16 29295, i16 28870, i16 29249, i16 29283], [54 x i8] zeroinitializer }, align 32
@lg4573_power_settings.__UNIQUE_ID_ddebug306 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.13, ptr @.str.3, ptr @.str.14, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lg4573_power_settings\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"transfer power settings\0A\00", [39 x i8] zeroinitializer }, align 32
@lg4573_gamma_settings.gamma_settings = internal constant { [60 x i16], [40 x i8] } { [60 x i16] [i16 28880, i16 29187, i16 29191, i16 29299, i16 29237, i16 29184, i16 29185, i16 29216, i16 29184, i16 29187, i16 28881, i16 29187, i16 29191, i16 29299, i16 29237, i16 29184, i16 29185, i16 29216, i16 29184, i16 29187, i16 28882, i16 29187, i16 29191, i16 29299, i16 29237, i16 29184, i16 29185, i16 29216, i16 29184, i16 29187, i16 28883, i16 29187, i16 29191, i16 29299, i16 29237, i16 29184, i16 29185, i16 29216, i16 29184, i16 29187, i16 28884, i16 29187, i16 29191, i16 29299, i16 29237, i16 29184, i16 29185, i16 29216, i16 29184, i16 29187, i16 28885, i16 29187, i16 29191, i16 29299, i16 29237, i16 29184, i16 29185, i16 29216, i16 29184, i16 29187], [40 x i8] zeroinitializer }, align 32
@lg4573_gamma_settings.__UNIQUE_ID_ddebug307 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.15, ptr @.str.3, ptr @.str.16, i8 0, i8 39, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"lg4573_gamma_settings\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"transfer gamma settings\0A\00", [39 x i8] zeroinitializer }, align 32
@default_mode = internal constant { %struct.drm_display_mode, [48 x i8] } { %struct.drm_display_mode { i32 28341, i16 480, i16 490, i16 549, i16 559, i16 0, i16 800, i16 815, i16 830, i16 845, i16 0, i32 0, i32 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i8 0, i8 0, %struct.list_head zeroinitializer, [32 x i8] zeroinitializer, i32 0, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lg4573_get_modes._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.3, i32 220, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to add mode %ux%ux@%u\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"lg4573_get_modes\00", [47 x i8] zeroinitializer }, align 32
@lg4573_get_modes._entry_ptr = internal global ptr @lg4573_get_modes._entry, section ".printk_index", align 4
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"lg4573_driver\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 285, i32 26 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 289, i32 11 }
@___asan_gen_.25 = private unnamed_addr constant [16 x i8] c"lg4573_of_match\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 279, i32 34 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 257, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"lg4573_drm_funcs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 235, i32 37 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 165, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"display_mode_settings\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 104, i32 19 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 115, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 48, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"power_settings\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 122, i32 19 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 131, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [15 x i8] c"gamma_settings\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 138, i32 19 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 156, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [13 x i8] c"default_mode\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 199, i32 38 }
@___asan_gen_.94 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.101 = private constant [43 x i8] c"../drivers/gpu/drm/panel/panel-lg-lg4573.c\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.101, i32 218, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__UNIQUE_ID_author310, ptr @__UNIQUE_ID_description311, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_lg4573_driver_exit, ptr @__initcall__kmod_panel_lg_lg4573__309_293_lg4573_driver_init6, ptr @lg4573_driver_exit, ptr @lg4573_get_modes._entry, ptr @lg4573_get_modes._entry_ptr, ptr @lg4573_probe._entry, ptr @lg4573_probe._entry_ptr, ptr @lg4573_driver, ptr @.str, ptr @lg4573_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @lg4573_drm_funcs, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @lg4573_display_mode_settings.display_mode_settings, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @lg4573_power_settings.power_settings, ptr @.str.13, ptr @.str.14, ptr @lg4573_gamma_settings.gamma_settings, ptr @.str.15, ptr @.str.16, ptr @default_mode, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4573_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4573_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4573_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4573_drm_funcs to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4573_display_mode_settings.display_mode_settings to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4573_power_settings.power_settings to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4573_gamma_settings.gamma_settings to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_mode to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lg4573_get_modes._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4573_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__spi_register_driver(ptr noundef null, ptr noundef nonnull @lg4573_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lg4573_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @driver_unregister(ptr noundef getelementptr inbounds (%struct.spi_driver, ptr @lg4573_driver, i32 0, i32 4)) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__spi_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4573_probe(ptr noundef %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %spi, i32 noundef 68, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %spi1 = getelementptr inbounds %struct.lg4573, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %spi1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %spi, ptr %spi1, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %bits_per_word = getelementptr inbounds %struct.spi_device, ptr %spi, i32 0, i32 5
  %2 = ptrtoint ptr %bits_per_word to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 8, ptr %bits_per_word, align 1
  %call2 = tail call i32 @spi_setup(ptr noundef %spi) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %spi, ptr noundef nonnull @.str.1, i32 noundef %call2) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_panel_init(ptr noundef nonnull %call.i, ptr noundef %spi, ptr noundef nonnull @lg4573_drm_funcs, i32 noundef 17) #5
  tail call void @drm_panel_add(ptr noundef nonnull %call.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %do.end ], [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4573_remove(ptr nocapture noundef readonly %spi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %spi, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @lg4573_display_off(ptr noundef %1)
  tail call void @drm_panel_remove(ptr noundef %1) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_panel_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4573_enable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @lg4573_init(ptr noundef %panel)
  %call.i = tail call fastcc i32 @lg4573_display_on(ptr noundef %panel) #5
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4573_disable(ptr nocapture noundef readonly %panel) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call fastcc i32 @lg4573_display_off(ptr noundef %panel)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lg4573_get_modes(ptr nocapture noundef readonly %panel, ptr noundef %connector) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %connector to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %connector, align 8
  %call = tail call ptr @drm_mode_duplicate(ptr noundef %1, ptr noundef nonnull @default_mode) #5
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %panel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %panel, align 4
  %call3 = tail call i32 @drm_mode_vrefresh(ptr noundef nonnull @default_mode) #5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.17, i32 noundef 480, i32 noundef 800, i32 noundef %call3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @drm_mode_set_name(ptr noundef nonnull %call) #5
  %type = getelementptr inbounds %struct.drm_display_mode, ptr %call, i32 0, i32 28
  %4 = ptrtoint ptr %type to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 72, ptr %type, align 2
  tail call void @drm_mode_probed_add(ptr noundef %connector, ptr noundef nonnull %call) #5
  %display_info = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20
  %5 = ptrtoint ptr %display_info to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 61, ptr %display_info, align 8
  %height_mm = getelementptr inbounds %struct.drm_connector, ptr %connector, i32 0, i32 20, i32 1
  %6 = ptrtoint ptr %height_mm to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 103, ptr %height_mm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 1, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @lg4573_init(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lg4573_init.__UNIQUE_ID_ddebug308, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lg4573_init, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !69

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lg4573_init.__UNIQUE_ID_ddebug308, ptr noundef %1, ptr noundef nonnull @.str.8) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lg4573_display_mode_settings.__UNIQUE_ID_ddebug305, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lg4573_init, %if.then.i)) #5
          to label %lg4573_display_mode_settings.exit [label %if.then.i], !srcloc !69

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lg4573_display_mode_settings.__UNIQUE_ID_ddebug305, ptr noundef %3, ptr noundef nonnull @.str.10) #5
  br label %lg4573_display_mode_settings.exit

lg4573_display_mode_settings.exit:                ; preds = %if.then.i, %do.end
  %call3.i = tail call fastcc i32 @lg4573_spi_write_u16_array(ptr noundef %ctx, ptr noundef nonnull @lg4573_display_mode_settings.display_mode_settings, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not, label %if.end6, label %lg4573_display_mode_settings.exit.cleanup_crit_edge

lg4573_display_mode_settings.exit.cleanup_crit_edge: ; preds = %lg4573_display_mode_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %lg4573_display_mode_settings.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lg4573_power_settings.__UNIQUE_ID_ddebug306, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lg4573_init, %if.then.i1)) #5
          to label %lg4573_power_settings.exit [label %if.then.i1], !srcloc !69

if.then.i1:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lg4573_power_settings.__UNIQUE_ID_ddebug306, ptr noundef %5, ptr noundef nonnull @.str.14) #5
  br label %lg4573_power_settings.exit

lg4573_power_settings.exit:                       ; preds = %if.then.i1, %if.end6
  %call3.i2 = tail call fastcc i32 @lg4573_spi_write_u16_array(ptr noundef %ctx, ptr noundef nonnull @lg4573_power_settings.power_settings, i32 noundef 21) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i2)
  %tobool8.not = icmp eq i32 %call3.i2, 0
  br i1 %tobool8.not, label %if.end10, label %lg4573_power_settings.exit.cleanup_crit_edge

lg4573_power_settings.exit.cleanup_crit_edge:     ; preds = %lg4573_power_settings.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %lg4573_power_settings.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lg4573_gamma_settings.__UNIQUE_ID_ddebug307, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lg4573_init, %if.then.i3)) #5
          to label %lg4573_gamma_settings.exit [label %if.then.i3], !srcloc !69

if.then.i3:                                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lg4573_gamma_settings.__UNIQUE_ID_ddebug307, ptr noundef %7, ptr noundef nonnull @.str.16) #5
  br label %lg4573_gamma_settings.exit

lg4573_gamma_settings.exit:                       ; preds = %if.then.i3, %if.end10
  %call3.i4 = tail call fastcc i32 @lg4573_spi_write_u16_array(ptr noundef %ctx, ptr noundef nonnull @lg4573_gamma_settings.gamma_settings, i32 noundef 60) #5
  br label %cleanup

cleanup:                                          ; preds = %lg4573_gamma_settings.exit, %lg4573_power_settings.exit.cleanup_crit_edge, %lg4573_display_mode_settings.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg4573_spi_write_u16_array(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %buffer, i32 noundef %count) unnamed_addr #2 align 64 {
entry:
  %xfer.i = alloca %struct.spi_transfer, align 4
  %temp.i = alloca i16, align 2
  %msg.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp5.not = icmp eq i32 %count, 0
  br i1 %cmp5.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %0 = getelementptr inbounds i8, ptr %xfer.i, i32 4
  %1 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %xfer.i, i32 0, i32 2
  %2 = getelementptr inbounds i8, ptr %msg.i, i32 8
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i, i32 0, i32 1
  %resources.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10
  %prev.i2.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i, i32 0, i32 10, i32 1
  %transfer_list.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18
  %prev3.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i, i32 0, i32 18, i32 1
  %spi.i = getelementptr inbounds %struct.lg4573, ptr %ctx, i32 0, i32 1
  br label %for.body

for.cond:                                         ; preds = %lg4573_spi_write_u16.exit
  %inc = add nuw i32 %i.06, 1
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.06 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr i16, ptr %buffer, i32 %i.06
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i) #5
  %5 = call ptr @memset(ptr %0, i32 0, i32 92)
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i) #5
  %7 = ptrtoint ptr %temp.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %4, ptr %temp.i, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lg4573_spi_write_u16_array, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !69

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctx, align 4
  %conv.i = zext i16 %4 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, ptr noundef %9, ptr noundef nonnull @.str.12, i32 noundef %conv.i) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %for.body
  %10 = ptrtoint ptr %xfer.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %temp.i, ptr %xfer.i, align 4
  %11 = call ptr @memset(ptr %2, i32 0, i32 40)
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %msg.i, ptr %msg.i, align 4
  %13 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %msg.i, ptr %prev.i.i.i.i, align 4
  %14 = ptrtoint ptr %resources.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %resources.i.i.i, ptr %resources.i.i.i, align 4
  %15 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %resources.i.i.i, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i, ptr noundef nonnull %msg.i, ptr noundef nonnull %msg.i) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %do.end.i.lg4573_spi_write_u16.exit_crit_edge

do.end.i.lg4573_spi_write_u16.exit_crit_edge:     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lg4573_spi_write_u16.exit

if.end.i.i.i.i:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %transfer_list.i.i, ptr %prev.i.i.i.i, align 4
  %17 = ptrtoint ptr %transfer_list.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %msg.i, ptr %transfer_list.i.i, align 4
  %18 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %msg.i, ptr %prev3.i.i.i.i, align 4
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %transfer_list.i.i, ptr %msg.i, align 4
  br label %lg4573_spi_write_u16.exit

lg4573_spi_write_u16.exit:                        ; preds = %if.end.i.i.i.i, %do.end.i.lg4573_spi_write_u16.exit_crit_edge
  %20 = ptrtoint ptr %spi.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %spi.i, align 4
  %call3.i = call i32 @spi_sync(ptr noundef %21, ptr noundef nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not = icmp eq i32 %call3.i, 0
  br i1 %tobool.not, label %for.cond, label %lg4573_spi_write_u16.exit.cleanup_crit_edge

lg4573_spi_write_u16.exit.cleanup_crit_edge:      ; preds = %lg4573_spi_write_u16.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %lg4573_spi_write_u16.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ %call3.i, %lg4573_spi_write_u16.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_sync(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg4573_display_on(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %xfer.i.i4 = alloca %struct.spi_transfer, align 4
  %temp.i.i5 = alloca i16, align 2
  %msg.i.i6 = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca %struct.spi_transfer, align 4
  %temp.i.i = alloca i16, align 2
  %msg.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i) #5
  %0 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %xfer.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i.i) #5
  %4 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 28689, ptr %temp.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lg4573_display_on, %if.then.i.i)) #5
          to label %do.end.i.i [label %if.then.i.i], !srcloc !69

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef 28689) #5
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %entry
  %7 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %temp.i.i, ptr %xfer.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %do.end.i.i.lg4573_spi_write_dcs.exit_crit_edge

do.end.i.i.lg4573_spi_write_dcs.exit_crit_edge:   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lg4573_spi_write_dcs.exit

if.end.i.i.i.i.i:                                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %lg4573_spi_write_dcs.exit

lg4573_spi_write_dcs.exit:                        ; preds = %if.end.i.i.i.i.i, %do.end.i.i.lg4573_spi_write_dcs.exit_crit_edge
  %spi.i.i = getelementptr inbounds %struct.lg4573, ptr %ctx, i32 0, i32 1
  %18 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i.i, align 4
  %call3.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not, label %if.end, label %lg4573_spi_write_dcs.exit.cleanup_crit_edge

lg4573_spi_write_dcs.exit.cleanup_crit_edge:      ; preds = %lg4573_spi_write_dcs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lg4573_spi_write_dcs.exit
  call void @msleep(i32 noundef 5) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i4) #5
  %20 = getelementptr inbounds i8, ptr %xfer.i.i4, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 92)
  %22 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %xfer.i.i4, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i.i5) #5
  %24 = ptrtoint ptr %temp.i.i5 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 28713, ptr %temp.i.i5, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i6) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lg4573_display_on, %if.then.i.i7)) #5
          to label %do.end.i.i13 [label %if.then.i.i7], !srcloc !69

if.then.i.i7:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, ptr noundef %26, ptr noundef nonnull @.str.12, i32 noundef 28713) #5
  br label %do.end.i.i13

do.end.i.i13:                                     ; preds = %if.then.i.i7, %if.end
  %27 = ptrtoint ptr %xfer.i.i4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %temp.i.i5, ptr %xfer.i.i4, align 4
  %28 = getelementptr inbounds i8, ptr %msg.i.i6, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i6, ptr %msg.i.i6, align 4
  %prev.i.i.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %msg.i.i6, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i6, ptr %prev.i.i.i.i.i8, align 4
  %resources.i.i.i.i9 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i6, i32 0, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i9, ptr %resources.i.i.i.i9, align 4
  %prev.i2.i.i.i.i10 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i6, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i9, ptr %prev.i2.i.i.i.i10, align 4
  %transfer_list.i.i.i11 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i4, i32 0, i32 18
  %call.i.i.i.i.i12 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i11, ptr noundef nonnull %msg.i.i6, ptr noundef nonnull %msg.i.i6) #5
  br i1 %call.i.i.i.i.i12, label %if.end.i.i.i.i.i15, label %do.end.i.i13.lg4573_spi_write_dcs.exit18_crit_edge

do.end.i.i13.lg4573_spi_write_dcs.exit18_crit_edge: ; preds = %do.end.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %lg4573_spi_write_dcs.exit18

if.end.i.i.i.i.i15:                               ; preds = %do.end.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %prev.i.i.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.i.i11, ptr %prev.i.i.i.i.i8, align 4
  %35 = ptrtoint ptr %transfer_list.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i6, ptr %transfer_list.i.i.i11, align 4
  %prev3.i.i.i.i.i14 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i4, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i6, ptr %prev3.i.i.i.i.i14, align 4
  %37 = ptrtoint ptr %msg.i.i6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.i.i11, ptr %msg.i.i6, align 4
  br label %lg4573_spi_write_dcs.exit18

lg4573_spi_write_dcs.exit18:                      ; preds = %if.end.i.i.i.i.i15, %do.end.i.i13.lg4573_spi_write_dcs.exit18_crit_edge
  %38 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spi.i.i, align 4
  %call3.i.i17 = call i32 @spi_sync(ptr noundef %39, ptr noundef nonnull %msg.i.i6) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i6) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i.i5) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i4) #5
  br label %cleanup

cleanup:                                          ; preds = %lg4573_spi_write_dcs.exit18, %lg4573_spi_write_dcs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i.i17, %lg4573_spi_write_dcs.exit18 ], [ %call3.i.i, %lg4573_spi_write_dcs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @lg4573_display_off(ptr nocapture noundef readonly %ctx) unnamed_addr #2 align 64 {
entry:
  %xfer.i.i4 = alloca %struct.spi_transfer, align 4
  %temp.i.i5 = alloca i16, align 2
  %msg.i.i6 = alloca %struct.spi_message, align 4
  %xfer.i.i = alloca %struct.spi_transfer, align 4
  %temp.i.i = alloca i16, align 2
  %msg.i.i = alloca %struct.spi_message, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i) #5
  %0 = getelementptr inbounds i8, ptr %xfer.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 92)
  %2 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %xfer.i.i, i32 0, i32 2
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i.i) #5
  %4 = ptrtoint ptr %temp.i.i to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 28712, ptr %temp.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lg4573_display_off, %if.then.i.i)) #5
          to label %do.end.i.i [label %if.then.i.i], !srcloc !69

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, ptr noundef %6, ptr noundef nonnull @.str.12, i32 noundef 28712) #5
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i, %entry
  %7 = ptrtoint ptr %xfer.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %temp.i.i, ptr %xfer.i.i, align 4
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 40)
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %msg.i.i, ptr %msg.i.i, align 4
  %prev.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %msg.i.i, ptr %prev.i.i.i.i.i, align 4
  %resources.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10
  %12 = ptrtoint ptr %resources.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %resources.i.i.i.i, ptr %resources.i.i.i.i, align 4
  %prev.i2.i.i.i.i = getelementptr inbounds %struct.spi_message, ptr %msg.i.i, i32 0, i32 10, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %resources.i.i.i.i, ptr %prev.i2.i.i.i.i, align 4
  %transfer_list.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18
  %call.i.i.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i, ptr noundef nonnull %msg.i.i, ptr noundef nonnull %msg.i.i) #5
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %do.end.i.i.lg4573_spi_write_dcs.exit_crit_edge

do.end.i.i.lg4573_spi_write_dcs.exit_crit_edge:   ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lg4573_spi_write_dcs.exit

if.end.i.i.i.i.i:                                 ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %transfer_list.i.i.i, ptr %prev.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %transfer_list.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %msg.i.i, ptr %transfer_list.i.i.i, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i, i32 0, i32 18, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %msg.i.i, ptr %prev3.i.i.i.i.i, align 4
  %17 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %transfer_list.i.i.i, ptr %msg.i.i, align 4
  br label %lg4573_spi_write_dcs.exit

lg4573_spi_write_dcs.exit:                        ; preds = %if.end.i.i.i.i.i, %do.end.i.i.lg4573_spi_write_dcs.exit_crit_edge
  %spi.i.i = getelementptr inbounds %struct.lg4573, ptr %ctx, i32 0, i32 1
  %18 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %spi.i.i, align 4
  %call3.i.i = call i32 @spi_sync(ptr noundef %19, ptr noundef nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i.i) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool.not = icmp eq i32 %call3.i.i, 0
  br i1 %tobool.not, label %if.end, label %lg4573_spi_write_dcs.exit.cleanup_crit_edge

lg4573_spi_write_dcs.exit.cleanup_crit_edge:      ; preds = %lg4573_spi_write_dcs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lg4573_spi_write_dcs.exit
  call void @msleep(i32 noundef 120) #5
  call void @llvm.lifetime.start.p0(i64 96, ptr nonnull %xfer.i.i4) #5
  %20 = getelementptr inbounds i8, ptr %xfer.i.i4, i32 4
  %21 = call ptr @memset(ptr %20, i32 0, i32 92)
  %22 = getelementptr inbounds { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, { i16, i8, [1 x i8] }, [2 x i8], i32, i32, i32, i32, ptr, i8, [3 x i8], %struct.list_head, i16, [2 x i8] }, ptr %xfer.i.i4, i32 0, i32 2
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 2, ptr %22, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %temp.i.i5) #5
  %24 = ptrtoint ptr %temp.i.i5 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 28688, ptr %temp.i.i5, align 2
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %msg.i.i6) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@lg4573_display_off, %if.then.i.i7)) #5
          to label %do.end.i.i13 [label %if.then.i.i7], !srcloc !69

if.then.i.i7:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctx, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, ptr noundef %26, ptr noundef nonnull @.str.12, i32 noundef 28688) #5
  br label %do.end.i.i13

do.end.i.i13:                                     ; preds = %if.then.i.i7, %if.end
  %27 = ptrtoint ptr %xfer.i.i4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %temp.i.i5, ptr %xfer.i.i4, align 4
  %28 = getelementptr inbounds i8, ptr %msg.i.i6, i32 8
  %29 = call ptr @memset(ptr %28, i32 0, i32 40)
  %30 = ptrtoint ptr %msg.i.i6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %msg.i.i6, ptr %msg.i.i6, align 4
  %prev.i.i.i.i.i8 = getelementptr inbounds %struct.list_head, ptr %msg.i.i6, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %msg.i.i6, ptr %prev.i.i.i.i.i8, align 4
  %resources.i.i.i.i9 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i6, i32 0, i32 10
  %32 = ptrtoint ptr %resources.i.i.i.i9 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %resources.i.i.i.i9, ptr %resources.i.i.i.i9, align 4
  %prev.i2.i.i.i.i10 = getelementptr inbounds %struct.spi_message, ptr %msg.i.i6, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i2.i.i.i.i10 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %resources.i.i.i.i9, ptr %prev.i2.i.i.i.i10, align 4
  %transfer_list.i.i.i11 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i4, i32 0, i32 18
  %call.i.i.i.i.i12 = call zeroext i1 @__list_add_valid(ptr noundef %transfer_list.i.i.i11, ptr noundef nonnull %msg.i.i6, ptr noundef nonnull %msg.i.i6) #5
  br i1 %call.i.i.i.i.i12, label %if.end.i.i.i.i.i15, label %do.end.i.i13.lg4573_spi_write_dcs.exit18_crit_edge

do.end.i.i13.lg4573_spi_write_dcs.exit18_crit_edge: ; preds = %do.end.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  br label %lg4573_spi_write_dcs.exit18

if.end.i.i.i.i.i15:                               ; preds = %do.end.i.i13
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %prev.i.i.i.i.i8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %transfer_list.i.i.i11, ptr %prev.i.i.i.i.i8, align 4
  %35 = ptrtoint ptr %transfer_list.i.i.i11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %msg.i.i6, ptr %transfer_list.i.i.i11, align 4
  %prev3.i.i.i.i.i14 = getelementptr inbounds %struct.spi_transfer, ptr %xfer.i.i4, i32 0, i32 18, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %msg.i.i6, ptr %prev3.i.i.i.i.i14, align 4
  %37 = ptrtoint ptr %msg.i.i6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %transfer_list.i.i.i11, ptr %msg.i.i6, align 4
  br label %lg4573_spi_write_dcs.exit18

lg4573_spi_write_dcs.exit18:                      ; preds = %if.end.i.i.i.i.i15, %do.end.i.i13.lg4573_spi_write_dcs.exit18_crit_edge
  %38 = ptrtoint ptr %spi.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %spi.i.i, align 4
  %call3.i.i17 = call i32 @spi_sync(ptr noundef %39, ptr noundef nonnull %msg.i.i6) #5
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %msg.i.i6) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %temp.i.i5) #5
  call void @llvm.lifetime.end.p0(i64 96, ptr nonnull %xfer.i.i4) #5
  br label %cleanup

cleanup:                                          ; preds = %lg4573_spi_write_dcs.exit18, %lg4573_spi_write_dcs.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3.i.i17, %lg4573_spi_write_dcs.exit18 ], [ %call3.i.i, %lg4573_spi_write_dcs.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !29, !31, !33, !34, !35, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !54, !55, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__initcall__kmod_panel_lg_lg4573__309_293_lg4573_driver_init6, !1, !"__initcall__kmod_panel_lg_lg4573__309_293_lg4573_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 293, i32 1}
!2 = !{ptr @__exitcall_lg4573_driver_exit, !1, !"__exitcall_lg4573_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author310, !4, !"__UNIQUE_ID_author310", i1 false, i1 false}
!4 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 295, i32 1}
!5 = !{ptr @__UNIQUE_ID_description311, !6, !"__UNIQUE_ID_description311", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 296, i32 1}
!7 = !{ptr @__UNIQUE_ID_file312, !8, !"__UNIQUE_ID_file312", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 297, i32 1}
!9 = !{ptr @__UNIQUE_ID_license313, !8, !"__UNIQUE_ID_license313", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 289, i32 11}
!12 = !{ptr @lg4573_driver, !13, !"lg4573_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 285, i32 26}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 257, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @lg4573_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @lg4573_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @lg4573_drm_funcs, !23, !"lg4573_drm_funcs", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 235, i32 37}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 165, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @lg4573_init.__UNIQUE_ID_ddebug308, !25, !"__UNIQUE_ID_ddebug308", i1 false, i1 false}
!29 = !{ptr @lg4573_display_mode_settings.display_mode_settings, !30, !"display_mode_settings", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 104, i32 19}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 115, i32 2}
!33 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @lg4573_display_mode_settings.__UNIQUE_ID_ddebug305, !32, !"__UNIQUE_ID_ddebug305", i1 false, i1 false}
!35 = !{ptr @.str.11, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 48, i32 2}
!37 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @lg4573_spi_write_u16.__UNIQUE_ID_ddebug304, !36, !"__UNIQUE_ID_ddebug304", i1 false, i1 false}
!39 = !{ptr @lg4573_power_settings.power_settings, !40, !"power_settings", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 122, i32 19}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 131, i32 2}
!43 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @lg4573_power_settings.__UNIQUE_ID_ddebug306, !42, !"__UNIQUE_ID_ddebug306", i1 false, i1 false}
!45 = !{ptr @lg4573_gamma_settings.gamma_settings, !46, !"gamma_settings", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 138, i32 19}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 156, i32 2}
!49 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @lg4573_gamma_settings.__UNIQUE_ID_ddebug307, !48, !"__UNIQUE_ID_ddebug307", i1 false, i1 false}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 218, i32 3}
!53 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lg4573_get_modes._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lg4573_get_modes._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @default_mode, !57, !"default_mode", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 199, i32 38}
!58 = !{ptr @lg4573_of_match, !59, !"lg4573_of_match", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/panel/panel-lg-lg4573.c", i32 279, i32 34}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{i64 2148761335, i64 2148761340, i64 2148761353, i64 2148761397, i64 2148761431, i64 2148761452}
