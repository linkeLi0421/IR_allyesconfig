; ModuleID = '/llk/IR_all_yes/drivers/video/backlight/as3711_bl.c_pt.bc'
source_filename = "../drivers/video/backlight/as3711_bl.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.as3711_bl_pdata = type { i8, i32, i8, i32, i32, i32, i8, i8, i8 }
%struct.as3711_bl_supply = type { %struct.as3711_bl_data, %struct.as3711_bl_data, ptr, ptr }
%struct.as3711_bl_data = type { i8, i32, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.as3711 = type { ptr, ptr }

@__initcall__kmod_as3711_bl__309_477_as3711_backlight_driver_init6 = internal global ptr @as3711_backlight_driver_init, section ".initcall6.init", align 4
@as3711_backlight_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @as3711_backlight_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_as3711_backlight_driver_exit = internal global ptr @as3711_backlight_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description310 = internal constant [56 x i8] c"as3711_bl.description=Backlight Driver for AS3711 PMICs\00", section ".modinfo", align 1
@__UNIQUE_ID_author311 = internal constant [62 x i8] c"as3711_bl.author=Guennadi Liakhovetski <g.liakhovetski@gmx.de\00", section ".modinfo", align 1
@__UNIQUE_ID_file312 = internal constant [49 x i8] c"as3711_bl.file=drivers/video/backlight/as3711_bl\00", section ".modinfo", align 1
@__UNIQUE_ID_license313 = internal constant [25 x i8] c"as3711_bl.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_alias314 = internal constant [42 x i8] c"as3711_bl.alias=platform:as3711-backlight\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"as3711-backlight\00", [47 x i8] zeroinitializer }, align 32
@as3711_backlight_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 380, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"No platform data, exiting...\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"as3711_backlight_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/video/backlight/as3711_bl.c\00", [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@as3711_backlight_probe._entry_ptr = internal global ptr @as3711_backlight_probe._entry, section ".printk_index", align 4
@as3711_backlight_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 387, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DT parsing failed: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@as3711_backlight_probe._entry_ptr.8 = internal global ptr @as3711_backlight_probe._entry.6, section ".printk_index", align 4
@as3711_backlight_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 393, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No framebuffer specified\0A\00", [38 x i8] zeroinitializer }, align 32
@as3711_backlight_probe._entry_ptr.11 = internal global ptr @as3711_backlight_probe._entry.9, section ".printk_index", align 4
@as3711_backlight_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 407, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [107 x i8], [53 x i8] } { [107 x i8] c"Attention! An untested mode has been chosen!\0APlease, review the code, enable, test, and report success:-)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@as3711_backlight_probe._entry_ptr.15 = internal global ptr @as3711_backlight_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"backlight\00", [22 x i8] zeroinitializer }, align 32
@as3711_backlight_parse_dt.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.18, ptr @.str.3, ptr @.str.19, i8 0, i8 64, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"as3711_bl\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"as3711_backlight_parse_dt\00", [38 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"backlight node not found\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"su1-dev\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"su1-max-uA\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"su2-dev\00", [24 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"su2-max-uA\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"su2-feedback-voltage\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"su2-feedback-curr1\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"su2-feedback-curr2\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"su2-feedback-curr3\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"su2-feedback-curr-auto\00", [41 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"su2-fbprot-lx-sd4\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"su2-fbprot-gpio2\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"su2-fbprot-gpio3\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"su2-fbprot-gpio4\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"su2-auto-curr1\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"su2-auto-curr2\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"su2-auto-curr3\00", [17 x i8] zeroinitializer }, align 32
@__const.as3711_bl_register.props = private unnamed_addr constant %struct.backlight_properties { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0 }, align 4
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3711-su1\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"as3711-su2\00", [21 x i8] zeroinitializer }, align 32
@as3711_bl_ops = internal constant { %struct.backlight_ops, [16 x i8] } { %struct.backlight_ops { i32 0, ptr @as3711_bl_update_status, ptr @as3711_bl_get_brightness, ptr null }, [16 x i8] zeroinitializer }, align 32
@as3711_bl_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 237, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to register backlight\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as3711_bl_register\00", [45 x i8] zeroinitializer }, align 32
@as3711_bl_register._entry_ptr = internal global ptr @as3711_bl_register._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@as3711_bl_init_su2.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 45, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"as3711_bl_init_su2\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s(): use %u\0A\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.44 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.46 = private unnamed_addr constant [24 x i8] c"as3711_backlight_driver\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 470, i32 31 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 472, i32 11 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 380, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 387, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 393, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 405, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 256, i32 50 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 258, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 262, i32 28 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 268, i32 34 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 275, i32 28 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 283, i32 34 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 289, i32 28 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 293, i32 28 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 297, i32 28 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 301, i32 28 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 305, i32 28 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 315, i32 28 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 319, i32 28 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 323, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 327, i32 28 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 337, i32 28 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 341, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 345, i32 28 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 233, i32 12 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 233, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant [14 x i8] c"as3711_bl_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 168, i32 35 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 237, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.173 = private constant [39 x i8] c"../drivers/video/backlight/as3711_bl.c\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 180, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_alias314, ptr @__UNIQUE_ID_author311, ptr @__UNIQUE_ID_description310, ptr @__UNIQUE_ID_file312, ptr @__UNIQUE_ID_license313, ptr @__exitcall_as3711_backlight_driver_exit, ptr @__initcall__kmod_as3711_bl__309_477_as3711_backlight_driver_init6, ptr @as3711_backlight_driver_exit, ptr @as3711_backlight_probe._entry, ptr @as3711_backlight_probe._entry.12, ptr @as3711_backlight_probe._entry.6, ptr @as3711_backlight_probe._entry.9, ptr @as3711_backlight_probe._entry_ptr, ptr @as3711_backlight_probe._entry_ptr.11, ptr @as3711_backlight_probe._entry_ptr.15, ptr @as3711_backlight_probe._entry_ptr.8, ptr @as3711_bl_register._entry, ptr @as3711_bl_register._entry_ptr, ptr @as3711_backlight_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @as3711_bl_ops, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_backlight_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_backlight_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_backlight_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_backlight_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_backlight_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_bl_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @as3711_bl_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @as3711_backlight_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @as3711_backlight_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @as3711_backlight_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @as3711_backlight_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3711_backlight_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end.if.end16_crit_edge, label %if.then7

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

if.then7:                                         ; preds = %if.end
  %call9 = tail call fastcc i32 @as3711_backlight_parse_dt(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %do.end13, label %if.then7.if.end16_crit_edge

if.then7.if.end16_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end13:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %call9) #10
  br label %cleanup

if.end16:                                         ; preds = %if.then7.if.end16_crit_edge, %if.end.if.end16_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  br i1 %tobool17.not, label %land.lhs.true, label %if.end16.do.end33_crit_edge

if.end16.do.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

land.lhs.true:                                    ; preds = %if.end16
  %su2_fb = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %su2_fb to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %su2_fb, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool18.not = icmp eq i8 %11, 0
  br i1 %tobool18.not, label %do.end22, label %lor.lhs.false

do.end22:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true
  %su2_fbprot = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %su2_fbprot to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %su2_fbprot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp27.not = icmp eq i32 %13, 3
  br i1 %cmp27.not, label %lor.lhs.false28, label %lor.lhs.false.do.end33_crit_edge

lor.lhs.false.do.end33_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

lor.lhs.false28:                                  ; preds = %lor.lhs.false
  %su2_feedback = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %su2_feedback to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %su2_feedback, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp29.not = icmp eq i32 %15, 4
  br i1 %cmp29.not, label %if.end35, label %lor.lhs.false28.do.end33_crit_edge

lor.lhs.false28.do.end33_crit_edge:               ; preds = %lor.lhs.false28
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.end33:                                         ; preds = %lor.lhs.false28.do.end33_crit_edge, %lor.lhs.false.do.end33_crit_edge, %if.end16.do.end33_crit_edge
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false28
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 40, i32 noundef 3520) #7
  %tobool38.not = icmp eq ptr %call.i, null
  br i1 %tobool38.not, label %if.end35.cleanup_crit_edge, label %if.end40

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %if.end35
  %as371141 = getelementptr inbounds %struct.as3711_bl_supply, ptr %call.i, i32 0, i32 3
  %16 = ptrtoint ptr %as371141 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %5, ptr %as371141, align 4
  %pdata42 = getelementptr inbounds %struct.as3711_bl_supply, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %pdata42 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %1, ptr %pdata42, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %1, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool44.not = icmp eq i8 %19, 0
  br i1 %tobool44.not, label %if.end40.if.end51_crit_edge, label %if.then45

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then45:                                        ; preds = %if.end40
  %type = getelementptr inbounds %struct.as3711_bl_data, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %type, align 4
  %su1_max_uA = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %su1_max_uA to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %su1_max_uA, align 4
  %23 = tail call i32 @llvm.smin.i32(i32 %22, i32 31)
  %call47 = tail call fastcc i32 @as3711_bl_register(ptr noundef %pdev, i32 noundef %23, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then45.cleanup_crit_edge, label %if.then45.if.end51_crit_edge

if.then45.if.end51_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end51:                                         ; preds = %if.then45.if.end51_crit_edge, %if.end40.if.end51_crit_edge
  %24 = ptrtoint ptr %su2_fb to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %su2_fb, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool53.not = icmp eq i8 %25, 0
  br i1 %tobool53.not, label %if.end51.if.end83_crit_edge, label %if.then54

if.end51.if.end83_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then54:                                        ; preds = %if.end51
  %su2 = getelementptr inbounds %struct.as3711_bl_supply, ptr %call.i, i32 0, i32 1
  %type55 = getelementptr inbounds %struct.as3711_bl_supply, ptr %call.i, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %type55 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %type55, align 4
  %27 = ptrtoint ptr %su2_fbprot to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %su2_fbprot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %switch = icmp ult i32 %28, 4
  br i1 %switch, label %sw.epilog, label %if.then54.cleanup_crit_edge

if.then54.cleanup_crit_edge:                      ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog:                                        ; preds = %if.then54
  %29 = ptrtoint ptr %su2_feedback to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %su2_feedback, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values)
  switch i32 %30, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb58
    i32 1, label %sw.epilog.sw.bb65_crit_edge
    i32 2, label %sw.epilog.sw.bb65_crit_edge139
    i32 3, label %sw.epilog.sw.bb65_crit_edge140
    i32 4, label %sw.epilog.sw.bb65_crit_edge141
  ]

sw.epilog.sw.bb65_crit_edge141:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

sw.epilog.sw.bb65_crit_edge140:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

sw.epilog.sw.bb65_crit_edge139:                   ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

sw.epilog.sw.bb65_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb65

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb58:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %su2_max_uA = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 3
  %32 = ptrtoint ptr %su2_max_uA to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %su2_max_uA, align 4
  %34 = tail call i32 @llvm.smin.i32(i32 %33, i32 31)
  br label %sw.epilog74

sw.bb65:                                          ; preds = %sw.epilog.sw.bb65_crit_edge, %sw.epilog.sw.bb65_crit_edge139, %sw.epilog.sw.bb65_crit_edge140, %sw.epilog.sw.bb65_crit_edge141
  %su2_max_uA66 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %su2_max_uA66 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %su2_max_uA66, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 38250, i32 %36)
  %cmp68 = icmp slt i32 %36, 38250
  %div = sdiv i32 %36, 150
  %cond72 = select i1 %cmp68, i32 %div, i32 255
  br label %sw.epilog74

sw.epilog74:                                      ; preds = %sw.bb65, %sw.bb58
  %max_brightness.0 = phi i32 [ %cond72, %sw.bb65 ], [ %34, %sw.bb58 ]
  %call75 = tail call fastcc i32 @as3711_bl_init_su2(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %sw.epilog74.cleanup_crit_edge, label %if.end78

sw.epilog74.cleanup_crit_edge:                    ; preds = %sw.epilog74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end78:                                         ; preds = %sw.epilog74
  %call79 = tail call fastcc i32 @as3711_bl_register(ptr noundef %pdev, i32 noundef %max_brightness.0, ptr noundef %su2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end78.cleanup_crit_edge, label %if.end78.if.end83_crit_edge

if.end78.if.end83_crit_edge:                      ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.end78.cleanup_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end83:                                         ; preds = %if.end78.if.end83_crit_edge, %if.end51.if.end83_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.end78.cleanup_crit_edge, %sw.epilog74.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then54.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %do.end33, %do.end22, %do.end13, %do.end
  %retval.0 = phi i32 [ %call9, %do.end13 ], [ -22, %do.end33 ], [ 0, %if.end83 ], [ -22, %do.end22 ], [ -19, %do.end ], [ -12, %if.end35.cleanup_crit_edge ], [ %call47, %if.then45.cleanup_crit_edge ], [ -22, %if.then54.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ %call75, %sw.epilog74.cleanup_crit_edge ], [ %call79, %if.end78.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @as3711_backlight_parse_dt(ptr noundef %dev) unnamed_addr #2 align 64 {
entry:
  %args.i177 = alloca %struct.of_phandle_args, align 4
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %platform_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %of_node = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call1 = tail call ptr @of_get_child_by_name(ptr noundef %5, ptr noundef nonnull @.str.16) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end7

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3711_backlight_parse_dt.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3711_backlight_parse_dt, %if.then6)) #7
          to label %cleanup111 [label %if.then6], !srcloc !101

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3711_backlight_parse_dt.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.19) #7
  br label %cleanup111

if.end7:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %6 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call1, ptr noundef nonnull @.str.20, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  br label %if.end18

of_parse_phandle.exit:                            ; preds = %if.end7
  %7 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %tobool9.not = icmp eq ptr %8, null
  br i1 %tobool9.not, label %of_parse_phandle.exit.if.end18_crit_edge, label %if.then10

of_parse_phandle.exit.if.end18_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then10:                                        ; preds = %of_parse_phandle.exit
  call void @of_node_put(ptr noundef nonnull %8) #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %1, align 4
  %su1_max_uA = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 1
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1, ptr noundef nonnull @.str.21, ptr noundef %su1_max_uA, i32 noundef 1, i32 noundef 0) #7
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #7
  %11 = ptrtoint ptr %su1_max_uA to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %su1_max_uA, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp slt i32 %12, 1
  %spec.store.select = select i1 %cmp, i32 -22, i32 %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select)
  %cmp15 = icmp slt i32 %spec.store.select, 0
  br i1 %cmp15, label %if.then10.err_put_bl_crit_edge, label %if.then10.if.end18_crit_edge

if.then10.if.end18_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then10.err_put_bl_crit_edge:                   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_bl

if.end18:                                         ; preds = %if.then10.if.end18_crit_edge, %of_parse_phandle.exit.if.end18_crit_edge, %of_parse_phandle.exit.thread
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i177) #7
  %13 = call ptr @memset(ptr %args.i177, i32 255, i32 72)
  %call.i178 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %call1, ptr noundef nonnull @.str.22, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i177) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i178)
  %tobool.not.i179 = icmp eq i32 %call.i178, 0
  br i1 %tobool.not.i179, label %of_parse_phandle.exit182, label %of_parse_phandle.exit182.thread

of_parse_phandle.exit182.thread:                  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i177) #7
  br label %if.end110

of_parse_phandle.exit182:                         ; preds = %if.end18
  %14 = ptrtoint ptr %args.i177 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %args.i177, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i177) #7
  %tobool20.not = icmp eq ptr %15, null
  br i1 %tobool20.not, label %of_parse_phandle.exit182.if.end110_crit_edge, label %if.then21

of_parse_phandle.exit182.if.end110_crit_edge:     ; preds = %of_parse_phandle.exit182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.then21:                                        ; preds = %of_parse_phandle.exit182
  call void @of_node_put(ptr noundef nonnull %15) #7
  %su2_fb = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %su2_fb to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %su2_fb, align 4
  %su2_max_uA = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 3
  %call.i.i183 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %call1, ptr noundef nonnull @.str.23, ptr noundef %su2_max_uA, i32 noundef 1, i32 noundef 0) #7
  %17 = call i32 @llvm.smin.i32(i32 %call.i.i183, i32 0) #7
  %18 = ptrtoint ptr %su2_max_uA to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %su2_max_uA, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp24 = icmp slt i32 %19, 1
  %spec.store.select115 = select i1 %cmp24, i32 -22, i32 %17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.store.select115)
  %cmp27 = icmp slt i32 %spec.store.select115, 0
  br i1 %cmp27, label %if.then21.err_put_bl_crit_edge, label %if.end29

if.then21.err_put_bl_crit_edge:                   ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_bl

if.end29:                                         ; preds = %if.then21
  %call30 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.24, ptr noundef null) #7
  %tobool31.not = icmp eq ptr %call30, null
  br i1 %tobool31.not, label %if.end29.if.end33_crit_edge, label %if.then32

if.end29.if.end33_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.then32:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %su2_feedback = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %su2_feedback to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %su2_feedback, align 4
  br label %if.end33

if.end33:                                         ; preds = %if.then32, %if.end29.if.end33_crit_edge
  %count.0 = phi i32 [ 1, %if.then32 ], [ 0, %if.end29.if.end33_crit_edge ]
  %call34 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.25, ptr noundef null) #7
  %tobool35.not = icmp eq ptr %call34, null
  br i1 %tobool35.not, label %if.end33.if.end39_crit_edge, label %if.then36

if.end33.if.end39_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39

if.then36:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %su2_feedback37 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %su2_feedback37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %su2_feedback37, align 4
  %inc38 = add nuw nsw i32 %count.0, 1
  br label %if.end39

if.end39:                                         ; preds = %if.then36, %if.end33.if.end39_crit_edge
  %count.1 = phi i32 [ %inc38, %if.then36 ], [ %count.0, %if.end33.if.end39_crit_edge ]
  %call40 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.26, ptr noundef null) #7
  %tobool41.not = icmp eq ptr %call40, null
  br i1 %tobool41.not, label %if.end39.if.end45_crit_edge, label %if.then42

if.end39.if.end45_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45

if.then42:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %su2_feedback43 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %su2_feedback43 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %su2_feedback43, align 4
  %inc44 = add nuw nsw i32 %count.1, 1
  br label %if.end45

if.end45:                                         ; preds = %if.then42, %if.end39.if.end45_crit_edge
  %count.2 = phi i32 [ %inc44, %if.then42 ], [ %count.1, %if.end39.if.end45_crit_edge ]
  %call46 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.27, ptr noundef null) #7
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %if.end45.if.end51_crit_edge, label %if.then48

if.end45.if.end51_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #9
  %su2_feedback49 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 4
  %23 = ptrtoint ptr %su2_feedback49 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 3, ptr %su2_feedback49, align 4
  %inc50 = add nuw nsw i32 %count.2, 1
  br label %if.end51

if.end51:                                         ; preds = %if.then48, %if.end45.if.end51_crit_edge
  %count.3 = phi i32 [ %inc50, %if.then48 ], [ %count.2, %if.end45.if.end51_crit_edge ]
  %call52 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.28, ptr noundef null) #7
  %tobool53.not = icmp eq ptr %call52, null
  br i1 %tobool53.not, label %if.end51.if.end57_crit_edge, label %if.then54

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  %su2_feedback55 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %su2_feedback55 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 4, ptr %su2_feedback55, align 4
  %inc56 = add nuw nsw i32 %count.3, 1
  br label %if.end57

if.end57:                                         ; preds = %if.then54, %if.end51.if.end57_crit_edge
  %count.4 = phi i32 [ %inc56, %if.then54 ], [ %count.3, %if.end51.if.end57_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.4)
  %cmp58.not = icmp eq i32 %count.4, 1
  br i1 %cmp58.not, label %if.end60, label %if.end57.err_put_bl_crit_edge

if.end57.err_put_bl_crit_edge:                    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_bl

if.end60:                                         ; preds = %if.end57
  %call61 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.29, ptr noundef null) #7
  %tobool62.not = icmp eq ptr %call61, null
  br i1 %tobool62.not, label %if.end60.if.end65_crit_edge, label %if.then63

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %su2_fbprot = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 5
  %25 = ptrtoint ptr %su2_fbprot to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %su2_fbprot, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60.if.end65_crit_edge
  %count.5 = phi i32 [ 1, %if.then63 ], [ 0, %if.end60.if.end65_crit_edge ]
  %call66 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.30, ptr noundef null) #7
  %tobool67.not = icmp eq ptr %call66, null
  br i1 %tobool67.not, label %if.end65.if.end71_crit_edge, label %if.then68

if.end65.if.end71_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %su2_fbprot69 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 5
  %26 = ptrtoint ptr %su2_fbprot69 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %su2_fbprot69, align 4
  %inc70 = add nuw nsw i32 %count.5, 1
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end65.if.end71_crit_edge
  %count.6 = phi i32 [ %inc70, %if.then68 ], [ %count.5, %if.end65.if.end71_crit_edge ]
  %call72 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.31, ptr noundef null) #7
  %tobool73.not = icmp eq ptr %call72, null
  br i1 %tobool73.not, label %if.end71.if.end77_crit_edge, label %if.then74

if.end71.if.end77_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end77

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %su2_fbprot75 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 5
  %27 = ptrtoint ptr %su2_fbprot75 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %su2_fbprot75, align 4
  %inc76 = add nuw nsw i32 %count.6, 1
  br label %if.end77

if.end77:                                         ; preds = %if.then74, %if.end71.if.end77_crit_edge
  %count.7 = phi i32 [ %inc76, %if.then74 ], [ %count.6, %if.end71.if.end77_crit_edge ]
  %call78 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.32, ptr noundef null) #7
  %tobool79.not = icmp eq ptr %call78, null
  br i1 %tobool79.not, label %if.end77.if.end83_crit_edge, label %if.then80

if.end77.if.end83_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end83

if.then80:                                        ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #9
  %su2_fbprot81 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %su2_fbprot81 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %su2_fbprot81, align 4
  %inc82 = add nuw nsw i32 %count.7, 1
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %if.end77.if.end83_crit_edge
  %count.8 = phi i32 [ %inc82, %if.then80 ], [ %count.7, %if.end77.if.end83_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count.8)
  %cmp84.not = icmp eq i32 %count.8, 1
  br i1 %cmp84.not, label %if.end86, label %if.end83.err_put_bl_crit_edge

if.end83.err_put_bl_crit_edge:                    ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_bl

if.end86:                                         ; preds = %if.end83
  %call87 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.33, ptr noundef null) #7
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.end86.if.end91_crit_edge, label %if.then89

if.end86.if.end91_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %su2_auto_curr1 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 6
  %29 = ptrtoint ptr %su2_auto_curr1 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %su2_auto_curr1, align 4
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end86.if.end91_crit_edge
  %count.9 = phi i32 [ 1, %if.then89 ], [ 0, %if.end86.if.end91_crit_edge ]
  %call92 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.34, ptr noundef null) #7
  %tobool93.not = icmp eq ptr %call92, null
  br i1 %tobool93.not, label %if.end91.if.end96_crit_edge, label %if.then94

if.end91.if.end96_crit_edge:                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  %su2_auto_curr2 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %su2_auto_curr2 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %su2_auto_curr2, align 1
  br label %if.end96

if.end96:                                         ; preds = %if.then94, %if.end91.if.end96_crit_edge
  %count.10 = phi i32 [ 1, %if.then94 ], [ %count.9, %if.end91.if.end96_crit_edge ]
  %call97 = call ptr @of_find_property(ptr noundef nonnull %call1, ptr noundef nonnull @.str.35, ptr noundef null) #7
  %tobool98.not = icmp eq ptr %call97, null
  br i1 %tobool98.not, label %if.end101, label %if.then99

if.then99:                                        ; preds = %if.end96
  %su2_auto_curr3 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %su2_auto_curr3 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %su2_auto_curr3, align 2
  %su2_feedback105193 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %su2_feedback105193 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %su2_feedback105193, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp106194.not = icmp eq i32 %33, 4
  br i1 %cmp106194.not, label %if.then99.if.end110_crit_edge, label %if.then99.err_put_bl_crit_edge

if.then99.err_put_bl_crit_edge:                   ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_bl

if.then99.if.end110_crit_edge:                    ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end101:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.10)
  %tobool102.not = icmp eq i32 %count.10, 0
  %su2_feedback105 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %su2_feedback105 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %su2_feedback105, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %35)
  %cmp106 = icmp ne i32 %35, 4
  %xor173 = xor i1 %tobool102.not, %cmp106
  br i1 %xor173, label %if.end101.err_put_bl_crit_edge, label %if.end101.if.end110_crit_edge

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end110

if.end101.err_put_bl_crit_edge:                   ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_put_bl

if.end110:                                        ; preds = %if.end101.if.end110_crit_edge, %if.then99.if.end110_crit_edge, %of_parse_phandle.exit182.if.end110_crit_edge, %of_parse_phandle.exit182.thread
  call void @of_node_put(ptr noundef nonnull %call1) #7
  br label %cleanup111

err_put_bl:                                       ; preds = %if.end101.err_put_bl_crit_edge, %if.then99.err_put_bl_crit_edge, %if.end83.err_put_bl_crit_edge, %if.end57.err_put_bl_crit_edge, %if.then21.err_put_bl_crit_edge, %if.then10.err_put_bl_crit_edge
  %ret.1 = phi i32 [ %spec.store.select, %if.then10.err_put_bl_crit_edge ], [ -22, %if.end83.err_put_bl_crit_edge ], [ -22, %if.end57.err_put_bl_crit_edge ], [ %spec.store.select115, %if.then21.err_put_bl_crit_edge ], [ -22, %if.then99.err_put_bl_crit_edge ], [ -22, %if.end101.err_put_bl_crit_edge ]
  call void @of_node_put(ptr noundef nonnull %call1) #7
  br label %cleanup111

cleanup111:                                       ; preds = %err_put_bl, %if.end110, %if.then6, %do.body
  %retval.0 = phi i32 [ %ret.1, %err_put_bl ], [ 0, %if.end110 ], [ -19, %if.then6 ], [ -19, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @as3711_bl_register(ptr noundef %pdev, i32 noundef %max_brightness, ptr noundef %su) unnamed_addr #2 align 64 {
entry:
  %props = alloca %struct.backlight_properties, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %props) #7
  %0 = call ptr @memcpy(ptr %props, ptr @__const.as3711_bl_register.props, i32 28)
  %max_brightness1 = getelementptr inbounds %struct.backlight_properties, ptr %props, i32 0, i32 1
  %1 = ptrtoint ptr %max_brightness1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %max_brightness, ptr %max_brightness1, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %type = getelementptr inbounds %struct.as3711_bl_data, ptr %su, i32 0, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  %cond = select i1 %cmp, ptr @.str.36, ptr @.str.37
  %call = call ptr @devm_backlight_device_register(ptr noundef %dev, ptr noundef nonnull %cond, ptr noundef %dev, ptr noundef %su, ptr noundef nonnull @as3711_bl_ops, ptr noundef nonnull %props) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.38) #10
  %4 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %max_brightness1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %max_brightness1, align 4
  %7 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %call, align 8
  %update_lock.i = getelementptr inbounds %struct.backlight_device, ptr %call, i32 0, i32 1
  call void @mutex_lock_nested(ptr noundef %update_lock.i, i32 noundef 0) #7
  %ops.i = getelementptr inbounds %struct.backlight_device, ptr %call, i32 0, i32 3
  %8 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.backlight_update_status.exit_crit_edge, label %land.lhs.true.i

if.end.backlight_update_status.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_update_status.exit

land.lhs.true.i:                                  ; preds = %if.end
  %update_status.i = getelementptr inbounds %struct.backlight_ops, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %update_status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update_status.i, align 4
  %tobool2.not.i = icmp eq ptr %11, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.backlight_update_status.exit_crit_edge, label %if.then.i

land.lhs.true.i.backlight_update_status.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_update_status.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 %11(ptr noundef %call) #7
  br label %backlight_update_status.exit

backlight_update_status.exit:                     ; preds = %if.then.i, %land.lhs.true.i.backlight_update_status.exit_crit_edge, %if.end.backlight_update_status.exit_crit_edge
  call void @mutex_unlock(ptr noundef %update_lock.i) #7
  %bl9 = getelementptr inbounds %struct.as3711_bl_data, ptr %su, i32 0, i32 3
  %12 = ptrtoint ptr %bl9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %bl9, align 4
  br label %cleanup

cleanup:                                          ; preds = %backlight_update_status.exit, %do.end
  %retval.0 = phi i32 [ %4, %do.end ], [ 0, %backlight_update_status.exit ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %props) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @as3711_bl_init_su2(ptr nocapture noundef readonly %supply) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %as37111 = getelementptr inbounds %struct.as3711_bl_supply, ptr %supply, i32 0, i32 3
  %0 = ptrtoint ptr %as37111 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %as37111, align 4
  %pdata2 = getelementptr inbounds %struct.as3711_bl_supply, ptr %supply, i32 0, i32 2
  %2 = ptrtoint ptr %pdata2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @as3711_bl_init_su2.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@as3711_bl_init_su2, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !101

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %su2_feedback = getelementptr inbounds %struct.as3711_bl_pdata, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %su2_feedback to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %su2_feedback, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @as3711_bl_init_su2.__UNIQUE_ID_ddebug301, ptr noundef %5, ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %regmap = getelementptr inbounds %struct.as3711, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap, align 4
  %call5 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 81, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end7

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end
  %su2_feedback8 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %3, i32 0, i32 4
  %10 = ptrtoint ptr %su2_feedback8 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %su2_feedback8, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %11, label %if.end7.cleanup_crit_edge [
    i32 0, label %if.end7.sw.epilog_crit_edge
    i32 1, label %sw.bb11
    i32 2, label %sw.bb14
    i32 3, label %sw.bb17
    i32 4, label %sw.epilog.thread
  ]

if.end7.sw.epilog_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb14:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog.thread:                                 ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %su2_auto_curr1 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %3, i32 0, i32 6
  %13 = ptrtoint ptr %su2_auto_curr1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %su2_auto_curr1, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool21.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool21.not, i8 0, i8 2
  %su2_auto_curr2 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %3, i32 0, i32 7
  %15 = ptrtoint ptr %su2_auto_curr2 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %su2_auto_curr2, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool24.not = icmp eq i8 %16, 0
  %17 = or i8 %spec.select, 8
  %ctl.1 = select i1 %tobool24.not, i8 %spec.select, i8 %17
  %su2_auto_curr3 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %3, i32 0, i32 8
  %18 = ptrtoint ptr %su2_auto_curr3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %su2_auto_curr3, align 2, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool28.not = icmp eq i8 %19, 0
  %20 = or i8 %ctl.1, 32
  %ctl.2 = select i1 %tobool28.not, i8 %ctl.1, i8 %20
  br label %if.then35

sw.epilog:                                        ; preds = %sw.bb17, %sw.bb14, %sw.bb11, %if.end7.sw.epilog_crit_edge
  %ctl.3 = phi i8 [ 16, %sw.bb17 ], [ 4, %sw.bb14 ], [ 1, %sw.bb11 ], [ 0, %if.end7.sw.epilog_crit_edge ]
  %21 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %regmap, align 4
  %call.i61 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 83, i32 noundef 3, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i61)
  %tobool34.not = icmp eq i32 %call.i61, 0
  br i1 %tobool34.not, label %sw.epilog.if.then35_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.epilog.if.then35_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then35

if.then35:                                        ; preds = %sw.epilog.if.then35_crit_edge, %sw.epilog.thread
  %ctl.366 = phi i8 [ %ctl.2, %sw.epilog.thread ], [ %ctl.3, %sw.epilog.if.then35_crit_edge ]
  %23 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap, align 4
  %conv37 = zext i8 %ctl.366 to i32
  %call38 = tail call i32 @regmap_write(ptr noundef %24, i32 noundef 64, i32 noundef %conv37) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %sw.epilog.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call.i61, %sw.epilog.cleanup_crit_edge ], [ %call38, %if.then35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @as3711_bl_update_status(ptr nocapture noundef readonly %bl) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type.i = getelementptr inbounds %struct.as3711_bl_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %3, label %sw.epilog.i [
    i32 0, label %entry.to_supply.exit_crit_edge
    i32 1, label %sw.bb1.i
  ]

entry.to_supply.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_supply.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr4.i = getelementptr i8, ptr %1, i32 -16
  br label %to_supply.exit

sw.epilog.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_supply.exit

to_supply.exit:                                   ; preds = %sw.epilog.i, %sw.bb1.i, %entry.to_supply.exit_crit_edge
  %retval.0.i = phi ptr [ null, %sw.epilog.i ], [ %add.ptr4.i, %sw.bb1.i ], [ %1, %entry.to_supply.exit_crit_edge ]
  %as37112 = getelementptr inbounds %struct.as3711_bl_supply, ptr %retval.0.i, i32 0, i32 3
  %5 = ptrtoint ptr %as37112 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %as37112, align 4
  %power.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 2
  %7 = ptrtoint ptr %power.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %power.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp.not.i.i, label %lor.lhs.false.i.i, label %to_supply.exit.backlight_get_brightness.exit_crit_edge

to_supply.exit.backlight_get_brightness.exit_crit_edge: ; preds = %to_supply.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_get_brightness.exit

lor.lhs.false.i.i:                                ; preds = %to_supply.exit
  %fb_blank.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 3
  %9 = ptrtoint ptr %fb_blank.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fb_blank.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp2.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp2.not.i.i, label %backlight_is_blank.exit.i, label %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge

lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_get_brightness.exit

backlight_is_blank.exit.i:                        ; preds = %lor.lhs.false.i.i
  %state.i.i = getelementptr inbounds %struct.backlight_properties, ptr %bl, i32 0, i32 5
  %11 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i.i, align 4
  %and.i.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge

backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge: ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %backlight_get_brightness.exit

if.else.i:                                        ; preds = %backlight_is_blank.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %bl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bl, align 8
  br label %backlight_get_brightness.exit

backlight_get_brightness.exit:                    ; preds = %if.else.i, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge, %to_supply.exit.backlight_get_brightness.exit_crit_edge
  %retval.0.i64 = phi i32 [ %14, %if.else.i ], [ 0, %backlight_is_blank.exit.i.backlight_get_brightness.exit_crit_edge ], [ 0, %lor.lhs.false.i.i.backlight_get_brightness.exit_crit_edge ], [ 0, %to_supply.exit.backlight_get_brightness.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %backlight_get_brightness.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %retval.0.i64)
  %cmp.i = icmp ugt i32 %retval.0.i64, 31
  br i1 %cmp.i, label %if.then.cleanup34_crit_edge, label %if.end.i

if.then.cleanup34_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i = getelementptr inbounds %struct.as3711, ptr %6, i32 0, i32 1
  %15 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap.i, align 4
  %shl.i = shl nuw nsw i32 %retval.0.i64, 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %16, i32 noundef 80, i32 noundef 240, i32 noundef %shl.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end29

if.else:                                          ; preds = %backlight_get_brightness.exit
  %pdata5 = getelementptr inbounds %struct.as3711_bl_supply, ptr %retval.0.i, i32 0, i32 2
  %17 = ptrtoint ptr %pdata5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdata5, align 4
  %su2_feedback = getelementptr inbounds %struct.as3711_bl_pdata, ptr %18, i32 0, i32 4
  %19 = ptrtoint ptr %su2_feedback to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %su2_feedback, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %20, label %if.else.cleanup34_crit_edge [
    i32 0, label %sw.bb
    i32 4, label %sw.bb7
    i32 1, label %sw.bb20
    i32 2, label %sw.bb23
    i32 3, label %sw.bb26
  ]

if.else.cleanup34_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

sw.bb:                                            ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %retval.0.i64)
  %cmp.i66 = icmp ugt i32 %retval.0.i64, 31
  br i1 %cmp.i66, label %sw.bb.cleanup34_crit_edge, label %if.end.i70

sw.bb.cleanup34_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end.i70:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %regmap.i67 = getelementptr inbounds %struct.as3711, ptr %6, i32 0, i32 1
  %22 = ptrtoint ptr %regmap.i67 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap.i67, align 4
  %shl.i68 = shl nuw nsw i32 %retval.0.i64, 4
  %call.i.i69 = tail call i32 @regmap_update_bits_base(ptr noundef %23, i32 noundef 81, i32 noundef 240, i32 noundef %shl.i68, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end29

sw.bb7:                                           ; preds = %if.else
  %div = sdiv i32 %retval.0.i64, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cond = icmp eq i32 %3, 1
  %add.ptr4.i.i = getelementptr i8, ptr %1, i32 -16
  %retval.0.i.i = select i1 %cond, ptr %add.ptr4.i.i, ptr null
  %as37111.i = getelementptr inbounds %struct.as3711_bl_supply, ptr %retval.0.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %as37111.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %as37111.i, align 4
  %pdata2.i = getelementptr inbounds %struct.as3711_bl_supply, ptr %retval.0.i.i, i32 0, i32 2
  %26 = ptrtoint ptr %pdata2.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdata2.i, align 4
  %su2_auto_curr1.i = getelementptr inbounds %struct.as3711_bl_pdata, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %su2_auto_curr1.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %su2_auto_curr1.i, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i = icmp eq i8 %29, 0
  br i1 %tobool.not.i, label %sw.bb7.land.lhs.true.i_crit_edge, label %if.end.i74

sw.bb7.land.lhs.true.i_crit_edge:                 ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

if.end.i74:                                       ; preds = %sw.bb7
  %regmap.i73 = getelementptr inbounds %struct.as3711, ptr %25, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i73 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i73, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 67, i32 noundef %div) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.end.i74.land.lhs.true.i_crit_edge, label %if.end.i74.as3711_set_brightness_auto_i.exit_crit_edge

if.end.i74.as3711_set_brightness_auto_i.exit_crit_edge: ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %as3711_set_brightness_auto_i.exit

if.end.i74.land.lhs.true.i_crit_edge:             ; preds = %if.end.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.end.i74.land.lhs.true.i_crit_edge, %sw.bb7.land.lhs.true.i_crit_edge
  %su2_auto_curr2.i = getelementptr inbounds %struct.as3711_bl_pdata, ptr %27, i32 0, i32 7
  %32 = ptrtoint ptr %su2_auto_curr2.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %su2_auto_curr2.i, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool5.not.i = icmp eq i8 %33, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.land.lhs.true11.i_crit_edge, label %if.end9.i

land.lhs.true.i.land.lhs.true11.i_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true11.i

if.end9.i:                                        ; preds = %land.lhs.true.i
  %regmap7.i = getelementptr inbounds %struct.as3711, ptr %25, i32 0, i32 1
  %34 = ptrtoint ptr %regmap7.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap7.i, align 4
  %call8.i = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 68, i32 noundef %div) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool10.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool10.not.i, label %if.end9.i.land.lhs.true11.i_crit_edge, label %if.end9.i.as3711_set_brightness_auto_i.exit_crit_edge

if.end9.i.as3711_set_brightness_auto_i.exit_crit_edge: ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %as3711_set_brightness_auto_i.exit

if.end9.i.land.lhs.true11.i_crit_edge:            ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true11.i

land.lhs.true11.i:                                ; preds = %if.end9.i.land.lhs.true11.i_crit_edge, %land.lhs.true.i.land.lhs.true11.i_crit_edge
  %su2_auto_curr3.i = getelementptr inbounds %struct.as3711_bl_pdata, ptr %27, i32 0, i32 8
  %36 = ptrtoint ptr %su2_auto_curr3.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %su2_auto_curr3.i, align 2, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool12.not.i = icmp eq i8 %37, 0
  br i1 %tobool12.not.i, label %land.lhs.true11.i.if.end_crit_edge, label %if.then13.i

land.lhs.true11.i.if.end_crit_edge:               ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then13.i:                                      ; preds = %land.lhs.true11.i
  call void @__sanitizer_cov_trace_pc() #9
  %regmap14.i = getelementptr inbounds %struct.as3711, ptr %25, i32 0, i32 1
  %38 = ptrtoint ptr %regmap14.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap14.i, align 4
  %call15.i = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 69, i32 noundef %div) #7
  br label %as3711_set_brightness_auto_i.exit

as3711_set_brightness_auto_i.exit:                ; preds = %if.then13.i, %if.end9.i.as3711_set_brightness_auto_i.exit_crit_edge, %if.end.i74.as3711_set_brightness_auto_i.exit_crit_edge
  %ret.2.i = phi i32 [ %call8.i, %if.end9.i.as3711_set_brightness_auto_i.exit_crit_edge ], [ %call15.i, %if.then13.i ], [ %call3.i, %if.end.i74.as3711_set_brightness_auto_i.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %cmp9 = icmp slt i32 %ret.2.i, 0
  br i1 %cmp9, label %as3711_set_brightness_auto_i.exit.cleanup34_crit_edge, label %as3711_set_brightness_auto_i.exit.if.end_crit_edge

as3711_set_brightness_auto_i.exit.if.end_crit_edge: ; preds = %as3711_set_brightness_auto_i.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

as3711_set_brightness_auto_i.exit.cleanup34_crit_edge: ; preds = %as3711_set_brightness_auto_i.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end:                                           ; preds = %as3711_set_brightness_auto_i.exit.if.end_crit_edge, %land.lhs.true11.i.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i64)
  %tobool.not = icmp eq i32 %retval.0.i64, 0
  br i1 %tobool.not, label %if.else17, label %if.then11

if.then11:                                        ; preds = %if.end
  %40 = ptrtoint ptr %as37112 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %as37112, align 4
  %regmap.i76 = getelementptr inbounds %struct.as3711, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap.i76, align 4
  %44 = ptrtoint ptr %pdata5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pdata5, align 4
  %su2_fbprot.i = getelementptr inbounds %struct.as3711_bl_pdata, ptr %45, i32 0, i32 5
  %46 = ptrtoint ptr %su2_fbprot.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %su2_fbprot.i, align 4
  %call.i.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %43, i32 noundef 84, i32 noundef 3, i32 noundef %47, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i77)
  %tobool.not.i78 = icmp eq i32 %call.i.i77, 0
  br i1 %tobool.not.i78, label %if.end.i80, label %if.then11.as3711_bl_su2_reset.exit_crit_edge

if.then11.as3711_bl_su2_reset.exit_crit_edge:     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  br label %as3711_bl_su2_reset.exit

if.end.i80:                                       ; preds = %if.then11
  %48 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i76, align 4
  %call.i14.i = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 81, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i14.i)
  %tobool4.not.i79 = icmp eq i32 %call.i14.i, 0
  br i1 %tobool4.not.i79, label %if.then5.i, label %if.end.i80.as3711_bl_su2_reset.exit_crit_edge

if.end.i80.as3711_bl_su2_reset.exit_crit_edge:    ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %as3711_bl_su2_reset.exit

if.then5.i:                                       ; preds = %if.end.i80
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %regmap.i76 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap.i76, align 4
  %call.i15.i = tail call i32 @regmap_update_bits_base(ptr noundef %51, i32 noundef 81, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %as3711_bl_su2_reset.exit

as3711_bl_su2_reset.exit:                         ; preds = %if.then5.i, %if.end.i80.as3711_bl_su2_reset.exit_crit_edge, %if.then11.as3711_bl_su2_reset.exit_crit_edge
  %ret.1.i = phi i32 [ %call.i14.i, %if.end.i80.as3711_bl_su2_reset.exit_crit_edge ], [ %call.i15.i, %if.then5.i ], [ %call.i.i77, %if.then11.as3711_bl_su2_reset.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %cmp13 = icmp slt i32 %ret.1.i, 0
  br i1 %cmp13, label %as3711_bl_su2_reset.exit.cleanup34_crit_edge, label %if.end15

as3711_bl_su2_reset.exit.cleanup34_crit_edge:     ; preds = %as3711_bl_su2_reset.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end15:                                         ; preds = %as3711_bl_su2_reset.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 107374000) #7
  %53 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %type.i, align 4
  %55 = zext i32 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %54, label %sw.epilog.i.i84 [
    i32 0, label %if.end15.to_supply.exit.i90_crit_edge
    i32 1, label %sw.bb1.i.i83
  ]

if.end15.to_supply.exit.i90_crit_edge:            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_supply.exit.i90

sw.bb1.i.i83:                                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_supply.exit.i90

sw.epilog.i.i84:                                  ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %to_supply.exit.i90

to_supply.exit.i90:                               ; preds = %sw.epilog.i.i84, %sw.bb1.i.i83, %if.end15.to_supply.exit.i90_crit_edge
  %retval.0.i.i85 = phi ptr [ null, %sw.epilog.i.i84 ], [ %add.ptr4.i.i, %sw.bb1.i.i83 ], [ %1, %if.end15.to_supply.exit.i90_crit_edge ]
  %as37111.i86 = getelementptr inbounds %struct.as3711_bl_supply, ptr %retval.0.i.i85, i32 0, i32 3
  %56 = ptrtoint ptr %as37111.i86 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %as37111.i86, align 4
  %pdata2.i87 = getelementptr inbounds %struct.as3711_bl_supply, ptr %retval.0.i.i85, i32 0, i32 2
  %58 = ptrtoint ptr %pdata2.i87 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pdata2.i87, align 4
  %su2_auto_curr1.i88 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %59, i32 0, i32 6
  %60 = ptrtoint ptr %su2_auto_curr1.i88 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %su2_auto_curr1.i88, align 4, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i89 = icmp eq i8 %61, 0
  br i1 %tobool.not.i89, label %to_supply.exit.i90.land.lhs.true.i97_crit_edge, label %if.end.i94

to_supply.exit.i90.land.lhs.true.i97_crit_edge:   ; preds = %to_supply.exit.i90
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i97

if.end.i94:                                       ; preds = %to_supply.exit.i90
  %regmap.i91 = getelementptr inbounds %struct.as3711, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %regmap.i91 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regmap.i91, align 4
  %call3.i92 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 67, i32 noundef %retval.0.i64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i92)
  %tobool4.not.i93 = icmp eq i32 %call3.i92, 0
  br i1 %tobool4.not.i93, label %if.end.i94.land.lhs.true.i97_crit_edge, label %if.end.i94.cleanup34_crit_edge

if.end.i94.cleanup34_crit_edge:                   ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end.i94.land.lhs.true.i97_crit_edge:           ; preds = %if.end.i94
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i97

land.lhs.true.i97:                                ; preds = %if.end.i94.land.lhs.true.i97_crit_edge, %to_supply.exit.i90.land.lhs.true.i97_crit_edge
  %su2_auto_curr2.i95 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %59, i32 0, i32 7
  %64 = ptrtoint ptr %su2_auto_curr2.i95 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %su2_auto_curr2.i95, align 1, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool5.not.i96 = icmp eq i8 %65, 0
  br i1 %tobool5.not.i96, label %land.lhs.true.i97.land.lhs.true11.i104_crit_edge, label %if.end9.i101

land.lhs.true.i97.land.lhs.true11.i104_crit_edge: ; preds = %land.lhs.true.i97
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true11.i104

if.end9.i101:                                     ; preds = %land.lhs.true.i97
  %regmap7.i98 = getelementptr inbounds %struct.as3711, ptr %57, i32 0, i32 1
  %66 = ptrtoint ptr %regmap7.i98 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %regmap7.i98, align 4
  %call8.i99 = tail call i32 @regmap_write(ptr noundef %67, i32 noundef 68, i32 noundef %retval.0.i64) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i99)
  %tobool10.not.i100 = icmp eq i32 %call8.i99, 0
  br i1 %tobool10.not.i100, label %if.end9.i101.land.lhs.true11.i104_crit_edge, label %if.end9.i101.cleanup34_crit_edge

if.end9.i101.cleanup34_crit_edge:                 ; preds = %if.end9.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end9.i101.land.lhs.true11.i104_crit_edge:      ; preds = %if.end9.i101
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true11.i104

land.lhs.true11.i104:                             ; preds = %if.end9.i101.land.lhs.true11.i104_crit_edge, %land.lhs.true.i97.land.lhs.true11.i104_crit_edge
  %su2_auto_curr3.i102 = getelementptr inbounds %struct.as3711_bl_pdata, ptr %59, i32 0, i32 8
  %68 = ptrtoint ptr %su2_auto_curr3.i102 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %su2_auto_curr3.i102, align 2, !range !100
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool12.not.i103 = icmp eq i8 %69, 0
  br i1 %tobool12.not.i103, label %land.lhs.true11.i104.if.then31_crit_edge, label %if.then13.i107

land.lhs.true11.i104.if.then31_crit_edge:         ; preds = %land.lhs.true11.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then13.i107:                                   ; preds = %land.lhs.true11.i104
  call void @__sanitizer_cov_trace_pc() #9
  %regmap14.i105 = getelementptr inbounds %struct.as3711, ptr %57, i32 0, i32 1
  %70 = ptrtoint ptr %regmap14.i105 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap14.i105, align 4
  %call15.i106 = tail call i32 @regmap_write(ptr noundef %71, i32 noundef 69, i32 noundef %retval.0.i64) #7
  br label %if.end29

if.else17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %regmap = getelementptr inbounds %struct.as3711, ptr %6, i32 0, i32 1
  %72 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %regmap, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %73, i32 noundef 81, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #7
  br label %if.end29

sw.bb20:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %regmap21 = getelementptr inbounds %struct.as3711, ptr %6, i32 0, i32 1
  %74 = ptrtoint ptr %regmap21 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %regmap21, align 4
  %call22 = tail call i32 @regmap_write(ptr noundef %75, i32 noundef 67, i32 noundef %retval.0.i64) #7
  br label %if.end29

sw.bb23:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %regmap24 = getelementptr inbounds %struct.as3711, ptr %6, i32 0, i32 1
  %76 = ptrtoint ptr %regmap24 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %regmap24, align 4
  %call25 = tail call i32 @regmap_write(ptr noundef %77, i32 noundef 68, i32 noundef %retval.0.i64) #7
  br label %if.end29

sw.bb26:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %regmap27 = getelementptr inbounds %struct.as3711, ptr %6, i32 0, i32 1
  %78 = ptrtoint ptr %regmap27 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regmap27, align 4
  %call28 = tail call i32 @regmap_write(ptr noundef %79, i32 noundef 69, i32 noundef %retval.0.i64) #7
  br label %if.end29

if.end29:                                         ; preds = %sw.bb26, %sw.bb23, %sw.bb20, %if.else17, %if.then13.i107, %if.end.i70, %if.end.i
  %ret.2 = phi i32 [ %call.i.i, %if.end.i ], [ %call15.i106, %if.then13.i107 ], [ %call.i.i69, %if.end.i70 ], [ %call.i, %if.else17 ], [ %call22, %sw.bb20 ], [ %call25, %sw.bb23 ], [ %call28, %sw.bb26 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool30.not = icmp eq i32 %ret.2, 0
  br i1 %tobool30.not, label %if.end29.if.then31_crit_edge, label %if.end29.cleanup34_crit_edge

if.end29.cleanup34_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup34

if.end29.if.then31_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then31

if.then31:                                        ; preds = %if.end29.if.then31_crit_edge, %land.lhs.true11.i104.if.then31_crit_edge
  %brightness32 = getelementptr inbounds %struct.as3711_bl_data, ptr %1, i32 0, i32 2
  %80 = ptrtoint ptr %brightness32 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %retval.0.i64, ptr %brightness32, align 4
  br label %cleanup34

cleanup34:                                        ; preds = %if.then31, %if.end29.cleanup34_crit_edge, %if.end9.i101.cleanup34_crit_edge, %if.end.i94.cleanup34_crit_edge, %as3711_bl_su2_reset.exit.cleanup34_crit_edge, %as3711_set_brightness_auto_i.exit.cleanup34_crit_edge, %sw.bb.cleanup34_crit_edge, %if.else.cleanup34_crit_edge, %if.then.cleanup34_crit_edge
  %retval.1 = phi i32 [ 0, %if.then31 ], [ %ret.2, %if.end29.cleanup34_crit_edge ], [ %ret.2.i, %as3711_set_brightness_auto_i.exit.cleanup34_crit_edge ], [ %ret.1.i, %as3711_bl_su2_reset.exit.cleanup34_crit_edge ], [ -22, %if.then.cleanup34_crit_edge ], [ -22, %if.else.cleanup34_crit_edge ], [ -22, %sw.bb.cleanup34_crit_edge ], [ %call8.i99, %if.end9.i101.cleanup34_crit_edge ], [ %call3.i92, %if.end.i94.cleanup34_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @as3711_bl_get_brightness(ptr nocapture noundef readonly %bl) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.backlight_device, ptr %bl, i32 0, i32 6, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %brightness = getelementptr inbounds %struct.as3711_bl_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %brightness, align 4
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !83, !84, !85, !87, !89, !90}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_as3711_bl__309_477_as3711_backlight_driver_init6, !1, !"__initcall__kmod_as3711_bl__309_477_as3711_backlight_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/video/backlight/as3711_bl.c", i32 477, i32 1}
!2 = !{ptr @__exitcall_as3711_backlight_driver_exit, !1, !"__exitcall_as3711_backlight_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description310, !4, !"__UNIQUE_ID_description310", i1 false, i1 false}
!4 = !{!"../drivers/video/backlight/as3711_bl.c", i32 479, i32 1}
!5 = !{ptr @__UNIQUE_ID_author311, !6, !"__UNIQUE_ID_author311", i1 false, i1 false}
!6 = !{!"../drivers/video/backlight/as3711_bl.c", i32 480, i32 1}
!7 = !{ptr @__UNIQUE_ID_file312, !8, !"__UNIQUE_ID_file312", i1 false, i1 false}
!8 = !{!"../drivers/video/backlight/as3711_bl.c", i32 481, i32 1}
!9 = !{ptr @__UNIQUE_ID_license313, !8, !"__UNIQUE_ID_license313", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias314, !11, !"__UNIQUE_ID_alias314", i1 false, i1 false}
!11 = !{!"../drivers/video/backlight/as3711_bl.c", i32 482, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/video/backlight/as3711_bl.c", i32 472, i32 11}
!14 = !{ptr @as3711_backlight_driver, !15, !"as3711_backlight_driver", i1 false, i1 false}
!15 = !{!"../drivers/video/backlight/as3711_bl.c", i32 470, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/video/backlight/as3711_bl.c", i32 380, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @as3711_backlight_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @as3711_backlight_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/video/backlight/as3711_bl.c", i32 387, i32 4}
!26 = !{ptr @as3711_backlight_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @as3711_backlight_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/video/backlight/as3711_bl.c", i32 393, i32 3}
!30 = !{ptr @as3711_backlight_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @as3711_backlight_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/video/backlight/as3711_bl.c", i32 405, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @as3711_backlight_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @as3711_backlight_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/video/backlight/as3711_bl.c", i32 256, i32 50}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/video/backlight/as3711_bl.c", i32 258, i32 3}
!41 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @as3711_backlight_parse_dt.__UNIQUE_ID_ddebug302, !40, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/video/backlight/as3711_bl.c", i32 262, i32 28}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/video/backlight/as3711_bl.c", i32 268, i32 34}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/video/backlight/as3711_bl.c", i32 275, i32 28}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/video/backlight/as3711_bl.c", i32 283, i32 34}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/video/backlight/as3711_bl.c", i32 289, i32 28}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/video/backlight/as3711_bl.c", i32 293, i32 28}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/video/backlight/as3711_bl.c", i32 297, i32 28}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/video/backlight/as3711_bl.c", i32 301, i32 28}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/video/backlight/as3711_bl.c", i32 305, i32 28}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/video/backlight/as3711_bl.c", i32 315, i32 28}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/video/backlight/as3711_bl.c", i32 319, i32 28}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/video/backlight/as3711_bl.c", i32 323, i32 28}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/video/backlight/as3711_bl.c", i32 327, i32 28}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/video/backlight/as3711_bl.c", i32 337, i32 28}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/video/backlight/as3711_bl.c", i32 341, i32 28}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/video/backlight/as3711_bl.c", i32 345, i32 28}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/video/backlight/as3711_bl.c", i32 233, i32 12}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/video/backlight/as3711_bl.c", i32 233, i32 27}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/video/backlight/as3711_bl.c", i32 237, i32 3}
!82 = !{ptr @.str.39, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @as3711_bl_register._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @as3711_bl_register._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @as3711_bl_ops, !86, !"as3711_bl_ops", i1 false, i1 false}
!86 = !{!"../drivers/video/backlight/as3711_bl.c", i32 168, i32 35}
!87 = !{ptr @.str.40, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/video/backlight/as3711_bl.c", i32 180, i32 2}
!89 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @as3711_bl_init_su2.__UNIQUE_ID_ddebug301, !88, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{i8 0, i8 2}
!101 = !{i64 2148300551, i64 2148300556, i64 2148300569, i64 2148300613, i64 2148300647, i64 2148300668}
