; ModuleID = '/llk/IR_all_yes/drivers/counter/ftm-quaddec.c_pt.bc'
source_filename = "../drivers/counter/ftm-quaddec.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.counter_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.counter_count = type { i32, ptr, ptr, i32, ptr, i32, ptr, i32 }
%struct.counter_signal = type { i32, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.counter_synapse = type { ptr, i32, ptr }
%struct.counter_comp = type { i32, ptr, ptr, %union.anon.71, %union.anon.72 }
%union.anon.71 = type { ptr }
%union.anon.72 = type { ptr }
%struct.counter_available = type { %union.anon.75, i32 }
%union.anon.75 = type { ptr }
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
%struct.ftm_quaddec = type { ptr, ptr, i8, %struct.mutex }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.counter_device = type { ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.device, %struct.cdev, %struct.list_head, %struct.spinlock, %struct.list_head, %struct.mutex, %struct.anon.73, %struct.wait_queue_head, %struct.spinlock, %struct.mutex, %struct.mutex }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.anon.73 = type { %union.anon.74, [0 x %struct.counter_event] }
%union.anon.74 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.counter_event = type { i64, i64, %struct.counter_watch, i8 }
%struct.counter_watch = type { %struct.counter_component, i8, i8 }
%struct.counter_component = type { i8, i8, i8, i8 }

@__initcall__kmod_ftm_quaddec__247_323_ftm_quaddec_driver_init6 = internal global ptr @ftm_quaddec_driver_init, section ".initcall6.init", align 4
@ftm_quaddec_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ftm_quaddec_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ftm_quaddec_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_ftm_quaddec_driver_exit = internal global ptr @ftm_quaddec_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file248 = internal constant [45 x i8] c"ftm_quaddec.file=drivers/counter/ftm-quaddec\00", section ".modinfo", align 1
@__UNIQUE_ID_license249 = internal constant [24 x i8] c"ftm_quaddec.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [47 x i8] c"ftm_quaddec.author=Kjeld Flarup <kfa@deif.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author251 = internal constant [71 x i8] c"ftm_quaddec.author=Patrick Havelange <patrick.havelange@essensium.com>\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ftm-quaddec\00", [20 x i8] zeroinitializer }, align 32
@ftm_quaddec_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ftm-quaddec\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ftm_quaddec_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to get memory region\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ftm_quaddec_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/counter/ftm-quaddec.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ftm_quaddec_probe._entry_ptr = internal global ptr @ftm_quaddec_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@ftm_quaddec_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to map memory region\0A\00", [35 x i8] zeroinitializer }, align 32
@ftm_quaddec_probe._entry_ptr.9 = internal global ptr @ftm_quaddec_probe._entry.7, section ".printk_index", align 4
@ftm_quaddec_cnt_ops = internal constant { %struct.counter_ops, [60 x i8] } { %struct.counter_ops { ptr null, ptr @ftm_quaddec_count_read, ptr @ftm_quaddec_count_write, ptr @ftm_quaddec_count_function_read, ptr null, ptr @ftm_quaddec_action_read, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@ftm_quaddec_counts = internal global { %struct.counter_count, [32 x i8] } { %struct.counter_count { i32 0, ptr @.str.15, ptr @ftm_quaddec_count_functions, i32 1, ptr @ftm_quaddec_count_synapses, i32 2, ptr @ftm_quaddec_count_ext, i32 1 }, [32 x i8] zeroinitializer }, align 32
@ftm_quaddec_signals = internal global { [2 x %struct.counter_signal], [32 x i8] } { [2 x %struct.counter_signal] [%struct.counter_signal { i32 0, ptr @.str.25, ptr null, i32 0 }, %struct.counter_signal { i32 1, ptr @.str.26, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@ftm_quaddec_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&ftm->ftm_quaddec_mutex\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to add counter\0A\00", [41 x i8] zeroinitializer }, align 32
@ftm_quaddec_count_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 181, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can only accept '0' as new counter value\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ftm_quaddec_count_write\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ftm_quaddec_count_write._entry_ptr = internal global ptr @ftm_quaddec_count_write._entry, section ".printk_index", align 4
@.str.15 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Channel 1 Count\00", [16 x i8] zeroinitializer }, align 32
@ftm_quaddec_count_functions = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 7], [28 x i8] zeroinitializer }, align 32
@ftm_quaddec_count_synapses = internal global { [2 x %struct.counter_synapse], [40 x i8] } { [2 x %struct.counter_synapse] [%struct.counter_synapse { ptr @ftm_quaddec_synapse_actions, i32 1, ptr @ftm_quaddec_signals }, %struct.counter_synapse { ptr @ftm_quaddec_synapse_actions, i32 1, ptr getelementptr (i8, ptr @ftm_quaddec_signals, i64 16) }], [40 x i8] zeroinitializer }, align 32
@ftm_quaddec_count_ext = internal global { [1 x %struct.counter_comp], [44 x i8] } { [1 x %struct.counter_comp] [%struct.counter_comp { i32 6, ptr @.str.16, ptr @ftm_quaddec_prescaler_enum, %union.anon.71 { ptr @ftm_quaddec_get_prescaler }, %union.anon.72 { ptr @ftm_quaddec_set_prescaler } }], [44 x i8] zeroinitializer }, align 32
@ftm_quaddec_synapse_actions = internal constant { [1 x i32], [28 x i8] } { [1 x i32] [i32 3], [28 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"prescaler\00", [22 x i8] zeroinitializer }, align 32
@ftm_quaddec_prescaler_enum = internal global { %struct.counter_available, [24 x i8] } { %struct.counter_available { %union.anon.75 { ptr @ftm_quaddec_prescaler }, i32 8 }, [24 x i8] zeroinitializer }, align 32
@ftm_quaddec_prescaler = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], [32 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"2\00", [30 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"4\00", [30 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"8\00", [30 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"16\00", [29 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"32\00", [29 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"64\00", [29 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"128\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Channel 1 Phase A\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Channel 1 Phase B\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [19 x i8] c"ftm_quaddec_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 315, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 317, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"ftm_quaddec_match\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 310, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 275, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 280, i32 48 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 284, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [20 x i8] c"ftm_quaddec_cnt_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 209, i32 33 }
@___asan_gen_.66 = private unnamed_addr constant [19 x i8] c"ftm_quaddec_counts\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 248, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"ftm_quaddec_signals\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 216, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 295, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 305, i32 41 }
@___asan_gen_.81 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 181, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 250, i32 10 }
@___asan_gen_.96 = private unnamed_addr constant [28 x i8] c"ftm_quaddec_count_functions\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 156, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant [27 x i8] c"ftm_quaddec_count_synapses\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 227, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant [22 x i8] c"ftm_quaddec_count_ext\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 242, i32 28 }
@___asan_gen_.105 = private unnamed_addr constant [28 x i8] c"ftm_quaddec_synapse_actions\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 152, i32 42 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 243, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant [27 x i8] c"ftm_quaddec_prescaler_enum\00", align 1
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 240, i32 8 }
@___asan_gen_.114 = private unnamed_addr constant [22 x i8] c"ftm_quaddec_prescaler\00", align 1
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 148, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 149, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 149, i32 7 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 149, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 149, i32 17 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 149, i32 22 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 149, i32 28 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 149, i32 34 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 149, i32 40 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 219, i32 11 }
@___asan_gen_.144 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.145 = private constant [33 x i8] c"../drivers/counter/ftm-quaddec.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 223, i32 11 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_file248, ptr @__UNIQUE_ID_license249, ptr @__exitcall_ftm_quaddec_driver_exit, ptr @__initcall__kmod_ftm_quaddec__247_323_ftm_quaddec_driver_init6, ptr @ftm_quaddec_count_write._entry, ptr @ftm_quaddec_count_write._entry_ptr, ptr @ftm_quaddec_driver_exit, ptr @ftm_quaddec_probe._entry, ptr @ftm_quaddec_probe._entry.7, ptr @ftm_quaddec_probe._entry_ptr, ptr @ftm_quaddec_probe._entry_ptr.9, ptr @ftm_quaddec_driver, ptr @.str, ptr @ftm_quaddec_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @ftm_quaddec_cnt_ops, ptr @ftm_quaddec_counts, ptr @ftm_quaddec_signals, ptr @ftm_quaddec_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @ftm_quaddec_count_functions, ptr @ftm_quaddec_count_synapses, ptr @ftm_quaddec_count_ext, ptr @ftm_quaddec_synapse_actions, ptr @.str.16, ptr @ftm_quaddec_prescaler_enum, ptr @ftm_quaddec_prescaler, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_cnt_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_counts to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_signals to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_count_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_count_functions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_count_synapses to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_count_ext to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_synapse_actions to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_prescaler_enum to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ftm_quaddec_prescaler to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_quaddec_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ftm_quaddec_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ftm_quaddec_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @ftm_quaddec_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_quaddec_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_counter_alloc(ptr noundef %dev, i32 noundef 104) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @counter_priv(ptr noundef nonnull %call) #6
  %call3 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %do.end, label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %call2, align 4
  %call.i = tail call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i = icmp ne ptr %call.i, null
  %big_endian = getelementptr inbounds %struct.ftm_quaddec, ptr %call2, i32 0, i32 2
  %frombool = zext i1 %tobool.i to i8
  %3 = ptrtoint ptr %big_endian to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %big_endian, align 4
  %4 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call3, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call3, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  %call12 = tail call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %5, i32 noundef %add.i) #6
  %ftm_base = getelementptr inbounds %struct.ftm_quaddec, ptr %call2, i32 0, i32 1
  %8 = ptrtoint ptr %ftm_base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call12, ptr %ftm_base, align 4
  %tobool14.not = icmp eq ptr %call12, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %cleanup

if.end20:                                         ; preds = %if.end7
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end20.dev_name.exit_crit_edge

if.end20.dev_name.exit_crit_edge:                 ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end20.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %12, %if.end.i ], [ %10, %if.end20.dev_name.exit_crit_edge ]
  %13 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %retval.0.i, ptr %call, align 8
  %parent = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 1
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev, ptr %parent, align 4
  %ops = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 2
  %15 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @ftm_quaddec_cnt_ops, ptr %ops, align 8
  %counts = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 5
  %16 = ptrtoint ptr %counts to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @ftm_quaddec_counts, ptr %counts, align 4
  %num_counts = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 6
  %17 = ptrtoint ptr %num_counts to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %num_counts, align 8
  %signals = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 3
  %18 = ptrtoint ptr %signals to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @ftm_quaddec_signals, ptr %signals, align 4
  %num_signals = getelementptr inbounds %struct.counter_device, ptr %call, i32 0, i32 4
  %19 = ptrtoint ptr %num_signals to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %num_signals, align 8
  %ftm_quaddec_mutex = getelementptr inbounds %struct.ftm_quaddec, ptr %call2, i32 0, i32 3
  tail call void @__mutex_init(ptr noundef %ftm_quaddec_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @ftm_quaddec_probe.__key) #6
  tail call fastcc void @ftm_clear_write_protection(ptr noundef %call2) #6
  %20 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %22 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1) #6, !srcloc !94
  br label %ftm_write.exit.i

if.else.i.i:                                      ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %25, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 16777216) #6, !srcloc !94
  br label %ftm_write.exit.i

ftm_write.exit.i:                                 ; preds = %if.else.i.i, %do.body.i.i
  %26 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i13.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i13.i, label %if.else.i19.i, label %do.body.i16.i

do.body.i16.i:                                    ; preds = %ftm_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %29, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit20.i

if.else.i19.i:                                    ; preds = %ftm_write.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i18.i = getelementptr i8, ptr %31, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i18.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit20.i

ftm_write.exit20.i:                               ; preds = %if.else.i19.i, %do.body.i16.i
  %32 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i22.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i22.i, label %if.else.i28.i, label %do.body.i25.i

do.body.i25.i:                                    ; preds = %ftm_write.exit20.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i24.i = getelementptr i8, ptr %35, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24.i, i32 65535) #6, !srcloc !94
  br label %ftm_write.exit29.i

if.else.i28.i:                                    ; preds = %ftm_write.exit20.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i27.i = getelementptr i8, ptr %37, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i27.i, i32 -65536) #6, !srcloc !94
  br label %ftm_write.exit29.i

ftm_write.exit29.i:                               ; preds = %if.else.i28.i, %do.body.i25.i
  %38 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i31.i = icmp eq i8 %39, 0
  br i1 %tobool.not.i31.i, label %if.else.i37.i, label %do.body.i34.i

do.body.i34.i:                                    ; preds = %ftm_write.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i33.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i33.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit38.i

if.else.i37.i:                                    ; preds = %ftm_write.exit29.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i36.i = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i36.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit38.i

ftm_write.exit38.i:                               ; preds = %if.else.i37.i, %do.body.i34.i
  %44 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i40.i = icmp eq i8 %45, 0
  br i1 %tobool.not.i40.i, label %if.else.i44.i, label %do.body.i42.i

do.body.i42.i:                                    ; preds = %ftm_write.exit38.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ftm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 0) #6, !srcloc !94
  br label %ftm_write.exit45.i

if.else.i44.i:                                    ; preds = %ftm_write.exit38.i
  call void @__sanitizer_cov_trace_pc() #8
  %48 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ftm_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 0) #6, !srcloc !94
  br label %ftm_write.exit45.i

ftm_write.exit45.i:                               ; preds = %if.else.i44.i, %do.body.i42.i
  %50 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i47.i = icmp eq i8 %51, 0
  br i1 %tobool.not.i47.i, label %if.else.i53.i, label %do.body.i50.i

do.body.i50.i:                                    ; preds = %ftm_write.exit45.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i49.i = getelementptr i8, ptr %53, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i49.i, i32 1) #6, !srcloc !94
  br label %ftm_write.exit54.i

if.else.i53.i:                                    ; preds = %ftm_write.exit45.i
  call void @__sanitizer_cov_trace_pc() #8
  %54 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i52.i = getelementptr i8, ptr %55, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i52.i, i32 16777216) #6, !srcloc !94
  br label %ftm_write.exit54.i

ftm_write.exit54.i:                               ; preds = %if.else.i53.i, %do.body.i50.i
  %56 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i56.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i56.i, label %if.else.i62.i, label %do.body.i59.i

do.body.i59.i:                                    ; preds = %ftm_write.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %58 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i58.i = getelementptr i8, ptr %59, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i58.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit63.i

if.else.i62.i:                                    ; preds = %ftm_write.exit54.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i61.i = getelementptr i8, ptr %61, i32 112
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i61.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit63.i

ftm_write.exit63.i:                               ; preds = %if.else.i62.i, %do.body.i59.i
  %62 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool.not.i65.i = icmp eq i8 %63, 0
  br i1 %tobool.not.i65.i, label %if.else.i71.i, label %do.body.i68.i

do.body.i68.i:                                    ; preds = %ftm_write.exit63.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %65, i32 124
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i67.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit72.i

if.else.i71.i:                                    ; preds = %ftm_write.exit63.i
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i70.i = getelementptr i8, ptr %67, i32 124
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i70.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit72.i

ftm_write.exit72.i:                               ; preds = %if.else.i71.i, %do.body.i68.i
  %68 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i74.i = icmp eq i8 %69, 0
  br i1 %tobool.not.i74.i, label %if.else.i80.i, label %do.body.i77.i

do.body.i77.i:                                    ; preds = %ftm_write.exit72.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i76.i = getelementptr i8, ptr %71, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i76.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit81.i

if.else.i80.i:                                    ; preds = %ftm_write.exit72.i
  call void @__sanitizer_cov_trace_pc() #8
  %72 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i79.i = getelementptr i8, ptr %73, i32 140
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i79.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit81.i

ftm_write.exit81.i:                               ; preds = %if.else.i80.i, %do.body.i77.i
  %74 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i83.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i83.i, label %if.else.i89.i, label %do.body.i86.i

do.body.i86.i:                                    ; preds = %ftm_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %76 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %77, i32 88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 65535) #6, !srcloc !94
  br label %ftm_write.exit90.i

if.else.i89.i:                                    ; preds = %ftm_write.exit81.i
  call void @__sanitizer_cov_trace_pc() #8
  %78 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i88.i = getelementptr i8, ptr %79, i32 88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i88.i, i32 -65536) #6, !srcloc !94
  br label %ftm_write.exit90.i

ftm_write.exit90.i:                               ; preds = %if.else.i89.i, %do.body.i86.i
  %80 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i.i.i = icmp eq i8 %81, 0
  %82 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %83, i32 116
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #6
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %ftm_write.exit90.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %ftm_read.exit.i.i

if.else.i.i.i:                                    ; preds = %ftm_write.exit90.i
  call void @__sanitizer_cov_trace_pc() #8
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ftm_read.exit.i.i

ftm_read.exit.i.i:                                ; preds = %if.else.i.i.i, %if.then.i.i.i
  %storemerge.i.i.i = phi i32 [ %85, %if.else.i.i.i ], [ %84, %if.then.i.i.i ]
  %or.i.i = or i32 %storemerge.i.i.i, 64
  %86 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %big_endian, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i15.i.i = icmp eq i8 %87, 0
  br i1 %tobool.not.i15.i.i, label %if.else.i18.i.i, label %do.body.i.i.i

do.body.i.i.i:                                    ; preds = %ftm_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ftm_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %89, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %or.i.i) #6, !srcloc !94
  br label %ftm_quaddec_init.exit

if.else.i18.i.i:                                  ; preds = %ftm_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %90 = ptrtoint ptr %ftm_base to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ftm_base, align 4
  %add.ptr2.i17.i.i = getelementptr i8, ptr %91, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %92 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i17.i.i, i32 %92) #6, !srcloc !94
  br label %ftm_quaddec_init.exit

ftm_quaddec_init.exit:                            ; preds = %if.else.i18.i.i, %do.body.i.i.i
  %call.i74 = tail call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @ftm_quaddec_disable, ptr noundef %call2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74)
  %tobool.not.i75 = icmp eq i32 %call.i74, 0
  br i1 %tobool.not.i75, label %if.end31, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %ftm_quaddec_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ftm_quaddec_disable(ptr noundef %call2) #6
  br label %cleanup

if.end31:                                         ; preds = %ftm_quaddec_init.exit
  %call33 = tail call i32 @devm_counter_add(ptr noundef %dev, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end31.cleanup_crit_edge, label %if.then35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %call37 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %call33, ptr noundef nonnull @.str.11) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then35, %if.end31.cleanup_crit_edge, %devm_add_action_or_reset.exit, %do.end18, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call37, %if.then35 ], [ -22, %do.end18 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ %call.i74, %devm_add_action_or_reset.exit ], [ 0, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_counter_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @counter_priv(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ftm_quaddec_disable(ptr nocapture noundef readonly %ftm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @ftm_clear_write_protection(ptr noundef %ftm)
  %big_endian.i = getelementptr inbounds %struct.ftm_quaddec, ptr %ftm, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %ftm_base.i = getelementptr inbounds %struct.ftm_quaddec, ptr %ftm, i32 0, i32 1
  %2 = ptrtoint ptr %ftm_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ftm_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ftm_base1.i = getelementptr inbounds %struct.ftm_quaddec, ptr %ftm, i32 0, i32 1
  %4 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %5, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #6, !srcloc !94
  br label %ftm_write.exit

ftm_write.exit:                                   ; preds = %if.else.i, %do.body.i
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i5 = icmp eq i8 %7, 0
  br i1 %tobool.not.i5, label %if.else.i11, label %do.body.i8

do.body.i8:                                       ; preds = %ftm_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %ftm_base.i6 = getelementptr inbounds %struct.ftm_quaddec, ptr %ftm, i32 0, i32 1
  %8 = ptrtoint ptr %ftm_base.i6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ftm_base.i6, align 4
  %add.ptr.i7 = getelementptr i8, ptr %9, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7, i32 0) #6, !srcloc !94
  br label %ftm_write.exit12

if.else.i11:                                      ; preds = %ftm_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %ftm_base1.i9 = getelementptr inbounds %struct.ftm_quaddec, ptr %ftm, i32 0, i32 1
  %10 = ptrtoint ptr %ftm_base1.i9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ftm_base1.i9, align 4
  %add.ptr2.i10 = getelementptr i8, ptr %11, i32 128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i10, i32 0) #6, !srcloc !94
  br label %ftm_write.exit12

ftm_write.exit12:                                 ; preds = %if.else.i11, %do.body.i8
  %12 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i.i = icmp eq i8 %13, 0
  %ftm_base1.i.i = getelementptr inbounds %struct.ftm_quaddec, ptr %ftm, i32 0, i32 1
  %14 = ptrtoint ptr %ftm_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ftm_base1.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %15, i32 116
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %ftm_write.exit12
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %ftm_read.exit.i

if.else.i.i:                                      ; preds = %ftm_write.exit12
  call void @__sanitizer_cov_trace_pc() #8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ftm_read.exit.i

ftm_read.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i.i = phi i32 [ %17, %if.else.i.i ], [ %16, %if.then.i.i ]
  %or.i = or i32 %storemerge.i.i, 64
  %18 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i15.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i15.i, label %if.else.i18.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ftm_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %ftm_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ftm_base1.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #6, !srcloc !94
  br label %ftm_set_write_protection.exit

if.else.i18.i:                                    ; preds = %ftm_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %ftm_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ftm_base1.i.i, align 4
  %add.ptr2.i17.i = getelementptr i8, ptr %23, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %24 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i17.i, i32 %24) #6, !srcloc !94
  br label %ftm_set_write_protection.exit

ftm_set_write_protection.exit:                    ; preds = %if.else.i18.i, %do.body.i.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_counter_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_quaddec_count_read(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %big_endian.i = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %ftm_base1.i = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %ftm_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ftm_read.exit

ftm_read.exit:                                    ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %5, %if.else.i ], [ %4, %if.then.i ]
  %conv = zext i32 %storemerge.i to i64
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv, ptr %val, align 8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_quaddec_count_write(ptr noundef %counter, ptr nocapture noundef readnone %count, i64 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %val)
  %cmp.not = icmp eq i64 %val, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.12) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %big_endian.i.i = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %big_endian.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %ftm_base.i.i = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %ftm_base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ftm_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #6, !srcloc !94
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %ftm_base1.i.i = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 1
  %6 = ptrtoint ptr %ftm_base1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ftm_base1.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 0) #6, !srcloc !94
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i, %do.body.i.i, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body.i.i ], [ 0, %if.else.i.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ftm_quaddec_count_function_read(ptr nocapture noundef readnone %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %function) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 7, ptr %function, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @ftm_quaddec_action_read(ptr nocapture noundef readnone %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef readnone %synapse, ptr nocapture noundef writeonly %action) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %action, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_quaddec_get_prescaler(ptr noundef %counter, ptr nocapture noundef readnone %count, ptr nocapture noundef writeonly %cnt_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %big_endian.i = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %ftm_base1.i = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ftm_base1.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %ftm_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ftm_read.exit

ftm_read.exit:                                    ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %5, %if.else.i ], [ %4, %if.then.i ]
  %and = and i32 %storemerge.i, 7
  %6 = ptrtoint ptr %cnt_mode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %cnt_mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ftm_quaddec_set_prescaler(ptr noundef %counter, ptr nocapture noundef readnone %count, i32 noundef %cnt_mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @counter_priv(ptr noundef %counter) #6
  %ftm_quaddec_mutex = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 3
  tail call void @mutex_lock_nested(ptr noundef %ftm_quaddec_mutex, i32 noundef 0) #6
  tail call fastcc void @ftm_clear_write_protection(ptr noundef %call)
  %big_endian.i = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %ftm_base1.i = getelementptr inbounds %struct.ftm_quaddec, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ftm_base1.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %do.end13

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %do.end13

do.end13:                                         ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %5, %if.else.i ], [ %4, %if.then.i ]
  %and = and i32 %storemerge.i, -8
  %and14 = and i32 %cnt_mode, 7
  %or = or i32 %and, %and14
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i25 = icmp eq i8 %7, 0
  br i1 %tobool.not.i25, label %if.else.i27, label %do.body.i

do.body.i:                                        ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ftm_base1.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %or) #6, !srcloc !94
  br label %ftm_write.exit

if.else.i27:                                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ftm_base1.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %12) #6, !srcloc !94
  br label %ftm_write.exit

ftm_write.exit:                                   ; preds = %if.else.i27, %do.body.i
  %13 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i = icmp eq i8 %14, 0
  %15 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %16, i32 116
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #6
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %ftm_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %ftm_read.exit.i

if.else.i.i:                                      ; preds = %ftm_write.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ftm_read.exit.i

ftm_read.exit.i:                                  ; preds = %if.else.i.i, %if.then.i.i
  %storemerge.i.i = phi i32 [ %18, %if.else.i.i ], [ %17, %if.then.i.i ]
  %or.i = or i32 %storemerge.i.i, 64
  %19 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i15.i = icmp eq i8 %20, 0
  br i1 %tobool.not.i15.i, label %if.else.i18.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %ftm_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %or.i) #6, !srcloc !94
  br label %ftm_set_write_protection.exit

if.else.i18.i:                                    ; preds = %ftm_read.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr2.i17.i = getelementptr i8, ptr %24, i32 116
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i17.i, i32 %25) #6, !srcloc !94
  br label %ftm_set_write_protection.exit

ftm_set_write_protection.exit:                    ; preds = %if.else.i18.i, %do.body.i.i
  %26 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i.i29 = icmp eq i8 %27, 0
  br i1 %tobool.not.i.i29, label %if.else.i.i34, label %do.body.i.i31

do.body.i.i31:                                    ; preds = %ftm_set_write_protection.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %28 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr.i.i30 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30, i32 0) #6, !srcloc !94
  br label %ftm_reset_counter.exit

if.else.i.i34:                                    ; preds = %ftm_set_write_protection.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr2.i.i33 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i33, i32 0) #6, !srcloc !94
  br label %ftm_reset_counter.exit

ftm_reset_counter.exit:                           ; preds = %if.else.i.i34, %do.body.i.i31
  tail call void @mutex_unlock(ptr noundef %ftm_quaddec_mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ftm_clear_write_protection(ptr nocapture noundef readonly %ftm) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %big_endian.i = getelementptr inbounds %struct.ftm_quaddec, ptr %ftm, i32 0, i32 2
  %0 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not.i = icmp eq i8 %1, 0
  %ftm_base1.i = getelementptr inbounds %struct.ftm_quaddec, ptr %ftm, i32 0, i32 1
  %2 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %3, i32 116
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #6
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %ftm_read.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ftm_read.exit

ftm_read.exit:                                    ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %5, %if.else.i ], [ %4, %if.then.i ]
  %and = and i32 %storemerge.i, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %ftm_read.exit.if.end_crit_edge, label %if.then

ftm_read.exit.if.end_crit_edge:                   ; preds = %ftm_read.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %ftm_read.exit
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i17 = icmp eq i8 %7, 0
  %8 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr2.i19 = getelementptr i8, ptr %9, i32 84
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i19) #6
  br i1 %tobool.not.i17, label %if.else.i21, label %if.then.i20

if.then.i20:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  br label %ftm_read.exit23

if.else.i21:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  br label %ftm_read.exit23

ftm_read.exit23:                                  ; preds = %if.else.i21, %if.then.i20
  %storemerge.i22 = phi i32 [ %11, %if.else.i21 ], [ %10, %if.then.i20 ]
  %or = or i32 %storemerge.i22, 4
  %12 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %big_endian.i, align 4, !range !92
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i25 = icmp eq i8 %13, 0
  br i1 %tobool.not.i25, label %if.else.i28, label %do.body.i

do.body.i:                                        ; preds = %ftm_read.exit23
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %14 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or) #6, !srcloc !94
  br label %if.end

if.else.i28:                                      ; preds = %ftm_read.exit23
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %ftm_base1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ftm_base1.i, align 4
  %add.ptr2.i27 = getelementptr i8, ptr %17, i32 84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i27, i32 %18) #6, !srcloc !94
  br label %if.end

if.end:                                           ; preds = %if.else.i28, %do.body.i, %ftm_read.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !33, !35, !37, !38, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81}
!llvm.module.flags = !{!83, !84, !85, !86, !87, !88, !89, !90}
!llvm.ident = !{!91}

!0 = !{ptr @__initcall__kmod_ftm_quaddec__247_323_ftm_quaddec_driver_init6, !1, !"__initcall__kmod_ftm_quaddec__247_323_ftm_quaddec_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/counter/ftm-quaddec.c", i32 323, i32 1}
!2 = !{ptr @__exitcall_ftm_quaddec_driver_exit, !1, !"__exitcall_ftm_quaddec_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file248, !4, !"__UNIQUE_ID_file248", i1 false, i1 false}
!4 = !{!"../drivers/counter/ftm-quaddec.c", i32 325, i32 1}
!5 = !{ptr @__UNIQUE_ID_license249, !4, !"__UNIQUE_ID_license249", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author250, !7, !"__UNIQUE_ID_author250", i1 false, i1 false}
!7 = !{!"../drivers/counter/ftm-quaddec.c", i32 326, i32 1}
!8 = !{ptr @__UNIQUE_ID_author251, !9, !"__UNIQUE_ID_author251", i1 false, i1 false}
!9 = !{!"../drivers/counter/ftm-quaddec.c", i32 327, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/counter/ftm-quaddec.c", i32 317, i32 11}
!12 = !{ptr @ftm_quaddec_driver, !13, !"ftm_quaddec_driver", i1 false, i1 false}
!13 = !{!"../drivers/counter/ftm-quaddec.c", i32 315, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/counter/ftm-quaddec.c", i32 275, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @ftm_quaddec_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @ftm_quaddec_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/counter/ftm-quaddec.c", i32 280, i32 48}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/counter/ftm-quaddec.c", i32 284, i32 3}
!26 = !{ptr @ftm_quaddec_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @ftm_quaddec_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @ftm_quaddec_probe.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/counter/ftm-quaddec.c", i32 295, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/counter/ftm-quaddec.c", i32 305, i32 41}
!33 = !{ptr @ftm_quaddec_cnt_ops, !34, !"ftm_quaddec_cnt_ops", i1 false, i1 false}
!34 = !{!"../drivers/counter/ftm-quaddec.c", i32 209, i32 33}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/counter/ftm-quaddec.c", i32 181, i32 3}
!37 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @ftm_quaddec_count_write._entry, !36, !"_entry", i1 false, i1 false}
!40 = !{ptr @ftm_quaddec_count_write._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/counter/ftm-quaddec.c", i32 250, i32 10}
!43 = !{ptr @ftm_quaddec_counts, !44, !"ftm_quaddec_counts", i1 false, i1 false}
!44 = !{!"../drivers/counter/ftm-quaddec.c", i32 248, i32 29}
!45 = !{ptr @ftm_quaddec_count_functions, !46, !"ftm_quaddec_count_functions", i1 false, i1 false}
!46 = !{!"../drivers/counter/ftm-quaddec.c", i32 156, i32 36}
!47 = !{ptr @ftm_quaddec_count_synapses, !48, !"ftm_quaddec_count_synapses", i1 false, i1 false}
!48 = !{!"../drivers/counter/ftm-quaddec.c", i32 227, i32 31}
!49 = !{ptr @ftm_quaddec_synapse_actions, !50, !"ftm_quaddec_synapse_actions", i1 false, i1 false}
!50 = !{!"../drivers/counter/ftm-quaddec.c", i32 152, i32 42}
!51 = !{ptr @.str.16, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/counter/ftm-quaddec.c", i32 243, i32 2}
!53 = !{ptr @ftm_quaddec_count_ext, !54, !"ftm_quaddec_count_ext", i1 false, i1 false}
!54 = !{!"../drivers/counter/ftm-quaddec.c", i32 242, i32 28}
!55 = !{ptr @ftm_quaddec_prescaler_enum, !56, !"ftm_quaddec_prescaler_enum", i1 false, i1 false}
!56 = !{!"../drivers/counter/ftm-quaddec.c", i32 240, i32 8}
!57 = !{ptr @.str.17, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/counter/ftm-quaddec.c", i32 149, i32 2}
!59 = !{ptr @.str.18, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/counter/ftm-quaddec.c", i32 149, i32 7}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/counter/ftm-quaddec.c", i32 149, i32 12}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/counter/ftm-quaddec.c", i32 149, i32 17}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/counter/ftm-quaddec.c", i32 149, i32 22}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/counter/ftm-quaddec.c", i32 149, i32 28}
!69 = !{ptr @.str.23, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/counter/ftm-quaddec.c", i32 149, i32 34}
!71 = !{ptr @.str.24, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/counter/ftm-quaddec.c", i32 149, i32 40}
!73 = !{ptr @ftm_quaddec_prescaler, !74, !"ftm_quaddec_prescaler", i1 false, i1 false}
!74 = !{!"../drivers/counter/ftm-quaddec.c", i32 148, i32 27}
!75 = !{ptr @.str.25, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/counter/ftm-quaddec.c", i32 219, i32 11}
!77 = !{ptr @.str.26, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/counter/ftm-quaddec.c", i32 223, i32 11}
!79 = !{ptr @ftm_quaddec_signals, !80, !"ftm_quaddec_signals", i1 false, i1 false}
!80 = !{!"../drivers/counter/ftm-quaddec.c", i32 216, i32 30}
!81 = !{ptr @ftm_quaddec_match, !82, !"ftm_quaddec_match", i1 false, i1 false}
!82 = !{!"../drivers/counter/ftm-quaddec.c", i32 310, i32 34}
!83 = !{i32 1, !"wchar_size", i32 2}
!84 = !{i32 1, !"min_enum_size", i32 4}
!85 = !{i32 8, !"branch-target-enforcement", i32 0}
!86 = !{i32 8, !"sign-return-address", i32 0}
!87 = !{i32 8, !"sign-return-address-all", i32 0}
!88 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!89 = !{i32 7, !"uwtable", i32 1}
!90 = !{i32 7, !"frame-pointer", i32 2}
!91 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!92 = !{i8 0, i8 2}
!93 = !{i64 2153977499}
!94 = !{i64 4907698}
!95 = !{i64 2152442330}
!96 = !{i64 2153977243}
!97 = !{i64 2152440975}
