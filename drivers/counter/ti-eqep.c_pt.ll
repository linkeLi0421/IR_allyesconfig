; ModuleID = '/llk/IR_all_yes/drivers/counter/ti-eqep.c_pt.bc'
source_filename = "../drivers/counter/ti-eqep.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.counter_comp = type { i32, ptr, ptr, %union.anon.71, %union.anon.72 }
%union.anon.71 = type { ptr }
%union.anon.72 = type { ptr }
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
%struct.ti_eqep_cnt = type { %struct.counter_device, ptr, ptr }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.73, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.73 = type { %union.anon.74, [0 x %struct.counter_event] }
%union.anon.74 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }

@__initcall__kmod_ti_eqep__228_454_ti_eqep_driver_init6 = internal global ptr @ti_eqep_driver_init, section ".initcall6.init", align 4
@ti_eqep_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_eqep_probe, ptr @ti_eqep_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_eqep_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ti_eqep_driver_exit = internal global ptr @ti_eqep_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author229 = internal constant [52 x i8] c"ti_eqep.author=David Lechner <david@lechnology.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description230 = internal constant [43 x i8] c"ti_eqep.description=TI eQEP counter driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [37 x i8] c"ti_eqep.file=drivers/counter/ti-eqep\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [23 x i8] c"ti_eqep.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti-eqep-cnt\00", [20 x i8] zeroinitializer }, align 32
@ti_eqep_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3352-eqep\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ti_eqep_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ti_eqep_regmap32_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.4, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ti_eqep:391:(&ti_eqep_regmap32_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@ti_eqep_probe._key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@ti_eqep_regmap16_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.5, i32 16, i32 2, i32 0, i32 16, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"ti_eqep:396:(&ti_eqep_regmap16_config)->lock\00", [51 x i8] zeroinitializer }, align 32
@ti_eqep_counter_ops = internal constant { %struct.counter_ops, [60 x i8] } { %struct.counter_ops { ptr null, ptr @ti_eqep_count_read, ptr @ti_eqep_count_write, ptr @ti_eqep_function_read, ptr @ti_eqep_function_write, ptr @ti_eqep_action_read, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ti_eqep_counts = internal global { [1 x %struct.counter_count], [32 x i8] } { [1 x %struct.counter_count] [%struct.counter_count { i32 0, ptr @.str.6, ptr @ti_eqep_position_functions, i32 4, ptr @ti_eqep_position_synapses, i32 2, ptr @ti_eqep_position_ext, i32 2 }], [32 x i8] zeroinitializer }, align 32
@ti_eqep_signals = internal global { [2 x %struct.counter_signal], [32 x i8] } { [2 x %struct.counter_signal] [%struct.counter_signal { i32 0, ptr @.str.9, ptr null, i32 0 }, %struct.counter_signal { i32 1, ptr @.str.10, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"32-bit\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"16-bit\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"QPOSCNT\00", [24 x i8] zeroinitializer }, align 32
@ti_eqep_position_functions = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 2, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@ti_eqep_position_synapses = internal global { [2 x %struct.counter_synapse], [40 x i8] } { [2 x %struct.counter_synapse] [%struct.counter_synapse { ptr @ti_eqep_position_synapse_actions, i32 3, ptr @ti_eqep_signals }, %struct.counter_synapse { ptr @ti_eqep_position_synapse_actions, i32 3, ptr getelementptr (i8, ptr @ti_eqep_signals, i64 16) }], [40 x i8] zeroinitializer }, align 32
@ti_eqep_position_ext = internal global { [2 x %struct.counter_comp], [56 x i8] } { [2 x %struct.counter_comp] [%struct.counter_comp { i32 1, ptr @.str.7, ptr null, %union.anon.71 { ptr @ti_eqep_position_ceiling_read }, %union.anon.72 { ptr @ti_eqep_position_ceiling_write } }, %struct.counter_comp { i32 2, ptr @.str.8, ptr null, %union.anon.71 { ptr @ti_eqep_position_enable_read }, %union.anon.72 { ptr @ti_eqep_position_enable_write } }], [56 x i8] zeroinitializer }, align 32
@ti_eqep_position_synapse_actions = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 3, i32 1, i32 0], [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ceiling\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QEPA\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"QEPB\00", [27 x i8] zeroinitializer }, align 32
@switch.table.ti_eqep_function_read = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 2, i32 0, i32 1], [16 x i8] zeroinitializer }, align 32
@switch.table.ti_eqep_function_write = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 32768, i32 49152, i32 16384, i32 0, i32 0, i32 0, i32 0, i32 0], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"ti_eqep_driver\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 446, i32 31 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 450, i32 11 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"ti_eqep_of_match\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 440, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [24 x i8] c"ti_eqep_regmap32_config\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 357, i32 35 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 390, i32 19 }
@___asan_gen_.31 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [24 x i8] c"ti_eqep_regmap16_config\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 365, i32 35 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 395, i32 19 }
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"ti_eqep_counter_ops\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 241, i32 33 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"ti_eqep_counts\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 344, i32 29 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"ti_eqep_signals\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 307, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 358, i32 10 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 366, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 347, i32 12 }
@___asan_gen_.58 = private unnamed_addr constant [27 x i8] c"ti_eqep_position_functions\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 318, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"ti_eqep_position_synapses\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 331, i32 31 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"ti_eqep_position_ext\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 300, i32 28 }
@___asan_gen_.67 = private unnamed_addr constant [33 x i8] c"ti_eqep_position_synapse_actions\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 325, i32 42 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 301, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 303, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 310, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [29 x i8] c"../drivers/counter/ti-eqep.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 314, i32 11 }
@___asan_gen_.82 = private unnamed_addr constant [35 x i8] c"switch.table.ti_eqep_function_read\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [36 x i8] c"switch.table.ti_eqep_function_write\00", align 1
@llvm.compiler.used = appending global [32 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_description230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_ti_eqep_driver_exit, ptr @__initcall__kmod_ti_eqep__228_454_ti_eqep_driver_init6, ptr @ti_eqep_driver_exit, ptr @ti_eqep_driver, ptr @.str, ptr @ti_eqep_of_match, ptr @ti_eqep_probe._key, ptr @ti_eqep_regmap32_config, ptr @.str.1, ptr @ti_eqep_probe._key.2, ptr @ti_eqep_regmap16_config, ptr @.str.3, ptr @ti_eqep_counter_ops, ptr @ti_eqep_counts, ptr @ti_eqep_signals, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @ti_eqep_position_functions, ptr @ti_eqep_position_synapses, ptr @ti_eqep_position_ext, ptr @ti_eqep_position_synapse_actions, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @switch.table.ti_eqep_function_read, ptr @switch.table.ti_eqep_function_write], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_regmap32_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_probe._key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_regmap16_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_counter_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_counts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_signals to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_position_functions to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_position_synapses to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_position_ext to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_eqep_position_synapse_actions to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ti_eqep_function_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.ti_eqep_function_write to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_eqep_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ti_eqep_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @ti_eqep_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @devm_counter_alloc(ptr noundef %dev1, i32 noundef 1592) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @counter_priv(ptr noundef nonnull %call) #4
  %call3 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call3, ptr noundef nonnull @ti_eqep_regmap32_config, ptr noundef nonnull @ti_eqep_probe._key, ptr noundef nonnull @.str.1) #4
  %regmap32 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call2, i32 0, i32 1
  %1 = ptrtoint ptr %regmap32 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call8, ptr %regmap32, align 8
  %cmp.i62 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i62, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %add.ptr = getelementptr i8, ptr %call3, i32 36
  %call16 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %add.ptr, ptr noundef nonnull @ti_eqep_regmap16_config, ptr noundef nonnull @ti_eqep_probe._key.2, ptr noundef nonnull @.str.3) #4
  %regmap16 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call2, i32 0, i32 2
  %3 = ptrtoint ptr %regmap16 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call16, ptr %regmap16, align 4
  %cmp.i63 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i63, label %if.then19, label %if.end22

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call16 to i32
  br label %cleanup

if.end22:                                         ; preds = %if.end14
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end22.dev_name.exit_crit_edge

if.end22.dev_name.exit_crit_edge:                 ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end22.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %8, %if.end.i ], [ %6, %if.end22.dev_name.exit_crit_edge ]
  %9 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %retval.0.i, ptr %call, align 8
  %parent = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %dev1, ptr %parent, align 4
  %ops = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 2
  %11 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @ti_eqep_counter_ops, ptr %ops, align 8
  %counts = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %counts to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @ti_eqep_counts, ptr %counts, align 4
  %num_counts = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 6
  %13 = ptrtoint ptr %num_counts to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %num_counts, align 8
  %signals = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 3
  %14 = ptrtoint ptr %signals to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @ti_eqep_signals, ptr %signals, align 4
  %num_signals = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %num_signals to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 2, ptr %num_signals, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %16 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #4
  %call25 = tail call i32 @counter_add(ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.then26, label %dev_name.exit.cleanup_crit_edge

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then26:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call.i64 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #4
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %dev_name.exit.cleanup_crit_edge, %if.then19, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then5 ], [ %2, %if.then11 ], [ %4, %if.then19 ], [ %call25, %if.then26 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @counter_unregister(ptr noundef %1) #4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #4
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_counter_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @counter_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @counter_add(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_count_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  %cnt = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cnt) #4
  %0 = ptrtoint ptr %cnt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %cnt, align 4, !annotation !63
  %regmap32 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap32, align 8
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %cnt) #4
  %3 = ptrtoint ptr %cnt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cnt, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %val, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cnt) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_count_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i64 noundef %val) #2 align 64 {
entry:
  %max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max) #4
  %0 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %max, align 4, !annotation !63
  %regmap32 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap32, align 8
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %max) #4
  %3 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max, align 4
  %conv = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %conv, i64 %val)
  %cmp = icmp ult i64 %conv, %val
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regmap32, align 8
  %conv4 = trunc i64 %val to i32
  %call5 = call i32 @regmap_write(ptr noundef %6, i32 noundef 0, i32 noundef %conv4) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_function_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %function) #2 align 64 {
entry:
  %qdecctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qdecctl) #4
  %0 = ptrtoint ptr %qdecctl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %qdecctl, align 4, !annotation !63
  %regmap16 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap16, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 4, ptr noundef nonnull %qdecctl) #4
  %3 = ptrtoint ptr %qdecctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qdecctl, align 4
  %and = lshr i32 %4, 14
  %shr = and i32 %and, 3
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.ti_eqep_function_read, i32 0, i32 %shr
  %5 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load = load i32, ptr %switch.gep, align 4
  %6 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %switch.load, ptr %function, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qdecctl) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_function_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i32 noundef %function) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %function)
  %0 = icmp ult i32 %function, 8
  br i1 %0, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %function to i8
  %switch.shifted = lshr i8 -121, %switch.maskindex
  %1 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %switch.lobit.not = icmp eq i8 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #6
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.ti_eqep_function_write, i32 0, i32 %function
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  %regmap16 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap16, align 4
  %call.i6 = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 4, i32 noundef 49152, i32 noundef %switch.load, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #4
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i6, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_action_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef readonly %synapse, ptr nocapture noundef writeonly %action) #2 align 64 {
entry:
  %qdecctl.i = alloca i32, align 4
  %qdecctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qdecctl) #4
  %0 = ptrtoint ptr %qdecctl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %qdecctl, align 4, !annotation !63
  %call.i.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qdecctl.i) #4
  %1 = ptrtoint ptr %qdecctl.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %qdecctl.i, align 4, !annotation !63
  %regmap16.i = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %regmap16.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap16.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 4, ptr noundef nonnull %qdecctl.i) #4
  %4 = ptrtoint ptr %qdecctl.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %qdecctl.i, align 4
  %and.i = lshr i32 %5, 14
  %shr.i = and i32 %and.i, 3
  %6 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i, label %entry.unreachabledefault.i [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %entry.sw.bb5_crit_edge
    i32 3, label %entry.sw.bb5_crit_edge35
  ]

entry.sw.bb5_crit_edge35:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

entry.sw.bb5_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb5

entry.unreachabledefault.i:                       ; preds = %entry
  unreachable

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qdecctl.i) #4
  br label %cleanup.sink.split

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qdecctl.i) #4
  %signal = getelementptr inbounds %struct.counter_synapse, ptr %synapse, i32 0, i32 2
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %8, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.11)
  switch i32 %10, label %sw.bb2.cleanup_crit_edge [
    i32 0, label %sw.bb2.cleanup.sink.split_crit_edge
    i32 1, label %sw.bb4
  ]

sw.bb2.cleanup.sink.split_crit_edge:              ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb4:                                           ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

sw.bb5:                                           ; preds = %entry.sw.bb5_crit_edge, %entry.sw.bb5_crit_edge35
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qdecctl.i) #4
  %signal6 = getelementptr inbounds %struct.counter_synapse, ptr %synapse, i32 0, i32 2
  %12 = ptrtoint ptr %signal6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal6, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.12)
  switch i32 %15, label %sw.bb5.cleanup_crit_edge [
    i32 0, label %sw.bb8
    i32 1, label %sw.bb5.cleanup.sink.split_crit_edge
  ]

sw.bb5.cleanup.sink.split_crit_edge:              ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb8:                                           ; preds = %sw.bb5
  %regmap16 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i, i32 0, i32 2
  %17 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regmap16, align 4
  %call9 = call i32 @regmap_read(ptr noundef %18, i32 noundef 4, ptr noundef nonnull %qdecctl) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %qdecctl to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %qdecctl, align 4
  %and = and i32 %20, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  %. = select i1 %tobool13.not, i32 1, i32 3
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end12, %sw.bb5.cleanup.sink.split_crit_edge, %sw.bb4, %sw.bb2.cleanup.sink.split_crit_edge, %sw.bb
  %.sink = phi i32 [ %., %if.end12 ], [ 0, %sw.bb4 ], [ 3, %sw.bb ], [ 1, %sw.bb2.cleanup.sink.split_crit_edge ], [ 0, %sw.bb5.cleanup.sink.split_crit_edge ]
  %21 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %action, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %sw.bb8.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb2.cleanup_crit_edge ], [ %call9, %sw.bb8.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ 0, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qdecctl) #4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_position_ceiling_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %ceiling) #2 align 64 {
entry:
  %qposmax = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qposmax) #4
  %0 = ptrtoint ptr %qposmax to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %qposmax, align 4, !annotation !63
  %regmap32 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap32, align 8
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 8, ptr noundef nonnull %qposmax) #4
  %3 = ptrtoint ptr %qposmax to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qposmax, align 4
  %conv = zext i32 %4 to i64
  %5 = ptrtoint ptr %ceiling to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %ceiling, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qposmax) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_position_ceiling_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i64 noundef %ceiling) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %ceiling)
  %0 = icmp ult i64 %ceiling, 4294967296
  br i1 %0, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i64 %ceiling to i32
  %regmap32 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap32 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap32, align 8
  %call4 = tail call i32 @regmap_write(ptr noundef %2, i32 noundef 8, i32 noundef %conv) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -34, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_position_enable_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %enable) #2 align 64 {
entry:
  %qepctl = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %qepctl) #4
  %0 = ptrtoint ptr %qepctl to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %qepctl, align 4, !annotation !63
  %regmap16 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap16, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 6, ptr noundef nonnull %qepctl) #4
  %3 = ptrtoint ptr %qepctl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %qepctl, align 4
  %5 = trunc i32 %4 to i8
  %6 = lshr i8 %5, 3
  %7 = and i8 %6, 1
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %enable, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %qepctl) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_eqep_position_enable_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i8 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @counter_priv(ptr noundef %counter) #4
  %regmap16 = getelementptr inbounds %struct.ti_eqep_cnt, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %regmap16 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap16, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %enable)
  %tobool.not = icmp ne i8 %enable, 0
  %cond = sext i1 %tobool.not to i32
  %call.i2 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 6, i32 noundef 8, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @counter_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

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
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_ti_eqep__228_454_ti_eqep_driver_init6, !1, !"__initcall__kmod_ti_eqep__228_454_ti_eqep_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/counter/ti-eqep.c", i32 454, i32 1}
!2 = !{ptr @__exitcall_ti_eqep_driver_exit, !1, !"__exitcall_ti_eqep_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author229, !4, !"__UNIQUE_ID_author229", i1 false, i1 false}
!4 = !{!"../drivers/counter/ti-eqep.c", i32 456, i32 1}
!5 = !{ptr @__UNIQUE_ID_description230, !6, !"__UNIQUE_ID_description230", i1 false, i1 false}
!6 = !{!"../drivers/counter/ti-eqep.c", i32 457, i32 1}
!7 = !{ptr @__UNIQUE_ID_file231, !8, !"__UNIQUE_ID_file231", i1 false, i1 false}
!8 = !{!"../drivers/counter/ti-eqep.c", i32 458, i32 1}
!9 = !{ptr @__UNIQUE_ID_license232, !8, !"__UNIQUE_ID_license232", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/counter/ti-eqep.c", i32 450, i32 11}
!12 = !{ptr @ti_eqep_driver, !13, !"ti_eqep_driver", i1 false, i1 false}
!13 = !{!"../drivers/counter/ti-eqep.c", i32 446, i32 31}
!14 = !{ptr @ti_eqep_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/counter/ti-eqep.c", i32 390, i32 19}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @ti_eqep_probe._key.2, !18, !"_key", i1 false, i1 false}
!18 = !{!"../drivers/counter/ti-eqep.c", i32 395, i32 19}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/counter/ti-eqep.c", i32 358, i32 10}
!22 = !{ptr @ti_eqep_regmap32_config, !23, !"ti_eqep_regmap32_config", i1 false, i1 false}
!23 = !{!"../drivers/counter/ti-eqep.c", i32 357, i32 35}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/counter/ti-eqep.c", i32 366, i32 10}
!26 = !{ptr @ti_eqep_regmap16_config, !27, !"ti_eqep_regmap16_config", i1 false, i1 false}
!27 = !{!"../drivers/counter/ti-eqep.c", i32 365, i32 35}
!28 = !{ptr @ti_eqep_counter_ops, !29, !"ti_eqep_counter_ops", i1 false, i1 false}
!29 = !{!"../drivers/counter/ti-eqep.c", i32 241, i32 33}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/counter/ti-eqep.c", i32 347, i32 12}
!32 = !{ptr @ti_eqep_counts, !33, !"ti_eqep_counts", i1 false, i1 false}
!33 = !{!"../drivers/counter/ti-eqep.c", i32 344, i32 29}
!34 = !{ptr @ti_eqep_position_functions, !35, !"ti_eqep_position_functions", i1 false, i1 false}
!35 = !{!"../drivers/counter/ti-eqep.c", i32 318, i32 36}
!36 = !{ptr @ti_eqep_position_synapses, !37, !"ti_eqep_position_synapses", i1 false, i1 false}
!37 = !{!"../drivers/counter/ti-eqep.c", i32 331, i32 31}
!38 = !{ptr @ti_eqep_position_synapse_actions, !39, !"ti_eqep_position_synapse_actions", i1 false, i1 false}
!39 = !{!"../drivers/counter/ti-eqep.c", i32 325, i32 42}
!40 = !{ptr @.str.7, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/counter/ti-eqep.c", i32 301, i32 2}
!42 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/counter/ti-eqep.c", i32 303, i32 2}
!44 = !{ptr @ti_eqep_position_ext, !45, !"ti_eqep_position_ext", i1 false, i1 false}
!45 = !{!"../drivers/counter/ti-eqep.c", i32 300, i32 28}
!46 = !{ptr @.str.9, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/counter/ti-eqep.c", i32 310, i32 11}
!48 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/counter/ti-eqep.c", i32 314, i32 11}
!50 = !{ptr @ti_eqep_signals, !51, !"ti_eqep_signals", i1 false, i1 false}
!51 = !{!"../drivers/counter/ti-eqep.c", i32 307, i32 30}
!52 = !{ptr @ti_eqep_of_match, !53, !"ti_eqep_of_match", i1 false, i1 false}
!53 = !{!"../drivers/counter/ti-eqep.c", i32 440, i32 34}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"auto-init"}
