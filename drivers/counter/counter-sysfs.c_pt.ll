; ModuleID = '/llk/IR_all_yes/drivers/counter/counter-sysfs.c_pt.bc'
source_filename = "../drivers/counter/counter-sysfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.counter_comp = type { i32, ptr, ptr, %union.anon.67, %union.anon.68 }
%union.anon.67 = type { ptr }
%union.anon.68 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.69, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.69 = type { %union.anon.70, [0 x %struct.counter_event] }
%union.anon.70 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.counter_attribute_group = type { ptr, %struct.list_head, i32 }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.counter_attribute = type { %struct.device_attribute, %struct.list_head, %struct.counter_comp, i32, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.counter_available = type { %union.anon.75, i32 }
%union.anon.75 = type { ptr }
%struct.anon.76 = type { %union.anon.77, [0 x %struct.counter_event] }
%union.anon.77 = type { %struct.__kfifo }

@counter_num_signals_comp = internal global { %struct.counter_comp, [44 x i8] } { %struct.counter_comp { i32 0, ptr @.str.31, ptr null, %union.anon.67 { ptr @counter_num_signals_read }, %union.anon.68 zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@counter_num_counts_comp = internal global { %struct.counter_comp, [44 x i8] } { %struct.counter_comp { i32 0, ptr @.str.32, ptr null, %union.anon.67 { ptr @counter_num_counts_read }, %union.anon.68 zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@counter_events_queue_size_comp = internal global { %struct.counter_comp, [44 x i8] } { %struct.counter_comp { i32 1, ptr @.str.33, ptr null, %union.anon.67 { ptr @counter_events_queue_size_read }, %union.anon.68 { ptr @counter_events_queue_size_write } }, [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"signal%zu\00", [22 x i8] zeroinitializer }, align 32
@counter_signal_comp = internal constant { %struct.counter_comp, [44 x i8] } { %struct.counter_comp { i32 3, ptr @.str.1, ptr null, %union.anon.67 zeroinitializer, %union.anon.68 zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"signal\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"count%zu\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"signal%zu_action\00", [47 x i8] zeroinitializer }, align 32
@counter_count_comp = internal constant { %struct.counter_comp, [44 x i8] } { %struct.counter_comp { i32 1, ptr @.str.4, ptr null, %union.anon.67 zeroinitializer, %union.anon.68 zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@counter_function_comp = internal constant { %struct.counter_comp, [44 x i8] } { %struct.counter_comp { i32 4, ptr @.str.5, ptr null, %union.anon.67 zeroinitializer, %union.anon.68 zeroinitializer }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"count\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"function\00", [23 x i8] zeroinitializer }, align 32
@counter_name_attr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@counter_attr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@counter_function_str = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], [32 x i8] zeroinitializer }, align 32
@counter_signal_value_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.18], [24 x i8] zeroinitializer }, align 32
@counter_synapse_action_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], [16 x i8] zeroinitializer }, align 32
@counter_count_direction_str = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.23, ptr @.str.24], [24 x i8] zeroinitializer }, align 32
@counter_count_mode_str = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"increase\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"decrease\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pulse-direction\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"quadrature x1 a\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"quadrature x1 b\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"quadrature x2 a\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"quadrature x2 b\00", [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"quadrature x4\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"none\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rising edge\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"falling edge\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"both edges\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"forward\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"backward\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"normal\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"range limit\00", [20 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"non-recycle\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"modulo-n\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@counter_avail_attr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s_available\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"num_signals\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"num_counts\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"events_queue_size\00", [46 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s_component_id\00", [16 x i8] zeroinitializer }, align 32
@counter_comp_id_attr_create.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%zu\0A\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.36 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [8 x i64] [i64 6, i64 32, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 8]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.43 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.45 = internal global [6 x i64] [i64 4, i64 32, i64 4, i64 5, i64 6, i64 8]
@___asan_gen_.46 = private unnamed_addr constant [25 x i8] c"counter_num_signals_comp\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 824, i32 28 }
@___asan_gen_.49 = private unnamed_addr constant [24 x i8] c"counter_num_counts_comp\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 827, i32 28 }
@___asan_gen_.52 = private unnamed_addr constant [31 x i8] c"counter_events_queue_size_comp\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 830, i32 28 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 638, i32 7 }
@___asan_gen_.58 = private unnamed_addr constant [20 x i8] c"counter_signal_comp\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 583, i32 28 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 585, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 764, i32 7 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 670, i32 47 }
@___asan_gen_.70 = private unnamed_addr constant [19 x i8] c"counter_count_comp\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 694, i32 28 }
@___asan_gen_.73 = private unnamed_addr constant [22 x i8] c"counter_function_comp\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 697, i32 28 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 695, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 699, i32 10 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 531, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 532, i32 37 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 514, i32 25 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 452, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 122, i32 25 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"counter_function_str\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 59, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant [25 x i8] c"counter_signal_value_str\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 70, i32 26 }
@___asan_gen_.103 = private unnamed_addr constant [27 x i8] c"counter_synapse_action_str\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 75, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [28 x i8] c"counter_count_direction_str\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 82, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant [23 x i8] c"counter_count_mode_str\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 87, i32 26 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 60, i32 32 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 61, i32 32 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 62, i32 39 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 63, i32 39 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 64, i32 39 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 65, i32 39 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 66, i32 39 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 67, i32 37 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 71, i32 31 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 72, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 76, i32 34 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 77, i32 41 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 78, i32 42 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 79, i32 40 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 83, i32 38 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 84, i32 39 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 88, i32 32 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 89, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 90, i32 37 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 91, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 309, i32 25 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 415, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 418, i32 56 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 825, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 828, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 831, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 563, i32 41 }
@___asan_gen_.193 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 571, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [35 x i8] c"../drivers/counter/counter-sysfs.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 548, i32 25 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @counter_num_signals_comp, ptr @counter_num_counts_comp, ptr @counter_events_queue_size_comp, ptr @.str, ptr @counter_signal_comp, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @counter_count_comp, ptr @counter_function_comp, ptr @.str.4, ptr @.str.5, ptr @counter_name_attr_create.__key, ptr @.str.6, ptr @.str.7, ptr @counter_attr_create.__key, ptr @.str.8, ptr @counter_function_str, ptr @counter_signal_value_str, ptr @counter_synapse_action_str, ptr @counter_count_direction_str, ptr @counter_count_mode_str, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @counter_avail_attr_create.__key, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @counter_comp_id_attr_create.__key, ptr @.str.35], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_num_signals_comp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_num_counts_comp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_events_queue_size_comp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_signal_comp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_count_comp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_function_comp to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_name_attr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_attr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_function_str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_signal_value_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_synapse_action_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_count_direction_str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_count_mode_str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_avail_attr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @counter_comp_id_attr_create.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @counter_sysfs_add(ptr noundef %counter) local_unnamed_addr #0 align 64 {
entry:
  %comp.i33.i.i = alloca %struct.counter_comp, align 4
  %comp.i.i78.i = alloca %struct.counter_comp, align 4
  %comp.i.i.i = alloca %struct.counter_comp, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9
  %num_signals = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 4
  %0 = ptrtoint ptr %num_signals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_signals, align 8
  %num_counts = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 6
  %2 = ptrtoint ptr %num_counts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_counts, align 8
  %add = add i32 %3, %1
  %add2 = add i32 %add, 1
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add2, i32 16) #5
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !111

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %6 = extractvalue { i32, i1 } %4, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %6, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add2)
  %cmp139.not = icmp eq i32 %add2, 0
  br i1 %cmp139.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0140 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %attr_list = getelementptr %struct.counter_attribute_group, ptr %call5.i.i, i32 %i.0140, i32 1
  %7 = ptrtoint ptr %attr_list to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %attr_list, ptr %attr_list, align 4
  %prev.i = getelementptr %struct.counter_attribute_group, ptr %call5.i.i, i32 %i.0140, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %attr_list, ptr %prev.i, align 4
  %inc = add nuw i32 %i.0140, 1
  %exitcond.not = icmp eq i32 %i.0140, %add
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %9 = ptrtoint ptr %num_signals to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_signals, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp25.not.i.i = icmp eq i32 %10, 0
  br i1 %cmp25.not.i.i, label %for.end.if.end.i_crit_edge, label %for.body.lr.ph.i.i

for.end.if.end.i_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.body.lr.ph.i.i:                               ; preds = %for.end
  %signals.i.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 3
  %11 = getelementptr inbounds %struct.counter_comp, ptr %comp.i.i.i, i32 0, i32 3
  %ops.i.i.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 2
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.026.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %call.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str, i32 noundef %i.026.i.i) #5
  %arrayidx.i.i = getelementptr %struct.counter_attribute_group, ptr %call5.i.i, i32 %i.026.i.i
  %12 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %for.body.i.i.cleanup_crit_edge, label %if.end.i.i105

for.body.i.i.cleanup_crit_edge:                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i105:                                    ; preds = %for.body.i.i
  %13 = ptrtoint ptr %signals.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %signals.i.i, align 4
  %add.ptr3.i.i = getelementptr %struct.counter_signal, ptr %14, i32 %i.026.i.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %comp.i.i.i) #5
  %15 = call ptr @memcpy(ptr %comp.i.i.i, ptr @counter_signal_comp, i32 20)
  %16 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ops.i.i.i, align 8
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %11, align 4
  %call.i.i.i = call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %arrayidx.i.i, ptr noundef nonnull %comp.i.i.i, i32 noundef 1, ptr noundef %add.ptr3.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.end.i.i105.counter_signal_attrs_create.exit.thread.i.i_crit_edge, label %if.end.i.i.i

if.end.i.i105.counter_signal_attrs_create.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i105
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_signal_attrs_create.exit.thread.i.i

if.end.i.i.i:                                     ; preds = %if.end.i.i105
  %name.i.i.i = getelementptr %struct.counter_signal, ptr %14, i32 %i.026.i.i, i32 1
  %21 = ptrtoint ptr %name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %name.i.i.i, align 4
  %call.i.i.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not.i.i.i.i = icmp eq ptr %call.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge, label %if.end.i.i.i.i

if.end.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_signal_attrs_create.exit.thread.i.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i.i
  %name1.i.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i.i.i.i, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %name1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %22, ptr %name1.i.i.i.i, align 4
  %key.i.i.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i.i.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %key.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @counter_name_attr_create.__key, ptr %key.i.i.i.i, align 4
  %25 = ptrtoint ptr %call.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.6, ptr %call.i.i.i.i.i, align 4
  %mode.i.i.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i.i.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %mode.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 292, ptr %mode.i.i.i.i, align 4
  %show.i.i.i.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i.i.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %show.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @counter_comp_name_show, ptr %show.i.i.i.i, align 4
  %l.i.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i.i.i.i, i32 0, i32 1
  %attr_list.i.i.i.i = getelementptr %struct.counter_attribute_group, ptr %call5.i.i, i32 %i.026.i.i, i32 1
  %28 = ptrtoint ptr %attr_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %attr_list.i.i.i.i, align 4
  %call.i.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i.i.i.i, ptr noundef %attr_list.i.i.i.i, ptr noundef %29) #5
  br i1 %call.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, label %if.end.i.i.i.i.counter_name_attr_create.exit.i.i.i_crit_edge

if.end.i.i.i.i.counter_name_attr_create.exit.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_name_attr_create.exit.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %l.i.i.i.i, ptr %prev1.i.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %l.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %29, ptr %l.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i.i.i.i, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %attr_list.i.i.i.i, ptr %prev3.i.i.i.i.i.i, align 4
  %33 = ptrtoint ptr %attr_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %l.i.i.i.i, ptr %attr_list.i.i.i.i, align 4
  br label %counter_name_attr_create.exit.i.i.i

counter_name_attr_create.exit.i.i.i:              ; preds = %if.end.i.i.i.i.i.i, %if.end.i.i.i.i.counter_name_attr_create.exit.i.i.i_crit_edge
  %num_attr.i.i.i.i = getelementptr %struct.counter_attribute_group, ptr %call5.i.i, i32 %i.026.i.i, i32 2
  %34 = ptrtoint ptr %num_attr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_attr.i.i.i.i, align 4
  %inc.i.i.i.i = add i32 %35, 1
  store i32 %inc.i.i.i.i, ptr %num_attr.i.i.i.i, align 4
  %ext7.i.i.i = getelementptr %struct.counter_signal, ptr %14, i32 %i.026.i.i, i32 2
  %num_ext.i.i.i = getelementptr %struct.counter_signal, ptr %14, i32 %i.026.i.i, i32 3
  %36 = ptrtoint ptr %num_ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_ext.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp664.not.i.i.i = icmp eq i32 %37, 0
  br i1 %cmp664.not.i.i.i, label %counter_name_attr_create.exit.i.i.i.for.inc.i.i_crit_edge, label %counter_name_attr_create.exit.i.i.i.for.body.i.i.i_crit_edge

counter_name_attr_create.exit.i.i.i.for.body.i.i.i_crit_edge: ; preds = %counter_name_attr_create.exit.i.i.i
  br label %for.body.i.i.i

counter_name_attr_create.exit.i.i.i.for.inc.i.i_crit_edge: ; preds = %counter_name_attr_create.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %counter_name_attr_create.exit.i.i.i.for.body.i.i.i_crit_edge
  %i.065.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %counter_name_attr_create.exit.i.i.i.for.body.i.i.i_crit_edge ]
  %38 = ptrtoint ptr %ext7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ext7.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.counter_comp, ptr %39, i32 %i.065.i.i.i
  %call8.i.i.i = tail call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %arrayidx.i.i, ptr noundef %arrayidx.i.i.i, i32 noundef 1, ptr noundef %add.ptr3.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i.i)
  %cmp9.i.i.i = icmp slt i32 %call8.i.i.i, 0
  br i1 %cmp9.i.i.i, label %for.body.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge, label %if.end11.i.i.i

for.body.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_signal_attrs_create.exit.thread.i.i

if.end11.i.i.i:                                   ; preds = %for.body.i.i.i
  %name12.i.i.i = getelementptr %struct.counter_comp, ptr %39, i32 %i.065.i.i.i, i32 1
  %40 = ptrtoint ptr %name12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name12.i.i.i, align 4
  %call.i.i44.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not.i45.i.i.i = icmp eq ptr %call.i.i44.i.i.i, null
  br i1 %tobool.not.i45.i.i.i, label %if.end11.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge, label %if.end.i46.i.i.i

if.end11.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge: ; preds = %if.end11.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_signal_attrs_create.exit.thread.i.i

if.end.i46.i.i.i:                                 ; preds = %if.end11.i.i.i
  %call1.i.i.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef %41) #5
  %tobool2.not.i.i.i.i = icmp eq ptr %call1.i.i.i.i, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i46.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge, label %if.end4.i.i.i.i

if.end.i46.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge: ; preds = %if.end.i46.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_signal_attrs_create.exit.thread.i.i

if.end4.i.i.i.i:                                  ; preds = %if.end.i46.i.i.i
  %42 = inttoptr i32 %i.065.i.i.i to ptr
  %priv.i.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i44.i.i.i, i32 0, i32 2, i32 2
  %43 = ptrtoint ptr %priv.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %priv.i.i.i.i, align 4
  %key.i47.i.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i44.i.i.i, i32 0, i32 3
  %44 = ptrtoint ptr %key.i47.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @counter_comp_id_attr_create.__key, ptr %key.i47.i.i.i, align 4
  %45 = ptrtoint ptr %call.i.i44.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %call1.i.i.i.i, ptr %call.i.i44.i.i.i, align 4
  %mode.i48.i.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i44.i.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %mode.i48.i.i.i to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 292, ptr %mode.i48.i.i.i, align 4
  %show.i49.i.i.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i44.i.i.i, i32 0, i32 1
  %47 = ptrtoint ptr %show.i49.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @counter_comp_id_show, ptr %show.i49.i.i.i, align 4
  %l.i50.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i44.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %attr_list.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %attr_list.i.i.i.i, align 4
  %call.i.i.i52.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i50.i.i.i, ptr noundef %attr_list.i.i.i.i, ptr noundef %49) #5
  br i1 %call.i.i.i52.i.i.i, label %if.end.i.i.i55.i.i.i, label %if.end4.i.i.i.i.for.inc.i.i.i_crit_edge

if.end4.i.i.i.i.for.inc.i.i.i_crit_edge:          ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i.i

if.end.i.i.i55.i.i.i:                             ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i53.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i53.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %l.i50.i.i.i, ptr %prev1.i.i.i53.i.i.i, align 4
  %51 = ptrtoint ptr %l.i50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %49, ptr %l.i50.i.i.i, align 4
  %prev3.i.i.i54.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i44.i.i.i, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %prev3.i.i.i54.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %attr_list.i.i.i.i, ptr %prev3.i.i.i54.i.i.i, align 4
  %53 = ptrtoint ptr %attr_list.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %l.i50.i.i.i, ptr %attr_list.i.i.i.i, align 4
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.end.i.i.i55.i.i.i, %if.end4.i.i.i.i.for.inc.i.i.i_crit_edge
  %54 = ptrtoint ptr %num_attr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_attr.i.i.i.i, align 4
  %inc.i57.i.i.i = add i32 %55, 1
  store i32 %inc.i57.i.i.i, ptr %num_attr.i.i.i.i, align 4
  %inc.i.i.i = add nuw i32 %i.065.i.i.i, 1
  %56 = ptrtoint ptr %num_ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %num_ext.i.i.i, align 4
  %cmp6.i.i.i = icmp ult i32 %inc.i.i.i, %57
  br i1 %cmp6.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.for.inc.i.i_crit_edge

for.inc.i.i.i.for.inc.i.i_crit_edge:              ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i

counter_signal_attrs_create.exit.thread.i.i:      ; preds = %if.end.i46.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge, %if.end11.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge, %for.body.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge, %if.end.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge, %if.end.i.i105.counter_signal_attrs_create.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i.i = phi i32 [ %call8.i.i.i, %for.body.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge ], [ -12, %if.end11.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge ], [ -12, %if.end.i46.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge ], [ %call.i.i.i, %if.end.i.i105.counter_signal_attrs_create.exit.thread.i.i_crit_edge ], [ -12, %if.end.i.i.i.counter_signal_attrs_create.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %comp.i.i.i) #5
  br label %cleanup

for.inc.i.i:                                      ; preds = %for.inc.i.i.i.for.inc.i.i_crit_edge, %counter_name_attr_create.exit.i.i.i.for.inc.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %comp.i.i.i) #5
  %inc.i.i = add nuw i32 %i.026.i.i, 1
  %58 = ptrtoint ptr %num_signals to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %num_signals, align 8
  %cmp.i.i = icmp ult i32 %inc.i.i, %59
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end.i_crit_edge

for.inc.i.i.if.end.i_crit_edge:                   ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

if.end.i:                                         ; preds = %for.inc.i.i.if.end.i_crit_edge, %for.end.if.end.i_crit_edge
  %60 = ptrtoint ptr %num_signals to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_signals, align 8
  %add.ptr.i = getelementptr %struct.counter_attribute_group, ptr %call5.i.i, i32 %61
  %62 = ptrtoint ptr %num_counts to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %num_counts, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp66.not.i.i = icmp eq i32 %63, 0
  br i1 %cmp66.not.i.i, label %if.end.i.if.end5.i_crit_edge, label %for.body.lr.ph.i81.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

for.body.lr.ph.i81.i:                             ; preds = %if.end.i
  %counts.i.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 5
  %64 = getelementptr inbounds %struct.counter_comp, ptr %comp.i.i78.i, i32 0, i32 1
  %65 = getelementptr inbounds %struct.counter_comp, ptr %comp.i.i78.i, i32 0, i32 2
  %66 = getelementptr inbounds %struct.counter_comp, ptr %comp.i.i78.i, i32 0, i32 3
  %67 = getelementptr inbounds %struct.counter_comp, ptr %comp.i.i78.i, i32 0, i32 4
  %signals.i.i.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 3
  %ops.i.i80.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 2
  %68 = getelementptr inbounds %struct.counter_comp, ptr %comp.i33.i.i, i32 0, i32 3
  %69 = getelementptr inbounds %struct.counter_comp, ptr %comp.i33.i.i, i32 0, i32 4
  br label %for.body.i85.i

for.body.i85.i:                                   ; preds = %for.inc.i118.i.for.body.i85.i_crit_edge, %for.body.lr.ph.i81.i
  %i.067.i.i = phi i32 [ 0, %for.body.lr.ph.i81.i ], [ %inc.i116.i, %for.inc.i118.i.for.body.i85.i_crit_edge ]
  %70 = ptrtoint ptr %counts.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %counts.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.counter_count, ptr %71, i32 %i.067.i.i
  %call.i82.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.2, i32 noundef %i.067.i.i) #5
  %arrayidx.i83.i = getelementptr %struct.counter_attribute_group, ptr %add.ptr.i, i32 %i.067.i.i
  %72 = ptrtoint ptr %arrayidx.i83.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %call.i82.i, ptr %arrayidx.i83.i, align 4
  %tobool.not.i84.i = icmp eq ptr %call.i82.i, null
  br i1 %tobool.not.i84.i, label %for.body.i85.i.cleanup_crit_edge, label %if.end.i86.i

for.body.i85.i.cleanup_crit_edge:                 ; preds = %for.body.i85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i86.i:                                     ; preds = %for.body.i85.i
  %num_synapses.i.i.i = getelementptr %struct.counter_count, ptr %71, i32 %i.067.i.i, i32 5
  %73 = ptrtoint ptr %num_synapses.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %num_synapses.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp41.not.i.i.i = icmp eq i32 %74, 0
  br i1 %cmp41.not.i.i.i, label %if.end.i86.i.if.end7.i.i_crit_edge, label %for.body.lr.ph.i.i.i

if.end.i86.i.if.end7.i.i_crit_edge:               ; preds = %if.end.i86.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

for.body.lr.ph.i.i.i:                             ; preds = %if.end.i86.i
  %synapses.i.i.i = getelementptr %struct.counter_count, ptr %71, i32 %i.067.i.i, i32 4
  %attr_list.i.i.i87.i = getelementptr %struct.counter_attribute_group, ptr %add.ptr.i, i32 %i.067.i.i, i32 1
  %num_attr.i.i.i88.i = getelementptr %struct.counter_attribute_group, ptr %add.ptr.i, i32 %i.067.i.i, i32 2
  br label %for.body.i.i90.i

for.body.i.i90.i:                                 ; preds = %for.inc.i.i110.i.for.body.i.i90.i_crit_edge, %for.body.lr.ph.i.i.i
  %i.042.i.i.i = phi i32 [ 0, %for.body.lr.ph.i.i.i ], [ %inc.i.i108.i, %for.inc.i.i110.i.for.body.i.i90.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %comp.i.i78.i) #5
  %75 = ptrtoint ptr %synapses.i.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %synapses.i.i.i, align 4
  %signal.i.i.i = getelementptr %struct.counter_synapse, ptr %76, i32 %i.042.i.i.i, i32 2
  %77 = ptrtoint ptr %signal.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %signal.i.i.i, align 4
  %79 = ptrtoint ptr %signals.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %signals.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %78 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %sub.ptr.div.i.i.i = ashr exact i32 %sub.ptr.sub.i.i.i, 4
  %call.i.i89.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.3, i32 noundef %sub.ptr.div.i.i.i) #5
  %81 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call.i.i89.i, ptr %64, align 4
  %tobool.not.i.i.i = icmp eq ptr %call.i.i89.i, null
  br i1 %tobool.not.i.i.i, label %for.body.i.i90.i.cleanup.thread.i.i.i_crit_edge, label %if.end.i.i91.i

for.body.i.i90.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %for.body.i.i90.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i.i

if.end.i.i91.i:                                   ; preds = %for.body.i.i90.i
  %add.ptr.i.i.i = getelementptr %struct.counter_synapse, ptr %76, i32 %i.042.i.i.i
  %82 = ptrtoint ptr %comp.i.i78.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 5, ptr %comp.i.i78.i, align 4
  %83 = ptrtoint ptr %ops.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %ops.i.i80.i, align 8
  %action_read.i.i.i = getelementptr inbounds %struct.counter_ops, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %action_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %action_read.i.i.i, align 4
  %87 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %86, ptr %66, align 4
  %action_write.i.i.i = getelementptr inbounds %struct.counter_ops, ptr %84, i32 0, i32 6
  %88 = ptrtoint ptr %action_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %action_write.i.i.i, align 4
  %90 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %89, ptr %67, align 4
  %91 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr.i.i.i, ptr %65, align 4
  %call4.i.i.i = call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %arrayidx.i83.i, ptr noundef nonnull %comp.i.i78.i, i32 noundef 2, ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp5.i.i.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp5.i.i.i, label %if.end.i.i91.i.cleanup.thread.i.i.i_crit_edge, label %if.end7.i.i.i

if.end.i.i91.i.cleanup.thread.i.i.i_crit_edge:    ; preds = %if.end.i.i91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i.i

if.end7.i.i.i:                                    ; preds = %if.end.i.i91.i
  %call.i.i.i.i92.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not.i.i.i93.i = icmp eq ptr %call.i.i.i.i92.i, null
  br i1 %tobool.not.i.i.i93.i, label %if.end7.i.i.i.cleanup.thread36.i.i.i_crit_edge, label %if.end.i.i.i96.i

if.end7.i.i.i.cleanup.thread36.i.i.i_crit_edge:   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread36.i.i.i

if.end.i.i.i96.i:                                 ; preds = %if.end7.i.i.i
  %call1.i.i.i94.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef nonnull %call.i.i89.i) #5
  %tobool2.not.i.i.i95.i = icmp eq ptr %call1.i.i.i94.i, null
  br i1 %tobool2.not.i.i.i95.i, label %if.end.i.i.i96.i.cleanup.thread36.i.i.i_crit_edge, label %if.end4.i.i.i103.i

if.end.i.i.i96.i.cleanup.thread36.i.i.i_crit_edge: ; preds = %if.end.i.i.i96.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread36.i.i.i

if.end4.i.i.i103.i:                               ; preds = %if.end.i.i.i96.i
  %92 = inttoptr i32 %i.042.i.i.i to ptr
  %priv.i.i.i97.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i.i.i92.i, i32 0, i32 2, i32 2
  %93 = ptrtoint ptr %priv.i.i.i97.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %92, ptr %priv.i.i.i97.i, align 4
  %key.i.i.i98.i = getelementptr inbounds %struct.attribute, ptr %call.i.i.i.i92.i, i32 0, i32 3
  %94 = ptrtoint ptr %key.i.i.i98.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @counter_comp_id_attr_create.__key, ptr %key.i.i.i98.i, align 4
  %95 = ptrtoint ptr %call.i.i.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %call1.i.i.i94.i, ptr %call.i.i.i.i92.i, align 4
  %mode.i.i.i99.i = getelementptr inbounds %struct.attribute, ptr %call.i.i.i.i92.i, i32 0, i32 1
  %96 = ptrtoint ptr %mode.i.i.i99.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 292, ptr %mode.i.i.i99.i, align 4
  %show.i.i.i100.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i.i.i92.i, i32 0, i32 1
  %97 = ptrtoint ptr %show.i.i.i100.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @counter_comp_id_show, ptr %show.i.i.i100.i, align 4
  %l.i.i.i101.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i.i.i92.i, i32 0, i32 1
  %98 = ptrtoint ptr %attr_list.i.i.i87.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %attr_list.i.i.i87.i, align 4
  %call.i.i.i.i.i102.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i.i.i101.i, ptr noundef %attr_list.i.i.i87.i, ptr noundef %99) #5
  br i1 %call.i.i.i.i.i102.i, label %if.end.i.i.i.i.i106.i, label %if.end4.i.i.i103.i.for.inc.i.i110.i_crit_edge

if.end4.i.i.i103.i.for.inc.i.i110.i_crit_edge:    ; preds = %if.end4.i.i.i103.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i.i110.i

if.end.i.i.i.i.i106.i:                            ; preds = %if.end4.i.i.i103.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i.i.i104.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i.i.i104.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %l.i.i.i101.i, ptr %prev1.i.i.i.i.i104.i, align 4
  %101 = ptrtoint ptr %l.i.i.i101.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %99, ptr %l.i.i.i101.i, align 4
  %prev3.i.i.i.i.i105.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i.i.i92.i, i32 0, i32 1, i32 1
  %102 = ptrtoint ptr %prev3.i.i.i.i.i105.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %attr_list.i.i.i87.i, ptr %prev3.i.i.i.i.i105.i, align 4
  %103 = ptrtoint ptr %attr_list.i.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store volatile ptr %l.i.i.i101.i, ptr %attr_list.i.i.i87.i, align 4
  br label %for.inc.i.i110.i

cleanup.thread.i.i.i:                             ; preds = %if.end.i.i91.i.cleanup.thread.i.i.i_crit_edge, %for.body.i.i90.i.cleanup.thread.i.i.i_crit_edge
  %retval.1.ph.i.i.i = phi i32 [ %call4.i.i.i, %if.end.i.i91.i.cleanup.thread.i.i.i_crit_edge ], [ -12, %for.body.i.i90.i.cleanup.thread.i.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %comp.i.i78.i) #5
  br label %cleanup

cleanup.thread36.i.i.i:                           ; preds = %if.end.i.i.i96.i.cleanup.thread36.i.i.i_crit_edge, %if.end7.i.i.i.cleanup.thread36.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %comp.i.i78.i) #5
  br label %cleanup

for.inc.i.i110.i:                                 ; preds = %if.end.i.i.i.i.i106.i, %if.end4.i.i.i103.i.for.inc.i.i110.i_crit_edge
  %104 = ptrtoint ptr %num_attr.i.i.i88.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %num_attr.i.i.i88.i, align 4
  %inc.i.i.i107.i = add i32 %105, 1
  store i32 %inc.i.i.i107.i, ptr %num_attr.i.i.i88.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %comp.i.i78.i) #5
  %inc.i.i108.i = add nuw i32 %i.042.i.i.i, 1
  %106 = ptrtoint ptr %num_synapses.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %num_synapses.i.i.i, align 4
  %cmp.i.i109.i = icmp ult i32 %inc.i.i108.i, %107
  br i1 %cmp.i.i109.i, label %for.inc.i.i110.i.for.body.i.i90.i_crit_edge, label %for.inc.i.i110.i.if.end7.i.i_crit_edge

for.inc.i.i110.i.if.end7.i.i_crit_edge:           ; preds = %for.inc.i.i110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i.i

for.inc.i.i110.i.for.body.i.i90.i_crit_edge:      ; preds = %for.inc.i.i110.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i90.i

if.end7.i.i:                                      ; preds = %for.inc.i.i110.i.if.end7.i.i_crit_edge, %if.end.i86.i.if.end7.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %comp.i33.i.i) #5
  %108 = call ptr @memcpy(ptr %comp.i33.i.i, ptr @counter_count_comp, i32 12)
  %109 = ptrtoint ptr %ops.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i.i80.i, align 8
  %count_read.i.i.i = getelementptr inbounds %struct.counter_ops, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %count_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %count_read.i.i.i, align 4
  %113 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %112, ptr %68, align 4
  %count_write.i.i.i = getelementptr inbounds %struct.counter_ops, ptr %110, i32 0, i32 2
  %114 = ptrtoint ptr %count_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %count_write.i.i.i, align 4
  %116 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %69, align 4
  %call.i36.i.i = call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %arrayidx.i83.i, ptr noundef nonnull %comp.i33.i.i, i32 noundef 2, ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i.i)
  %cmp.i37.i.i = icmp slt i32 %call.i36.i.i, 0
  br i1 %cmp.i37.i.i, label %if.end7.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, label %if.end.i40.i.i

if.end7.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge: ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_count_attrs_create.exit.thread.i.i

if.end.i40.i.i:                                   ; preds = %if.end7.i.i
  %name.i.i111.i = getelementptr %struct.counter_count, ptr %71, i32 %i.067.i.i, i32 1
  %117 = ptrtoint ptr %name.i.i111.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %name.i.i111.i, align 4
  %call.i.i.i38.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not.i.i39.i.i = icmp eq ptr %call.i.i.i38.i.i, null
  br i1 %tobool.not.i.i39.i.i, label %if.end.i40.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, label %if.end.i.i47.i.i

if.end.i40.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge: ; preds = %if.end.i40.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_count_attrs_create.exit.thread.i.i

if.end.i.i47.i.i:                                 ; preds = %if.end.i40.i.i
  %name1.i.i.i112.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i.i38.i.i, i32 0, i32 2, i32 1
  %119 = ptrtoint ptr %name1.i.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %118, ptr %name1.i.i.i112.i, align 4
  %key.i.i41.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i.i38.i.i, i32 0, i32 3
  %120 = ptrtoint ptr %key.i.i41.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr @counter_name_attr_create.__key, ptr %key.i.i41.i.i, align 4
  %121 = ptrtoint ptr %call.i.i.i38.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr @.str.6, ptr %call.i.i.i38.i.i, align 4
  %mode.i.i42.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i.i38.i.i, i32 0, i32 1
  %122 = ptrtoint ptr %mode.i.i42.i.i to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 292, ptr %mode.i.i42.i.i, align 4
  %show.i.i43.i.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i.i38.i.i, i32 0, i32 1
  %123 = ptrtoint ptr %show.i.i43.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr @counter_comp_name_show, ptr %show.i.i43.i.i, align 4
  %l.i.i44.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i.i38.i.i, i32 0, i32 1
  %attr_list.i.i45.i.i = getelementptr %struct.counter_attribute_group, ptr %add.ptr.i, i32 %i.067.i.i, i32 1
  %124 = ptrtoint ptr %attr_list.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %attr_list.i.i45.i.i, align 4
  %call.i.i.i.i46.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i.i44.i.i, ptr noundef %attr_list.i.i45.i.i, ptr noundef %125) #5
  br i1 %call.i.i.i.i46.i.i, label %if.end.i.i.i.i50.i.i, label %if.end.i.i47.i.i.if.end6.i.i.i_crit_edge

if.end.i.i47.i.i.if.end6.i.i.i_crit_edge:         ; preds = %if.end.i.i47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i.i.i

if.end.i.i.i.i50.i.i:                             ; preds = %if.end.i.i47.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i.i48.i.i = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %prev1.i.i.i.i48.i.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %l.i.i44.i.i, ptr %prev1.i.i.i.i48.i.i, align 4
  %127 = ptrtoint ptr %l.i.i44.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %125, ptr %l.i.i44.i.i, align 4
  %prev3.i.i.i.i49.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i.i38.i.i, i32 0, i32 1, i32 1
  %128 = ptrtoint ptr %prev3.i.i.i.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %attr_list.i.i45.i.i, ptr %prev3.i.i.i.i49.i.i, align 4
  %129 = ptrtoint ptr %attr_list.i.i45.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store volatile ptr %l.i.i44.i.i, ptr %attr_list.i.i45.i.i, align 4
  br label %if.end6.i.i.i

if.end6.i.i.i:                                    ; preds = %if.end.i.i.i.i50.i.i, %if.end.i.i47.i.i.if.end6.i.i.i_crit_edge
  %num_attr.i.i51.i.i = getelementptr %struct.counter_attribute_group, ptr %add.ptr.i, i32 %i.067.i.i, i32 2
  %130 = ptrtoint ptr %num_attr.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %num_attr.i.i51.i.i, align 4
  %inc.i.i52.i.i = add i32 %131, 1
  store i32 %inc.i.i52.i.i, ptr %num_attr.i.i51.i.i, align 4
  %132 = call ptr @memcpy(ptr %comp.i33.i.i, ptr @counter_function_comp, i32 12)
  %133 = ptrtoint ptr %ops.i.i80.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %ops.i.i80.i, align 8
  %function_read.i.i.i = getelementptr inbounds %struct.counter_ops, ptr %134, i32 0, i32 3
  %135 = ptrtoint ptr %function_read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %function_read.i.i.i, align 4
  %137 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %136, ptr %68, align 4
  %function_write.i.i.i = getelementptr inbounds %struct.counter_ops, ptr %134, i32 0, i32 4
  %138 = ptrtoint ptr %function_write.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %function_write.i.i.i, align 4
  %140 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %139, ptr %69, align 4
  %call9.i.i.i = call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %arrayidx.i83.i, ptr noundef nonnull %comp.i33.i.i, i32 noundef 2, ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %cmp10.i.i.i = icmp slt i32 %call9.i.i.i, 0
  br i1 %cmp10.i.i.i, label %if.end6.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, label %for.cond.preheader.i.i.i

if.end6.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge: ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_count_attrs_create.exit.thread.i.i

for.cond.preheader.i.i.i:                         ; preds = %if.end6.i.i.i
  %ext14.i.i.i = getelementptr %struct.counter_count, ptr %71, i32 %i.067.i.i, i32 6
  %num_ext.i.i113.i = getelementptr %struct.counter_count, ptr %71, i32 %i.067.i.i, i32 7
  %141 = ptrtoint ptr %num_ext.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %num_ext.i.i113.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %142)
  %cmp1379.not.i.i.i = icmp eq i32 %142, 0
  br i1 %cmp1379.not.i.i.i, label %for.cond.preheader.i.i.i.for.inc.i118.i_crit_edge, label %for.cond.preheader.i.i.i.for.body.i53.i.i_crit_edge

for.cond.preheader.i.i.i.for.body.i53.i.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  br label %for.body.i53.i.i

for.cond.preheader.i.i.i.for.inc.i118.i_crit_edge: ; preds = %for.cond.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i118.i

for.body.i53.i.i:                                 ; preds = %for.inc.i59.i.i.for.body.i53.i.i_crit_edge, %for.cond.preheader.i.i.i.for.body.i53.i.i_crit_edge
  %i.080.i.i.i = phi i32 [ %inc.i58.i.i, %for.inc.i59.i.i.for.body.i53.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.i.for.body.i53.i.i_crit_edge ]
  %143 = ptrtoint ptr %ext14.i.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %ext14.i.i.i, align 4
  %arrayidx.i.i114.i = getelementptr %struct.counter_comp, ptr %144, i32 %i.080.i.i.i
  %call15.i.i.i = tail call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %arrayidx.i83.i, ptr noundef %arrayidx.i.i114.i, i32 noundef 2, ptr noundef %add.ptr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i.i)
  %cmp16.i.i.i = icmp slt i32 %call15.i.i.i, 0
  br i1 %cmp16.i.i.i, label %for.body.i53.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, label %if.end18.i.i.i

for.body.i53.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge: ; preds = %for.body.i53.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_count_attrs_create.exit.thread.i.i

if.end18.i.i.i:                                   ; preds = %for.body.i53.i.i
  %name19.i.i.i = getelementptr %struct.counter_comp, ptr %144, i32 %i.080.i.i.i, i32 1
  %145 = ptrtoint ptr %name19.i.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %name19.i.i.i, align 4
  %call.i.i59.i.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not.i60.i.i.i = icmp eq ptr %call.i.i59.i.i.i, null
  br i1 %tobool.not.i60.i.i.i, label %if.end18.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, label %if.end.i61.i.i.i

if.end18.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge: ; preds = %if.end18.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_count_attrs_create.exit.thread.i.i

if.end.i61.i.i.i:                                 ; preds = %if.end18.i.i.i
  %call1.i.i54.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef %146) #5
  %tobool2.not.i.i55.i.i = icmp eq ptr %call1.i.i54.i.i, null
  br i1 %tobool2.not.i.i55.i.i, label %if.end.i61.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, label %if.end4.i.i57.i.i

if.end.i61.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge: ; preds = %if.end.i61.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %counter_count_attrs_create.exit.thread.i.i

if.end4.i.i57.i.i:                                ; preds = %if.end.i61.i.i.i
  %147 = inttoptr i32 %i.080.i.i.i to ptr
  %priv.i.i56.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i59.i.i.i, i32 0, i32 2, i32 2
  %148 = ptrtoint ptr %priv.i.i56.i.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %147, ptr %priv.i.i56.i.i, align 4
  %key.i62.i.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i59.i.i.i, i32 0, i32 3
  %149 = ptrtoint ptr %key.i62.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr @counter_comp_id_attr_create.__key, ptr %key.i62.i.i.i, align 4
  %150 = ptrtoint ptr %call.i.i59.i.i.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %call1.i.i54.i.i, ptr %call.i.i59.i.i.i, align 4
  %mode.i63.i.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i59.i.i.i, i32 0, i32 1
  %151 = ptrtoint ptr %mode.i63.i.i.i to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 292, ptr %mode.i63.i.i.i, align 4
  %show.i64.i.i.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i59.i.i.i, i32 0, i32 1
  %152 = ptrtoint ptr %show.i64.i.i.i to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr @counter_comp_id_show, ptr %show.i64.i.i.i, align 4
  %l.i65.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i59.i.i.i, i32 0, i32 1
  %153 = ptrtoint ptr %attr_list.i.i45.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %attr_list.i.i45.i.i, align 4
  %call.i.i.i67.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i65.i.i.i, ptr noundef %attr_list.i.i45.i.i, ptr noundef %154) #5
  br i1 %call.i.i.i67.i.i.i, label %if.end.i.i.i70.i.i.i, label %if.end4.i.i57.i.i.for.inc.i59.i.i_crit_edge

if.end4.i.i57.i.i.for.inc.i59.i.i_crit_edge:      ; preds = %if.end4.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i59.i.i

if.end.i.i.i70.i.i.i:                             ; preds = %if.end4.i.i57.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i68.i.i.i = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  %155 = ptrtoint ptr %prev1.i.i.i68.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %l.i65.i.i.i, ptr %prev1.i.i.i68.i.i.i, align 4
  %156 = ptrtoint ptr %l.i65.i.i.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr %154, ptr %l.i65.i.i.i, align 4
  %prev3.i.i.i69.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i59.i.i.i, i32 0, i32 1, i32 1
  %157 = ptrtoint ptr %prev3.i.i.i69.i.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store ptr %attr_list.i.i45.i.i, ptr %prev3.i.i.i69.i.i.i, align 4
  %158 = ptrtoint ptr %attr_list.i.i45.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store volatile ptr %l.i65.i.i.i, ptr %attr_list.i.i45.i.i, align 4
  br label %for.inc.i59.i.i

for.inc.i59.i.i:                                  ; preds = %if.end.i.i.i70.i.i.i, %if.end4.i.i57.i.i.for.inc.i59.i.i_crit_edge
  %159 = ptrtoint ptr %num_attr.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %num_attr.i.i51.i.i, align 4
  %inc.i72.i.i.i = add i32 %160, 1
  store i32 %inc.i72.i.i.i, ptr %num_attr.i.i51.i.i, align 4
  %inc.i58.i.i = add nuw i32 %i.080.i.i.i, 1
  %161 = ptrtoint ptr %num_ext.i.i113.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %num_ext.i.i113.i, align 4
  %cmp13.i.i.i = icmp ult i32 %inc.i58.i.i, %162
  br i1 %cmp13.i.i.i, label %for.inc.i59.i.i.for.body.i53.i.i_crit_edge, label %for.inc.i59.i.i.for.inc.i118.i_crit_edge

for.inc.i59.i.i.for.inc.i118.i_crit_edge:         ; preds = %for.inc.i59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i118.i

for.inc.i59.i.i.for.body.i53.i.i_crit_edge:       ; preds = %for.inc.i59.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i53.i.i

counter_count_attrs_create.exit.thread.i.i:       ; preds = %if.end.i61.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, %if.end18.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, %for.body.i53.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, %if.end6.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, %if.end.i40.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge, %if.end7.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge
  %retval.0.i.ph.i115.i = phi i32 [ %call15.i.i.i, %for.body.i53.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge ], [ -12, %if.end18.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge ], [ -12, %if.end.i61.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge ], [ %call.i36.i.i, %if.end7.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge ], [ %call9.i.i.i, %if.end6.i.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge ], [ -12, %if.end.i40.i.i.counter_count_attrs_create.exit.thread.i.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %comp.i33.i.i) #5
  br label %cleanup

for.inc.i118.i:                                   ; preds = %for.inc.i59.i.i.for.inc.i118.i_crit_edge, %for.cond.preheader.i.i.i.for.inc.i118.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %comp.i33.i.i) #5
  %inc.i116.i = add nuw i32 %i.067.i.i, 1
  %163 = ptrtoint ptr %num_counts to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %num_counts, align 8
  %cmp.i117.i = icmp ult i32 %inc.i116.i, %164
  br i1 %cmp.i117.i, label %for.inc.i118.i.for.body.i85.i_crit_edge, label %for.inc.i118.i.if.end5.i_crit_edge

for.inc.i118.i.if.end5.i_crit_edge:               ; preds = %for.inc.i118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5.i

for.inc.i118.i.for.body.i85.i_crit_edge:          ; preds = %for.inc.i118.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i85.i

if.end5.i:                                        ; preds = %for.inc.i118.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %165 = ptrtoint ptr %num_counts to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %num_counts, align 8
  %add.ptr6.i = getelementptr %struct.counter_attribute_group, ptr %add.ptr.i, i32 %166
  %167 = ptrtoint ptr %counter to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %counter, align 8
  %call.i.i120.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not.i121.i = icmp eq ptr %call.i.i120.i, null
  br i1 %tobool.not.i121.i, label %if.end5.i.cleanup_crit_edge, label %if.end.i122.i

if.end5.i.cleanup_crit_edge:                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i122.i:                                    ; preds = %if.end5.i
  %name1.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i120.i, i32 0, i32 2, i32 1
  %169 = ptrtoint ptr %name1.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %168, ptr %name1.i.i, align 4
  %key.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i120.i, i32 0, i32 3
  %170 = ptrtoint ptr %key.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr @counter_name_attr_create.__key, ptr %key.i.i, align 4
  %171 = ptrtoint ptr %call.i.i120.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @.str.6, ptr %call.i.i120.i, align 4
  %mode.i.i = getelementptr inbounds %struct.attribute, ptr %call.i.i120.i, i32 0, i32 1
  %172 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 292, ptr %mode.i.i, align 4
  %show.i.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i120.i, i32 0, i32 1
  %173 = ptrtoint ptr %show.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr @counter_comp_name_show, ptr %show.i.i, align 4
  %l.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i120.i, i32 0, i32 1
  %attr_list.i.i = getelementptr inbounds %struct.counter_attribute_group, ptr %add.ptr6.i, i32 0, i32 1
  %174 = ptrtoint ptr %attr_list.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %attr_list.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i.i, ptr noundef %attr_list.i.i, ptr noundef %175) #5
  br i1 %call.i.i.i.i, label %if.end.i.i.i123.i, label %if.end.i122.i.if.end10.i_crit_edge

if.end.i122.i.if.end10.i_crit_edge:               ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.end.i.i.i123.i:                                ; preds = %if.end.i122.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %175, i32 0, i32 1
  %176 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store ptr %l.i.i, ptr %prev1.i.i.i.i, align 4
  %177 = ptrtoint ptr %l.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr %175, ptr %l.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i120.i, i32 0, i32 1, i32 1
  %178 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %attr_list.i.i, ptr %prev3.i.i.i.i, align 4
  %179 = ptrtoint ptr %attr_list.i.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store volatile ptr %l.i.i, ptr %attr_list.i.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end.i.i.i123.i, %if.end.i122.i.if.end10.i_crit_edge
  %num_attr.i.i = getelementptr inbounds %struct.counter_attribute_group, ptr %add.ptr6.i, i32 0, i32 2
  %180 = ptrtoint ptr %num_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %num_attr.i.i, align 4
  %inc.i124.i = add i32 %181, 1
  store i32 %inc.i124.i, ptr %num_attr.i.i, align 4
  %call11.i = tail call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %add.ptr6.i, ptr noundef nonnull @counter_num_signals_comp, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %cmp12.i = icmp slt i32 %call11.i, 0
  br i1 %cmp12.i, label %if.end10.i.cleanup_crit_edge, label %if.end14.i

if.end10.i.cleanup_crit_edge:                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.i:                                       ; preds = %if.end10.i
  %call15.i = tail call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %add.ptr6.i, ptr noundef nonnull @counter_num_counts_comp, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %cmp16.i = icmp slt i32 %call15.i, 0
  br i1 %cmp16.i, label %if.end14.i.cleanup_crit_edge, label %if.end18.i

if.end14.i.cleanup_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18.i:                                       ; preds = %if.end14.i
  %call19.i = tail call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %add.ptr6.i, ptr noundef nonnull @counter_events_queue_size_comp, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %cmp20.i = icmp slt i32 %call19.i, 0
  br i1 %cmp20.i, label %if.end18.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end18.i.cleanup_crit_edge:                     ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end18.i
  %ext24.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 7
  %num_ext.i = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 8
  %182 = ptrtoint ptr %num_ext.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %num_ext.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %cmp23156.not.i = icmp eq i32 %183, 0
  br i1 %cmp23156.not.i, label %for.cond.preheader.i.if.end6_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.if.end6_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0157.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %184 = ptrtoint ptr %ext24.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %ext24.i, align 4
  %arrayidx.i = getelementptr %struct.counter_comp, ptr %185, i32 %i.0157.i
  %call25.i = tail call fastcc i32 @counter_attr_create(ptr noundef %dev1, ptr noundef %add.ptr6.i, ptr noundef %arrayidx.i, i32 noundef 0, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp slt i32 %call25.i, 0
  br i1 %cmp26.i, label %for.body.i.cleanup_crit_edge, label %if.end28.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end28.i:                                       ; preds = %for.body.i
  %name29.i = getelementptr %struct.counter_comp, ptr %185, i32 %i.0157.i, i32 1
  %186 = ptrtoint ptr %name29.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %name29.i, align 4
  %call.i.i126.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not.i127.i = icmp eq ptr %call.i.i126.i, null
  br i1 %tobool.not.i127.i, label %if.end28.i.cleanup_crit_edge, label %if.end.i128.i

if.end28.i.cleanup_crit_edge:                     ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i128.i:                                    ; preds = %if.end28.i
  %call1.i.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.34, ptr noundef %187) #5
  %tobool2.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool2.not.i.i, label %if.end.i128.i.cleanup_crit_edge, label %if.end4.i.i

if.end.i128.i.cleanup_crit_edge:                  ; preds = %if.end.i128.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4.i.i:                                      ; preds = %if.end.i128.i
  %188 = inttoptr i32 %i.0157.i to ptr
  %priv.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i126.i, i32 0, i32 2, i32 2
  %189 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store ptr %188, ptr %priv.i.i, align 4
  %key.i129.i = getelementptr inbounds %struct.attribute, ptr %call.i.i126.i, i32 0, i32 3
  %190 = ptrtoint ptr %key.i129.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr @counter_comp_id_attr_create.__key, ptr %key.i129.i, align 4
  %191 = ptrtoint ptr %call.i.i126.i to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call1.i.i, ptr %call.i.i126.i, align 4
  %mode.i130.i = getelementptr inbounds %struct.attribute, ptr %call.i.i126.i, i32 0, i32 1
  %192 = ptrtoint ptr %mode.i130.i to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 292, ptr %mode.i130.i, align 4
  %show.i131.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i126.i, i32 0, i32 1
  %193 = ptrtoint ptr %show.i131.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @counter_comp_id_show, ptr %show.i131.i, align 4
  %l.i132.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i126.i, i32 0, i32 1
  %194 = ptrtoint ptr %attr_list.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %attr_list.i.i, align 4
  %call.i.i.i134.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i132.i, ptr noundef %attr_list.i.i, ptr noundef %195) #5
  br i1 %call.i.i.i134.i, label %if.end.i.i.i137.i, label %if.end4.i.i.for.inc.i_crit_edge

if.end4.i.i.for.inc.i_crit_edge:                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.end.i.i.i137.i:                                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i135.i = getelementptr inbounds %struct.list_head, ptr %195, i32 0, i32 1
  %196 = ptrtoint ptr %prev1.i.i.i135.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %l.i132.i, ptr %prev1.i.i.i135.i, align 4
  %197 = ptrtoint ptr %l.i132.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr %195, ptr %l.i132.i, align 4
  %prev3.i.i.i136.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i126.i, i32 0, i32 1, i32 1
  %198 = ptrtoint ptr %prev3.i.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %attr_list.i.i, ptr %prev3.i.i.i136.i, align 4
  %199 = ptrtoint ptr %attr_list.i.i to i32
  call void @__asan_store4_noabort(i32 %199)
  store volatile ptr %l.i132.i, ptr %attr_list.i.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end.i.i.i137.i, %if.end4.i.i.for.inc.i_crit_edge
  %200 = ptrtoint ptr %num_attr.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %num_attr.i.i, align 4
  %inc.i139.i = add i32 %201, 1
  store i32 %inc.i139.i, ptr %num_attr.i.i, align 4
  %inc.i = add nuw i32 %i.0157.i, 1
  %202 = ptrtoint ptr %num_ext.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %num_ext.i, align 8
  %cmp23.i = icmp ult i32 %inc.i, %203
  br i1 %cmp23.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end6_crit_edge

for.inc.i.if.end6_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end6:                                          ; preds = %for.inc.i.if.end6_crit_edge, %for.cond.preheader.i.if.end6_crit_edge
  %add7 = add i32 %add, 2
  %204 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add7, i32 4) #5
  %205 = extractvalue { i32, i1 } %204, 1
  br i1 %205, label %devm_kcalloc.exit109.thread, label %devm_kcalloc.exit109, !prof !111

devm_kcalloc.exit109.thread:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %groups9123 = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9, i32 34
  %206 = ptrtoint ptr %groups9123 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr null, ptr %groups9123, align 8
  br label %cleanup

devm_kcalloc.exit109:                             ; preds = %if.end6
  %207 = extractvalue { i32, i1 } %204, 0
  %call5.i.i106 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %207, i32 noundef 3520) #5
  %groups9 = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 9, i32 34
  %208 = ptrtoint ptr %groups9 to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr %call5.i.i106, ptr %groups9, align 8
  %tobool11.not = icmp eq ptr %call5.i.i106, null
  br i1 %tobool11.not, label %devm_kcalloc.exit109.cleanup_crit_edge, label %if.end13

devm_kcalloc.exit109.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit109
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end13:                                         ; preds = %devm_kcalloc.exit109
  %209 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add2, i32 20) #5
  %210 = extractvalue { i32, i1 } %209, 1
  br i1 %210, label %if.end13.cleanup_crit_edge, label %devm_kcalloc.exit113, !prof !111

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

devm_kcalloc.exit113:                             ; preds = %if.end13
  %211 = extractvalue { i32, i1 } %209, 0
  %call5.i.i110 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %211, i32 noundef 3520) #5
  %tobool15.not = icmp eq ptr %call5.i.i110, null
  %brmerge = select i1 %tobool15.not, i1 true, i1 %cmp139.not
  %.mux = select i1 %tobool15.not, i32 -12, i32 0
  br i1 %brmerge, label %devm_kcalloc.exit113.cleanup_crit_edge, label %devm_kcalloc.exit113.for.body20_crit_edge

devm_kcalloc.exit113.for.body20_crit_edge:        ; preds = %devm_kcalloc.exit113
  br label %for.body20

devm_kcalloc.exit113.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit113
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body20:                                       ; preds = %for.end50.for.body20_crit_edge, %devm_kcalloc.exit113.for.body20_crit_edge
  %i.1146 = phi i32 [ %inc55, %for.end50.for.body20_crit_edge ], [ 0, %devm_kcalloc.exit113.for.body20_crit_edge ]
  %arrayidx21 = getelementptr %struct.counter_attribute_group, ptr %call5.i.i, i32 %i.1146
  %212 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %arrayidx21, align 4
  %arrayidx22 = getelementptr %struct.attribute_group, ptr %call5.i.i110, i32 %i.1146
  %214 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr %213, ptr %arrayidx22, align 4
  %num_attr = getelementptr %struct.counter_attribute_group, ptr %call5.i.i, i32 %i.1146, i32 2
  %215 = ptrtoint ptr %num_attr to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %num_attr, align 4
  %add25 = add i32 %216, 1
  %217 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add25, i32 4) #5
  %218 = extractvalue { i32, i1 } %217, 1
  br i1 %218, label %devm_kcalloc.exit117.thread, label %devm_kcalloc.exit117, !prof !111

devm_kcalloc.exit117.thread:                      ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #7
  %attrs128 = getelementptr %struct.attribute_group, ptr %call5.i.i110, i32 %i.1146, i32 3
  %219 = ptrtoint ptr %attrs128 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr null, ptr %attrs128, align 4
  br label %cleanup

devm_kcalloc.exit117:                             ; preds = %for.body20
  %220 = extractvalue { i32, i1 } %217, 0
  %call5.i.i114 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %220, i32 noundef 3520) #5
  %attrs = getelementptr %struct.attribute_group, ptr %call5.i.i110, i32 %i.1146, i32 3
  %221 = ptrtoint ptr %attrs to i32
  call void @__asan_store4_noabort(i32 %221)
  store ptr %call5.i.i114, ptr %attrs, align 4
  %tobool30.not = icmp eq ptr %call5.i.i114, null
  br i1 %tobool30.not, label %devm_kcalloc.exit117.cleanup_crit_edge, label %if.end32

devm_kcalloc.exit117.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit117
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end32:                                         ; preds = %devm_kcalloc.exit117
  %attr_list34 = getelementptr %struct.counter_attribute_group, ptr %call5.i.i, i32 %i.1146, i32 1
  %222 = ptrtoint ptr %attr_list34 to i32
  call void @__asan_load4_noabort(i32 %222)
  %.pn141 = load ptr, ptr %attr_list34, align 4
  %cmp38.not142 = icmp eq ptr %.pn141, %attr_list34
  br i1 %cmp38.not142, label %if.end32.for.end50_crit_edge, label %if.end32.for.body39_crit_edge

if.end32.for.body39_crit_edge:                    ; preds = %if.end32
  br label %for.body39

if.end32.for.end50_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end50

for.body39:                                       ; preds = %for.body39.for.body39_crit_edge, %if.end32.for.body39_crit_edge
  %.pn144 = phi ptr [ %.pn, %for.body39.for.body39_crit_edge ], [ %.pn141, %if.end32.for.body39_crit_edge ]
  %j.0143 = phi i32 [ %inc42, %for.body39.for.body39_crit_edge ], [ 0, %if.end32.for.body39_crit_edge ]
  %p.0 = getelementptr i8, ptr %.pn144, i32 -28
  %223 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %attrs, align 4
  %inc42 = add i32 %j.0143, 1
  %arrayidx43 = getelementptr ptr, ptr %224, i32 %j.0143
  %225 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %225)
  store ptr %p.0, ptr %arrayidx43, align 4
  %226 = ptrtoint ptr %.pn144 to i32
  call void @__asan_load4_noabort(i32 %226)
  %.pn = load ptr, ptr %.pn144, align 4
  %cmp38.not = icmp eq ptr %.pn, %attr_list34
  br i1 %cmp38.not, label %for.body39.for.end50_crit_edge, label %for.body39.for.body39_crit_edge

for.body39.for.body39_crit_edge:                  ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body39

for.body39.for.end50_crit_edge:                   ; preds = %for.body39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end50

for.end50:                                        ; preds = %for.body39.for.end50_crit_edge, %if.end32.for.end50_crit_edge
  %227 = ptrtoint ptr %groups9 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %groups9, align 8
  %arrayidx53 = getelementptr ptr, ptr %228, i32 %i.1146
  %229 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store4_noabort(i32 %229)
  store ptr %arrayidx22, ptr %arrayidx53, align 4
  %inc55 = add nuw i32 %i.1146, 1
  %exitcond157.not = icmp eq i32 %i.1146, %add
  br i1 %exitcond157.not, label %for.end50.cleanup_crit_edge, label %for.end50.for.body20_crit_edge

for.end50.for.body20_crit_edge:                   ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body20

for.end50.cleanup_crit_edge:                      ; preds = %for.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.end50.cleanup_crit_edge, %devm_kcalloc.exit117.cleanup_crit_edge, %devm_kcalloc.exit117.thread, %devm_kcalloc.exit113.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %devm_kcalloc.exit109.cleanup_crit_edge, %devm_kcalloc.exit109.thread, %if.end.i128.i.cleanup_crit_edge, %if.end28.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %if.end18.i.cleanup_crit_edge, %if.end14.i.cleanup_crit_edge, %if.end10.i.cleanup_crit_edge, %if.end5.i.cleanup_crit_edge, %counter_count_attrs_create.exit.thread.i.i, %cleanup.thread36.i.i.i, %cleanup.thread.i.i.i, %for.body.i85.i.cleanup_crit_edge, %counter_signal_attrs_create.exit.thread.i.i, %for.body.i.i.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit109.cleanup_crit_edge ], [ %.mux, %devm_kcalloc.exit113.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit109.thread ], [ -12, %devm_kcalloc.exit117.thread ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end5.i.cleanup_crit_edge ], [ %retval.0.i.ph.i115.i, %counter_count_attrs_create.exit.thread.i.i ], [ -12, %cleanup.thread36.i.i.i ], [ %retval.1.ph.i.i.i, %cleanup.thread.i.i.i ], [ %retval.0.i.ph.i.i, %counter_signal_attrs_create.exit.thread.i.i ], [ %call19.i, %if.end18.i.cleanup_crit_edge ], [ %call15.i, %if.end14.i.cleanup_crit_edge ], [ %call11.i, %if.end10.i.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit117.cleanup_crit_edge ], [ 0, %for.end50.cleanup_crit_edge ], [ %call25.i, %for.body.i.cleanup_crit_edge ], [ -12, %if.end28.i.cleanup_crit_edge ], [ -12, %if.end.i128.i.cleanup_crit_edge ], [ -12, %for.body.i85.i.cleanup_crit_edge ], [ -12, %for.body.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @counter_attr_create(ptr noundef %dev, ptr noundef %group, ptr nocapture noundef readonly %comp, i32 noundef %scope, ptr noundef %parent) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %comp1 = getelementptr inbounds %struct.counter_attribute, ptr %call.i, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %comp1, ptr %comp, i32 20)
  %scope2 = getelementptr inbounds %struct.counter_attribute, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %scope2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %scope, ptr %scope2, align 4
  %parent3 = getelementptr inbounds %struct.counter_attribute, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %parent3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent, ptr %parent3, align 4
  %key = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 3
  %3 = ptrtoint ptr %key to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @counter_attr_create.__key, ptr %key, align 4
  %name = getelementptr inbounds %struct.counter_comp, ptr %comp, i32 0, i32 1
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %call.i, align 4
  %7 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %comp, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %8, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge98
    i32 3, label %if.end.sw.bb20_crit_edge
    i32 4, label %if.end.sw.bb20_crit_edge99
    i32 5, label %if.end.sw.bb20_crit_edge100
    i32 6, label %if.end.sw.bb20_crit_edge101
    i32 7, label %if.end.sw.bb20_crit_edge102
    i32 8, label %if.end.sw.bb20_crit_edge103
    i32 1, label %sw.bb39
  ]

if.end.sw.bb20_crit_edge103:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end.sw.bb20_crit_edge102:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end.sw.bb20_crit_edge101:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end.sw.bb20_crit_edge100:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end.sw.bb20_crit_edge99:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end.sw.bb20_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb20

if.end.sw.bb_crit_edge98:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge98
  %10 = getelementptr inbounds %struct.counter_comp, ptr %comp, i32 0, i32 3
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %sw.bb.if.end11_crit_edge, label %if.then8

sw.bb.if.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.then8:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %mode = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %mode, align 4
  %15 = or i16 %14, 292
  store i16 %15, ptr %mode, align 4
  %show = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %show to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @counter_comp_u8_show, ptr %show, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %sw.bb.if.end11_crit_edge
  %17 = getelementptr inbounds %struct.counter_comp, ptr %comp, i32 0, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %tobool12.not = icmp eq ptr %19, null
  br i1 %tobool12.not, label %if.end11.sw.epilog_crit_edge, label %if.end11.sw.epilog.sink.split_crit_edge

if.end11.sw.epilog.sink.split_crit_edge:          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end.sw.bb20_crit_edge, %if.end.sw.bb20_crit_edge99, %if.end.sw.bb20_crit_edge100, %if.end.sw.bb20_crit_edge101, %if.end.sw.bb20_crit_edge102, %if.end.sw.bb20_crit_edge103
  %20 = getelementptr inbounds %struct.counter_comp, ptr %comp, i32 0, i32 3
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool21.not = icmp eq ptr %22, null
  br i1 %tobool21.not, label %sw.bb20.if.end29_crit_edge, label %if.then22

sw.bb20.if.end29_crit_edge:                       ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29

if.then22:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  %mode24 = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %23 = ptrtoint ptr %mode24 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %mode24, align 4
  %25 = or i16 %24, 292
  store i16 %25, ptr %mode24, align 4
  %show28 = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %show28 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @counter_comp_u32_show, ptr %show28, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then22, %sw.bb20.if.end29_crit_edge
  %27 = getelementptr inbounds %struct.counter_comp, ptr %comp, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  %tobool30.not = icmp eq ptr %29, null
  br i1 %tobool30.not, label %if.end29.sw.epilog_crit_edge, label %if.end29.sw.epilog.sink.split_crit_edge

if.end29.sw.epilog.sink.split_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end29.sw.epilog_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end
  %30 = getelementptr inbounds %struct.counter_comp, ptr %comp, i32 0, i32 3
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %30, align 4
  %tobool40.not = icmp eq ptr %32, null
  br i1 %tobool40.not, label %sw.bb39.if.end48_crit_edge, label %if.then41

sw.bb39.if.end48_crit_edge:                       ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then41:                                        ; preds = %sw.bb39
  call void @__sanitizer_cov_trace_pc() #7
  %mode43 = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %33 = ptrtoint ptr %mode43 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %mode43, align 4
  %35 = or i16 %34, 292
  store i16 %35, ptr %mode43, align 4
  %show47 = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 1
  %36 = ptrtoint ptr %show47 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @counter_comp_u64_show, ptr %show47, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.then41, %sw.bb39.if.end48_crit_edge
  %37 = getelementptr inbounds %struct.counter_comp, ptr %comp, i32 0, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %tobool49.not = icmp eq ptr %39, null
  br i1 %tobool49.not, label %if.end48.sw.epilog_crit_edge, label %if.end48.sw.epilog.sink.split_crit_edge

if.end48.sw.epilog.sink.split_crit_edge:          ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end48.sw.epilog_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog.sink.split:                             ; preds = %if.end48.sw.epilog.sink.split_crit_edge, %if.end29.sw.epilog.sink.split_crit_edge, %if.end11.sw.epilog.sink.split_crit_edge
  %counter_comp_u64_store.sink = phi ptr [ @counter_comp_u8_store, %if.end11.sw.epilog.sink.split_crit_edge ], [ @counter_comp_u32_store, %if.end29.sw.epilog.sink.split_crit_edge ], [ @counter_comp_u64_store, %if.end48.sw.epilog.sink.split_crit_edge ]
  %mode15 = getelementptr inbounds %struct.attribute, ptr %call.i, i32 0, i32 1
  %40 = ptrtoint ptr %mode15 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %mode15, align 4
  %42 = or i16 %41, 128
  store i16 %42, ptr %mode15, align 4
  %store56 = getelementptr inbounds %struct.device_attribute, ptr %call.i, i32 0, i32 2
  %43 = ptrtoint ptr %store56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %counter_comp_u64_store.sink, ptr %store56, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end48.sw.epilog_crit_edge, %if.end29.sw.epilog_crit_edge, %if.end11.sw.epilog_crit_edge
  %l = getelementptr inbounds %struct.counter_attribute, ptr %call.i, i32 0, i32 1
  %attr_list = getelementptr inbounds %struct.counter_attribute_group, ptr %group, i32 0, i32 1
  %44 = ptrtoint ptr %attr_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %attr_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l, ptr noundef %attr_list, ptr noundef %45) #5
  br i1 %call.i.i, label %if.end.i.i, label %sw.epilog.list_add.exit_crit_edge

sw.epilog.list_add.exit_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit

if.end.i.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %l, ptr %prev1.i.i, align 4
  %47 = ptrtoint ptr %l to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %l, align 4
  %prev3.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i, i32 0, i32 1, i32 1
  %48 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %attr_list, ptr %prev3.i.i, align 4
  %49 = ptrtoint ptr %attr_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %l, ptr %attr_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %sw.epilog.list_add.exit_crit_edge
  %num_attr = getelementptr inbounds %struct.counter_attribute_group, ptr %group, i32 0, i32 2
  %50 = ptrtoint ptr %num_attr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %num_attr, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %num_attr, align 4
  %52 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %comp, align 4
  %54 = zext i32 %53 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %53, label %list_add.exit.cleanup_crit_edge [
    i32 4, label %list_add.exit.sw.bb59_crit_edge
    i32 5, label %list_add.exit.sw.bb59_crit_edge104
    i32 6, label %list_add.exit.sw.bb59_crit_edge105
    i32 8, label %list_add.exit.sw.bb59_crit_edge106
  ]

list_add.exit.sw.bb59_crit_edge106:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb59

list_add.exit.sw.bb59_crit_edge105:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb59

list_add.exit.sw.bb59_crit_edge104:               ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb59

list_add.exit.sw.bb59_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb59

list_add.exit.cleanup_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb59:                                          ; preds = %list_add.exit.sw.bb59_crit_edge, %list_add.exit.sw.bb59_crit_edge104, %list_add.exit.sw.bb59_crit_edge105, %list_add.exit.sw.bb59_crit_edge106
  %call.i.i95 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 64, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i95, null
  br i1 %tobool.not.i, label %sw.bb59.cleanup_crit_edge, label %if.end.i

sw.bb59.cleanup_crit_edge:                        ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i:                                         ; preds = %sw.bb59
  %55 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %comp, align 4
  %comp1.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i95, i32 0, i32 2
  %57 = ptrtoint ptr %comp1.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %comp1.i, align 4
  %priv.i = getelementptr inbounds %struct.counter_comp, ptr %comp, i32 0, i32 2
  %58 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv.i, align 4
  %priv4.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i95, i32 0, i32 2, i32 2
  %60 = ptrtoint ptr %priv4.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %59, ptr %priv4.i, align 4
  %parent5.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i95, i32 0, i32 4
  %61 = ptrtoint ptr %parent5.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %parent, ptr %parent5.i, align 4
  %key.i = getelementptr inbounds %struct.attribute, ptr %call.i.i95, i32 0, i32 3
  %62 = ptrtoint ptr %key.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @counter_avail_attr_create.__key, ptr %key.i, align 4
  %63 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %name, align 4
  %call7.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.30, ptr noundef %64) #5
  %65 = ptrtoint ptr %call.i.i95 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call7.i, ptr %call.i.i95, align 4
  %tobool12.not.i = icmp eq ptr %call7.i, null
  br i1 %tobool12.not.i, label %if.end.i.cleanup_crit_edge, label %if.end14.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14.i:                                       ; preds = %if.end.i
  %mode.i = getelementptr inbounds %struct.attribute, ptr %call.i.i95, i32 0, i32 1
  %66 = ptrtoint ptr %mode.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 292, ptr %mode.i, align 4
  %show.i = getelementptr inbounds %struct.device_attribute, ptr %call.i.i95, i32 0, i32 1
  %67 = ptrtoint ptr %show.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @counter_comp_available_show, ptr %show.i, align 4
  %l.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i95, i32 0, i32 1
  %68 = ptrtoint ptr %attr_list to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %attr_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %l.i, ptr noundef %attr_list, ptr noundef %69) #5
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end14.i.list_add.exit.i_crit_edge

if.end14.i.list_add.exit.i_crit_edge:             ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %l.i, ptr %prev1.i.i.i, align 4
  %71 = ptrtoint ptr %l.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %69, ptr %l.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.counter_attribute, ptr %call.i.i95, i32 0, i32 1, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %attr_list, ptr %prev3.i.i.i, align 4
  %73 = ptrtoint ptr %attr_list to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %l.i, ptr %attr_list, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %if.end14.i.list_add.exit.i_crit_edge
  %74 = ptrtoint ptr %num_attr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_attr, align 4
  %inc.i = add i32 %75, 1
  store i32 %inc.i, ptr %num_attr, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit.i, %if.end.i.cleanup_crit_edge, %sw.bb59.cleanup_crit_edge, %list_add.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %list_add.exit.cleanup_crit_edge ], [ 0, %list_add.exit.i ], [ -12, %sw.bb59.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_comp_name_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %name = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 1
  %0 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %name, align 4
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %1) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_comp_u8_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %data, align 1
  %scope = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 3
  %1 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %scope, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1 = call i32 %6(ptr noundef %add.ptr.i, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %parent = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  %call4 = call i32 %9(ptr noundef %add.ptr.i, ptr noundef %11, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %parent7 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %15 = ptrtoint ptr %parent7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent7, align 4
  %call8 = call i32 %14(ptr noundef %add.ptr.i, ptr noundef %16, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %sw.bb
  %err.0 = phi i32 [ %call8, %sw.bb5 ], [ %call4, %sw.bb2 ], [ %call1, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  %comp9 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2
  %17 = ptrtoint ptr %comp9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %comp9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp10 = icmp eq i32 %18, 2
  br i1 %cmp10, label %if.then11, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %data, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool = icmp ne i8 %20, 0
  %conv = zext i1 %tobool to i8
  %21 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv, ptr %data, align 1
  br label %if.end13

if.end13:                                         ; preds = %if.then11, %if.end.if.end13_crit_edge
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %data, align 1
  %conv14 = zext i8 %23 to i32
  %call15 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %conv14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end13 ], [ -22, %entry.cleanup_crit_edge ], [ %err.0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_comp_u8_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %bool_data = alloca i8, align 1
  %data = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -40
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bool_data) #5
  %0 = ptrtoint ptr %bool_data to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %bool_data, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data) #5
  %1 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %data, align 1
  %comp = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = call i32 @kstrtobool(ptr noundef %buf, ptr noundef nonnull %bool_data) #5
  %4 = ptrtoint ptr %bool_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bool_data, align 1, !range !112
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %data, align 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call2 = call i32 @kstrtou8(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %data) #5
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp3 = icmp slt i32 %err.0, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %scope = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 3
  %7 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scope, align 4
  %9 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %8, label %if.end6.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb9
    i32 2, label %sw.bb12
  ]

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %10 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %data, align 1
  %call8 = call i32 %12(ptr noundef %add.ptr.i, i8 noundef zeroext %14) #5
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %15 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %parent = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 4
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data, align 1
  %call11 = call i32 %17(ptr noundef %add.ptr.i, ptr noundef %19, i8 noundef zeroext %21) #5
  br label %sw.epilog

sw.bb12:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %22 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %parent14 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %25 = ptrtoint ptr %parent14 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent14, align 4
  %27 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %data, align 1
  %call15 = call i32 %24(ptr noundef %add.ptr.i, ptr noundef %26, i8 noundef zeroext %28) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb12, %sw.bb9, %sw.bb
  %err.1 = phi i32 [ %call15, %sw.bb12 ], [ %call11, %sw.bb9 ], [ %call8, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp16 = icmp slt i32 %err.1, 0
  %err.1.len = select i1 %cmp16, i32 %err.1, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ %err.1.len, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bool_data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_comp_u32_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -40
  %comp = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2
  %priv = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %data, align 4
  %scope = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 3
  %3 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %scope, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %4, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 3
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  %call2 = call i32 %8(ptr noundef %add.ptr.i, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %9 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 3
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %parent = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %call5 = call i32 %11(ptr noundef %add.ptr.i, ptr noundef %13, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %14 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp = icmp eq i32 %15, 5
  %16 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 3
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %parent9 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %19 = ptrtoint ptr %parent9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent9, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %call12 = call i32 %18(ptr noundef %add.ptr.i, ptr noundef %20, ptr noundef %1, ptr noundef nonnull %data) #5
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  %call15 = call i32 %18(ptr noundef %add.ptr.i, ptr noundef %20, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %sw.bb3, %sw.bb
  %err.0 = phi i32 [ %call12, %if.then ], [ %call15, %if.else ], [ %call5, %sw.bb3 ], [ %call2, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp16 = icmp slt i32 %err.0, 0
  br i1 %cmp16, label %sw.epilog.cleanup_crit_edge, label %if.end18

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %sw.epilog
  %21 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %comp, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %22, label %sw.default38 [
    i32 4, label %sw.bb21
    i32 3, label %sw.bb23
    i32 5, label %sw.bb26
    i32 6, label %sw.bb29
    i32 7, label %sw.bb32
    i32 8, label %sw.bb35
  ]

sw.bb21:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %data, align 4
  %arrayidx = getelementptr [8 x ptr], ptr @counter_function_str, i32 0, i32 %25
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx, align 4
  %call22 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %27) #5
  br label %cleanup

sw.bb23:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data, align 4
  %arrayidx24 = getelementptr [2 x ptr], ptr @counter_signal_value_str, i32 0, i32 %29
  %30 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx24, align 4
  %call25 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %31) #5
  br label %cleanup

sw.bb26:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %data, align 4
  %arrayidx27 = getelementptr [4 x ptr], ptr @counter_synapse_action_str, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx27, align 4
  %call28 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %35) #5
  br label %cleanup

sw.bb29:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %38 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data, align 4
  %arrayidx30 = getelementptr ptr, ptr %37, i32 %39
  %40 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx30, align 4
  %call31 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %41) #5
  br label %cleanup

sw.bb32:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data, align 4
  %arrayidx33 = getelementptr [2 x ptr], ptr @counter_count_direction_str, i32 0, i32 %43
  %44 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx33, align 4
  %call34 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %45) #5
  br label %cleanup

sw.bb35:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data, align 4
  %arrayidx36 = getelementptr [4 x ptr], ptr @counter_count_mode_str, i32 0, i32 %47
  %48 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx36, align 4
  %call37 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.7, ptr noundef %49) #5
  br label %cleanup

sw.default38:                                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %data, align 4
  %call39 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.8, i32 noundef %51) #5
  br label %cleanup

cleanup:                                          ; preds = %sw.default38, %sw.bb35, %sw.bb32, %sw.bb29, %sw.bb26, %sw.bb23, %sw.bb21, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call39, %sw.default38 ], [ %call37, %sw.bb35 ], [ %call34, %sw.bb32 ], [ %call31, %sw.bb29 ], [ %call28, %sw.bb26 ], [ %call25, %sw.bb23 ], [ %call22, %sw.bb21 ], [ -22, %entry.cleanup_crit_edge ], [ %err.0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_comp_u32_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -40
  %parent = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %comp = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2
  %priv = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 2
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data) #5
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %data, align 4
  %5 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %comp, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %6, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb5
    i32 6, label %sw.bb7
    i32 8, label %sw.bb9
  ]

sw.bb:                                            ; preds = %entry
  %functions_list = getelementptr inbounds %struct.counter_count, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %functions_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %functions_list, align 4
  %num_functions = getelementptr inbounds %struct.counter_count, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_functions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp5.not.i = icmp eq i32 %11, 0
  br i1 %cmp5.not.i, label %sw.bb.cleanup_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw i32 %index.06.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.cond.i.cleanup_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.cond.i.cleanup_crit_edge:                     ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %index.06.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %9, i32 %index.06.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.i, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %data, align 4
  %arrayidx1.i = getelementptr ptr, ptr @counter_function_str, i32 %13
  %15 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx1.i, align 4
  %call.i = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef %16) #5
  br i1 %call.i, label %for.body.i.if.end_crit_edge, label %for.cond.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb5:                                           ; preds = %entry
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %num_actions = getelementptr inbounds %struct.counter_synapse, ptr %3, i32 0, i32 1
  %19 = ptrtoint ptr %num_actions to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_actions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp5.not.i70 = icmp eq i32 %20, 0
  br i1 %cmp5.not.i70, label %sw.bb5.cleanup_crit_edge, label %sw.bb5.for.body.i78_crit_edge

sw.bb5.for.body.i78_crit_edge:                    ; preds = %sw.bb5
  br label %for.body.i78

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i73:                                     ; preds = %for.body.i78
  %inc.i71 = add nuw i32 %index.06.i74, 1
  %exitcond.not.i72 = icmp eq i32 %inc.i71, %20
  br i1 %exitcond.not.i72, label %for.cond.i73.cleanup_crit_edge, label %for.cond.i73.for.body.i78_crit_edge

for.cond.i73.for.body.i78_crit_edge:              ; preds = %for.cond.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i78

for.cond.i73.cleanup_crit_edge:                   ; preds = %for.cond.i73
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i78:                                     ; preds = %for.cond.i73.for.body.i78_crit_edge, %sw.bb5.for.body.i78_crit_edge
  %index.06.i74 = phi i32 [ %inc.i71, %for.cond.i73.for.body.i78_crit_edge ], [ 0, %sw.bb5.for.body.i78_crit_edge ]
  %arrayidx.i75 = getelementptr i32, ptr %18, i32 %index.06.i74
  %21 = ptrtoint ptr %arrayidx.i75 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i75, align 4
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %data, align 4
  %arrayidx1.i76 = getelementptr ptr, ptr @counter_synapse_action_str, i32 %22
  %24 = ptrtoint ptr %arrayidx1.i76 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1.i76, align 4
  %call.i77 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef %25) #5
  br i1 %call.i77, label %for.body.i78.if.end_crit_edge, label %for.cond.i73

for.body.i78.if.end_crit_edge:                    ; preds = %for.body.i78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %3, align 4
  %num_items = getelementptr inbounds %struct.counter_available, ptr %3, i32 0, i32 1
  %28 = ptrtoint ptr %num_items to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_items, align 4
  %call8 = tail call i32 @__sysfs_match_string(ptr noundef %27, i32 noundef %29, ptr noundef %buf) #5
  %30 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call8, ptr %data, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %num_items10 = getelementptr inbounds %struct.counter_available, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %num_items10 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_items10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp5.not.i81 = icmp eq i32 %34, 0
  br i1 %cmp5.not.i81, label %sw.bb9.cleanup_crit_edge, label %sw.bb9.for.body.i89_crit_edge

sw.bb9.for.body.i89_crit_edge:                    ; preds = %sw.bb9
  br label %for.body.i89

sw.bb9.cleanup_crit_edge:                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.cond.i84:                                     ; preds = %for.body.i89
  %inc.i82 = add nuw i32 %index.06.i85, 1
  %exitcond.not.i83 = icmp eq i32 %inc.i82, %34
  br i1 %exitcond.not.i83, label %for.cond.i84.cleanup_crit_edge, label %for.cond.i84.for.body.i89_crit_edge

for.cond.i84.for.body.i89_crit_edge:              ; preds = %for.cond.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i89

for.cond.i84.cleanup_crit_edge:                   ; preds = %for.cond.i84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i89:                                     ; preds = %for.cond.i84.for.body.i89_crit_edge, %sw.bb9.for.body.i89_crit_edge
  %index.06.i85 = phi i32 [ %inc.i82, %for.cond.i84.for.body.i89_crit_edge ], [ 0, %sw.bb9.for.body.i89_crit_edge ]
  %arrayidx.i86 = getelementptr i32, ptr %32, i32 %index.06.i85
  %35 = ptrtoint ptr %arrayidx.i86 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i86, align 4
  %37 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %data, align 4
  %arrayidx1.i87 = getelementptr ptr, ptr @counter_count_mode_str, i32 %36
  %38 = ptrtoint ptr %arrayidx1.i87 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx1.i87, align 4
  %call.i88 = tail call zeroext i1 @sysfs_streq(ptr noundef %buf, ptr noundef %39) #5
  br i1 %call.i88, label %for.body.i89.if.end_crit_edge, label %for.cond.i84

for.body.i89.if.end_crit_edge:                    ; preds = %for.body.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.default:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call.i92 = call i32 @kstrtouint(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb7
  %err.0 = phi i32 [ %call.i92, %sw.default ], [ %call8, %sw.bb7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog.if.end_crit_edge, %for.body.i89.if.end_crit_edge, %for.body.i78.if.end_crit_edge, %for.body.i.if.end_crit_edge
  %scope = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 3
  %40 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %scope, align 4
  %42 = zext i32 %41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %42, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %41, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb13
    i32 1, label %sw.bb16
    i32 2, label %sw.bb20
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %43 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data, align 4
  %call15 = call i32 %45(ptr noundef %add.ptr.i, i32 noundef %47) #5
  br label %sw.epilog31

sw.bb16:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %48 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 4
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %48, align 4
  %51 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %parent, align 4
  %53 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %data, align 4
  %call19 = call i32 %50(ptr noundef %add.ptr.i, ptr noundef %52, i32 noundef %54) #5
  br label %sw.epilog31

sw.bb20:                                          ; preds = %if.end
  %55 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %comp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %56)
  %cmp23 = icmp eq i32 %56, 5
  %57 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %57, align 4
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data, align 4
  br i1 %cmp23, label %if.then24, label %if.else

if.then24:                                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = call i32 %59(ptr noundef %add.ptr.i, ptr noundef %1, ptr noundef %3, i32 noundef %61) #5
  br label %sw.epilog31

if.else:                                          ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #7
  %call28 = call i32 %59(ptr noundef %add.ptr.i, ptr noundef %1, i32 noundef %61) #5
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %if.else, %if.then24, %sw.bb16, %sw.bb13
  %err.1 = phi i32 [ %call26, %if.then24 ], [ %call28, %if.else ], [ %call19, %sw.bb16 ], [ %call15, %sw.bb13 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.1)
  %cmp32 = icmp slt i32 %err.1, 0
  %err.1.len = select i1 %cmp32, i32 %err.1, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog31, %if.end.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %for.cond.i84.cleanup_crit_edge, %sw.bb9.cleanup_crit_edge, %for.cond.i73.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %for.cond.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %err.1.len, %sw.epilog31 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb5.cleanup_crit_edge ], [ -22, %sw.bb9.cleanup_crit_edge ], [ -22, %for.cond.i.cleanup_crit_edge ], [ -22, %for.cond.i73.cleanup_crit_edge ], [ -22, %for.cond.i84.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_comp_u64_show(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  %data = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data, align 8
  %scope = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 3
  %1 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %scope, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %2, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %call1 = call i32 %6(ptr noundef %add.ptr.i, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %7 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %parent = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 4
  %call4 = call i32 %9(ptr noundef %add.ptr.i, ptr noundef %11, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %12 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %parent7 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %15 = ptrtoint ptr %parent7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent7, align 4
  %call8 = call i32 %14(ptr noundef %add.ptr.i, ptr noundef %16, ptr noundef nonnull %data) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb2, %sw.bb
  %err.0 = phi i32 [ %call8, %sw.bb5 ], [ %call4, %sw.bb2 ], [ %call1, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp = icmp slt i32 %err.0, 0
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %data, align 8
  %call9 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.29, i64 noundef %18) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ %err.0, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_comp_u64_store(ptr noundef %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf, i32 noundef %len) #0 align 64 {
entry:
  %data = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %dev, i32 -40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %data) #5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %data, align 8
  %call.i = call i32 @kstrtoull(ptr noundef %buf, i32 noundef 0, ptr noundef nonnull %data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %scope = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 3
  %1 = ptrtoint ptr %scope to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %scope, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %2, label %if.end.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb6
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %data, align 8
  %call2 = call i32 %6(ptr noundef %add.ptr.i, i64 noundef %8) #5
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %parent = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %data, align 8
  %call5 = call i32 %11(ptr noundef %add.ptr.i, ptr noundef %13, i64 noundef %15) #5
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %16 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 4
  %parent8 = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %19 = ptrtoint ptr %parent8 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent8, align 4
  %21 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %data, align 8
  %call9 = call i32 %18(ptr noundef %add.ptr.i, ptr noundef %20, i64 noundef %22) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb6, %sw.bb3, %sw.bb
  %err.0 = phi i32 [ %call9, %sw.bb6 ], [ %call5, %sw.bb3 ], [ %call2, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %cmp10 = icmp slt i32 %err.0, 0
  %err.0.len = select i1 %cmp10, i32 %err.0, i32 %len
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %err.0.len, %sw.epilog ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %data) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtobool(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou8(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sysfs_match_string(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_comp_available_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %comp = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2
  %priv = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %comp, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 5, label %sw.bb4
    i32 6, label %sw.bb6
    i32 8, label %sw.bb8
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %parent = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 4
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  %functions_list = getelementptr inbounds %struct.counter_count, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %functions_list to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %functions_list, align 4
  %num_functions = getelementptr inbounds %struct.counter_count, ptr %6, i32 0, i32 3
  %9 = ptrtoint ptr %num_functions to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_functions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp6.not.i = icmp eq i32 %10, 0
  br i1 %cmp6.not.i, label %sw.bb.cleanup_crit_edge, label %sw.bb.for.body.i_crit_edge

sw.bb.for.body.i_crit_edge:                       ; preds = %sw.bb
  br label %for.body.i

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %sw.bb.for.body.i_crit_edge
  %index.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %len.07.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %sw.bb.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %8, i32 %index.08.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %arrayidx1.i = getelementptr ptr, ptr @counter_function_str, i32 %12
  %13 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx1.i, align 4
  %call.i = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.07.i, ptr noundef nonnull @.str.7, ptr noundef %14) #5
  %add.i = add i32 %call.i, %len.07.i
  %inc.i = add nuw i32 %index.08.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %10
  br i1 %exitcond.not.i, label %for.body.i.cleanup_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb4:                                           ; preds = %entry
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %num_actions = getelementptr inbounds %struct.counter_synapse, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %num_actions to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_actions, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp6.not.i23 = icmp eq i32 %18, 0
  br i1 %cmp6.not.i23, label %sw.bb4.cleanup_crit_edge, label %sw.bb4.for.body.i32_crit_edge

sw.bb4.for.body.i32_crit_edge:                    ; preds = %sw.bb4
  br label %for.body.i32

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i32:                                     ; preds = %for.body.i32.for.body.i32_crit_edge, %sw.bb4.for.body.i32_crit_edge
  %index.08.i24 = phi i32 [ %inc.i30, %for.body.i32.for.body.i32_crit_edge ], [ 0, %sw.bb4.for.body.i32_crit_edge ]
  %len.07.i25 = phi i32 [ %add.i29, %for.body.i32.for.body.i32_crit_edge ], [ 0, %sw.bb4.for.body.i32_crit_edge ]
  %arrayidx.i26 = getelementptr i32, ptr %16, i32 %index.08.i24
  %19 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.i26, align 4
  %arrayidx1.i27 = getelementptr ptr, ptr @counter_synapse_action_str, i32 %20
  %21 = ptrtoint ptr %arrayidx1.i27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx1.i27, align 4
  %call.i28 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.07.i25, ptr noundef nonnull @.str.7, ptr noundef %22) #5
  %add.i29 = add i32 %call.i28, %len.07.i25
  %inc.i30 = add nuw i32 %index.08.i24, 1
  %exitcond.not.i31 = icmp eq i32 %inc.i30, %18
  br i1 %exitcond.not.i31, label %for.body.i32.cleanup_crit_edge, label %for.body.i32.for.body.i32_crit_edge

for.body.i32.for.body.i32_crit_edge:              ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i32

for.body.i32.cleanup_crit_edge:                   ; preds = %for.body.i32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  %num_items.i = getelementptr inbounds %struct.counter_available, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %num_items.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_items.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp6.not.i35 = icmp eq i32 %24, 0
  br i1 %cmp6.not.i35, label %sw.bb6.cleanup_crit_edge, label %sw.bb6.for.body.i42_crit_edge

sw.bb6.for.body.i42_crit_edge:                    ; preds = %sw.bb6
  br label %for.body.i42

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i42:                                     ; preds = %for.body.i42.for.body.i42_crit_edge, %sw.bb6.for.body.i42_crit_edge
  %index.08.i36 = phi i32 [ %inc.i41, %for.body.i42.for.body.i42_crit_edge ], [ 0, %sw.bb6.for.body.i42_crit_edge ]
  %len.07.i37 = phi i32 [ %add.i40, %for.body.i42.for.body.i42_crit_edge ], [ 0, %sw.bb6.for.body.i42_crit_edge ]
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %arrayidx.i38 = getelementptr ptr, ptr %26, i32 %index.08.i36
  %27 = ptrtoint ptr %arrayidx.i38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i38, align 4
  %call.i39 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.07.i37, ptr noundef nonnull @.str.7, ptr noundef %28) #5
  %add.i40 = add i32 %call.i39, %len.07.i37
  %inc.i41 = add nuw i32 %index.08.i36, 1
  %29 = ptrtoint ptr %num_items.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_items.i, align 4
  %cmp.i = icmp ult i32 %inc.i41, %30
  br i1 %cmp.i, label %for.body.i42.for.body.i42_crit_edge, label %for.body.i42.cleanup_crit_edge

for.body.i42.cleanup_crit_edge:                   ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i42.for.body.i42_crit_edge:              ; preds = %for.body.i42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i42

sw.bb8:                                           ; preds = %entry
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %num_items = getelementptr inbounds %struct.counter_available, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %num_items to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %num_items, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp6.not.i44 = icmp eq i32 %34, 0
  br i1 %cmp6.not.i44, label %sw.bb8.cleanup_crit_edge, label %sw.bb8.for.body.i53_crit_edge

sw.bb8.for.body.i53_crit_edge:                    ; preds = %sw.bb8
  br label %for.body.i53

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i53:                                     ; preds = %for.body.i53.for.body.i53_crit_edge, %sw.bb8.for.body.i53_crit_edge
  %index.08.i45 = phi i32 [ %inc.i51, %for.body.i53.for.body.i53_crit_edge ], [ 0, %sw.bb8.for.body.i53_crit_edge ]
  %len.07.i46 = phi i32 [ %add.i50, %for.body.i53.for.body.i53_crit_edge ], [ 0, %sw.bb8.for.body.i53_crit_edge ]
  %arrayidx.i47 = getelementptr i32, ptr %32, i32 %index.08.i45
  %35 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i47, align 4
  %arrayidx1.i48 = getelementptr ptr, ptr @counter_count_mode_str, i32 %36
  %37 = ptrtoint ptr %arrayidx1.i48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx1.i48, align 4
  %call.i49 = tail call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %buf, i32 noundef %len.07.i46, ptr noundef nonnull @.str.7, ptr noundef %38) #5
  %add.i50 = add i32 %call.i49, %len.07.i46
  %inc.i51 = add nuw i32 %index.08.i45, 1
  %exitcond.not.i52 = icmp eq i32 %inc.i51, %34
  br i1 %exitcond.not.i52, label %for.body.i53.cleanup_crit_edge, label %for.body.i53.for.body.i53_crit_edge

for.body.i53.for.body.i53_crit_edge:              ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i53

for.body.i53.cleanup_crit_edge:                   ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.body.i53.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %for.body.i42.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %for.body.i32.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ], [ 0, %sw.bb4.cleanup_crit_edge ], [ 0, %sw.bb6.cleanup_crit_edge ], [ 0, %sw.bb8.cleanup_crit_edge ], [ %add.i, %for.body.i.cleanup_crit_edge ], [ %add.i29, %for.body.i32.cleanup_crit_edge ], [ %add.i40, %for.body.i42.cleanup_crit_edge ], [ %add.i50, %for.body.i53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @counter_num_signals_read(ptr nocapture noundef readonly %counter, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_signals = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 4
  %0 = ptrtoint ptr %num_signals to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_signals, align 8
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %val, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @counter_num_counts_read(ptr nocapture noundef readonly %counter, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %num_counts = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 6
  %0 = ptrtoint ptr %num_counts to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_counts, align 8
  %conv = trunc i32 %1 to i8
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv, ptr %val, align 1
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @counter_events_queue_size_read(ptr nocapture noundef readonly %counter, ptr nocapture noundef writeonly %val) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 15, i32 0, i32 0, i32 2
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 8
  %add = add i32 %1, 1
  %conv = zext i32 %add to i64
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_events_queue_size_write(ptr noundef %counter, i64 noundef %val) #0 align 64 {
entry:
  %events = alloca %struct.anon.76, align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %events) #5
  %0 = call ptr @memset(ptr %events, i32 255, i32 24)
  %conv = trunc i64 %val to i32
  %call = call i32 @__kfifo_alloc(ptr noundef nonnull %events, i32 noundef %conv, i32 noundef 24, i32 noundef 3264) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %events_out_lock = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %events_out_lock, i32 noundef 0) #5
  %events_in_lock = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 17
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %events_in_lock) #5
  %events10 = getelementptr inbounds %struct.counter_device, ptr %counter, i32 0, i32 15
  call void @__kfifo_free(ptr noundef %events10) #5
  %1 = call ptr @memcpy(ptr %events10, ptr %events, i32 20)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %events_in_lock, i32 noundef %call6) #5
  call void @mutex_unlock(ptr noundef %events_out_lock) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %events) #5
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @counter_comp_id_show(ptr nocapture noundef readnone %dev, ptr nocapture noundef readonly %attr, ptr noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.counter_attribute, ptr %attr, i32 0, i32 2, i32 2
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 4
  %2 = ptrtoint ptr %1 to i32
  %call = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %buf, ptr noundef nonnull @.str.35, i32 noundef %2) #5
  ret i32 %call
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/counter/counter-sysfs.c", i32 638, i32 7}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/counter/counter-sysfs.c", i32 585, i32 10}
!4 = !{ptr @counter_signal_comp, !5, !"counter_signal_comp", i1 false, i1 false}
!5 = !{!"../drivers/counter/counter-sysfs.c", i32 583, i32 28}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/counter/counter-sysfs.c", i32 764, i32 7}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/counter/counter-sysfs.c", i32 670, i32 47}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/counter/counter-sysfs.c", i32 695, i32 2}
!12 = !{ptr @counter_count_comp, !13, !"counter_count_comp", i1 false, i1 false}
!13 = !{!"../drivers/counter/counter-sysfs.c", i32 694, i32 28}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/counter/counter-sysfs.c", i32 699, i32 10}
!16 = !{ptr @counter_function_comp, !17, !"counter_function_comp", i1 false, i1 false}
!17 = !{!"../drivers/counter/counter-sysfs.c", i32 697, i32 28}
!18 = !{ptr @counter_name_attr_create.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/counter/counter-sysfs.c", i32 531, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/counter/counter-sysfs.c", i32 532, i32 37}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/counter/counter-sysfs.c", i32 514, i32 25}
!24 = !{ptr @counter_attr_create.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/counter/counter-sysfs.c", i32 452, i32 2}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/counter/counter-sysfs.c", i32 122, i32 25}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/counter/counter-sysfs.c", i32 60, i32 32}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/counter/counter-sysfs.c", i32 61, i32 32}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/counter/counter-sysfs.c", i32 62, i32 39}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/counter/counter-sysfs.c", i32 63, i32 39}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/counter/counter-sysfs.c", i32 64, i32 39}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/counter/counter-sysfs.c", i32 65, i32 39}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/counter/counter-sysfs.c", i32 66, i32 39}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/counter/counter-sysfs.c", i32 67, i32 37}
!44 = !{ptr @counter_function_str, !45, !"counter_function_str", i1 false, i1 false}
!45 = !{!"../drivers/counter/counter-sysfs.c", i32 59, i32 26}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/counter/counter-sysfs.c", i32 71, i32 31}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/counter/counter-sysfs.c", i32 72, i32 32}
!50 = !{ptr @counter_signal_value_str, !51, !"counter_signal_value_str", i1 false, i1 false}
!51 = !{!"../drivers/counter/counter-sysfs.c", i32 70, i32 26}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/counter/counter-sysfs.c", i32 76, i32 34}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/counter/counter-sysfs.c", i32 77, i32 41}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/counter/counter-sysfs.c", i32 78, i32 42}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/counter/counter-sysfs.c", i32 79, i32 40}
!60 = !{ptr @counter_synapse_action_str, !61, !"counter_synapse_action_str", i1 false, i1 false}
!61 = !{!"../drivers/counter/counter-sysfs.c", i32 75, i32 26}
!62 = !{ptr @.str.23, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/counter/counter-sysfs.c", i32 83, i32 38}
!64 = !{ptr @.str.24, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/counter/counter-sysfs.c", i32 84, i32 39}
!66 = !{ptr @counter_count_direction_str, !67, !"counter_count_direction_str", i1 false, i1 false}
!67 = !{!"../drivers/counter/counter-sysfs.c", i32 82, i32 26}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/counter/counter-sysfs.c", i32 88, i32 32}
!70 = !{ptr @.str.26, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/counter/counter-sysfs.c", i32 89, i32 37}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/counter/counter-sysfs.c", i32 90, i32 37}
!74 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/counter/counter-sysfs.c", i32 91, i32 34}
!76 = !{ptr @counter_count_mode_str, !77, !"counter_count_mode_str", i1 false, i1 false}
!77 = !{!"../drivers/counter/counter-sysfs.c", i32 87, i32 26}
!78 = !{ptr @.str.29, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/counter/counter-sysfs.c", i32 309, i32 25}
!80 = !{ptr @counter_avail_attr_create.__key, !81, !"__key", i1 false, i1 false}
!81 = !{!"../drivers/counter/counter-sysfs.c", i32 415, i32 2}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/counter/counter-sysfs.c", i32 418, i32 56}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/counter/counter-sysfs.c", i32 825, i32 2}
!86 = !{ptr @counter_num_signals_comp, !87, !"counter_num_signals_comp", i1 false, i1 false}
!87 = !{!"../drivers/counter/counter-sysfs.c", i32 824, i32 28}
!88 = !{ptr @.str.32, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/counter/counter-sysfs.c", i32 828, i32 2}
!90 = !{ptr @counter_num_counts_comp, !91, !"counter_num_counts_comp", i1 false, i1 false}
!91 = !{!"../drivers/counter/counter-sysfs.c", i32 827, i32 28}
!92 = !{ptr @.str.33, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/counter/counter-sysfs.c", i32 831, i32 2}
!94 = !{ptr @counter_events_queue_size_comp, !95, !"counter_events_queue_size_comp", i1 false, i1 false}
!95 = !{!"../drivers/counter/counter-sysfs.c", i32 830, i32 28}
!96 = !{ptr @.str.34, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/counter/counter-sysfs.c", i32 563, i32 41}
!98 = !{ptr @counter_comp_id_attr_create.__key, !99, !"__key", i1 false, i1 false}
!99 = !{!"../drivers/counter/counter-sysfs.c", i32 571, i32 2}
!100 = !{ptr @.str.35, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/counter/counter-sysfs.c", i32 548, i32 25}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!111 = !{!"branch_weights", i32 1, i32 2000}
!112 = !{i8 0, i8 2}
