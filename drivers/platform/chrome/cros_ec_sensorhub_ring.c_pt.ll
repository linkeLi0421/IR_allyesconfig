; ModuleID = '/llk/IR_all_yes/drivers/platform/chrome/cros_ec_sensorhub_ring.c_pt.bc'
source_filename = "../drivers/platform/chrome/cros_ec_sensorhub_ring.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+cros_ec_sensorhub_register_push_data\22, \22a\22\09"
module asm "\09.weak\09__crc_cros_ec_sensorhub_register_push_data\09\09\09\09"
module asm "\09.long\09__crc_cros_ec_sensorhub_register_push_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_sensorhub_register_push_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_sensorhub_register_push_data\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_sensorhub_register_push_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+cros_ec_sensorhub_unregister_push_data\22, \22a\22\09"
module asm "\09.weak\09__crc_cros_ec_sensorhub_unregister_push_data\09\09\09\09"
module asm "\09.long\09__crc_cros_ec_sensorhub_unregister_push_data\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_cros_ec_sensorhub_unregister_push_data:\09\09\09\09\09"
module asm "\09.asciz \09\22cros_ec_sensorhub_unregister_push_data\22\09\09\09\09\09"
module asm "__kstrtabns_cros_ec_sensorhub_unregister_push_data:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.42 }
%union.anon.42 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.cros_ec_sensorhub = type { ptr, ptr, i32, ptr, ptr, ptr, %struct.mutex, %struct.notifier_block, ptr, [2 x i64], ptr, i32, ptr, %struct.cros_ec_sensors_ec_overflow_state, %struct.cros_ec_sensors_ec_overflow_state, %struct.cros_ec_sensors_ts_filter_state, i32, i32, i64, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cros_ec_sensors_ec_overflow_state = type { i64, i64 }
%struct.cros_ec_sensors_ts_filter_state = type { i64, i64, [64 x i64], [64 x i64], [64 x i64], i32, [64 x i64], i64, i64 }
%struct.cros_ec_sensorhub_sensor_push_data = type { ptr, ptr }
%struct.cros_ec_sensors_ts_batch_state = type { i64, i32, i64, i32, i64 }
%struct.ec_params_motion_sense = type <{ i8, %union.anon.44 }>
%union.anon.44 = type { %struct.anon.48, [4 x i8] }
%struct.anon.48 = type { i8, i8, i16, i32 }
%struct.cros_ec_command = type { i32, i32, i32, i32, i32, [0 x i8] }
%struct.cros_ec_dev = type { %struct.device, ptr, ptr, ptr, i8, i16, %struct.ec_response_get_features }
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
%struct.ec_response_get_features = type { [2 x i32] }
%struct.cros_ec_device = type { ptr, ptr, i8, ptr, ptr, i16, i16, i16, i16, ptr, i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, %struct.mutex, i8, i8, %struct.blocking_notifier_head, %struct.ec_response_get_next_event_v1, i32, i32, i32, i64, %struct.notifier_block, ptr, ptr }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ec_response_get_next_event_v1 = type <{ i8, %union.ec_response_get_next_data_v1 }>
%union.ec_response_get_next_data_v1 = type { i64, [8 x i8] }
%struct.anon.43 = type { [3 x i8], %struct.ec_response_motion_sense_fifo_info }
%struct.ec_response_motion_sense_fifo_info = type <{ i16, i16, i32, i16, [0 x i16] }>
%struct.cros_ec_sensors_ring_sample = type { i8, i8, [3 x i16], i64 }
%struct.ec_response_motion_sense_fifo_data = type { i32, [0 x %struct.ec_response_motion_sensor_data] }
%struct.ec_response_motion_sensor_data = type { i8, i8, %union.anon.57 }
%union.anon.57 = type { [3 x i16] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_cros_ec_sensorhub_register_push_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_sensorhub_register_push_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_sensorhub_register_push_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_sensorhub_register_push_data to i32), ptr @__kstrtab_cros_ec_sensorhub_register_push_data, ptr @__kstrtabns_cros_ec_sensorhub_register_push_data }, section "___ksymtab_gpl+cros_ec_sensorhub_register_push_data", align 4
@__kstrtab_cros_ec_sensorhub_unregister_push_data = external dso_local constant [0 x i8], align 1
@__kstrtabns_cros_ec_sensorhub_unregister_push_data = external dso_local constant [0 x i8], align 1
@__ksymtab_cros_ec_sensorhub_unregister_push_data = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @cros_ec_sensorhub_unregister_push_data to i32), ptr @__kstrtab_cros_ec_sensorhub_unregister_push_data, ptr @__kstrtabns_cros_ec_sensorhub_unregister_push_data }, section "___ksymtab_gpl+cros_ec_sensorhub_unregister_push_data", align 4
@cros_ec_sensorhub_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 927, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid fifo info size\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cros_ec_sensorhub_event\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drivers/platform/chrome/cros_ec_sensorhub_ring.c\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_event._entry_ptr = internal global ptr @cros_ec_sensorhub_event._entry, section ".printk_index", align 4
@cros_ec_sensorhub_ring_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 809, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"Mismatch EC data: count %d, size %d - expected %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cros_ec_sensorhub_ring_handler\00", [33 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_ring_handler._entry_ptr = internal global ptr @cros_ec_sensorhub_ring_handler._entry, section ".printk_index", align 4
@cros_ec_sensorhub_ring_handler._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 828, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Fifo error: %d\0A\00", [16 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_ring_handler._entry_ptr.9 = internal global ptr @cros_ec_sensorhub_ring_handler._entry.7, section ".printk_index", align 4
@cros_ec_sensorhub_ring_handler.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.6, ptr @.str.2, ptr @.str.11, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cros_ec_sensorhub\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unexpected empty FIFO\0A\00", [41 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_ring_handler._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.6, ptr @.str.2, i32 839, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Invalid EC data: too many entry received: %d, expected %d\0A\00", [37 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_ring_handler._entry_ptr.14 = internal global ptr @cros_ec_sensorhub_ring_handler._entry.12, section ".printk_index", align 4
@cros_ec_sensorhub_ring_handler._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.6, ptr @.str.2, i32 847, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"Too many samples: %d (%zd data) to %d entries for expected %d entries\0A\00", [57 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_ring_handler._entry_ptr.17 = internal global ptr @cros_ec_sensorhub_ring_handler._entry.15, section ".printk_index", align 4
@cros_ec_sensorhub_ring_handler._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_ring_handler._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.6, ptr @.str.2, i32 887, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Sensor %d: lost: %d out of %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cros_ec_sensorhub_ring_handler._entry_ptr.21 = internal global ptr @cros_ec_sensorhub_ring_handler._entry.19, section ".printk_index", align 4
@cros_ec_sensor_ring_process_event._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.cros_ec_sensor_ring_process_event = private unnamed_addr constant [34 x i8] c"cros_ec_sensor_ring_process_event\00", align 1
@cros_ec_sensor_ring_process_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @__func__.cros_ec_sensor_ring_process_event, ptr @.str.2, i32 490, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"100 timestamps in the future, %lldns shaved on average\0A\00", [40 x i8] zeroinitializer }, align 32
@cros_ec_sensor_ring_process_event._entry_ptr = internal global ptr @cros_ec_sensor_ring_process_event._entry, section ".printk_index", align 4
@__tracepoint_cros_ec_sensorhub_filter = external dso_local global %struct.tracepoint, align 4
@.str.23 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/platform/chrome/cros_ec_trace.h\00", [56 x i8] zeroinitializer }, align 32
@trace_cros_ec_sensorhub_filter.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.24 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__tracepoint_cros_ec_sensorhub_timestamp = external dso_local global %struct.tracepoint, align 4
@trace_cros_ec_sensorhub_timestamp.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__tracepoint_cros_ec_sensorhub_data = external dso_local global %struct.tracepoint, align 4
@trace_cros_ec_sensorhub_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cros_ec_sensor_ring_spread_add._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 631, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Sensor %d: lost %d samples when spreading\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"cros_ec_sensor_ring_spread_add\00", [33 x i8] zeroinitializer }, align 32
@cros_ec_sensor_ring_spread_add._entry_ptr = internal global ptr @cros_ec_sensor_ring_spread_add._entry, section ".printk_index", align 4
@cros_ec_sensor_ring_spread_add.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.27, ptr @.str.2, ptr @.str.28, i8 0, i8 -94, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"Adjusting %d samples, sensor %d last_batch @%lld (%d samples) batch_timestamp=%lld => period=%lld\0A\00", [61 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 927, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 806, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 828, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 833, i32 4 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 837, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 844, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 884, i32 5 }
@___asan_gen_.92 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 488, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant [43 x i8] c"../drivers/platform/chrome/cros_ec_trace.h\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 135, i32 1 }
@___asan_gen_.108 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 108, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 630, i32 5 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [52 x i8] c"../drivers/platform/chrome/cros_ec_sensorhub_ring.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 644, i32 4 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__ksymtab_cros_ec_sensorhub_register_push_data, ptr @__ksymtab_cros_ec_sensorhub_unregister_push_data, ptr @cros_ec_sensor_ring_process_event._entry, ptr @cros_ec_sensor_ring_process_event._entry_ptr, ptr @cros_ec_sensor_ring_spread_add._entry, ptr @cros_ec_sensor_ring_spread_add._entry_ptr, ptr @cros_ec_sensorhub_event._entry, ptr @cros_ec_sensorhub_event._entry_ptr, ptr @cros_ec_sensorhub_ring_handler._entry, ptr @cros_ec_sensorhub_ring_handler._entry.12, ptr @cros_ec_sensorhub_ring_handler._entry.15, ptr @cros_ec_sensorhub_ring_handler._entry.19, ptr @cros_ec_sensorhub_ring_handler._entry.7, ptr @cros_ec_sensorhub_ring_handler._entry_ptr, ptr @cros_ec_sensorhub_ring_handler._entry_ptr.14, ptr @cros_ec_sensorhub_ring_handler._entry_ptr.17, ptr @cros_ec_sensorhub_ring_handler._entry_ptr.21, ptr @cros_ec_sensorhub_ring_handler._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @cros_ec_sensorhub_ring_handler._rs, ptr @.str.18, ptr @.str.20, ptr @cros_ec_sensor_ring_process_event._rs, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_ring_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_ring_handler._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_ring_handler._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_ring_handler._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_ring_handler._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensorhub_ring_handler._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensor_ring_process_event._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensor_ring_process_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cros_ec_sensor_ring_spread_add._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @cros_ec_sensorhub_register_push_data(ptr nocapture noundef readonly %sensorhub, i8 noundef zeroext %sensor_num, ptr noundef %indio_dev, ptr noundef %cb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %sensor_num to i32
  %sensor_num1 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 2
  %0 = ptrtoint ptr %sensor_num1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sensor_num1, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %conv)
  %cmp.not = icmp sgt i32 %1, %conv
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  %push_data = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 19
  %2 = ptrtoint ptr %push_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %push_data, align 8
  %arrayidx = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %3, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end5, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %indio_dev, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %push_data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %push_data, align 8
  %push_data_cb = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %8, i32 %conv, i32 1
  %9 = ptrtoint ptr %push_data_cb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %cb, ptr %push_data_cb, align 4
  br label %return

return:                                           ; preds = %if.end5, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end5 ], [ -22, %entry.return_crit_edge ], [ -22, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @cros_ec_sensorhub_unregister_push_data(ptr nocapture noundef readonly %sensorhub, i8 noundef zeroext %sensor_num) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %push_data = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 19
  %0 = ptrtoint ptr %push_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %push_data, align 8
  %idxprom = zext i8 %sensor_num to i32
  %arrayidx = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %1, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %3 = load ptr, ptr %push_data, align 8
  %push_data_cb = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %3, i32 %idxprom, i32 1
  %4 = ptrtoint ptr %push_data_cb to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %push_data_cb, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cros_ec_sensorhub_ring_fifo_enable(ptr noundef %sensorhub, i1 noundef zeroext %on) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cmd_lock = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #9
  %tight_timestamps = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 16
  %0 = ptrtoint ptr %tight_timestamps to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tight_timestamps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %for.cond.preheader

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.cond.preheader:                               ; preds = %entry
  %sensor_num = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 2
  %2 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp23 = icmp sgt i32 %3, 0
  br i1 %cmp23, label %for.body.lr.ph, label %for.cond.preheader.if.end_crit_edge

for.cond.preheader.if.end_crit_edge:              ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %batch_state = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %batch_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %batch_state, align 8
  %last_len = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %5, i32 %i.024, i32 3
  %6 = ptrtoint ptr %last_len to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %last_len, align 8
  %inc = add nuw nsw i32 %i.024, 1
  %7 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sensor_num, align 8
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %for.cond.preheader.if.end_crit_edge, %entry.if.end_crit_edge
  %frombool = zext i1 %on to i8
  %params = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 4
  %9 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %params, align 8
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 15, ptr %10, align 1
  %12 = load ptr, ptr %params, align 8
  %13 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %13, align 1
  %msg = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 3
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msg, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 13, ptr %outsize, align 4
  %18 = load ptr, ptr %msg, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 16, ptr %insize, align 4
  %ec = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 1
  %20 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ec, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ec_dev, align 8
  %24 = load ptr, ptr %msg, align 4
  %call = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %23, ptr noundef %24) #9
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #9
  %25 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %25
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cros_ec_cmd_xfer_status(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cros_ec_sensorhub_ring_allocate(ptr nocapture noundef %sensorhub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sensor_num = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 2
  %0 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sensor_num, align 8
  %mul = shl i32 %1, 1
  %add = add i32 %mul, 10
  %2 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sensorhub, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %add, i32 noundef 3520) #9
  %fifo_info = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 10
  %4 = ptrtoint ptr %fifo_info to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %fifo_info, align 8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %sensor_num, align 8
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %6, i32 8) #9
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !77

devm_kcalloc.exit.thread:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %push_data40 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 19
  %9 = ptrtoint ptr %push_data40 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %push_data40, align 8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end
  %10 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %sensorhub, align 8
  %12 = extractvalue { i32, i1 } %7, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %11, i32 noundef %12, i32 noundef 3520) #9
  %push_data = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 19
  %13 = ptrtoint ptr %push_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call5.i.i, ptr %push_data, align 8
  %tobool6.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool6.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end8

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %devm_kcalloc.exit
  %ec = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 1
  %14 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ec, align 4
  %call9 = tail call zeroext i1 @cros_ec_check_features(ptr noundef %15, i32 noundef 36) #9
  %conv = zext i1 %call9 to i32
  %tight_timestamps = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 16
  %16 = ptrtoint ptr %tight_timestamps to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv, ptr %tight_timestamps, align 8
  br i1 %call9, label %if.then12, label %if.end8.if.end20_crit_edge

if.end8.if.end20_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.then12:                                        ; preds = %if.end8
  %17 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %sensor_num, align 8
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %18, i32 40) #9
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %devm_kcalloc.exit38.thread, label %devm_kcalloc.exit38, !prof !77

devm_kcalloc.exit38.thread:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  %batch_state43 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 12
  %21 = ptrtoint ptr %batch_state43 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %batch_state43, align 8
  br label %cleanup

devm_kcalloc.exit38:                              ; preds = %if.then12
  %22 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sensorhub, align 8
  %24 = extractvalue { i32, i1 } %19, 0
  %call5.i.i35 = tail call noalias ptr @devm_kmalloc(ptr noundef %23, i32 noundef %24, i32 noundef 3520) #9
  %batch_state = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 12
  %25 = ptrtoint ptr %batch_state to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i35, ptr %batch_state, align 8
  %tobool17.not = icmp eq ptr %call5.i.i35, null
  br i1 %tobool17.not, label %devm_kcalloc.exit38.cleanup_crit_edge, label %devm_kcalloc.exit38.if.end20_crit_edge

devm_kcalloc.exit38.if.end20_crit_edge:           ; preds = %devm_kcalloc.exit38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

devm_kcalloc.exit38.cleanup_crit_edge:            ; preds = %devm_kcalloc.exit38
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end20:                                         ; preds = %devm_kcalloc.exit38.if.end20_crit_edge, %if.end8.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %devm_kcalloc.exit38.cleanup_crit_edge, %devm_kcalloc.exit38.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit38.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit38.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cros_ec_check_features(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cros_ec_sensorhub_ring_add(ptr noundef %sensorhub) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ec1 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 1
  %0 = ptrtoint ptr %ec1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec1, align 4
  %sensor_num = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 2
  %2 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sensor_num, align 8
  %mul = shl i32 %3, 1
  %add = add i32 %mul, 10
  %msg = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 3
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %msg, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %5, align 4
  %params = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 4
  %7 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %params, align 8
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 7, ptr %8, align 1
  %10 = load ptr, ptr %msg, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %outsize, align 4
  %12 = load ptr, ptr %msg, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add, ptr %insize, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ec_dev, align 8
  %16 = load ptr, ptr %msg, align 4
  %call = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %15, ptr noundef %16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %resp = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 5
  %17 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %resp, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 2)
  %20 = load i16, ptr %18, align 1
  %conv = zext i16 %20 to i32
  %fifo_size = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 11
  %21 = ptrtoint ptr %fifo_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %conv, ptr %fifo_size, align 4
  %22 = shl nuw nsw i32 %conv, 4
  %23 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sensorhub, align 8
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %24, i32 noundef %22, i32 noundef 3520) #9
  %ring = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 8
  %25 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call5.i.i, ptr %ring, align 8
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #9
  %fifo_timestamp = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 9
  %26 = ptrtoint ptr %fifo_timestamp to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %call.i.i.i, ptr %fifo_timestamp, align 8
  %notifier = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 7
  %27 = ptrtoint ptr %notifier to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @cros_ec_sensorhub_event, ptr %notifier, align 4
  %28 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ec_dev, align 8
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %29, i32 0, i32 22
  %call13 = tail call i32 @blocking_notifier_chain_register(ptr noundef %event_notifier, ptr noundef %notifier) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end9.cleanup_crit_edge, label %if.end17

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %cmd_lock.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #9
  %tight_timestamps.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 16
  %30 = ptrtoint ptr %tight_timestamps.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tight_timestamps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i = icmp eq i32 %31, 0
  br i1 %tobool.not.i, label %if.end17.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge, label %for.cond.preheader.i

if.end17.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge: ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensorhub_ring_fifo_enable.exit

for.cond.preheader.i:                             ; preds = %if.end17
  %32 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sensor_num, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp23.i = icmp sgt i32 %33, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge

for.cond.preheader.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensorhub_ring_fifo_enable.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %batch_state.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %34 = ptrtoint ptr %batch_state.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %batch_state.i, align 8
  %last_len.i = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %35, i32 %i.024.i, i32 3
  %36 = ptrtoint ptr %last_len.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %last_len.i, align 8
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %37 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sensor_num, align 8
  %cmp.i = icmp slt i32 %inc.i, %38
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge

for.body.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensorhub_ring_fifo_enable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cros_ec_sensorhub_ring_fifo_enable.exit:          ; preds = %for.body.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge, %for.cond.preheader.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge, %if.end17.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge
  %39 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %params, align 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 15, ptr %40, align 1
  %42 = load ptr, ptr %params, align 8
  %43 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 1, ptr %43, align 1
  %45 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %msg, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 13, ptr %outsize.i, align 4
  %48 = load ptr, ptr %msg, align 4
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %48, i32 0, i32 3
  %49 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 16, ptr %insize.i, align 4
  %50 = ptrtoint ptr %ec1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ec1, align 4
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ec_dev.i, align 8
  %54 = load ptr, ptr %msg, align 4
  %call.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %53, ptr noundef %54) #9
  tail call void @mutex_unlock(ptr noundef %cmd_lock.i) #9
  %55 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #9
  br label %cleanup

cleanup:                                          ; preds = %cros_ec_sensorhub_ring_fifo_enable.exit, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %55, %cros_ec_sensorhub_ring_fifo_enable.exit ], [ %call, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call13, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cros_ec_sensorhub_event(ptr noundef %nb, i32 noundef %queued_during_suspend, ptr nocapture noundef readnone %_notify) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %nb, i32 -116
  %ec = getelementptr i8, ptr %nb, i32 -112
  %0 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec, align 4
  %ec_dev1 = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ec_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev1, align 8
  %event_data = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 23
  %4 = ptrtoint ptr %event_data to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %event_data, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %event_size = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 24
  %6 = ptrtoint ptr %event_size to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %event_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %7)
  %cmp3.not = icmp eq i32 %7, 13
  br i1 %cmp3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %9, ptr noundef nonnull @.str) #12
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %queued_during_suspend)
  %tobool.not = icmp eq i32 %queued_during_suspend, 0
  br i1 %tobool.not, label %if.end8, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %fifo_info = getelementptr i8, ptr %nb, i32 36
  %10 = ptrtoint ptr %fifo_info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fifo_info, align 8
  %data = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 23, i32 1
  %info = getelementptr inbounds %struct.anon.43, ptr %data, i32 0, i32 1
  %12 = call ptr @memcpy(ptr %11, ptr %info, i32 10)
  %last_event_time = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 27
  %13 = ptrtoint ptr %last_event_time to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %last_event_time, align 8
  %arrayidx = getelementptr i8, ptr %nb, i32 28
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arrayidx, align 8
  tail call fastcc void @cros_ec_sensorhub_ring_handler(ptr noundef %add.ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @cros_ec_sensorhub_ring_remove(ptr noundef %arg) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %ec = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %arg, i32 0, i32 1
  %0 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ec, align 4
  %ec_dev1 = getelementptr inbounds %struct.cros_ec_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ec_dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec_dev1, align 8
  %cmd_lock.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %arg, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock.i, i32 noundef 0) #9
  %tight_timestamps.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %arg, i32 0, i32 16
  %4 = ptrtoint ptr %tight_timestamps.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tight_timestamps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge, label %for.cond.preheader.i

entry.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensorhub_ring_fifo_enable.exit

for.cond.preheader.i:                             ; preds = %entry
  %sensor_num.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %arg, i32 0, i32 2
  %6 = ptrtoint ptr %sensor_num.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_num.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp23.i = icmp sgt i32 %7, 0
  br i1 %cmp23.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge

for.cond.preheader.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensorhub_ring_fifo_enable.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %batch_state.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %arg, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.024.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %batch_state.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %batch_state.i, align 8
  %last_len.i = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %9, i32 %i.024.i, i32 3
  %10 = ptrtoint ptr %last_len.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %last_len.i, align 8
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %11 = ptrtoint ptr %sensor_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sensor_num.i, align 8
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge

for.body.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensorhub_ring_fifo_enable.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

cros_ec_sensorhub_ring_fifo_enable.exit:          ; preds = %for.body.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge, %for.cond.preheader.i.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge, %entry.cros_ec_sensorhub_ring_fifo_enable.exit_crit_edge
  %params.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %arg, i32 0, i32 4
  %13 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %params.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 15, ptr %14, align 1
  %16 = load ptr, ptr %params.i, align 8
  %17 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %16, i32 0, i32 1
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %17, align 1
  %msg.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %arg, i32 0, i32 3
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msg.i, align 4
  %outsize.i = getelementptr inbounds %struct.cros_ec_command, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %outsize.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 13, ptr %outsize.i, align 4
  %22 = load ptr, ptr %msg.i, align 4
  %insize.i = getelementptr inbounds %struct.cros_ec_command, ptr %22, i32 0, i32 3
  %23 = ptrtoint ptr %insize.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 16, ptr %insize.i, align 4
  %24 = ptrtoint ptr %ec to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ec, align 4
  %ec_dev.i = getelementptr inbounds %struct.cros_ec_dev, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %ec_dev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ec_dev.i, align 8
  %28 = load ptr, ptr %msg.i, align 4
  %call.i = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %27, ptr noundef %28) #9
  tail call void @mutex_unlock(ptr noundef %cmd_lock.i) #9
  %event_notifier = getelementptr inbounds %struct.cros_ec_device, ptr %3, i32 0, i32 22
  %notifier = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %arg, i32 0, i32 7
  %call2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef %event_notifier, ptr noundef %notifier) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cros_ec_sensorhub_ring_handler(ptr noundef %sensorhub) unnamed_addr #1 align 64 {
entry:
  %remainder.i.i279 = alloca i32, align 4
  %sensor_mask.addr.i = alloca i32, align 4
  %remainder.i.i = alloca i32, align 4
  %remainder.i.i176.i = alloca i32, align 4
  %remainder.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fifo_info1 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 10
  %0 = ptrtoint ptr %fifo_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fifo_info1, align 8
  %ec2 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 1
  %2 = ptrtoint ptr %ec2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ec2, align 4
  %cmd_lock = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %cmd_lock, i32 noundef 0) #9
  %total_lost = getelementptr inbounds %struct.ec_response_motion_sense_fifo_info, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %total_lost to i32
  call void @__asan_loadN_noabort(i32 %4, i32 2)
  %5 = load i16, ptr %total_lost, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.not = icmp eq i16 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %sensor_num = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 2
  %6 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sensor_num, align 8
  %mul = shl i32 %7, 1
  %add = add i32 %mul, 10
  %params = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 4
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %params, align 8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 7, ptr %9, align 1
  %msg = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 3
  %11 = ptrtoint ptr %msg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %msg, align 4
  %outsize = getelementptr inbounds %struct.cros_ec_command, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %outsize to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %outsize, align 4
  %14 = load ptr, ptr %msg, align 4
  %insize = getelementptr inbounds %struct.cros_ec_command, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %insize to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %add, ptr %insize, align 4
  %ec_dev = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %16 = ptrtoint ptr %ec_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ec_dev, align 8
  %18 = load ptr, ptr %msg, align 4
  %call = tail call i32 @cros_ec_cmd_xfer_status(ptr noundef %17, ptr noundef %18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then.error_crit_edge, label %cleanup.thread

if.then.error_crit_edge:                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %resp = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 5
  %19 = ptrtoint ptr %resp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %resp, align 4
  %21 = call ptr @memcpy(ptr %1, ptr %20, i32 %add)
  %call.i.i.i = tail call i64 @ktime_get_with_offset(i32 noundef 1) #9
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 9, i32 1
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arrayidx, align 8
  br label %if.end8

if.end8:                                          ; preds = %if.else, %cleanup.thread
  %fifo_timestamp.1 = phi i64 [ %23, %if.else ], [ %call.i.i.i, %cleanup.thread ]
  %count = getelementptr inbounds %struct.ec_response_motion_sense_fifo_info, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %count, align 1
  %conv = zext i16 %25 to i32
  %fifo_size = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 11
  %26 = ptrtoint ptr %fifo_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %fifo_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv)
  %cmp9 = icmp slt i32 %27, %conv
  br i1 %cmp9, label %if.end8.do.end_crit_edge, label %lor.lhs.false

if.end8.do.end_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

lor.lhs.false:                                    ; preds = %if.end8
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %1, align 1
  %conv11 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %conv11)
  %cmp13.not = icmp eq i32 %27, %conv11
  br i1 %cmp13.not, label %if.end21, label %lor.lhs.false.do.end_crit_edge

lor.lhs.false.do.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false.do.end_crit_edge, %if.end8.do.end_crit_edge
  %30 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sensorhub, align 8
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_loadN_noabort(i32 %32, i32 2)
  %33 = load i16, ptr %1, align 1
  %conv19 = zext i16 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.5, i32 noundef %conv, i32 noundef %conv19, i32 noundef %27) #12
  br label %error

if.end21:                                         ; preds = %lor.lhs.false
  %fifo_timestamp22 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 9
  %34 = ptrtoint ptr %fifo_timestamp22 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %fifo_timestamp22, align 8
  %ring = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 8
  %36 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring, align 8
  %38 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %38, i32 2)
  %39 = load i16, ptr %count, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %39)
  %cmp26344.not = icmp eq i16 %39, 0
  br i1 %cmp26344.not, label %if.end21.for.end111_crit_edge, label %for.body.lr.ph

if.end21.for.end111_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end111

for.body.lr.ph:                                   ; preds = %if.end21
  %params28 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 4
  %msg33 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 3
  %ec_dev41 = getelementptr inbounds %struct.cros_ec_dev, ptr %3, i32 0, i32 1
  %resp52 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 5
  %timestamp6.i = getelementptr inbounds %struct.ec_response_motion_sense_fifo_info, ptr %1, i32 0, i32 2
  %overflow_a.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 13
  %last.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 13, i32 1
  %overflow_b.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 14
  %last.i165.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 14, i32 1
  %tight_timestamps.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 16
  %filter.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15
  %temp_buf.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 6
  %x_history.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 2
  %y_history.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 3
  %y_offset.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 1
  %history_len.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 5
  %m_history41.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 4
  %median_m73.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 7
  %median_error.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 8
  %batch_state.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 12
  %future_timestamp_total_ns.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 18
  %future_timestamp_count.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 17
  br label %for.body

for.body:                                         ; preds = %for.inc109.for.body_crit_edge, %for.body.lr.ph
  %out.0348 = phi ptr [ %37, %for.body.lr.ph ], [ %out.1.lcssa, %for.inc109.for.body_crit_edge ]
  %sensor_mask.0347 = phi i32 [ 0, %for.body.lr.ph ], [ %sensor_mask.1.lcssa, %for.inc109.for.body_crit_edge ]
  %i.0346 = phi i32 [ 0, %for.body.lr.ph ], [ %add110, %for.inc109.for.body_crit_edge ]
  %current_timestamp.0345 = phi i64 [ %35, %for.body.lr.ph ], [ %current_timestamp.1.lcssa, %for.inc109.for.body_crit_edge ]
  %40 = ptrtoint ptr %params28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %params28, align 8
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 9, ptr %41, align 1
  %43 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %43, i32 2)
  %44 = load i16, ptr %count, align 1
  %conv31 = zext i16 %44 to i32
  %sub = sub i32 %conv31, %i.0346
  %45 = load ptr, ptr %params28, align 8
  %46 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %45, i32 0, i32 1
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_storeN_noabort(i32 %47, i32 4)
  store i32 %sub, ptr %46, align 1
  %48 = ptrtoint ptr %msg33 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %msg33, align 4
  %outsize34 = getelementptr inbounds %struct.cros_ec_command, ptr %49, i32 0, i32 2
  %50 = ptrtoint ptr %outsize34 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 13, ptr %outsize34, align 4
  %51 = load ptr, ptr %params28, align 8
  %52 = getelementptr inbounds %struct.ec_params_motion_sense, ptr %51, i32 0, i32 1
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_loadN_noabort(i32 %53, i32 4)
  %54 = load i32, ptr %52, align 1
  %mul37 = shl i32 %54, 3
  %add38 = or i32 %mul37, 4
  %55 = load ptr, ptr %msg33, align 4
  %insize40 = getelementptr inbounds %struct.cros_ec_command, ptr %55, i32 0, i32 3
  %56 = ptrtoint ptr %insize40 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %add38, ptr %insize40, align 4
  %57 = ptrtoint ptr %ec_dev41 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %ec_dev41, align 8
  %59 = load ptr, ptr %msg33, align 4
  %call43 = call i32 @cros_ec_cmd_xfer_status(ptr noundef %58, ptr noundef %59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %cmp44 = icmp slt i32 %call43, 0
  br i1 %cmp44, label %do.end49, label %if.end51

do.end49:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %sensorhub, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.8, i32 noundef %call43) #12
  br label %for.end111

if.end51:                                         ; preds = %for.body
  %62 = ptrtoint ptr %resp52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %resp52, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_loadN_noabort(i32 %64, i32 4)
  %65 = load i32, ptr %63, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp54 = icmp eq i32 %65, 0
  br i1 %cmp54, label %do.body57, label %if.end67

do.body57:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_sensorhub_ring_handler.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_sensorhub_ring_handler, %if.then62)) #9
          to label %for.end111 [label %if.then62], !srcloc !78

if.then62:                                        ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #11
  %66 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %sensorhub, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_sensorhub_ring_handler.__UNIQUE_ID_ddebug195, ptr noundef %67, ptr noundef nonnull @.str.11) #9
  br label %for.end111

if.end67:                                         ; preds = %if.end51
  %68 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %68, i32 2)
  %69 = load i16, ptr %count, align 1
  %conv69 = zext i16 %69 to i32
  %sub70 = sub i32 %conv69, %i.0346
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %sub70)
  %cmp71 = icmp sgt i32 %65, %sub70
  br i1 %cmp71, label %do.end76, label %if.end81

do.end76:                                         ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #11
  %70 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sensorhub, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %71, ptr noundef nonnull @.str.13, i32 noundef %65, i32 noundef %sub70) #12
  br label %for.end111

if.end81:                                         ; preds = %if.end67
  %add.ptr = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.0348, i32 %65
  %72 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %ring, align 8
  %add.ptr85 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %73, i32 %conv69
  %cmp86 = icmp ugt ptr %add.ptr, %add.ptr85
  br i1 %cmp86, label %do.end91, label %if.end97

do.end91:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %conv69.le = zext i16 %69 to i32
  %74 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %sensorhub, align 8
  %sub.ptr.lhs.cast = ptrtoint ptr %out.0348 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %73 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = ashr exact i32 %sub.ptr.sub, 4
  %add94 = add i32 %65, %i.0346
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %75, ptr noundef nonnull @.str.16, i32 noundef %i.0346, i32 noundef %sub.ptr.div, i32 noundef %add94, i32 noundef %conv69.le) #12
  br label %for.end111

if.end97:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp100329 = icmp sgt i32 %65, 0
  br i1 %cmp100329, label %for.body102.preheader, label %if.end97.for.inc109_crit_edge

if.end97.for.inc109_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc109

for.body102.preheader:                            ; preds = %if.end97
  %data = getelementptr inbounds %struct.ec_response_motion_sense_fifo_data, ptr %63, i32 0, i32 1
  br label %for.body102

for.body102:                                      ; preds = %for.inc.for.body102_crit_edge, %for.body102.preheader
  %out.1338 = phi ptr [ %out.2, %for.inc.for.body102_crit_edge ], [ %out.0348, %for.body102.preheader ]
  %in.0334 = phi ptr [ %incdec.ptr108, %for.inc.for.body102_crit_edge ], [ %data, %for.body102.preheader ]
  %sensor_mask.1332 = phi i32 [ %sensor_mask.2, %for.inc.for.body102_crit_edge ], [ %sensor_mask.0347, %for.body102.preheader ]
  %j.0331 = phi i32 [ %inc, %for.inc.for.body102_crit_edge ], [ 0, %for.body102.preheader ]
  %current_timestamp.1330 = phi i64 [ %current_timestamp.3, %for.inc.for.body102_crit_edge ], [ %current_timestamp.0345, %for.body102.preheader ]
  %call.i.i.i.i = call i64 @ktime_get_with_offset(i32 noundef 1) #9
  %76 = ptrtoint ptr %in.0334 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %in.0334, align 1
  %78 = and i8 %77, 19
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %78)
  %79 = icmp eq i8 %78, 2
  br i1 %79, label %if.then.i, label %for.body102.if.end19.i_crit_edge

for.body102.if.end19.i_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19.i

if.then.i:                                        ; preds = %for.body102
  %timestamp.i = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %in.0334, i32 0, i32 2, i32 0, i32 1
  %80 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %timestamp.i, align 1
  %conv5.i = zext i32 %81 to i64
  %82 = ptrtoint ptr %timestamp6.i to i32
  call void @__asan_loadN_noabort(i32 %82, i32 4)
  %83 = load i32, ptr %timestamp6.i, align 1
  %conv7.i = zext i32 %83 to i64
  %84 = ptrtoint ptr %overflow_a.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %overflow_a.i, align 8
  %add.i.i = add i64 %85, %conv5.i
  %86 = ptrtoint ptr %last.i.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %last.i.i, align 8
  %sub.i.i = sub i64 %87, %add.i.i
  %88 = call i64 @llvm.abs.i64(i64 %sub.i.i, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %88)
  %cmp2.i.i = icmp sgt i64 %88, 2147483648
  br i1 %cmp2.i.i, label %if.then.i.i, label %if.then.i.cros_ec_sensor_ring_fix_overflow.exit.i_crit_edge

if.then.i.cros_ec_sensor_ring_fix_overflow.exit.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensor_ring_fix_overflow.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %87, i64 %add.i.i)
  %cmp4.i.i = icmp sgt i64 %87, %add.i.i
  %..i.i = select i1 %cmp4.i.i, i64 4294967296, i64 -4294967296
  %add11.i.i = add i64 %..i.i, %85
  %89 = ptrtoint ptr %overflow_a.i to i32
  call void @__asan_store8_noabort(i32 %89)
  store i64 %add11.i.i, ptr %overflow_a.i, align 8
  %add12.i.i = add i64 %..i.i, %add.i.i
  br label %cros_ec_sensor_ring_fix_overflow.exit.i

cros_ec_sensor_ring_fix_overflow.exit.i:          ; preds = %if.then.i.i, %if.then.i.cros_ec_sensor_ring_fix_overflow.exit.i_crit_edge
  %a.0.i = phi i64 [ %add12.i.i, %if.then.i.i ], [ %add.i.i, %if.then.i.cros_ec_sensor_ring_fix_overflow.exit.i_crit_edge ]
  %90 = ptrtoint ptr %last.i.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 %a.0.i, ptr %last.i.i, align 8
  %91 = ptrtoint ptr %overflow_b.i to i32
  call void @__asan_load8_noabort(i32 %91)
  %92 = load i64, ptr %overflow_b.i, align 8
  %add.i164.i = add i64 %92, %conv7.i
  %93 = ptrtoint ptr %last.i165.i to i32
  call void @__asan_load8_noabort(i32 %93)
  %94 = load i64, ptr %last.i165.i, align 8
  %sub.i166.i = sub i64 %94, %add.i164.i
  %95 = call i64 @llvm.abs.i64(i64 %sub.i166.i, i1 false) #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483648, i64 %95)
  %cmp2.i167.i = icmp sgt i64 %95, 2147483648
  br i1 %cmp2.i167.i, label %if.then.i172.i, label %cros_ec_sensor_ring_fix_overflow.exit.i.cros_ec_sensor_ring_fix_overflow.exit173.i_crit_edge

cros_ec_sensor_ring_fix_overflow.exit.i.cros_ec_sensor_ring_fix_overflow.exit173.i_crit_edge: ; preds = %cros_ec_sensor_ring_fix_overflow.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensor_ring_fix_overflow.exit173.i

if.then.i172.i:                                   ; preds = %cros_ec_sensor_ring_fix_overflow.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %94, i64 %add.i164.i)
  %cmp4.i168.i = icmp sgt i64 %94, %add.i164.i
  %..i169.i = select i1 %cmp4.i168.i, i64 4294967296, i64 -4294967296
  %add11.i170.i = add i64 %..i169.i, %92
  %96 = ptrtoint ptr %overflow_b.i to i32
  call void @__asan_store8_noabort(i32 %96)
  store i64 %add11.i170.i, ptr %overflow_b.i, align 8
  %add12.i171.i = add i64 %..i169.i, %add.i164.i
  br label %cros_ec_sensor_ring_fix_overflow.exit173.i

cros_ec_sensor_ring_fix_overflow.exit173.i:       ; preds = %if.then.i172.i, %cros_ec_sensor_ring_fix_overflow.exit.i.cros_ec_sensor_ring_fix_overflow.exit173.i_crit_edge
  %b.0.i = phi i64 [ %add12.i171.i, %if.then.i172.i ], [ %add.i164.i, %cros_ec_sensor_ring_fix_overflow.exit.i.cros_ec_sensor_ring_fix_overflow.exit173.i_crit_edge ]
  %97 = ptrtoint ptr %last.i165.i to i32
  call void @__asan_store8_noabort(i32 %97)
  store i64 %b.0.i, ptr %last.i165.i, align 8
  %98 = ptrtoint ptr %tight_timestamps.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %tight_timestamps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool8.not.i = icmp eq i32 %99, 0
  br i1 %tobool8.not.i, label %if.else.i, label %if.then9.i

if.then9.i:                                       ; preds = %cros_ec_sensor_ring_fix_overflow.exit173.i
  %mul.neg.i.i = mul i64 %b.0.i, -1000
  %sub.i174.i = add i64 %mul.neg.i.i, %fifo_timestamp.1
  %100 = ptrtoint ptr %x_history.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %x_history.i.i, align 8
  %102 = ptrtoint ptr %filter.i to i32
  call void @__asan_load8_noabort(i32 %102)
  %103 = load i64, ptr %filter.i, align 8
  %add.i175.i = add i64 %103, %101
  %sub3.i.i = sub i64 %add.i175.i, %b.0.i
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i175.i, i64 %b.0.i)
  %cmp.i.i = icmp eq i64 %add.i175.i, %b.0.i
  br i1 %cmp.i.i, label %if.then9.i.cros_ec_sensor_ring_ts_filter_update.exit.i_crit_edge, label %if.end.i.i

if.then9.i.cros_ec_sensor_ring_ts_filter_update.exit.i_crit_edge: ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensor_ring_ts_filter_update.exit.i

if.end.i.i:                                       ; preds = %if.then9.i
  %104 = ptrtoint ptr %y_history.i.i to i32
  call void @__asan_load8_noabort(i32 %104)
  %105 = load i64, ptr %y_history.i.i, align 8
  %106 = ptrtoint ptr %y_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %106)
  %107 = load i64, ptr %y_offset.i.i, align 8
  %add5.i.i = sub i64 %105, %sub.i174.i
  %sub6.i.i = add i64 %add5.i.i, %107
  %mul7.i.i = shl i64 %sub6.i.i, 23
  %call.i.i = call i64 @div64_s64(i64 noundef %mul7.i.i, i64 noundef %sub3.i.i) #9
  %notsub.i.i = add i64 %sub3.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp8(i64 -500001, i64 %notsub.i.i)
  %cmp9.i.i = icmp slt i64 %notsub.i.i, -500001
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end.i.i.if.end11.i.i_crit_edge

if.end.i.i.if.end11.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11.i.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %108 = ptrtoint ptr %history_len.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %history_len.i.i, align 8
  br label %if.end11.i.i

if.end11.i.i:                                     ; preds = %if.then10.i.i, %if.end.i.i.if.end11.i.i_crit_edge
  %109 = ptrtoint ptr %history_len.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %history_len.i.i, align 8
  %i.0148.i.i = add i32 %110, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0148.i.i)
  %cmp14149.i.i = icmp sgt i32 %i.0148.i.i, 0
  br i1 %cmp14149.i.i, label %if.end11.i.i.for.body.i.i_crit_edge, label %if.end11.i.i.for.end.i.i_crit_edge

if.end11.i.i.for.end.i.i_crit_edge:               ; preds = %if.end11.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i.i

if.end11.i.i.for.body.i.i_crit_edge:              ; preds = %if.end11.i.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end11.i.i.for.body.i.i_crit_edge
  %i.0151.i.i = phi i32 [ %i.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %i.0148.i.i, %if.end11.i.i.for.body.i.i_crit_edge ]
  %i.0.in150.i.i = phi i32 [ %i.0151.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %110, %if.end11.i.i.for.body.i.i_crit_edge ]
  %sub16.i.i = add i32 %i.0.in150.i.i, -2
  %arrayidx17.i.i = getelementptr %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 2, i32 %sub16.i.i
  %111 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_load8_noabort(i32 %111)
  %112 = load i64, ptr %arrayidx17.i.i, align 8
  %add18.i.i = add i64 %112, %sub3.i.i
  %arrayidx20.i.i = getelementptr %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 2, i32 %i.0151.i.i
  %113 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_store8_noabort(i32 %113)
  store i64 %add18.i.i, ptr %arrayidx20.i.i, align 8
  %arrayidx23.i.i = getelementptr %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 3, i32 %sub16.i.i
  %114 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load8_noabort(i32 %114)
  %115 = load i64, ptr %arrayidx23.i.i, align 8
  %add24.i.i = add i64 %115, %sub6.i.i
  %arrayidx26.i.i = getelementptr %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 3, i32 %i.0151.i.i
  %116 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %add24.i.i, ptr %arrayidx26.i.i, align 8
  %arrayidx28.i.i = getelementptr %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 4, i32 %sub16.i.i
  %117 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load8_noabort(i32 %117)
  %118 = load i64, ptr %arrayidx28.i.i, align 8
  %arrayidx30.i.i = getelementptr %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 4, i32 %i.0151.i.i
  %119 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_store8_noabort(i32 %119)
  store i64 %118, ptr %arrayidx30.i.i, align 8
  %arrayidx34.i.i = getelementptr i64, ptr %temp_buf.i.i, i32 %i.0151.i.i
  %120 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %118, ptr %arrayidx34.i.i, align 8
  %i.0.i.i = add nsw i32 %i.0151.i.i, -1
  %cmp14.not.i.i = icmp eq i32 %i.0.i.i, 0
  br i1 %cmp14.not.i.i, label %for.end.i.ithread-pre-split, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.end.i.ithread-pre-split:                      ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %121 = ptrtoint ptr %history_len.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %.pr = load i32, ptr %history_len.i.i, align 8
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.end.i.ithread-pre-split, %if.end11.i.i.for.end.i.i_crit_edge
  %122 = phi i32 [ %.pr, %for.end.i.ithread-pre-split ], [ %110, %if.end11.i.i.for.end.i.i_crit_edge ]
  %123 = ptrtoint ptr %filter.i to i32
  call void @__asan_store8_noabort(i32 %123)
  store i64 %b.0.i, ptr %filter.i, align 8
  %124 = ptrtoint ptr %y_offset.i.i to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %sub.i174.i, ptr %y_offset.i.i, align 8
  %125 = ptrtoint ptr %x_history.i.i to i32
  call void @__asan_store8_noabort(i32 %125)
  store i64 0, ptr %x_history.i.i, align 8
  %126 = ptrtoint ptr %y_history.i.i to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 0, ptr %y_history.i.i, align 8
  %127 = ptrtoint ptr %m_history41.i.i to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %call.i.i, ptr %m_history41.i.i, align 8
  %128 = ptrtoint ptr %temp_buf.i.i to i32
  call void @__asan_store8_noabort(i32 %128)
  store i64 %call.i.i, ptr %temp_buf.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %122)
  %cmp45.i.i = icmp slt i32 %122, 64
  br i1 %cmp45.i.i, label %if.end48.i.i, label %for.end.i.i.if.then51.i.i_crit_edge

for.end.i.i.if.then51.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51.i.i

if.end48.i.i:                                     ; preds = %for.end.i.i
  %inc.i.i = add nsw i32 %122, 1
  %129 = ptrtoint ptr %history_len.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %inc.i.i, ptr %history_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %122)
  %cmp50.i.i = icmp sgt i32 %122, 7
  br i1 %cmp50.i.i, label %if.end48.i.i.if.then51.i.i_crit_edge, label %if.else.i.i

if.end48.i.i.if.then51.i.i_crit_edge:             ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then51.i.i

if.then51.i.i:                                    ; preds = %if.end48.i.i.if.then51.i.i_crit_edge, %for.end.i.i.if.then51.i.i_crit_edge
  %130 = phi i32 [ %inc.i.i, %if.end48.i.i.if.then51.i.i_crit_edge ], [ %122, %for.end.i.i.if.then51.i.i_crit_edge ]
  %sub53.i.i = add nsw i32 %130, -1
  call void @sort(ptr noundef %temp_buf.i.i, i32 noundef %sub53.i.i, i32 noundef 8, ptr noundef nonnull @cros_ec_sensor_ring_median_cmp, ptr noundef null) #9
  %div3.i.i.i = lshr i32 %sub53.i.i, 1
  %arrayidx.i.i.i = getelementptr i64, ptr %temp_buf.i.i, i32 %div3.i.i.i
  %131 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx.i.i.i, align 8
  %133 = ptrtoint ptr %median_m73.i.i to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %median_m73.i.i, align 8
  %134 = ptrtoint ptr %history_len.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %history_len.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %cmp57152.i.i = icmp sgt i32 %135, 0
  br i1 %cmp57152.i.i, label %if.then51.i.i.for.body58.i.i_crit_edge, label %if.then51.i.i.for.end70.i.i_crit_edge

if.then51.i.i.for.end70.i.i_crit_edge:            ; preds = %if.then51.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end70.i.i

if.then51.i.i.for.body58.i.i_crit_edge:           ; preds = %if.then51.i.i
  br label %for.body58.i.i

for.body58.i.i:                                   ; preds = %for.body58.i.i.for.body58.i.i_crit_edge, %if.then51.i.i.for.body58.i.i_crit_edge
  %i.1153.i.i = phi i32 [ %inc69.i.i, %for.body58.i.i.for.body58.i.i_crit_edge ], [ 0, %if.then51.i.i.for.body58.i.i_crit_edge ]
  %arrayidx60.i.i = getelementptr %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 3, i32 %i.1153.i.i
  %136 = ptrtoint ptr %arrayidx60.i.i to i32
  call void @__asan_load8_noabort(i32 %136)
  %137 = load i64, ptr %arrayidx60.i.i, align 8
  %138 = ptrtoint ptr %median_m73.i.i to i32
  call void @__asan_load8_noabort(i32 %138)
  %139 = load i64, ptr %median_m73.i.i, align 8
  %arrayidx63.i.i = getelementptr %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 15, i32 2, i32 %i.1153.i.i
  %140 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %arrayidx63.i.i, align 8
  %mul64.i.i = mul i64 %141, %139
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i.i) #9
  %142 = ptrtoint ptr %remainder.i.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 -1, ptr %remainder.i.i.i, align 4, !annotation !79
  %call.i.i.i277 = call i64 @div_s64_rem(i64 noundef %mul64.i.i, i32 noundef 8388608, ptr noundef nonnull %remainder.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i.i) #9
  %sub66.i.i = sub i64 %137, %call.i.i.i277
  %arrayidx67.i.i = getelementptr i64, ptr %temp_buf.i.i, i32 %i.1153.i.i
  %143 = ptrtoint ptr %arrayidx67.i.i to i32
  call void @__asan_store8_noabort(i32 %143)
  store i64 %sub66.i.i, ptr %arrayidx67.i.i, align 8
  %inc69.i.i = add nuw nsw i32 %i.1153.i.i, 1
  %144 = ptrtoint ptr %history_len.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %history_len.i.i, align 8
  %cmp57.i.i = icmp slt i32 %inc69.i.i, %145
  br i1 %cmp57.i.i, label %for.body58.i.i.for.body58.i.i_crit_edge, label %for.body58.i.i.for.end70.i.i_crit_edge

for.body58.i.i.for.end70.i.i_crit_edge:           ; preds = %for.body58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end70.i.i

for.body58.i.i.for.body58.i.i_crit_edge:          ; preds = %for.body58.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body58.i.i

for.end70.i.i:                                    ; preds = %for.body58.i.i.for.end70.i.i_crit_edge, %if.then51.i.i.for.end70.i.i_crit_edge
  %.lcssa.i.i = phi i32 [ %135, %if.then51.i.i.for.end70.i.i_crit_edge ], [ %145, %for.body58.i.i.for.end70.i.i_crit_edge ]
  call void @sort(ptr noundef %temp_buf.i.i, i32 noundef %.lcssa.i.i, i32 noundef 8, ptr noundef nonnull @cros_ec_sensor_ring_median_cmp, ptr noundef null) #9
  %div3.i145.i.i = lshr i32 %.lcssa.i.i, 1
  %arrayidx.i146.i.i = getelementptr i64, ptr %temp_buf.i.i, i32 %div3.i145.i.i
  %146 = ptrtoint ptr %arrayidx.i146.i.i to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx.i146.i.i, align 8
  %148 = ptrtoint ptr %median_error.i.i to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %median_error.i.i, align 8
  br label %if.end75.i.i

if.else.i.i:                                      ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %149 = call ptr @memset(ptr %median_m73.i.i, i32 0, i32 16)
  br label %if.end75.i.i

if.end75.i.i:                                     ; preds = %if.else.i.i, %for.end70.i.i
  call fastcc void @trace_cros_ec_sensorhub_filter(ptr noundef %filter.i, i64 noundef %sub3.i.i, i64 noundef %sub6.i.i) #9
  br label %cros_ec_sensor_ring_ts_filter_update.exit.i

cros_ec_sensor_ring_ts_filter_update.exit.i:      ; preds = %if.end75.i.i, %if.then9.i.cros_ec_sensor_ring_ts_filter_update.exit.i_crit_edge
  %150 = ptrtoint ptr %median_m73.i.i to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %median_m73.i.i, align 8
  %152 = ptrtoint ptr %filter.i to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %filter.i, align 8
  %sub.i178.i = sub i64 %a.0.i, %153
  %mul.i.i = mul i64 %sub.i178.i, %151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i176.i) #9
  %154 = ptrtoint ptr %remainder.i.i176.i to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 -1, ptr %remainder.i.i176.i, align 4, !annotation !79
  %call.i.i179.i = call i64 @div_s64_rem(i64 noundef %mul.i.i, i32 noundef 8388608, ptr noundef nonnull %remainder.i.i176.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i176.i) #9
  %155 = ptrtoint ptr %median_error.i.i to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %median_error.i.i, align 8
  %157 = ptrtoint ptr %y_offset.i.i to i32
  call void @__asan_load8_noabort(i32 %157)
  %158 = load i64, ptr %y_offset.i.i, align 8
  %mul2.i.i = mul i64 %a.0.i, 1000
  %add.i182.i = add i64 %call.i.i179.i, %mul2.i.i
  %add1.i.i = add i64 %add.i182.i, %156
  %add3.i.i = add i64 %add1.i.i, %158
  br label %if.end16.sink.split.i

if.else.i:                                        ; preds = %cros_ec_sensor_ring_fix_overflow.exit173.i
  %reass.add.i = sub i64 %a.0.i, %b.0.i
  %reass.mul.i = mul i64 %reass.add.i, 1000
  %add.i = add i64 %reass.mul.i, %fifo_timestamp.1
  %sub13.i = sub i64 %add.i, %current_timestamp.1330
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub13.i)
  %cmp.i = icmp sgt i64 %sub13.i, 0
  br i1 %cmp.i, label %if.else.i.if.end16.sink.split.i_crit_edge, label %if.else.i.if.end16.i_crit_edge

if.else.i.if.end16.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.i

if.else.i.if.end16.sink.split.i_crit_edge:        ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end16.sink.split.i

if.end16.sink.split.i:                            ; preds = %if.else.i.if.end16.sink.split.i_crit_edge, %cros_ec_sensor_ring_ts_filter_update.exit.i
  %add.sink.i = phi i64 [ %add3.i.i, %cros_ec_sensor_ring_ts_filter_update.exit.i ], [ %add.i, %if.else.i.if.end16.sink.split.i_crit_edge ]
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end16.sink.split.i, %if.else.i.if.end16.i_crit_edge
  %current_timestamp.2 = phi i64 [ %add.sink.i, %if.end16.sink.split.i ], [ %current_timestamp.1330, %if.else.i.if.end16.i_crit_edge ]
  %159 = ptrtoint ptr %timestamp.i to i32
  call void @__asan_loadN_noabort(i32 %159, i32 4)
  %160 = load i32, ptr %timestamp.i, align 1
  %161 = ptrtoint ptr %timestamp6.i to i32
  call void @__asan_loadN_noabort(i32 %161, i32 4)
  %162 = load i32, ptr %timestamp6.i, align 1
  call fastcc void @trace_cros_ec_sensorhub_timestamp(i32 noundef %160, i32 noundef %162, i64 noundef %fifo_timestamp.1, i64 noundef %current_timestamp.2, i64 noundef %call.i.i.i.i) #9
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.end16.i, %for.body102.if.end19.i_crit_edge
  %current_timestamp.3 = phi i64 [ %current_timestamp.2, %if.end16.i ], [ %current_timestamp.1330, %for.body102.if.end19.i_crit_edge ]
  %163 = ptrtoint ptr %in.0334 to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %in.0334, align 1
  %conv21.i = zext i8 %164 to i32
  %and22.i = and i32 %conv21.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end33.i, label %if.then24.i

if.then24.i:                                      ; preds = %if.end19.i
  %165 = ptrtoint ptr %tight_timestamps.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %tight_timestamps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %166)
  %tobool26.not.i = icmp eq i32 %166, 0
  br i1 %tobool26.not.i, label %if.then24.i.for.inc_crit_edge, label %if.then27.i

if.then24.i.for.inc_crit_edge:                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then27.i:                                      ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #11
  %167 = ptrtoint ptr %batch_state.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %batch_state.i, align 8
  %sensor_num.i = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %in.0334, i32 0, i32 1
  %169 = ptrtoint ptr %sensor_num.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %sensor_num.i, align 1
  %idxprom.i = zext i8 %170 to i32
  %last_len.i = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %168, i32 %idxprom.i, i32 3
  %171 = ptrtoint ptr %last_len.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %last_len.i, align 8
  %172 = load ptr, ptr %batch_state.i, align 8
  %173 = load i8, ptr %sensor_num.i, align 1
  %idxprom30.i = zext i8 %173 to i32
  %penul_len.i = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %172, i32 %idxprom30.i, i32 1
  %174 = ptrtoint ptr %penul_len.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %penul_len.i, align 8
  br label %for.inc

if.end33.i:                                       ; preds = %if.end19.i
  %and36.i = and i32 %conv21.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end51.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end33.i
  %sensor_num39.i = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %in.0334, i32 0, i32 1
  %175 = ptrtoint ptr %sensor_num39.i to i32
  call void @__asan_load1_noabort(i32 %175)
  %176 = load i8, ptr %sensor_num39.i, align 1
  %177 = ptrtoint ptr %out.1338 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 %176, ptr %out.1338, align 1
  %timestamp40.i = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %out.1338, i32 0, i32 3
  %178 = ptrtoint ptr %timestamp40.i to i32
  call void @__asan_storeN_noabort(i32 %178, i32 8)
  store i64 %current_timestamp.3, ptr %timestamp40.i, align 1
  %179 = ptrtoint ptr %in.0334 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %in.0334, align 1
  %flag.i = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %out.1338, i32 0, i32 1
  %181 = ptrtoint ptr %flag.i to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 %180, ptr %flag.i, align 1
  %182 = ptrtoint ptr %tight_timestamps.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %tight_timestamps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool43.not.i = icmp eq i32 %183, 0
  br i1 %tobool43.not.i, label %if.then38.i.if.then104_crit_edge, label %if.then44.i

if.then38.i.if.then104_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then104

if.then44.i:                                      ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  %184 = ptrtoint ptr %batch_state.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %batch_state.i, align 8
  %idxprom47.i = zext i8 %176 to i32
  %last_len49.i = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %185, i32 %idxprom47.i, i32 3
  %186 = ptrtoint ptr %last_len49.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %last_len49.i, align 8
  br label %if.then104

if.end51.i:                                       ; preds = %if.end33.i
  %and54.i = and i32 %conv21.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54.i)
  %tobool55.not.i = icmp eq i32 %and54.i, 0
  br i1 %tobool55.not.i, label %if.end57.i, label %if.end51.i.for.inc_crit_edge

if.end51.i.for.inc_crit_edge:                     ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end57.i:                                       ; preds = %if.end51.i
  %sensor_num58.i = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %in.0334, i32 0, i32 1
  %187 = ptrtoint ptr %sensor_num58.i to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %sensor_num58.i, align 1
  %189 = ptrtoint ptr %out.1338 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 %188, ptr %out.1338, align 1
  %190 = load i8, ptr %sensor_num58.i, align 1
  %conv61.i = zext i8 %190 to i32
  %191 = ptrtoint ptr %timestamp6.i to i32
  call void @__asan_loadN_noabort(i32 %191, i32 4)
  %192 = load i32, ptr %timestamp6.i, align 1
  call fastcc void @trace_cros_ec_sensorhub_data(i32 noundef %conv61.i, i32 noundef %192, i64 noundef %fifo_timestamp.1, i64 noundef %current_timestamp.3, i64 noundef %call.i.i.i.i) #9
  %sub63.i = sub i64 %current_timestamp.3, %call.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub63.i)
  %cmp64.i = icmp sgt i64 %sub63.i, 0
  br i1 %cmp64.i, label %if.then66.i, label %if.end57.i.if.end88.i_crit_edge

if.end57.i.if.end88.i_crit_edge:                  ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

if.then66.i:                                      ; preds = %if.end57.i
  %193 = ptrtoint ptr %future_timestamp_total_ns.i to i32
  call void @__asan_load8_noabort(i32 %193)
  %194 = load i64, ptr %future_timestamp_total_ns.i, align 8
  %add68.i = add i64 %194, %sub63.i
  store i64 %add68.i, ptr %future_timestamp_total_ns.i, align 8
  %195 = ptrtoint ptr %future_timestamp_count.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %future_timestamp_count.i, align 4
  %inc.i = add i32 %196, 1
  store i32 %inc.i, ptr %future_timestamp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %inc.i)
  %cmp69.i = icmp eq i32 %inc.i, 100
  br i1 %cmp69.i, label %if.then71.i, label %if.then66.i.if.end88.i_crit_edge

if.then66.i.if.end88.i_crit_edge:                 ; preds = %if.then66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

if.then71.i:                                      ; preds = %if.then66.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i) #9
  %197 = ptrtoint ptr %remainder.i.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 -1, ptr %remainder.i.i, align 4, !annotation !79
  %call.i183.i = call i64 @div_s64_rem(i64 noundef %add68.i, i32 noundef 100, ptr noundef nonnull %remainder.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i) #9
  %call75.i = call i32 @___ratelimit(ptr noundef nonnull @cros_ec_sensor_ring_process_event._rs, ptr noundef nonnull @__func__.cros_ec_sensor_ring_process_event) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75.i)
  %tobool76.not.i = icmp eq i32 %call75.i, 0
  br i1 %tobool76.not.i, label %if.then71.i.do.end81.i_crit_edge, label %do.end.i

if.then71.i.do.end81.i_crit_edge:                 ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81.i

do.end.i:                                         ; preds = %if.then71.i
  call void @__sanitizer_cov_trace_pc() #11
  %198 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %sensorhub, align 8
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %199, ptr noundef nonnull @.str.22, i64 noundef %call.i183.i) #12
  br label %do.end81.i

do.end81.i:                                       ; preds = %do.end.i, %if.then71.i.do.end81.i_crit_edge
  %200 = ptrtoint ptr %future_timestamp_count.i to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %future_timestamp_count.i, align 4
  %201 = ptrtoint ptr %future_timestamp_total_ns.i to i32
  call void @__asan_store8_noabort(i32 %201)
  store i64 0, ptr %future_timestamp_total_ns.i, align 8
  br label %if.end88.i

if.end88.i:                                       ; preds = %do.end81.i, %if.then66.i.if.end88.i_crit_edge, %if.end57.i.if.end88.i_crit_edge
  %.sink.i = phi i64 [ %call.i.i.i.i, %do.end81.i ], [ %call.i.i.i.i, %if.then66.i.if.end88.i_crit_edge ], [ %current_timestamp.3, %if.end57.i.if.end88.i_crit_edge ]
  %timestamp87.i = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %out.1338, i32 0, i32 3
  %202 = ptrtoint ptr %timestamp87.i to i32
  call void @__asan_storeN_noabort(i32 %202, i32 8)
  store i64 %.sink.i, ptr %timestamp87.i, align 1
  %203 = ptrtoint ptr %in.0334 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %in.0334, align 1
  %flag90.i = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %out.1338, i32 0, i32 1
  %205 = ptrtoint ptr %flag90.i to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 %204, ptr %flag90.i, align 1
  %206 = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %in.0334, i32 0, i32 2
  %207 = ptrtoint ptr %206 to i32
  call void @__asan_loadN_noabort(i32 %207, i32 2)
  %208 = load i16, ptr %206, align 1
  %arrayidx94.i = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.1338, i32 0, i32 2, i32 0
  %209 = ptrtoint ptr %arrayidx94.i to i32
  call void @__asan_storeN_noabort(i32 %209, i32 2)
  store i16 %208, ptr %arrayidx94.i, align 1
  %arrayidx93.1.i = getelementptr %struct.ec_response_motion_sensor_data, ptr %in.0334, i32 0, i32 2, i32 0, i32 1
  %210 = ptrtoint ptr %arrayidx93.1.i to i32
  call void @__asan_loadN_noabort(i32 %210, i32 2)
  %211 = load i16, ptr %arrayidx93.1.i, align 1
  %arrayidx94.1.i = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.1338, i32 0, i32 2, i32 1
  %212 = ptrtoint ptr %arrayidx94.1.i to i32
  call void @__asan_storeN_noabort(i32 %212, i32 2)
  store i16 %211, ptr %arrayidx94.1.i, align 1
  %arrayidx93.2.i = getelementptr %struct.ec_response_motion_sensor_data, ptr %in.0334, i32 0, i32 2, i32 0, i32 2
  %213 = ptrtoint ptr %arrayidx93.2.i to i32
  call void @__asan_loadN_noabort(i32 %213, i32 2)
  %214 = load i16, ptr %arrayidx93.2.i, align 1
  %arrayidx94.2.i = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.1338, i32 0, i32 2, i32 2
  %215 = ptrtoint ptr %arrayidx94.2.i to i32
  call void @__asan_storeN_noabort(i32 %215, i32 2)
  store i16 %214, ptr %arrayidx94.2.i, align 1
  %216 = ptrtoint ptr %tight_timestamps.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %tight_timestamps.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %217)
  %tobool97.not.i = icmp eq i32 %217, 0
  br i1 %tobool97.not.i, label %if.end88.i.if.then104_crit_edge, label %if.then98.i

if.end88.i.if.then104_crit_edge:                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then104

if.then98.i:                                      ; preds = %if.end88.i
  %218 = ptrtoint ptr %out.1338 to i32
  call void @__asan_load1_noabort(i32 %218)
  %219 = load i8, ptr %out.1338, align 1
  %220 = ptrtoint ptr %batch_state.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %batch_state.i, align 8
  %idxprom.i.i = zext i8 %219 to i32
  %newest_sensor_event.i.i = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %221, i32 %idxprom.i.i, i32 4
  %222 = ptrtoint ptr %newest_sensor_event.i.i to i32
  call void @__asan_load8_noabort(i32 %222)
  %223 = load i64, ptr %newest_sensor_event.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %223, i64 %.sink.i)
  %cmp.i184.i = icmp sgt i64 %223, %.sink.i
  br i1 %cmp.i184.i, label %if.then.i185.i, label %if.else.i186.i

if.then.i185.i:                                   ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #11
  %last_ts.i.i = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %221, i32 %idxprom.i.i, i32 2
  %224 = ptrtoint ptr %last_ts.i.i to i32
  call void @__asan_load8_noabort(i32 %224)
  %225 = load i64, ptr %last_ts.i.i, align 8
  %226 = ptrtoint ptr %timestamp87.i to i32
  call void @__asan_storeN_noabort(i32 %226, i32 8)
  store i64 %225, ptr %timestamp87.i, align 1
  br label %if.then104

if.else.i186.i:                                   ; preds = %if.then98.i
  call void @__sanitizer_cov_trace_pc() #11
  %227 = ptrtoint ptr %newest_sensor_event.i.i to i32
  call void @__asan_store8_noabort(i32 %227)
  store i64 %.sink.i, ptr %newest_sensor_event.i.i, align 8
  br label %if.then104

if.then104:                                       ; preds = %if.else.i186.i, %if.then.i185.i, %if.end88.i.if.then104_crit_edge, %if.then44.i, %if.then38.i.if.then104_crit_edge
  %sensor_num105 = getelementptr inbounds %struct.ec_response_motion_sensor_data, ptr %in.0334, i32 0, i32 1
  %228 = ptrtoint ptr %sensor_num105 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %sensor_num105, align 1
  %conv106 = zext i8 %229 to i32
  %shl = shl nuw i32 1, %conv106
  %or = or i32 %shl, %sensor_mask.1332
  %incdec.ptr = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.1338, i32 1
  br label %for.inc

for.inc:                                          ; preds = %if.then104, %if.end51.i.for.inc_crit_edge, %if.then27.i, %if.then24.i.for.inc_crit_edge
  %sensor_mask.2 = phi i32 [ %or, %if.then104 ], [ %sensor_mask.1332, %if.then24.i.for.inc_crit_edge ], [ %sensor_mask.1332, %if.then27.i ], [ %sensor_mask.1332, %if.end51.i.for.inc_crit_edge ]
  %out.2 = phi ptr [ %incdec.ptr, %if.then104 ], [ %out.1338, %if.then24.i.for.inc_crit_edge ], [ %out.1338, %if.then27.i ], [ %out.1338, %if.end51.i.for.inc_crit_edge ]
  %inc = add nuw nsw i32 %j.0331, 1
  %incdec.ptr108 = getelementptr %struct.ec_response_motion_sensor_data, ptr %in.0334, i32 1
  %exitcond.not = icmp eq i32 %inc, %65
  br i1 %exitcond.not, label %for.inc.for.inc109_crit_edge, label %for.inc.for.body102_crit_edge

for.inc.for.body102_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body102

for.inc.for.inc109_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc109

for.inc109:                                       ; preds = %for.inc.for.inc109_crit_edge, %if.end97.for.inc109_crit_edge
  %current_timestamp.1.lcssa = phi i64 [ %current_timestamp.0345, %if.end97.for.inc109_crit_edge ], [ %current_timestamp.3, %for.inc.for.inc109_crit_edge ]
  %sensor_mask.1.lcssa = phi i32 [ %sensor_mask.0347, %if.end97.for.inc109_crit_edge ], [ %sensor_mask.2, %for.inc.for.inc109_crit_edge ]
  %out.1.lcssa = phi ptr [ %out.0348, %if.end97.for.inc109_crit_edge ], [ %out.2, %for.inc.for.inc109_crit_edge ]
  %add110 = add i32 %65, %i.0346
  %230 = ptrtoint ptr %count to i32
  call void @__asan_loadN_noabort(i32 %230, i32 2)
  %231 = load i16, ptr %count, align 1
  %conv25 = zext i16 %231 to i32
  %cmp26 = icmp slt i32 %add110, %conv25
  br i1 %cmp26, label %for.inc109.for.body_crit_edge, label %for.inc109.for.end111_crit_edge

for.inc109.for.end111_crit_edge:                  ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end111

for.inc109.for.body_crit_edge:                    ; preds = %for.inc109
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end111:                                       ; preds = %for.inc109.for.end111_crit_edge, %do.end91, %do.end76, %if.then62, %do.body57, %do.end49, %if.end21.for.end111_crit_edge
  %current_timestamp.0319 = phi i64 [ %current_timestamp.0345, %do.body57 ], [ %current_timestamp.0345, %if.then62 ], [ %current_timestamp.0345, %do.end91 ], [ %current_timestamp.0345, %do.end76 ], [ %current_timestamp.0345, %do.end49 ], [ %35, %if.end21.for.end111_crit_edge ], [ %current_timestamp.1.lcssa, %for.inc109.for.end111_crit_edge ]
  %sensor_mask.0310 = phi i32 [ %sensor_mask.0347, %do.body57 ], [ %sensor_mask.0347, %if.then62 ], [ %sensor_mask.0347, %do.end91 ], [ %sensor_mask.0347, %do.end76 ], [ %sensor_mask.0347, %do.end49 ], [ 0, %if.end21.for.end111_crit_edge ], [ %sensor_mask.1.lcssa, %for.inc109.for.end111_crit_edge ]
  %out.0304 = phi ptr [ %out.0348, %do.body57 ], [ %out.0348, %if.then62 ], [ %out.0348, %do.end91 ], [ %out.0348, %do.end76 ], [ %out.0348, %do.end49 ], [ %37, %if.end21.for.end111_crit_edge ], [ %out.1.lcssa, %for.inc109.for.end111_crit_edge ]
  call void @mutex_unlock(ptr noundef %cmd_lock) #9
  %232 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %ring, align 8
  %cmp114 = icmp eq ptr %out.0304, %233
  br i1 %cmp114, label %for.end111.ring_handler_end_crit_edge, label %if.end117

for.end111.ring_handler_end_crit_edge:            ; preds = %for.end111
  call void @__sanitizer_cov_trace_pc() #11
  br label %ring_handler_end

if.end117:                                        ; preds = %for.end111
  %tight_timestamps = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 16
  %234 = ptrtoint ptr %tight_timestamps to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %tight_timestamps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %235)
  %tobool118.not = icmp eq i32 %235, 0
  br i1 %tobool118.not, label %land.lhs.true, label %if.end117.if.end123_crit_edge

if.end117.if.end123_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

land.lhs.true:                                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %timestamp = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.0304, i32 -1, i32 3
  %236 = ptrtoint ptr %timestamp to i32
  call void @__asan_loadN_noabort(i32 %236, i32 8)
  %237 = load i64, ptr %timestamp, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %237, i64 %current_timestamp.0319)
  %cmp120 = icmp eq i64 %237, %current_timestamp.0319
  %spec.select = select i1 %cmp120, i64 %fifo_timestamp.1, i64 %current_timestamp.0319
  br label %if.end123

if.end123:                                        ; preds = %land.lhs.true, %if.end117.if.end123_crit_edge
  %current_timestamp.4 = phi i64 [ %current_timestamp.0319, %if.end117.if.end123_crit_edge ], [ %spec.select, %land.lhs.true ]
  %238 = ptrtoint ptr %total_lost to i32
  call void @__asan_loadN_noabort(i32 %238, i32 2)
  %239 = load i16, ptr %total_lost, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %239)
  %tobool125.not = icmp eq i16 %239, 0
  br i1 %tobool125.not, label %if.end123.if.end160_crit_edge, label %for.cond127.preheader

if.end123.if.end160_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

for.cond127.preheader:                            ; preds = %if.end123
  %sensor_num128 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 2
  %240 = ptrtoint ptr %sensor_num128 to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %sensor_num128, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp129352 = icmp sgt i32 %241, 0
  br i1 %cmp129352, label %for.body131.lr.ph, label %for.cond127.preheader.if.end160_crit_edge

for.cond127.preheader.if.end160_crit_edge:        ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

for.body131.lr.ph:                                ; preds = %for.cond127.preheader
  %batch_state = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 12
  br label %for.body131

for.body131:                                      ; preds = %for.inc157.for.body131_crit_edge, %for.body131.lr.ph
  %i.1353 = phi i32 [ 0, %for.body131.lr.ph ], [ %inc158, %for.inc157.for.body131_crit_edge ]
  %arrayidx132 = getelementptr %struct.ec_response_motion_sense_fifo_info, ptr %1, i32 0, i32 4, i32 %i.1353
  %242 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_loadN_noabort(i32 %242, i32 2)
  %243 = load i16, ptr %arrayidx132, align 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %243)
  %tobool133.not = icmp eq i16 %243, 0
  br i1 %tobool133.not, label %for.body131.for.inc157_crit_edge, label %do.body135

for.body131.for.inc157_crit_edge:                 ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157

do.body135:                                       ; preds = %for.body131
  %call136 = call i32 @___ratelimit(ptr noundef nonnull @cros_ec_sensorhub_ring_handler._rs, ptr noundef nonnull @.str.6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call136)
  %tobool137.not = icmp eq i32 %call136, 0
  br i1 %tobool137.not, label %do.body135.do.end150_crit_edge, label %do.end141

do.body135.do.end150_crit_edge:                   ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end150

do.end141:                                        ; preds = %do.body135
  call void @__sanitizer_cov_trace_pc() #11
  %244 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %sensorhub, align 8
  %246 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_loadN_noabort(i32 %246, i32 2)
  %247 = load i16, ptr %arrayidx132, align 1
  %conv145 = zext i16 %247 to i32
  %248 = ptrtoint ptr %total_lost to i32
  call void @__asan_loadN_noabort(i32 %248, i32 2)
  %249 = load i16, ptr %total_lost, align 1
  %conv147 = zext i16 %249 to i32
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %245, ptr noundef nonnull @.str.20, i32 noundef %i.1353, i32 noundef %conv145, i32 noundef %conv147) #12
  br label %do.end150

do.end150:                                        ; preds = %do.end141, %do.body135.do.end150_crit_edge
  %250 = ptrtoint ptr %tight_timestamps to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %tight_timestamps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %251)
  %tobool152.not = icmp eq i32 %251, 0
  br i1 %tobool152.not, label %do.end150.for.inc157_crit_edge, label %if.then153

do.end150.for.inc157_crit_edge:                   ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc157

if.then153:                                       ; preds = %do.end150
  call void @__sanitizer_cov_trace_pc() #11
  %252 = ptrtoint ptr %batch_state to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %batch_state, align 8
  %last_len = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %253, i32 %i.1353, i32 3
  %254 = ptrtoint ptr %last_len to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 0, ptr %last_len, align 8
  br label %for.inc157

for.inc157:                                       ; preds = %if.then153, %do.end150.for.inc157_crit_edge, %for.body131.for.inc157_crit_edge
  %inc158 = add nuw nsw i32 %i.1353, 1
  %255 = ptrtoint ptr %sensor_num128 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %sensor_num128, align 8
  %cmp129 = icmp slt i32 %inc158, %256
  br i1 %cmp129, label %for.inc157.for.body131_crit_edge, label %for.inc157.if.end160_crit_edge

for.inc157.if.end160_crit_edge:                   ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end160

for.inc157.for.body131_crit_edge:                 ; preds = %for.inc157
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body131

if.end160:                                        ; preds = %for.inc157.if.end160_crit_edge, %for.cond127.preheader.if.end160_crit_edge, %if.end123.if.end160_crit_edge
  %257 = ptrtoint ptr %tight_timestamps to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %tight_timestamps, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %258)
  %tobool162.not = icmp eq i32 %258, 0
  br i1 %tobool162.not, label %if.else164, label %if.then163

if.then163:                                       ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #11
  call fastcc void @cros_ec_sensor_ring_spread_add(ptr noundef %sensorhub, i32 noundef %sensor_mask.0310, ptr noundef %out.0304)
  br label %ring_handler_end

if.else164:                                       ; preds = %if.end160
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sensor_mask.addr.i)
  %259 = ptrtoint ptr %sensor_mask.addr.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store i32 %sensor_mask.0310, ptr %sensor_mask.addr.i, align 4
  %sensor_num.i280 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 2
  %260 = ptrtoint ptr %sensor_num.i280 to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %sensor_num.i280, align 8
  %call.i = call i32 @_find_next_bit_be(ptr noundef nonnull %sensor_mask.addr.i, i32 noundef %261, i32 noundef 0) #9
  %262 = ptrtoint ptr %sensor_num.i280 to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %sensor_num.i280, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %263)
  %cmp100.i = icmp slt i32 %call.i, %263
  br i1 %cmp100.i, label %if.else164.for.body.i_crit_edge, label %if.else164.for.end48.i_crit_edge

if.else164.for.end48.i_crit_edge:                 ; preds = %if.else164
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48.i

if.else164.for.body.i_crit_edge:                  ; preds = %if.else164
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %if.else164.for.body.i_crit_edge
  %i.0101.i = phi i32 [ %call47.i, %cleanup.i.for.body.i_crit_edge ], [ %call.i, %if.else164.for.body.i_crit_edge ]
  %264 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %ring, align 8
  %cmp391.i = icmp ult ptr %265, %out.0304
  br i1 %cmp391.i, label %for.body.i.for.body4.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.i.for.body4.i_crit_edge:                 ; preds = %for.body.i
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.inc.i.for.body4.i_crit_edge, %for.body.i.for.body4.i_crit_edge
  %out.092.i = phi ptr [ %incdec.ptr8.i, %for.inc.i.for.body4.i_crit_edge ], [ %265, %for.body.i.for.body4.i_crit_edge ]
  %266 = ptrtoint ptr %out.092.i to i32
  call void @__asan_load1_noabort(i32 %266)
  %267 = load i8, ptr %out.092.i, align 1
  %conv.i = zext i8 %267 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0101.i, i32 %conv.i)
  %cmp5.not.i = icmp eq i32 %i.0101.i, %conv.i
  br i1 %cmp5.not.i, label %if.end.i, label %for.inc.i

if.end.i:                                         ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #11
  %timestamp7.i = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %out.092.i, i32 0, i32 3
  %268 = ptrtoint ptr %timestamp7.i to i32
  call void @__asan_loadN_noabort(i32 %268, i32 8)
  %269 = load i64, ptr %timestamp7.i, align 1
  %incdec.ptr.i = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.092.i, i32 1
  br label %for.end.i

for.inc.i:                                        ; preds = %for.body4.i
  %incdec.ptr8.i = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.092.i, i32 1
  %cmp3.i = icmp ult ptr %incdec.ptr8.i, %out.0304
  br i1 %cmp3.i, label %for.inc.i.for.body4.i_crit_edge, label %for.inc.i.for.end.i_crit_edge

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.inc.i.for.body4.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %if.end.i, %for.body.i.for.end.i_crit_edge
  %out.1.i = phi ptr [ %incdec.ptr.i, %if.end.i ], [ %265, %for.body.i.for.end.i_crit_edge ], [ %incdec.ptr8.i, %for.inc.i.for.end.i_crit_edge ]
  %timestamp.0.i = phi i64 [ %269, %if.end.i ], [ -1, %for.body.i.for.end.i_crit_edge ], [ -1, %for.inc.i.for.end.i_crit_edge ]
  %count.0.i = phi i32 [ 1, %if.end.i ], [ 0, %for.body.i.for.end.i_crit_edge ], [ 0, %for.inc.i.for.end.i_crit_edge ]
  %cmp1093.i = icmp ult ptr %out.1.i, %out.0304
  br i1 %cmp1093.i, label %for.end.i.for.body12.i_crit_edge, label %for.end.i.for.end21.i_crit_edge

for.end.i.for.end21.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end21.i

for.end.i.for.body12.i_crit_edge:                 ; preds = %for.end.i
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.end.i.for.body12.i_crit_edge
  %count.195.i = phi i32 [ %spec.select.i, %for.body12.i.for.body12.i_crit_edge ], [ %count.0.i, %for.end.i.for.body12.i_crit_edge ]
  %out.294.i = phi ptr [ %incdec.ptr20.i, %for.body12.i.for.body12.i_crit_edge ], [ %out.1.i, %for.end.i.for.body12.i_crit_edge ]
  %270 = ptrtoint ptr %out.294.i to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %out.294.i, align 1
  %conv14.i = zext i8 %271 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0101.i, i32 %conv14.i)
  %cmp15.not.i = icmp eq i32 %i.0101.i, %conv14.i
  %inc.i281 = zext i1 %cmp15.not.i to i32
  %spec.select.i = add i32 %count.195.i, %inc.i281
  %incdec.ptr20.i = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.294.i, i32 1
  %cmp10.i = icmp ult ptr %incdec.ptr20.i, %out.0304
  br i1 %cmp10.i, label %for.body12.i.for.body12.i_crit_edge, label %for.body12.i.for.end21.i_crit_edge

for.body12.i.for.end21.i_crit_edge:               ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end21.i

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body12.i

for.end21.i:                                      ; preds = %for.body12.i.for.end21.i_crit_edge, %for.end.i.for.end21.i_crit_edge
  %count.1.lcssa.i = phi i32 [ %count.0.i, %for.end.i.for.end21.i_crit_edge ], [ %spec.select.i, %for.body12.i.for.end21.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count.1.lcssa.i)
  %cmp22.i = icmp eq i32 %count.1.lcssa.i, 0
  br i1 %cmp22.i, label %for.end21.i.cleanup.i_crit_edge, label %if.end25.i

for.end21.i.cleanup.i_crit_edge:                  ; preds = %for.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end25.i:                                       ; preds = %for.end21.i
  %sub.i = sub i64 %current_timestamp.4, %timestamp.0.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i.i279) #9
  %272 = ptrtoint ptr %remainder.i.i279 to i32
  call void @__asan_store4_noabort(i32 %272)
  store i32 -1, ptr %remainder.i.i279, align 4, !annotation !79
  %call.i.i282 = call i64 @div_s64_rem(i64 noundef %sub.i, i32 noundef %count.1.lcssa.i, ptr noundef nonnull %remainder.i.i279) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i.i279) #9
  %273 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %ring, align 8
  %cmp2997.i = icmp ult ptr %274, %out.0304
  br i1 %cmp2997.i, label %if.end25.i.for.body31.i_crit_edge, label %if.end25.i.cleanup.i_crit_edge

if.end25.i.cleanup.i_crit_edge:                   ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

if.end25.i.for.body31.i_crit_edge:                ; preds = %if.end25.i
  br label %for.body31.i

for.body31.i:                                     ; preds = %for.inc39.i.for.body31.i_crit_edge, %if.end25.i.for.body31.i_crit_edge
  %timestamp.199.i = phi i64 [ %timestamp.2.i, %for.inc39.i.for.body31.i_crit_edge ], [ %timestamp.0.i, %if.end25.i.for.body31.i_crit_edge ]
  %out.398.i = phi ptr [ %incdec.ptr40.i, %for.inc39.i.for.body31.i_crit_edge ], [ %274, %if.end25.i.for.body31.i_crit_edge ]
  %275 = ptrtoint ptr %out.398.i to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %out.398.i, align 1
  %conv33.i = zext i8 %276 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0101.i, i32 %conv33.i)
  %cmp34.not.i = icmp eq i32 %i.0101.i, %conv33.i
  br i1 %cmp34.not.i, label %if.end37.i, label %for.body31.i.for.inc39.i_crit_edge

for.body31.i.for.inc39.i_crit_edge:               ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc39.i

if.end37.i:                                       ; preds = %for.body31.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i283 = add i64 %timestamp.199.i, %call.i.i282
  %timestamp38.i = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %out.398.i, i32 0, i32 3
  %277 = ptrtoint ptr %timestamp38.i to i32
  call void @__asan_storeN_noabort(i32 %277, i32 8)
  store i64 %add.i283, ptr %timestamp38.i, align 1
  br label %for.inc39.i

for.inc39.i:                                      ; preds = %if.end37.i, %for.body31.i.for.inc39.i_crit_edge
  %timestamp.2.i = phi i64 [ %timestamp.199.i, %for.body31.i.for.inc39.i_crit_edge ], [ %add.i283, %if.end37.i ]
  %incdec.ptr40.i = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.398.i, i32 1
  %cmp29.i = icmp ult ptr %incdec.ptr40.i, %out.0304
  br i1 %cmp29.i, label %for.inc39.i.for.body31.i_crit_edge, label %for.inc39.i.cleanup.i_crit_edge

for.inc39.i.cleanup.i_crit_edge:                  ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.i

for.inc39.i.for.body31.i_crit_edge:               ; preds = %for.inc39.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body31.i

cleanup.i:                                        ; preds = %for.inc39.i.cleanup.i_crit_edge, %if.end25.i.cleanup.i_crit_edge, %for.end21.i.cleanup.i_crit_edge
  %278 = ptrtoint ptr %sensor_num.i280 to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %sensor_num.i280, align 8
  %add46.i = add i32 %i.0101.i, 1
  %call47.i = call i32 @_find_next_bit_be(ptr noundef nonnull %sensor_mask.addr.i, i32 noundef %279, i32 noundef %add46.i) #9
  %280 = ptrtoint ptr %sensor_num.i280 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %sensor_num.i280, align 8
  %cmp.i284 = icmp slt i32 %call47.i, %281
  br i1 %cmp.i284, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end48.i_crit_edge

cleanup.i.for.end48.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end48.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.end48.i:                                      ; preds = %cleanup.i.for.end48.i_crit_edge, %if.else164.for.end48.i_crit_edge
  %282 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %ring, align 8
  %cmp51105.i = icmp ult ptr %283, %out.0304
  br i1 %cmp51105.i, label %for.body53.lr.ph.i, label %for.end48.i.cros_ec_sensor_ring_spread_add_legacy.exit_crit_edge

for.end48.i.cros_ec_sensor_ring_spread_add_legacy.exit_crit_edge: ; preds = %for.end48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensor_ring_spread_add_legacy.exit

for.body53.lr.ph.i:                               ; preds = %for.end48.i
  %push_data.i.i = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 19
  br label %for.body53.i

for.body53.i:                                     ; preds = %cros_sensorhub_send_sample.exit.i.for.body53.i_crit_edge, %for.body53.lr.ph.i
  %out.4106.i = phi ptr [ %283, %for.body53.lr.ph.i ], [ %incdec.ptr56.i, %cros_sensorhub_send_sample.exit.i.for.body53.i_crit_edge ]
  %284 = ptrtoint ptr %out.4106.i to i32
  call void @__asan_load1_noabort(i32 %284)
  %285 = load i8, ptr %out.4106.i, align 1
  %conv.i.i = zext i8 %285 to i32
  %286 = ptrtoint ptr %sensor_num.i280 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %sensor_num.i280, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %287, i32 %conv.i.i)
  %cmp.not.i.i = icmp sgt i32 %287, %conv.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i285, label %for.body53.i.cros_sensorhub_send_sample.exit.i_crit_edge

for.body53.i.cros_sensorhub_send_sample.exit.i_crit_edge: ; preds = %for.body53.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_sensorhub_send_sample.exit.i

if.end.i.i285:                                    ; preds = %for.body53.i
  %288 = ptrtoint ptr %push_data.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %push_data.i.i, align 8
  %push_data_cb.i.i = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %289, i32 %conv.i.i, i32 1
  %290 = ptrtoint ptr %push_data_cb.i.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %push_data_cb.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %291, null
  br i1 %tobool.not.i.i, label %if.end.i.i285.cros_sensorhub_send_sample.exit.i_crit_edge, label %if.end3.i.i

if.end.i.i285.cros_sensorhub_send_sample.exit.i_crit_edge: ; preds = %if.end.i.i285
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_sensorhub_send_sample.exit.i

if.end3.i.i:                                      ; preds = %if.end.i.i285
  %flag.i.i = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %out.4106.i, i32 0, i32 1
  %292 = ptrtoint ptr %flag.i.i to i32
  call void @__asan_load1_noabort(i32 %292)
  %293 = load i8, ptr %flag.i.i, align 1
  %294 = and i8 %293, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %294)
  %tobool8.not.i.i = icmp eq i8 %294, 0
  br i1 %tobool8.not.i.i, label %if.end10.i.i, label %if.end3.i.i.cros_sensorhub_send_sample.exit.i_crit_edge

if.end3.i.i.cros_sensorhub_send_sample.exit.i_crit_edge: ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_sensorhub_send_sample.exit.i

if.end10.i.i:                                     ; preds = %if.end3.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %289, i32 %conv.i.i
  %295 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %arrayidx.i.i, align 4
  %vector.i.i = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %out.4106.i, i32 0, i32 2
  %timestamp.i.i286 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %out.4106.i, i32 0, i32 3
  %297 = ptrtoint ptr %timestamp.i.i286 to i32
  call void @__asan_loadN_noabort(i32 %297, i32 8)
  %298 = load i64, ptr %timestamp.i.i286, align 1
  %call.i89.i = call i32 %291(ptr noundef %296, ptr noundef %vector.i.i, i64 noundef %298) #9
  br label %cros_sensorhub_send_sample.exit.i

cros_sensorhub_send_sample.exit.i:                ; preds = %if.end10.i.i, %if.end3.i.i.cros_sensorhub_send_sample.exit.i_crit_edge, %if.end.i.i285.cros_sensorhub_send_sample.exit.i_crit_edge, %for.body53.i.cros_sensorhub_send_sample.exit.i_crit_edge
  %incdec.ptr56.i = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %out.4106.i, i32 1
  %cmp51.i = icmp ult ptr %incdec.ptr56.i, %out.0304
  br i1 %cmp51.i, label %cros_sensorhub_send_sample.exit.i.for.body53.i_crit_edge, label %cros_sensorhub_send_sample.exit.i.cros_ec_sensor_ring_spread_add_legacy.exit_crit_edge

cros_sensorhub_send_sample.exit.i.cros_ec_sensor_ring_spread_add_legacy.exit_crit_edge: ; preds = %cros_sensorhub_send_sample.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_ec_sensor_ring_spread_add_legacy.exit

cros_sensorhub_send_sample.exit.i.for.body53.i_crit_edge: ; preds = %cros_sensorhub_send_sample.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body53.i

cros_ec_sensor_ring_spread_add_legacy.exit:       ; preds = %cros_sensorhub_send_sample.exit.i.cros_ec_sensor_ring_spread_add_legacy.exit_crit_edge, %for.end48.i.cros_ec_sensor_ring_spread_add_legacy.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sensor_mask.addr.i)
  br label %ring_handler_end

ring_handler_end:                                 ; preds = %cros_ec_sensor_ring_spread_add_legacy.exit, %if.then163, %for.end111.ring_handler_end_crit_edge
  %current_timestamp.5 = phi i64 [ %current_timestamp.0319, %for.end111.ring_handler_end_crit_edge ], [ %current_timestamp.4, %cros_ec_sensor_ring_spread_add_legacy.exit ], [ %current_timestamp.4, %if.then163 ]
  %299 = ptrtoint ptr %fifo_timestamp22 to i32
  call void @__asan_store8_noabort(i32 %299)
  store i64 %current_timestamp.5, ptr %fifo_timestamp22, align 8
  br label %cleanup169

error:                                            ; preds = %do.end, %if.then.error_crit_edge
  tail call void @mutex_unlock(ptr noundef %cmd_lock) #9
  br label %cleanup169

cleanup169:                                       ; preds = %error, %ring_handler_end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cros_ec_sensor_ring_spread_add(ptr nocapture noundef readonly %sensorhub, i32 noundef %sensor_mask, ptr noundef readnone %last_out) unnamed_addr #1 align 64 {
entry:
  %remainder.i = alloca i32, align 4
  %sensor_mask.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %sensor_mask.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %sensor_mask, ptr %sensor_mask.addr, align 4
  %sensor_num = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 2
  %1 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sensor_num, align 8
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %sensor_mask.addr, i32 noundef %2, i32 noundef 0) #9
  %3 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sensor_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %4)
  %cmp274 = icmp slt i32 %call, %4
  br i1 %cmp274, label %for.body.lr.ph, label %entry.for.end137_crit_edge

entry.for.end137_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end137

for.body.lr.ph:                                   ; preds = %entry
  %ring = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 8
  %batch_state = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 12
  %push_data.i228 = getelementptr inbounds %struct.cros_ec_sensorhub, ptr %sensorhub, i32 0, i32 19
  br label %for.body

for.body:                                         ; preds = %for.inc133.for.body_crit_edge, %for.body.lr.ph
  %id.0275 = phi i32 [ %call, %for.body.lr.ph ], [ %call136, %for.inc133.for.body_crit_edge ]
  %5 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring, align 8
  %cmp3272 = icmp ult ptr %6, %last_out
  br i1 %cmp3272, label %for.body.for.body4_crit_edge, label %for.body.for.inc133_crit_edge

for.body.for.inc133_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc133

for.body.for.body4_crit_edge:                     ; preds = %for.body
  br label %for.body4

for.body4:                                        ; preds = %cleanup.for.body4_crit_edge, %for.body.for.body4_crit_edge
  %batch_start.0273 = phi ptr [ %next_batch_start.0, %cleanup.for.body4_crit_edge ], [ %6, %for.body.for.body4_crit_edge ]
  %timestamp = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %batch_start.0273, i32 0, i32 3
  %7 = ptrtoint ptr %timestamp to i32
  call void @__asan_loadN_noabort(i32 %7, i32 8)
  %8 = load i64, ptr %timestamp, align 1
  %9 = ptrtoint ptr %batch_start.0273 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %batch_start.0273, align 1
  %conv = zext i8 %10 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0275, i32 %conv)
  %cmp5.not = icmp eq i32 %id.0275, %conv
  br i1 %cmp5.not, label %if.end, label %for.body4.cleanup_crit_edge

for.body4.cleanup_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %for.body4
  %flag = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %batch_start.0273, i32 0, i32 1
  %11 = ptrtoint ptr %flag to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %flag, align 1
  %13 = and i8 %12, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not = icmp eq i8 %13, 0
  br i1 %tobool.not, label %if.end11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %14 = ptrtoint ptr %batch_state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %batch_state, align 8
  %last_ts = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %15, i32 %id.0275, i32 2
  %16 = ptrtoint ptr %last_ts to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %last_ts, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %8, i64 %17)
  %cmp13.not = icmp sgt i64 %8, %17
  br i1 %cmp13.not, label %if.else, label %if.then15

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %15, i32 %id.0275
  %last_len = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %15, i32 %id.0275, i32 3
  %18 = ptrtoint ptr %last_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_len, align 8
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx, align 8
  %22 = ptrtoint ptr %last_ts to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %last_ts, align 8
  %23 = ptrtoint ptr %batch_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %batch_state, align 8
  %penul_len = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %24, i32 %id.0275, i32 1
  %25 = ptrtoint ptr %penul_len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %penul_len, align 8
  %last_len30 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %24, i32 %id.0275, i32 3
  %27 = ptrtoint ptr %last_len30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %last_len30, align 8
  br label %if.end32

if.else:                                          ; preds = %if.end11
  %28 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sensor_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %id.0275)
  %cmp.not.i227 = icmp sgt i32 %29, %id.0275
  br i1 %cmp.not.i227, label %if.end.i231, label %if.else.cros_sensorhub_send_sample.exit240_crit_edge

if.else.cros_sensorhub_send_sample.exit240_crit_edge: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_sensorhub_send_sample.exit240

if.end.i231:                                      ; preds = %if.else
  %30 = ptrtoint ptr %push_data.i228 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %push_data.i228, align 8
  %push_data_cb.i229 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %31, i32 %id.0275, i32 1
  %32 = ptrtoint ptr %push_data_cb.i229 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %push_data_cb.i229, align 4
  %tobool.not.i230 = icmp eq ptr %33, null
  br i1 %tobool.not.i230, label %if.end.i231.cros_sensorhub_send_sample.exit240_crit_edge, label %if.end10.i239

if.end.i231.cros_sensorhub_send_sample.exit240_crit_edge: ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #11
  br label %cros_sensorhub_send_sample.exit240

if.end10.i239:                                    ; preds = %if.end.i231
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i235 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %31, i32 %id.0275
  %34 = ptrtoint ptr %arrayidx.i235 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx.i235, align 4
  %vector.i236 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %batch_start.0273, i32 0, i32 2
  %call.i238 = call i32 %33(ptr noundef %35, ptr noundef %vector.i236, i64 noundef %8) #9
  br label %cros_sensorhub_send_sample.exit240

cros_sensorhub_send_sample.exit240:               ; preds = %if.end10.i239, %if.end.i231.cros_sensorhub_send_sample.exit240_crit_edge, %if.else.cros_sensorhub_send_sample.exit240_crit_edge
  %incdec.ptr = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %batch_start.0273, i32 1
  br label %if.end32

if.end32:                                         ; preds = %cros_sensorhub_send_sample.exit240, %if.then15
  %sample_idx.0 = phi i32 [ %19, %if.then15 ], [ 1, %cros_sensorhub_send_sample.exit240 ]
  %batch_timestamp.0 = phi i64 [ %17, %if.then15 ], [ %8, %cros_sensorhub_send_sample.exit240 ]
  %batch_start.1 = phi ptr [ %batch_start.0273, %if.then15 ], [ %incdec.ptr, %cros_sensorhub_send_sample.exit240 ]
  %cmp34259 = icmp ult ptr %batch_start.1, %last_out
  br i1 %cmp34259, label %if.end32.for.body36_crit_edge, label %if.end32.for.end_crit_edge

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end32.for.body36_crit_edge:                    ; preds = %if.end32
  br label %for.body36

for.body36:                                       ; preds = %for.inc.for.body36_crit_edge, %if.end32.for.body36_crit_edge
  %s.0262 = phi ptr [ %incdec.ptr54, %for.inc.for.body36_crit_edge ], [ %batch_start.1, %if.end32.for.body36_crit_edge ]
  %batch_end.0261 = phi ptr [ %batch_end.1, %for.inc.for.body36_crit_edge ], [ %batch_start.0273, %if.end32.for.body36_crit_edge ]
  %batch_len.1260 = phi i32 [ %batch_len.2, %for.inc.for.body36_crit_edge ], [ %sample_idx.0, %if.end32.for.body36_crit_edge ]
  %36 = ptrtoint ptr %s.0262 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %s.0262, align 1
  %conv38 = zext i8 %37 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0275, i32 %conv38)
  %cmp39.not = icmp eq i32 %id.0275, %conv38
  br i1 %cmp39.not, label %if.end42, label %for.body36.for.inc_crit_edge

for.body36.for.inc_crit_edge:                     ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end42:                                         ; preds = %for.body36
  %timestamp43 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %s.0262, i32 0, i32 3
  %38 = ptrtoint ptr %timestamp43 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 8)
  %39 = load i64, ptr %timestamp43, align 1
  call void @__sanitizer_cov_trace_cmp8(i64 %39, i64 %batch_timestamp.0)
  %cmp44.not = icmp eq i64 %39, %batch_timestamp.0
  br i1 %cmp44.not, label %if.end47, label %if.end42.for.end_crit_edge

if.end42.for.end_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end47:                                         ; preds = %if.end42
  %flag48 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %s.0262, i32 0, i32 1
  %40 = ptrtoint ptr %flag48 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %flag48, align 1
  %42 = and i8 %41, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool51.not = icmp eq i8 %42, 0
  br i1 %tobool51.not, label %if.end53, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end53:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %inc = add i32 %batch_len.1260, 1
  br label %for.inc

for.inc:                                          ; preds = %if.end53, %for.body36.for.inc_crit_edge
  %batch_len.2 = phi i32 [ %batch_len.1260, %for.body36.for.inc_crit_edge ], [ %inc, %if.end53 ]
  %batch_end.1 = phi ptr [ %batch_end.0261, %for.body36.for.inc_crit_edge ], [ %s.0262, %if.end53 ]
  %incdec.ptr54 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %s.0262, i32 1
  %cmp34 = icmp ult ptr %incdec.ptr54, %last_out
  br i1 %cmp34, label %for.inc.for.body36_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body36_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body36

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end47.for.end_crit_edge, %if.end42.for.end_crit_edge, %if.end32.for.end_crit_edge
  %batch_len.1.lcssa = phi i32 [ %sample_idx.0, %if.end32.for.end_crit_edge ], [ %batch_len.1260, %if.end47.for.end_crit_edge ], [ %batch_len.1260, %if.end42.for.end_crit_edge ], [ %batch_len.2, %for.inc.for.end_crit_edge ]
  %batch_end.0.lcssa = phi ptr [ %batch_start.0273, %if.end32.for.end_crit_edge ], [ %batch_end.0261, %if.end47.for.end_crit_edge ], [ %batch_end.0261, %if.end42.for.end_crit_edge ], [ %batch_end.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %batch_len.1.lcssa)
  %cmp55 = icmp eq i32 %batch_len.1.lcssa, 1
  br i1 %cmp55, label %for.end.done_with_this_batch_crit_edge, label %if.end58

for.end.done_with_this_batch_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_with_this_batch

if.end58:                                         ; preds = %for.end
  %43 = ptrtoint ptr %batch_state to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %batch_state, align 8
  %last_len61 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %44, i32 %id.0275, i32 3
  %45 = ptrtoint ptr %last_len61 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %last_len61, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp62 = icmp eq i32 %46, 0
  br i1 %cmp62, label %do.end, label %if.end65

do.end:                                           ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %sensorhub, align 8
  %sub = add i32 %batch_len.1.lcssa, -1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.26, i32 noundef %id.0275, i32 noundef %sub) #12
  br label %done_with_this_batch

if.end65:                                         ; preds = %if.end58
  %last_ts68 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %44, i32 %id.0275, i32 2
  %49 = ptrtoint ptr %last_ts68 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %last_ts68, align 8
  %sub69 = sub i64 %batch_timestamp.0, %50
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %remainder.i) #9
  %51 = ptrtoint ptr %remainder.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %remainder.i, align 4, !annotation !79
  %call.i241 = call i64 @div_s64_rem(i64 noundef %sub69, i32 noundef %46, ptr noundef nonnull %remainder.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %remainder.i) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cros_ec_sensor_ring_spread_add.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cros_ec_sensor_ring_spread_add, %if.then79)) #9
          to label %do.end89 [label %if.then79], !srcloc !78

if.then79:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %52 = ptrtoint ptr %sensorhub to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %sensorhub, align 8
  %54 = ptrtoint ptr %batch_state to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %batch_state, align 8
  %last_ts83 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %55, i32 %id.0275, i32 2
  %56 = ptrtoint ptr %last_ts83 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %last_ts83, align 8
  %last_len86 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %55, i32 %id.0275, i32 3
  %58 = ptrtoint ptr %last_len86 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %last_len86, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cros_ec_sensor_ring_spread_add.__UNIQUE_ID_ddebug194, ptr noundef %53, ptr noundef nonnull @.str.28, i32 noundef %batch_len.1.lcssa, i32 noundef %id.0275, i64 noundef %57, i32 noundef %59, i64 noundef %batch_timestamp.0, i64 noundef %call.i241) #9
  br label %do.end89

do.end89:                                         ; preds = %if.then79, %if.end65
  %cmp91.not268 = icmp ugt ptr %batch_start.1, %batch_end.0.lcssa
  br i1 %cmp91.not268, label %do.end89.done_with_this_batch_crit_edge, label %do.end89.for.body93_crit_edge

do.end89.for.body93_crit_edge:                    ; preds = %do.end89
  br label %for.body93

do.end89.done_with_this_batch_crit_edge:          ; preds = %do.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_with_this_batch

for.body93:                                       ; preds = %for.inc104.for.body93_crit_edge, %do.end89.for.body93_crit_edge
  %s.1270 = phi ptr [ %incdec.ptr105, %for.inc104.for.body93_crit_edge ], [ %batch_start.1, %do.end89.for.body93_crit_edge ]
  %sample_idx.1269 = phi i32 [ %sample_idx.2, %for.inc104.for.body93_crit_edge ], [ %sample_idx.0, %do.end89.for.body93_crit_edge ]
  %60 = ptrtoint ptr %s.1270 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %s.1270, align 1
  %conv95 = zext i8 %61 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %id.0275, i32 %conv95)
  %cmp96.not = icmp eq i32 %id.0275, %conv95
  br i1 %cmp96.not, label %if.end99, label %for.body93.for.inc104_crit_edge

for.body93.for.inc104_crit_edge:                  ; preds = %for.body93
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

if.end99:                                         ; preds = %for.body93
  %conv100 = sext i32 %sample_idx.1269 to i64
  %mul = mul i64 %call.i241, %conv100
  %add = add i64 %mul, %batch_timestamp.0
  %timestamp101 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %s.1270, i32 0, i32 3
  %62 = ptrtoint ptr %timestamp101 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 8)
  store i64 %add, ptr %timestamp101, align 1
  %inc102 = add i32 %sample_idx.1269, 1
  %63 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %sensor_num, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %id.0275)
  %cmp.not.i244 = icmp sgt i32 %64, %id.0275
  br i1 %cmp.not.i244, label %if.end.i248, label %if.end99.for.inc104_crit_edge

if.end99.for.inc104_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

if.end.i248:                                      ; preds = %if.end99
  %65 = ptrtoint ptr %push_data.i228 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %push_data.i228, align 8
  %push_data_cb.i246 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %66, i32 %id.0275, i32 1
  %67 = ptrtoint ptr %push_data_cb.i246 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %push_data_cb.i246, align 4
  %tobool.not.i247 = icmp eq ptr %68, null
  br i1 %tobool.not.i247, label %if.end.i248.for.inc104_crit_edge, label %if.end3.i251

if.end.i248.for.inc104_crit_edge:                 ; preds = %if.end.i248
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

if.end3.i251:                                     ; preds = %if.end.i248
  %flag.i249 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %s.1270, i32 0, i32 1
  %69 = ptrtoint ptr %flag.i249 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %flag.i249, align 1
  %71 = and i8 %70, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool8.not.i250 = icmp eq i8 %71, 0
  br i1 %tobool8.not.i250, label %if.end10.i256, label %if.end3.i251.for.inc104_crit_edge

if.end3.i251.for.inc104_crit_edge:                ; preds = %if.end3.i251
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc104

if.end10.i256:                                    ; preds = %if.end3.i251
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i252 = getelementptr %struct.cros_ec_sensorhub_sensor_push_data, ptr %66, i32 %id.0275
  %72 = ptrtoint ptr %arrayidx.i252 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx.i252, align 4
  %vector.i253 = getelementptr inbounds %struct.cros_ec_sensors_ring_sample, ptr %s.1270, i32 0, i32 2
  %call.i255 = call i32 %68(ptr noundef %73, ptr noundef %vector.i253, i64 noundef %add) #9
  br label %for.inc104

for.inc104:                                       ; preds = %if.end10.i256, %if.end3.i251.for.inc104_crit_edge, %if.end.i248.for.inc104_crit_edge, %if.end99.for.inc104_crit_edge, %for.body93.for.inc104_crit_edge
  %sample_idx.2 = phi i32 [ %sample_idx.1269, %for.body93.for.inc104_crit_edge ], [ %inc102, %if.end99.for.inc104_crit_edge ], [ %inc102, %if.end.i248.for.inc104_crit_edge ], [ %inc102, %if.end3.i251.for.inc104_crit_edge ], [ %inc102, %if.end10.i256 ]
  %incdec.ptr105 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %s.1270, i32 1
  %cmp91.not = icmp ugt ptr %incdec.ptr105, %batch_end.0.lcssa
  br i1 %cmp91.not, label %for.inc104.done_with_this_batch_crit_edge, label %for.inc104.for.body93_crit_edge

for.inc104.for.body93_crit_edge:                  ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body93

for.inc104.done_with_this_batch_crit_edge:        ; preds = %for.inc104
  call void @__sanitizer_cov_trace_pc() #11
  br label %done_with_this_batch

done_with_this_batch:                             ; preds = %for.inc104.done_with_this_batch_crit_edge, %do.end89.done_with_this_batch_crit_edge, %do.end, %for.end.done_with_this_batch_crit_edge
  %74 = ptrtoint ptr %batch_state to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %batch_state, align 8
  %arrayidx108 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %75, i32 %id.0275
  %last_ts109 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %75, i32 %id.0275, i32 2
  %76 = ptrtoint ptr %last_ts109 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %last_ts109, align 8
  %78 = ptrtoint ptr %arrayidx108 to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %77, ptr %arrayidx108, align 8
  %79 = load ptr, ptr %batch_state, align 8
  %last_len115 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %79, i32 %id.0275, i32 3
  %80 = ptrtoint ptr %last_len115 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %last_len115, align 8
  %penul_len118 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %79, i32 %id.0275, i32 1
  %82 = ptrtoint ptr %penul_len118 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %penul_len118, align 8
  %83 = load ptr, ptr %batch_state, align 8
  %last_ts121 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %83, i32 %id.0275, i32 2
  %84 = ptrtoint ptr %last_ts121 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %batch_timestamp.0, ptr %last_ts121, align 8
  %85 = load ptr, ptr %batch_state, align 8
  %last_len124 = getelementptr %struct.cros_ec_sensors_ts_batch_state, ptr %85, i32 %id.0275, i32 3
  %86 = ptrtoint ptr %last_len124 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %batch_len.1.lcssa, ptr %last_len124, align 8
  br label %cleanup

cleanup:                                          ; preds = %done_with_this_batch, %if.end.cleanup_crit_edge, %for.body4.cleanup_crit_edge
  %batch_start.0.pn = phi ptr [ %batch_end.0.lcssa, %done_with_this_batch ], [ %batch_start.0273, %for.body4.cleanup_crit_edge ], [ %batch_start.0273, %if.end.cleanup_crit_edge ]
  %next_batch_start.0 = getelementptr %struct.cros_ec_sensors_ring_sample, ptr %batch_start.0.pn, i32 1
  %cmp3 = icmp ult ptr %next_batch_start.0, %last_out
  br i1 %cmp3, label %cleanup.for.body4_crit_edge, label %cleanup.for.inc133_crit_edge

cleanup.for.inc133_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc133

cleanup.for.body4_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body4

for.inc133:                                       ; preds = %cleanup.for.inc133_crit_edge, %for.body.for.inc133_crit_edge
  %87 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sensor_num, align 8
  %add135 = add i32 %id.0275, 1
  %call136 = call i32 @_find_next_bit_be(ptr noundef nonnull %sensor_mask.addr, i32 noundef %88, i32 noundef %add135) #9
  %89 = ptrtoint ptr %sensor_num to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sensor_num, align 8
  %cmp = icmp slt i32 %call136, %90
  br i1 %cmp, label %for.inc133.for.body_crit_edge, label %for.inc133.for.end137_crit_edge

for.inc133.for.end137_crit_edge:                  ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end137

for.inc133.for.body_crit_edge:                    ; preds = %for.inc133
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end137:                                       ; preds = %for.inc133.for.end137_crit_edge, %entry.for.end137_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cros_ec_sensorhub_timestamp(i32 noundef %ec_sample_timestamp, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_timestamp, i32 0, i32 1), ptr blockaddress(@trace_cros_ec_sensorhub_timestamp, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !81
  %call42 = tail call i32 @__traceiter_cros_ec_sensorhub_timestamp(ptr noundef null, i32 noundef %ec_sample_timestamp, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !82
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_timestamp, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_timestamp, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cros_ec_sensorhub_timestamp.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cros_ec_sensorhub_timestamp.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 103, ptr noundef nonnull @.str.24) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cros_ec_sensorhub_data(i32 noundef %ec_sensor_num, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_data, i32 0, i32 1), ptr blockaddress(@trace_cros_ec_sensorhub_data, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !85
  %call42 = tail call i32 @__traceiter_cros_ec_sensorhub_data(ptr noundef null, i32 noundef %ec_sensor_num, i32 noundef %ec_fifo_timestamp, i64 noundef %fifo_timestamp, i64 noundef %current_timestamp, i64 noundef %current_time) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !86
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_data, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_data, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cros_ec_sensorhub_data.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cros_ec_sensorhub_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 133, ptr noundef nonnull @.str.24) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_cros_ec_sensorhub_filter(ptr noundef %state, i64 noundef %dx, i64 noundef %dy) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_filter, i32 0, i32 1), ptr blockaddress(@trace_cros_ec_sensorhub_filter, %do.body)) #9
          to label %if.end48 [label %do.body], !srcloc !78

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %3)
  %cmp.not.i.i.i.i = icmp ugt i32 %4, %3
  br i1 %cmp.not.i.i.i.i, label %do.body.cpu_online.exit_crit_edge, label %land.rhs.i.i.i.i

do.body.cpu_online.exit_crit_edge:                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !80

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i75 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i75
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !87
  %call42 = tail call i32 @__traceiter_cros_ec_sensorhub_filter(ptr noundef null, ptr noundef %state, i64 noundef %dx, i64 noundef %dy) #9
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !88
  %13 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i73 = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i73 to ptr
  %preempt_count.i.i74 = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i74 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i74, align 4
  %sub.i = add i32 %16, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74, align 4
  br label %if.end48

if.end48:                                         ; preds = %cleanup.thread, %entry
  %17 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i76 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %20)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %21, %20
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !80

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 108, i32 noundef 9, ptr noundef null) #9
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %22 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %20, 31
  %24 = shl nuw i32 1, %and.i.i.i83
  %25 = and i32 %23, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.i84.not = icmp eq i32 %25, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !83
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_filter, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cros_ec_sensorhub_filter, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_cros_ec_sensorhub_filter.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @trace_cros_ec_sensorhub_filter.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.23, i32 noundef 165, ptr noundef nonnull @.str.24) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !84
  %31 = tail call i32 @llvm.read_register.i32(metadata !67) #9
  %and.i.i.i.i86 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %34, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cros_ec_sensor_ring_median_cmp(ptr nocapture noundef readonly %pv1, ptr nocapture noundef readonly %pv2) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pv1 to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %pv1, align 8
  %2 = ptrtoint ptr %pv2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %pv2, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp = icmp sgt i64 %1, %3
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3)
  %cmp1 = icmp slt i64 %1, %3
  %. = sext i1 %cmp1 to i32
  %retval.0 = select i1 %cmp, i32 1, i32 %.
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cros_ec_sensorhub_filter(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cros_ec_sensorhub_timestamp(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_cros_ec_sensorhub_data(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div_s64_rem(i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.abs.i64(i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !55, !56, !58, !59, !61, !62, !63, !64, !66}
!llvm.named.register.sp = !{!67}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @__ksymtab_cros_ec_sensorhub_register_push_data, !1, !"__ksymtab_cros_ec_sensorhub_register_push_data", i1 false, i1 false}
!1 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 89, i32 1}
!2 = !{ptr @__ksymtab_cros_ec_sensorhub_unregister_push_data, !3, !"__ksymtab_cros_ec_sensorhub_unregister_push_data", i1 false, i1 false}
!3 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 97, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 927, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @cros_ec_sensorhub_event._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @cros_ec_sensorhub_event._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 806, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cros_ec_sensorhub_ring_handler._entry, !13, !"_entry", i1 false, i1 false}
!16 = !{ptr @cros_ec_sensorhub_ring_handler._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 828, i32 4}
!19 = !{ptr @cros_ec_sensorhub_ring_handler._entry.7, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @cros_ec_sensorhub_ring_handler._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 833, i32 4}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @cros_ec_sensorhub_ring_handler.__UNIQUE_ID_ddebug195, !22, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 837, i32 4}
!27 = !{ptr @cros_ec_sensorhub_ring_handler._entry.12, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @cros_ec_sensorhub_ring_handler._entry_ptr.14, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 844, i32 4}
!31 = !{ptr @cros_ec_sensorhub_ring_handler._entry.15, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @cros_ec_sensorhub_ring_handler._entry_ptr.17, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 884, i32 5}
!35 = !{ptr @cros_ec_sensorhub_ring_handler._rs, !34, !"_rs", i1 false, i1 false}
!36 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @cros_ec_sensorhub_ring_handler._entry.19, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @cros_ec_sensorhub_ring_handler._entry_ptr.21, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @cros_ec_sensor_ring_process_event._rs, !40, !"_rs", i1 false, i1 false}
!40 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 488, i32 4}
!41 = !{ptr @__func__.cros_ec_sensor_ring_process_event, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @cros_ec_sensor_ring_process_event._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @cros_ec_sensor_ring_process_event._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = distinct !{null, !46, !"__already_done", i1 false, i1 false}
!46 = !{!"../drivers/platform/chrome/cros_ec_trace.h", i32 135, i32 1}
!47 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!49 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!50 = distinct !{null, !51, !"__already_done", i1 false, i1 false}
!51 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!52 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!53 = distinct !{null, !54, !"__already_done", i1 false, i1 false}
!54 = !{!"../drivers/platform/chrome/cros_ec_trace.h", i32 74, i32 1}
!55 = distinct !{null, !54, !"__warned", i1 false, i1 false}
!56 = distinct !{null, !57, !"__already_done", i1 false, i1 false}
!57 = !{!"../drivers/platform/chrome/cros_ec_trace.h", i32 105, i32 1}
!58 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 630, i32 5}
!61 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cros_ec_sensor_ring_spread_add._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @cros_ec_sensor_ring_spread_add._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/platform/chrome/cros_ec_sensorhub_ring.c", i32 644, i32 4}
!66 = !{ptr @cros_ec_sensor_ring_spread_add.__UNIQUE_ID_ddebug194, !65, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!67 = !{!"sp"}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 2148786008, i64 2148786013, i64 2148786026, i64 2148786070, i64 2148786104, i64 2148786125}
!79 = !{!"auto-init"}
!80 = !{!"branch_weights", i32 2000, i32 1}
!81 = !{i64 2153171571}
!82 = !{i64 2153171966}
!83 = !{i64 2149287164}
!84 = !{i64 2149288200}
!85 = !{i64 2153191331}
!86 = !{i64 2153191700}
!87 = !{i64 2153213612}
!88 = !{i64 2153213849}
