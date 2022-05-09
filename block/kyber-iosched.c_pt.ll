; ModuleID = '/llk/IR_all_yes/block/kyber-iosched.c_pt.bc'
source_filename = "../block/kyber-iosched.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.0 }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.1, %struct.trace_event, ptr, ptr, %union.anon.4, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.1 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.4 = type { ptr }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%union.anon.116 = type { %struct.bpf_raw_event_map }
%struct.elevator_type = type { ptr, %struct.elevator_mq_ops, i32, i32, ptr, ptr, ptr, i32, ptr, ptr, ptr, [22 x i8], %struct.list_head }
%struct.elevator_mq_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.elv_fs_entry = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.3 }
%union.anon.3 = type { %struct.hlist_node }
%struct.blk_mq_debugfs_attr = type { ptr, i16, ptr, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.seq_operations = type { ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_kyber_latency = type { %struct.trace_entry, i32, [16 x i8], [8 x i8], i8, i8, i8, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_kyber_adjust = type { %struct.trace_entry, i32, [16 x i8], i32, [0 x i8] }
%struct.trace_event_raw_kyber_throttled = type { %struct.trace_entry, i32, [16 x i8], [0 x i8] }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.bio_list = type { ptr, ptr }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.kyber_queue_data = type { ptr, i32, [4 x %struct.sbitmap_queue], i32, ptr, %struct.timer_list, [3 x [2 x [8 x i32]]], [3 x i32], [3 x i32], [3 x i64] }
%struct.sbitmap_queue = type { %struct.sbitmap, i32, %struct.atomic_t, ptr, %struct.atomic_t, i32 }
%struct.sbitmap = type { i32, i32, i32, i8, ptr, ptr }
%struct.elevator_queue = type { ptr, ptr, %struct.kobject, %struct.mutex, i8, [64 x %struct.hlist_head] }
%struct.hlist_head = type { ptr }
%struct.blk_mq_hw_ctx = type { %struct.anon.112, %struct.delayed_work, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, %struct.sbitmap, ptr, i32, i16, i16, ptr, %struct.spinlock, %struct.wait_queue_entry, %struct.atomic_t, ptr, ptr, i32, i32, i32, i32, %struct.atomic_t, %struct.hlist_node, %struct.hlist_node, %struct.kobject, ptr, ptr, %struct.list_head, [76 x i8] }
%struct.anon.112 = type { %struct.spinlock, %struct.list_head, i32, [72 x i8] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.kyber_hctx_data = type { %struct.spinlock, [4 x %struct.list_head], i32, i32, ptr, [4 x %struct.sbitmap], [4 x %struct.sbq_wait], [4 x ptr], [4 x %struct.atomic_t] }
%struct.sbq_wait = type { ptr, %struct.wait_queue_entry }
%struct.kyber_ctx_queue = type { %struct.spinlock, [4 x %struct.list_head], [52 x i8] }
%struct.blk_mq_tags = type { i32, i32, %struct.atomic_t, %struct.sbitmap_queue, %struct.sbitmap_queue, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.bio = type { ptr, ptr, i32, i16, i16, i16, i8, %struct.atomic_t, %struct.bvec_iter, i32, ptr, ptr, ptr, %struct.bio_issue, i64, ptr, %union.anon.47, i16, i16, %struct.atomic_t, ptr, ptr, [0 x %struct.bio_vec] }
%struct.bvec_iter = type <{ i64, i32, i32, i32 }>
%struct.bio_issue = type { i64 }
%union.anon.47 = type { ptr }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.blk_mq_ctx = type { %struct.anon.113, i32, [3 x i16], [3 x ptr], ptr, ptr, %struct.kobject, [88 x i8] }
%struct.anon.113 = type { %struct.spinlock, [3 x %struct.list_head], [60 x i8] }
%struct.blk_mq_alloc_data = type { ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.48, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.49, %union.anon.50, %union.anon.51, %union.anon.56, ptr, ptr }
%union.anon.48 = type { %struct.list_head }
%union.anon.49 = type { %struct.hlist_node }
%union.anon.50 = type { %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.51 = type { %struct.anon.55 }
%struct.anon.55 = type { i32, %struct.list_head, ptr }
%union.anon.56 = type { i64, [8 x i8] }
%struct.sbitmap_word = type { i32, [124 x i8], i32, [124 x i8], i32, [124 x i8] }
%struct.sbq_wait_state = type { %struct.atomic_t, %struct.wait_queue_head, [72 x i8] }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }

@__tpstrtab_kyber_latency = internal constant [14 x i8] c"kyber_latency\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kyber_latency = dso_local global %struct.static_call_key { ptr @__traceiter_kyber_latency }, align 4
@__tracepoint_kyber_latency = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_kyber_latency, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_kyber_latency, ptr null, ptr @__traceiter_kyber_latency, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kyber_latency = internal constant ptr @__tracepoint_kyber_latency, section "__tracepoints_ptrs", align 4
@__tpstrtab_kyber_adjust = internal constant [13 x i8] c"kyber_adjust\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kyber_adjust = dso_local global %struct.static_call_key { ptr @__traceiter_kyber_adjust }, align 4
@__tracepoint_kyber_adjust = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_kyber_adjust, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_kyber_adjust, ptr null, ptr @__traceiter_kyber_adjust, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kyber_adjust = internal constant ptr @__tracepoint_kyber_adjust, section "__tracepoints_ptrs", align 4
@__tpstrtab_kyber_throttled = internal constant [16 x i8] c"kyber_throttled\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_kyber_throttled = dso_local global %struct.static_call_key { ptr @__traceiter_kyber_throttled }, align 4
@__tracepoint_kyber_throttled = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_kyber_throttled, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_kyber_throttled, ptr null, ptr @__traceiter_kyber_throttled, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_kyber_throttled = internal constant ptr @__tracepoint_kyber_throttled, section "__tracepoints_ptrs", align 4
@str__kyber__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kyber\00", [26 x i8] zeroinitializer }, align 32
@trace_event_fields_kyber_latency = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.4, %union.anon.0 { %struct.anon { ptr @.str.5, i32 8, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.7, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.8, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.6, %union.anon.0 { %struct.anon { ptr @.str.9, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.0 { %struct.anon { ptr @.str.11, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_kyber_latency = internal global %struct.trace_event_class { ptr @str__kyber__trace_system_name, ptr @trace_event_raw_event_kyber_latency, ptr @perf_trace_kyber_latency, ptr @trace_event_reg, ptr @trace_event_fields_kyber_latency, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kyber_latency, i64 24), ptr getelementptr (i8, ptr @event_class_kyber_latency, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kyber_latency = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_kyber_latency, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_kyber_latency = internal global { [211 x i8], [45 x i8] } { [211 x i8] c"\22%d,%d %s %s p%u %u/%u samples=%u\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->domain, REC->type, REC->percentile, REC->numerator, REC->denominator, REC->samples\00", [45 x i8] zeroinitializer }, align 32
@event_kyber_latency = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kyber_latency, %union.anon.1 { ptr @__tracepoint_kyber_latency }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kyber_latency }, ptr @print_fmt_kyber_latency, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_kyber_latency = internal global ptr @event_kyber_latency, section "_ftrace_events", align 4
@trace_event_fields_kyber_adjust = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.10, %union.anon.0 { %struct.anon { ptr @.str.13, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_kyber_adjust = internal global %struct.trace_event_class { ptr @str__kyber__trace_system_name, ptr @trace_event_raw_event_kyber_adjust, ptr @perf_trace_kyber_adjust, ptr @trace_event_reg, ptr @trace_event_fields_kyber_adjust, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kyber_adjust, i64 24), ptr getelementptr (i8, ptr @event_class_kyber_adjust, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kyber_adjust = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_kyber_adjust, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_kyber_adjust = internal global { [126 x i8], [34 x i8] } { [126 x i8] c"\22%d,%d %s %u\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->domain, REC->depth\00", [34 x i8] zeroinitializer }, align 32
@event_kyber_adjust = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kyber_adjust, %union.anon.1 { ptr @__tracepoint_kyber_adjust }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kyber_adjust }, ptr @print_fmt_kyber_adjust, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_kyber_adjust = internal global ptr @event_kyber_adjust, section "_ftrace_events", align 4
@trace_event_fields_kyber_throttled = internal global { [3 x %struct.trace_event_fields], [56 x i8] } { [3 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str, %union.anon.0 { %struct.anon { ptr @.str.1, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.2, %union.anon.0 { %struct.anon { ptr @.str.3, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_kyber_throttled = internal global %struct.trace_event_class { ptr @str__kyber__trace_system_name, ptr @trace_event_raw_event_kyber_throttled, ptr @perf_trace_kyber_throttled, ptr @trace_event_reg, ptr @trace_event_fields_kyber_throttled, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_kyber_throttled, i64 24), ptr getelementptr (i8, ptr @event_class_kyber_throttled, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_kyber_throttled = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_kyber_throttled, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_kyber_throttled = internal global { [111 x i8], [49 x i8] } { [111 x i8] c"\22%d,%d %s\22, ((unsigned int) ((REC->dev) >> 20)), ((unsigned int) ((REC->dev) & ((1U << 20) - 1))), REC->domain\00", [49 x i8] zeroinitializer }, align 32
@event_kyber_throttled = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_kyber_throttled, %union.anon.1 { ptr @__tracepoint_kyber_throttled }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_kyber_throttled }, ptr @print_fmt_kyber_throttled, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_kyber_throttled = internal global ptr @event_kyber_throttled, section "_ftrace_events", align 4
@__bpf_trace_tp_map_kyber_latency = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_kyber_latency, ptr @__bpf_trace_kyber_latency, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_kyber_adjust = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_kyber_adjust, ptr @__bpf_trace_kyber_adjust, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_kyber_throttled = internal global %union.anon.116 { %struct.bpf_raw_event_map { ptr @__tracepoint_kyber_throttled, ptr @__bpf_trace_kyber_throttled, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@kyber_sched = internal global { %struct.elevator_type, [32 x i8] } { %struct.elevator_type { ptr null, %struct.elevator_mq_ops { ptr @kyber_init_sched, ptr @kyber_exit_sched, ptr @kyber_init_hctx, ptr @kyber_exit_hctx, ptr @kyber_depth_updated, ptr null, ptr @kyber_bio_merge, ptr null, ptr null, ptr null, ptr @kyber_limit_depth, ptr @kyber_prepare_request, ptr @kyber_finish_request, ptr @kyber_insert_requests, ptr @kyber_dispatch_request, ptr @kyber_has_work, ptr @kyber_completed_request, ptr @kyber_finish_request, ptr null, ptr null, ptr null, ptr null }, i32 0, i32 0, ptr @kyber_sched_attrs, ptr @.str.16, ptr null, i32 2, ptr null, ptr @kyber_queue_debugfs_attrs, ptr @kyber_hctx_debugfs_attrs, [22 x i8] zeroinitializer, %struct.list_head zeroinitializer }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_kyber_iosched__372_1050_kyber_init6 = internal global ptr @kyber_init, section ".initcall6.init", align 4
@__exitcall_kyber_exit = internal global ptr @kyber_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author373 = internal constant [35 x i8] c"kyber_iosched.author=Omar Sandoval\00", section ".modinfo", align 1
@__UNIQUE_ID_file374 = internal constant [39 x i8] c"kyber_iosched.file=block/kyber-iosched\00", section ".modinfo", align 1
@__UNIQUE_ID_license375 = internal constant [26 x i8] c"kyber_iosched.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description376 = internal constant [46 x i8] c"kyber_iosched.description=Kyber I/O scheduler\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dev_t\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dev\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"char[16]\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"domain\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"char[8]\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"type\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"u8\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"percentile\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"numerator\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"denominator\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"samples\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%d,%d %s %s p%u %u/%u samples=%u\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"depth\00", [26 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%d,%d %s %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%d,%d %s\0A\00", [22 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@kyber_sched_attrs = internal global { [3 x %struct.elv_fs_entry], [44 x i8] } { [3 x %struct.elv_fs_entry] [%struct.elv_fs_entry { %struct.attribute { ptr @.str.31, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kyber_read_lat_show, ptr @kyber_read_lat_store }, %struct.elv_fs_entry { %struct.attribute { ptr @.str.32, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @kyber_write_lat_show, ptr @kyber_write_lat_store }, %struct.elv_fs_entry zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kyber\00", [26 x i8] zeroinitializer }, align 32
@kyber_queue_debugfs_attrs = internal constant { [6 x %struct.blk_mq_debugfs_attr], [40 x i8] } { [6 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.34, i16 256, ptr @kyber_read_tokens_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.35, i16 256, ptr @kyber_write_tokens_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.36, i16 256, ptr @kyber_discard_tokens_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.37, i16 256, ptr @kyber_other_tokens_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.38, i16 256, ptr @kyber_async_depth_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], [40 x i8] zeroinitializer }, align 32
@kyber_hctx_debugfs_attrs = internal constant { [11 x %struct.blk_mq_debugfs_attr], [36 x i8] } { [11 x %struct.blk_mq_debugfs_attr] [%struct.blk_mq_debugfs_attr { ptr @.str.40, i16 256, ptr null, ptr null, ptr @kyber_read_rqs_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.41, i16 256, ptr @kyber_read_waiting_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.42, i16 256, ptr null, ptr null, ptr @kyber_write_rqs_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.43, i16 256, ptr @kyber_write_waiting_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.44, i16 256, ptr null, ptr null, ptr @kyber_discard_rqs_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.45, i16 256, ptr @kyber_discard_waiting_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.46, i16 256, ptr null, ptr null, ptr @kyber_other_rqs_seq_ops }, %struct.blk_mq_debugfs_attr { ptr @.str.47, i16 256, ptr @kyber_other_waiting_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.48, i16 256, ptr @kyber_cur_domain_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr { ptr @.str.49, i16 256, ptr @kyber_batching_show, ptr null, ptr null }, %struct.blk_mq_debugfs_attr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@kyber_queue_data_alloc.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"(&kqd->timer)\00", [18 x i8] zeroinitializer }, align 32
@kyber_batch_size = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 16, i32 8, i32 1, i32 1], [16 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kyber_domain_names = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], [16 x i8] zeroinitializer }, align 32
@kyber_latency_type_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.27], [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/kyber.h\00", [35 x i8] zeroinitializer }, align 32
@trace_kyber_latency.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"DISCARD\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"OTHER\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"total\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"I/O\00", [28 x i8] zeroinitializer }, align 32
@trace_kyber_adjust.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kyber_init_hctx.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&khd->lock\00", [21 x i8] zeroinitializer }, align 32
@kyber_ctx_queue_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&kcq->lock\00", [21 x i8] zeroinitializer }, align 32
@__tracepoint_block_rq_insert = external dso_local global %struct.tracepoint, align 4
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/block.h\00", [35 x i8] zeroinitializer }, align 32
@trace_block_rq_insert.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_kyber_throttled.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"read_lat_nsec\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"write_lat_nsec\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%llu\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"read_tokens\00", [20 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"write_tokens\00", [19 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"discard_tokens\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"other_tokens\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"async_depth\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%u\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"read_rqs\00", [23 x i8] zeroinitializer }, align 32
@kyber_read_rqs_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @kyber_read_rqs_start, ptr @kyber_read_rqs_stop, ptr @kyber_read_rqs_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"read_waiting\00", [19 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"write_rqs\00", [22 x i8] zeroinitializer }, align 32
@kyber_write_rqs_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @kyber_write_rqs_start, ptr @kyber_write_rqs_stop, ptr @kyber_write_rqs_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"write_waiting\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"discard_rqs\00", [20 x i8] zeroinitializer }, align 32
@kyber_discard_rqs_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @kyber_discard_rqs_start, ptr @kyber_discard_rqs_stop, ptr @kyber_discard_rqs_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"discard_waiting\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"other_rqs\00", [22 x i8] zeroinitializer }, align 32
@kyber_other_rqs_seq_ops = internal constant { %struct.seq_operations, [16 x i8] } { %struct.seq_operations { ptr @kyber_other_rqs_start, ptr @kyber_other_rqs_stop, ptr @kyber_other_rqs_next, ptr @blk_mq_debugfs_rq_show }, [16 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"other_waiting\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cur_domain\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"batching\00", [23 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@switch.table.kyber_bio_merge = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.kyber_finish_request = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@switch.table.kyber_insert_requests = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 3, i32 2], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@___asan_gen_.52 = private unnamed_addr constant [30 x i8] c"str__kyber__trace_system_name\00", align 1
@___asan_gen_.53 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 36, i32 1 }
@___asan_gen_.55 = private unnamed_addr constant [33 x i8] c"trace_event_fields_kyber_latency\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_kyber_latency\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [24 x i8] c"print_fmt_kyber_latency\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"event_kyber_latency\00", align 1
@___asan_gen_.67 = private unnamed_addr constant [32 x i8] c"trace_event_fields_kyber_adjust\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_kyber_adjust\00", align 1
@___asan_gen_.73 = private unnamed_addr constant [23 x i8] c"print_fmt_kyber_adjust\00", align 1
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"event_kyber_adjust\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [35 x i8] c"trace_event_fields_kyber_throttled\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [39 x i8] c"trace_event_type_funcs_kyber_throttled\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [26 x i8] c"print_fmt_kyber_throttled\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [22 x i8] c"event_kyber_throttled\00", align 1
@___asan_gen_.91 = private unnamed_addr constant [12 x i8] c"kyber_sched\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1013, i32 29 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 48, i32 1 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 71, i32 1 }
@___asan_gen_.142 = private unnamed_addr constant [18 x i8] c"kyber_sched_attrs\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 891, i32 28 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1035, i32 19 }
@___asan_gen_.148 = private unnamed_addr constant [26 x i8] c"kyber_queue_debugfs_attrs\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 988, i32 41 }
@___asan_gen_.151 = private unnamed_addr constant [25 x i8] c"kyber_hctx_debugfs_attrs\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1001, i32 41 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 377, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant [17 x i8] c"kyber_batch_size\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 82, i32 27 }
@___asan_gen_.163 = private unnamed_addr constant [19 x i8] c"kyber_domain_names\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 39, i32 20 }
@___asan_gen_.166 = private unnamed_addr constant [25 x i8] c"kyber_latency_type_names\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 126, i32 20 }
@___asan_gen_.173 = private unnamed_addr constant [32 x i8] c"../include/trace/events/kyber.h\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.173, i32 14, i32 1 }
@___asan_gen_.176 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.176, i32 108, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 40, i32 17 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 41, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 42, i32 20 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 43, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 127, i32 26 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 128, i32 23 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 492, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 448, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [32 x i8] c"../include/trace/events/block.h\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.209, i32 190, i32 1 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 892, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 893, i32 2 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 886, i32 1 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 989, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 990, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 991, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 992, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 993, i32 3 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 964, i32 16 }
@___asan_gen_.241 = private unnamed_addr constant [23 x i8] c"kyber_read_rqs_seq_ops\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1002, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant [24 x i8] c"kyber_write_rqs_seq_ops\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 954, i32 1 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1003, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant [26 x i8] c"kyber_discard_rqs_seq_ops\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 955, i32 1 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1004, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant [24 x i8] c"kyber_other_rqs_seq_ops\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 956, i32 1 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1005, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1006, i32 3 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 1007, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 953, i32 1 }
@___asan_gen_.283 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.284 = private constant [25 x i8] c"../block/kyber-iosched.c\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.284, i32 973, i32 16 }
@___asan_gen_.286 = private unnamed_addr constant [29 x i8] c"switch.table.kyber_bio_merge\00", align 1
@___asan_gen_.287 = private unnamed_addr constant [34 x i8] c"switch.table.kyber_finish_request\00", align 1
@___asan_gen_.288 = private unnamed_addr constant [35 x i8] c"switch.table.kyber_insert_requests\00", align 1
@llvm.compiler.used = appending global [103 x ptr] [ptr @__UNIQUE_ID_author373, ptr @__UNIQUE_ID_description376, ptr @__UNIQUE_ID_file374, ptr @__UNIQUE_ID_license375, ptr @__bpf_trace_tp_map_kyber_adjust, ptr @__bpf_trace_tp_map_kyber_latency, ptr @__bpf_trace_tp_map_kyber_throttled, ptr @__event_kyber_adjust, ptr @__event_kyber_latency, ptr @__event_kyber_throttled, ptr @__exitcall_kyber_exit, ptr @__initcall__kmod_kyber_iosched__372_1050_kyber_init6, ptr @__tracepoint_kyber_adjust, ptr @__tracepoint_kyber_latency, ptr @__tracepoint_kyber_throttled, ptr @__tracepoint_ptr_kyber_adjust, ptr @__tracepoint_ptr_kyber_latency, ptr @__tracepoint_ptr_kyber_throttled, ptr @event_class_kyber_adjust, ptr @event_class_kyber_latency, ptr @event_class_kyber_throttled, ptr @event_kyber_adjust, ptr @event_kyber_latency, ptr @event_kyber_throttled, ptr @kyber_exit, ptr @str__kyber__trace_system_name, ptr @trace_event_fields_kyber_latency, ptr @trace_event_type_funcs_kyber_latency, ptr @print_fmt_kyber_latency, ptr @trace_event_fields_kyber_adjust, ptr @trace_event_type_funcs_kyber_adjust, ptr @print_fmt_kyber_adjust, ptr @trace_event_fields_kyber_throttled, ptr @trace_event_type_funcs_kyber_throttled, ptr @print_fmt_kyber_throttled, ptr @kyber_sched, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @kyber_sched_attrs, ptr @.str.16, ptr @kyber_queue_debugfs_attrs, ptr @kyber_hctx_debugfs_attrs, ptr @kyber_queue_data_alloc.__key, ptr @.str.17, ptr @kyber_batch_size, ptr @kyber_domain_names, ptr @kyber_latency_type_names, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @kyber_init_hctx.__key, ptr @.str.28, ptr @kyber_ctx_queue_init.__key, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @kyber_read_rqs_seq_ops, ptr @.str.41, ptr @.str.42, ptr @kyber_write_rqs_seq_ops, ptr @.str.43, ptr @.str.44, ptr @kyber_discard_rqs_seq_ops, ptr @.str.45, ptr @.str.46, ptr @kyber_other_rqs_seq_ops, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @switch.table.kyber_bio_merge, ptr @switch.table.kyber_finish_request, ptr @switch.table.kyber_insert_requests], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__kyber__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_kyber_latency to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_kyber_latency to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_kyber_latency to i32), i32 211, i32 256, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_kyber_latency to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_kyber_adjust to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_kyber_adjust to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_kyber_adjust to i32), i32 126, i32 160, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_kyber_adjust to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_kyber_throttled to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_kyber_throttled to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_kyber_throttled to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_kyber_throttled to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_sched to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_sched_attrs to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_queue_debugfs_attrs to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_hctx_debugfs_attrs to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_queue_data_alloc.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_batch_size to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_domain_names to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_latency_type_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_init_hctx.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_ctx_queue_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_read_rqs_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_write_rqs_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_discard_rqs_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kyber_other_rqs_seq_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kyber_bio_merge to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kyber_finish_request to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.kyber_insert_requests to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kyber_latency(ptr nocapture readnone %__data, i32 noundef %dev, ptr noundef %domain, ptr noundef %type, i32 noundef %percentile, i32 noundef %numerator, i32 noundef %denominator, i32 noundef %samples) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_latency, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %dev, ptr noundef %domain, ptr noundef %type, i32 noundef %percentile, i32 noundef %numerator, i32 noundef %denominator, i32 noundef %samples) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kyber_adjust(ptr nocapture readnone %__data, i32 noundef %dev, ptr noundef %domain, i32 noundef %depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_adjust, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %dev, ptr noundef %domain, i32 noundef %depth) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_kyber_throttled(ptr nocapture readnone %__data, i32 noundef %dev, ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_throttled, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

do.body2:                                         ; preds = %do.body2.do.body2_crit_edge, %entry.do.body2_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body2.do.body2_crit_edge ], [ %0, %entry.do.body2_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i32 noundef %dev, ptr noundef %domain) #17
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kyber_latency(ptr noundef %__data, i32 noundef %dev, ptr noundef %domain, ptr noundef %type, i32 noundef %percentile, i32 noundef %numerator, i32 noundef %denominator, i32 noundef %samples) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !178

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !179

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 44) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev6 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dev, ptr %dev6, align 4
  %domain7 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call3, i32 0, i32 2
  %call8 = call i32 @strlcpy(ptr noundef %domain7, ptr noundef %domain, i32 noundef 16) #17
  %type9 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call3, i32 0, i32 3
  %call11 = call i32 @strlcpy(ptr noundef %type9, ptr noundef %type, i32 noundef 8) #17
  %conv = trunc i32 %percentile to i8
  %percentile12 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call3, i32 0, i32 4
  %4 = ptrtoint ptr %percentile12 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv, ptr %percentile12, align 4
  %conv13 = trunc i32 %numerator to i8
  %numerator14 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call3, i32 0, i32 5
  %5 = ptrtoint ptr %numerator14 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv13, ptr %numerator14, align 1
  %conv15 = trunc i32 %denominator to i8
  %denominator16 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call3, i32 0, i32 6
  %6 = ptrtoint ptr %denominator16 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv15, ptr %denominator16, align 2
  %samples17 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call3, i32 0, i32 7
  %7 = ptrtoint ptr %samples17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %samples, ptr %samples17, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_kyber_latency(ptr noundef %__data, i32 noundef %dev, ptr noundef %domain, ptr noundef %type, i32 noundef %percentile, i32 noundef %numerator, i32 noundef %denominator, i32 noundef %samples) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !180
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !168) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dev17 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dev, ptr %dev17, align 4
  %domain18 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call13, i32 0, i32 2
  %call19 = call i32 @strlcpy(ptr noundef %domain18, ptr noundef %domain, i32 noundef 16) #17
  %type20 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call13, i32 0, i32 3
  %call22 = call i32 @strlcpy(ptr noundef %type20, ptr noundef %type, i32 noundef 8) #17
  %conv = trunc i32 %percentile to i8
  %percentile23 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call13, i32 0, i32 4
  %28 = ptrtoint ptr %percentile23 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv, ptr %percentile23, align 4
  %conv24 = trunc i32 %numerator to i8
  %numerator25 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call13, i32 0, i32 5
  %29 = ptrtoint ptr %numerator25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv24, ptr %numerator25, align 1
  %conv26 = trunc i32 %denominator to i8
  %denominator27 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call13, i32 0, i32 6
  %30 = ptrtoint ptr %denominator27 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv26, ptr %denominator27, align 2
  %samples28 = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %call13, i32 0, i32 7
  %31 = ptrtoint ptr %samples28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %samples, ptr %samples28, align 4
  %32 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rctx, align 4
  %34 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %33, ptr noundef %__data, i64 noundef 1, ptr noundef %35, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kyber_adjust(ptr noundef %__data, i32 noundef %dev, ptr noundef %domain, i32 noundef %depth) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !178

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !179

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev6 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dev, ptr %dev6, align 4
  %domain7 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %call3, i32 0, i32 2
  %call8 = call i32 @strlcpy(ptr noundef %domain7, ptr noundef %domain, i32 noundef 16) #17
  %depth9 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %call3, i32 0, i32 3
  %4 = ptrtoint ptr %depth9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %depth, ptr %depth9, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_kyber_adjust(ptr noundef %__data, i32 noundef %dev, ptr noundef %domain, i32 noundef %depth) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !180
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !168) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dev17 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dev, ptr %dev17, align 4
  %domain18 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %call13, i32 0, i32 2
  %call19 = call i32 @strlcpy(ptr noundef %domain18, ptr noundef %domain, i32 noundef 16) #17
  %depth20 = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %call13, i32 0, i32 3
  %28 = ptrtoint ptr %depth20 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %depth, ptr %depth20, align 4
  %29 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rctx, align 4
  %31 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %30, ptr noundef %__data, i64 noundef 1, ptr noundef %32, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_kyber_throttled(ptr noundef %__data, i32 noundef %dev, ptr noundef %domain) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #17
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !178

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !179

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #17
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 28) #17
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %dev6 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %dev6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %dev, ptr %dev6, align 4
  %domain7 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %call3, i32 0, i32 2
  %call8 = call i32 @strlcpy(ptr noundef %domain7, ptr noundef %domain, i32 noundef 16) #17
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_kyber_throttled(ptr noundef %__data, i32 noundef %dev, ptr noundef %domain) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #17
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #17
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !180
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add = add i32 %10, %4
  %11 = inttoptr i32 %add to ptr
  %prog_array.i = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 11
  %12 = ptrtoint ptr %prog_array.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %prog_array.i, align 4
  %tobool.i.not = icmp eq ptr %13, null
  br i1 %tobool.i.not, label %land.lhs.true7, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 28, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #17
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #17
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #17
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !168) #17
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %dev17 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %dev17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %dev, ptr %dev17, align 4
  %domain18 = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %call13, i32 0, i32 2
  %call19 = call i32 @strlcpy(ptr noundef %domain18, ptr noundef %domain, i32 noundef 16) #17
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 28, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_kyber_latency(ptr noundef %__data, i32 noundef %dev, ptr noundef %domain, ptr noundef %type, i32 noundef %percentile, i32 noundef %numerator, i32 noundef %denominator, i32 noundef %samples) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i32 %dev to i64
  %0 = ptrtoint ptr %domain to i32
  %conv4 = zext i32 %0 to i64
  %1 = ptrtoint ptr %type to i32
  %conv8 = zext i32 %1 to i64
  %conv12 = zext i32 %percentile to i64
  %conv16 = zext i32 %numerator to i64
  %conv20 = zext i32 %denominator to i64
  %conv24 = zext i32 %samples to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_kyber_adjust(ptr noundef %__data, i32 noundef %dev, ptr noundef %domain, i32 noundef %depth) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i32 %dev to i64
  %0 = ptrtoint ptr %domain to i32
  %conv4 = zext i32 %0 to i64
  %conv8 = zext i32 %depth to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_kyber_throttled(ptr noundef %__data, i32 noundef %dev, ptr noundef %domain) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %conv = zext i32 %dev to i64
  %0 = ptrtoint ptr %domain to i32
  %conv4 = zext i32 %0 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #17
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kyber_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @elv_unregister(ptr noundef nonnull @kyber_sched) #17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @elv_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @elv_register(ptr noundef nonnull @kyber_sched) #17
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kyber_latency(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %domain = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %1, i32 0, i32 2
  %type = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %1, i32 0, i32 3
  %percentile = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %percentile to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %percentile, align 4
  %conv = zext i8 %5 to i32
  %numerator = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %numerator to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %numerator, align 1
  %conv3 = zext i8 %7 to i32
  %denominator = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %denominator to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %denominator, align 2
  %conv4 = zext i8 %9 to i32
  %samples = getelementptr inbounds %struct.trace_event_raw_kyber_latency, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %samples to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %samples, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.12, i32 noundef %shr, i32 noundef %and, ptr noundef %domain, ptr noundef %type, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4, i32 noundef %11) #17
  %call5 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kyber_adjust(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %domain = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %1, i32 0, i32 2
  %depth = getelementptr inbounds %struct.trace_event_raw_kyber_adjust, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %depth, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.14, i32 noundef %shr, i32 noundef %and, ptr noundef %domain, i32 noundef %5) #17
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_kyber_throttled(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %dev = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev, align 4
  %shr = lshr i32 %3, 20
  %and = and i32 %3, 1048575
  %domain = getelementptr inbounds %struct.trace_event_raw_kyber_throttled, ptr %1, i32 0, i32 2
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.15, i32 noundef %shr, i32 noundef %and, ptr noundef %domain) #17
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #17
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run7(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_init_sched(ptr noundef %q, ptr noundef %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @elevator_alloc(ptr noundef %q, ptr noundef %e) #17
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %node.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 480) #20
  %tobool.not.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end.err.i_crit_edge, label %if.end.i

if.end.err.i_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err.i

if.end.i:                                         ; preds = %if.end
  %1 = ptrtoint ptr %call.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %q, ptr %call.i.i.i.i, align 8
  %disk.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 15
  %2 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk.i, align 8
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 8
  %shl.i.i = shl i32 %5, 20
  %first_minor.i.i = getelementptr inbounds %struct.gendisk, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %first_minor.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_minor.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %7
  %dev.i = getelementptr inbounds %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or.i.i, ptr %dev.i, align 4
  %call3.i = tail call noalias ptr @__alloc_percpu_gfp(i32 noundef 192, i32 noundef 4, i32 noundef 3520) #21
  %cpu_latency.i = getelementptr inbounds %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %cpu_latency.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call3.i, ptr %cpu_latency.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.end.i.err_kqd.i_crit_edge, label %do.body.i

if.end.i.err_kqd.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_kqd.i

do.body.i:                                        ; preds = %if.end.i
  %timer.i = getelementptr inbounds %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 5
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @kyber_timer_fn, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @kyber_queue_data_alloc.__key) #17
  %arrayidx68.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 0
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %node.i, align 8
  %call71.i = tail call i32 @sbitmap_queue_init_node(ptr noundef %arrayidx68.i, i32 noundef 256, i32 noundef -1, i1 noundef zeroext false, i32 noundef 3264, i32 noundef %11) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.i)
  %tobool72.not.i = icmp eq i32 %call71.i, 0
  br i1 %tobool72.not.i, label %for.inc.i, label %do.body.i.err_buckets.i_crit_edge

do.body.i.err_buckets.i_crit_edge:                ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_buckets.i

while.body.i:                                     ; preds = %for.inc.2.i.while.body.i_crit_edge, %for.inc.1.i.while.body.i_crit_edge, %for.inc.i.while.body.i_crit_edge
  %i.0122.lcssa.ph.i = phi i32 [ 2, %for.inc.2.i.while.body.i_crit_edge ], [ 1, %for.inc.1.i.while.body.i_crit_edge ], [ 0, %for.inc.i.while.body.i_crit_edge ]
  %call71.lcssa.ph.i = phi i32 [ %call71.3.i, %for.inc.2.i.while.body.i_crit_edge ], [ %call71.2.i, %for.inc.1.i.while.body.i_crit_edge ], [ %call71.1.i, %for.inc.i.while.body.i_crit_edge ]
  %arrayidx76.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 %i.0122.lcssa.ph.i
  %ws.i.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 %i.0122.lcssa.ph.i, i32 3
  %12 = ptrtoint ptr %ws.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ws.i.i, align 4
  tail call void @kfree(ptr noundef %13) #17
  %alloc_hint.i.i.i = getelementptr inbounds %struct.sbitmap, ptr %arrayidx76.i, i32 0, i32 5
  %14 = ptrtoint ptr %alloc_hint.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alloc_hint.i.i.i, align 4
  tail call void @free_percpu(ptr noundef %15) #17
  %map.i.i.i = getelementptr inbounds %struct.sbitmap, ptr %arrayidx76.i, i32 0, i32 4
  %16 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %map.i.i.i, align 4
  tail call void @kfree(ptr noundef %17) #17
  %18 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %map.i.i.i, align 4
  br i1 %tobool72.not.1.i, label %while.body.i.1, label %while.body.i.err_buckets.i_crit_edge

while.body.i.err_buckets.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_buckets.i

while.body.i.1:                                   ; preds = %while.body.i
  %dec.i = add nsw i32 %i.0122.lcssa.ph.i, -1
  %arrayidx76.i.1 = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 %dec.i
  %ws.i.i.1 = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 %dec.i, i32 3
  %19 = ptrtoint ptr %ws.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ws.i.i.1, align 4
  tail call void @kfree(ptr noundef %20) #17
  %alloc_hint.i.i.i.1 = getelementptr inbounds %struct.sbitmap, ptr %arrayidx76.i.1, i32 0, i32 5
  %21 = ptrtoint ptr %alloc_hint.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %alloc_hint.i.i.i.1, align 4
  tail call void @free_percpu(ptr noundef %22) #17
  %map.i.i.i.1 = getelementptr inbounds %struct.sbitmap, ptr %arrayidx76.i.1, i32 0, i32 4
  %23 = ptrtoint ptr %map.i.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %map.i.i.i.1, align 4
  tail call void @kfree(ptr noundef %24) #17
  %25 = ptrtoint ptr %map.i.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %map.i.i.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp74.not.i.1 = icmp eq i32 %dec.i, 0
  br i1 %cmp74.not.i.1, label %while.body.i.1.err_buckets.i_crit_edge, label %while.body.i.2

while.body.i.1.err_buckets.i_crit_edge:           ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_buckets.i

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #19
  %dec.i.1 = add nsw i32 %i.0122.lcssa.ph.i, -2
  %arrayidx76.i.2 = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 %dec.i.1
  %ws.i.i.2 = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 %dec.i.1, i32 3
  %26 = ptrtoint ptr %ws.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ws.i.i.2, align 4
  tail call void @kfree(ptr noundef %27) #17
  %alloc_hint.i.i.i.2 = getelementptr inbounds %struct.sbitmap, ptr %arrayidx76.i.2, i32 0, i32 5
  %28 = ptrtoint ptr %alloc_hint.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %alloc_hint.i.i.i.2, align 4
  tail call void @free_percpu(ptr noundef %29) #17
  %map.i.i.i.2 = getelementptr inbounds %struct.sbitmap, ptr %arrayidx76.i.2, i32 0, i32 4
  %30 = ptrtoint ptr %map.i.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map.i.i.i.2, align 4
  tail call void @kfree(ptr noundef %31) #17
  %32 = ptrtoint ptr %map.i.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %map.i.i.i.2, align 4
  br label %err_buckets.i

for.inc.i:                                        ; preds = %do.body.i
  %arrayidx68.1.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 1
  %33 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %node.i, align 8
  %call71.1.i = tail call i32 @sbitmap_queue_init_node(ptr noundef %arrayidx68.1.i, i32 noundef 128, i32 noundef -1, i1 noundef zeroext false, i32 noundef 3264, i32 noundef %34) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.1.i)
  %tobool72.not.1.i = icmp eq i32 %call71.1.i, 0
  br i1 %tobool72.not.1.i, label %for.inc.1.i, label %for.inc.i.while.body.i_crit_edge

for.inc.i.while.body.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %arrayidx68.2.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 2
  %35 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %node.i, align 8
  %call71.2.i = tail call i32 @sbitmap_queue_init_node(ptr noundef %arrayidx68.2.i, i32 noundef 64, i32 noundef -1, i1 noundef zeroext false, i32 noundef 3264, i32 noundef %36) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.2.i)
  %tobool72.not.2.i = icmp eq i32 %call71.2.i, 0
  br i1 %tobool72.not.2.i, label %for.inc.2.i, label %for.inc.1.i.while.body.i_crit_edge

for.inc.1.i.while.body.i_crit_edge:               ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %arrayidx68.3.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 2, i32 3
  %37 = ptrtoint ptr %node.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %node.i, align 8
  %call71.3.i = tail call i32 @sbitmap_queue_init_node(ptr noundef %arrayidx68.3.i, i32 noundef 16, i32 noundef -1, i1 noundef zeroext false, i32 noundef 3264, i32 noundef %38) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71.3.i)
  %tobool72.not.3.i = icmp eq i32 %call71.3.i, 0
  br i1 %tobool72.not.3.i, label %for.inc.3.i, label %for.inc.2.i.while.body.i_crit_edge

for.inc.2.i.while.body.i_crit_edge:               ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx81.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 8, i32 0
  %39 = ptrtoint ptr %arrayidx81.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %arrayidx81.i, align 4
  %arrayidx83.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 9, i32 0
  %40 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 2000000, ptr %arrayidx83.i, align 8
  %arrayidx81.1.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 8, i32 1
  %41 = ptrtoint ptr %arrayidx81.1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %arrayidx81.1.i, align 8
  %arrayidx83.1.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 9, i32 1
  %42 = ptrtoint ptr %arrayidx83.1.i to i32
  call void @__asan_store8_noabort(i32 %42)
  store i64 10000000, ptr %arrayidx83.1.i, align 8
  %arrayidx81.2.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 8, i32 2
  %43 = ptrtoint ptr %arrayidx81.2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %arrayidx81.2.i, align 4
  %arrayidx83.2.i = getelementptr %struct.kyber_queue_data, ptr %call.i.i.i.i, i32 0, i32 9, i32 2
  %44 = ptrtoint ptr %arrayidx83.2.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 5000000000, ptr %arrayidx83.2.i, align 8
  br label %kyber_queue_data_alloc.exit

err_buckets.i:                                    ; preds = %while.body.i.2, %while.body.i.1.err_buckets.i_crit_edge, %while.body.i.err_buckets.i_crit_edge, %do.body.i.err_buckets.i_crit_edge
  %call71.lcssa132.i = phi i32 [ %call71.i, %do.body.i.err_buckets.i_crit_edge ], [ %call71.lcssa.ph.i, %while.body.i.2 ], [ %call71.lcssa.ph.i, %while.body.i.1.err_buckets.i_crit_edge ], [ %call71.lcssa.ph.i, %while.body.i.err_buckets.i_crit_edge ]
  %45 = ptrtoint ptr %cpu_latency.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cpu_latency.i, align 4
  tail call void @free_percpu(ptr noundef %46) #17
  br label %err_kqd.i

err_kqd.i:                                        ; preds = %err_buckets.i, %if.end.i.err_kqd.i_crit_edge
  %ret.0.i = phi i32 [ %call71.lcssa132.i, %err_buckets.i ], [ -12, %if.end.i.err_kqd.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call.i.i.i.i) #17
  br label %err.i

err.i:                                            ; preds = %err_kqd.i, %if.end.err.i_crit_edge
  %ret.1.i = phi i32 [ %ret.0.i, %err_kqd.i ], [ -12, %if.end.err.i_crit_edge ]
  %47 = inttoptr i32 %ret.1.i to ptr
  br label %kyber_queue_data_alloc.exit

kyber_queue_data_alloc.exit:                      ; preds = %err.i, %for.inc.3.i
  %retval.0.i = phi ptr [ %47, %err.i ], [ %call.i.i.i.i, %for.inc.3.i ]
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %kyber_queue_data_alloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  %kobj = getelementptr inbounds %struct.elevator_queue, ptr %call, i32 0, i32 2
  tail call void @kobject_put(ptr noundef %kobj) #17
  %48 = ptrtoint ptr %retval.0.i to i32
  br label %cleanup

if.end5:                                          ; preds = %kyber_queue_data_alloc.exit
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @blk_stat_enable_accounting(ptr noundef %q) #17
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %call, i32 0, i32 1
  %49 = ptrtoint ptr %elevator_data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %retval.0.i, ptr %elevator_data, align 4
  %elevator = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 1
  %50 = ptrtoint ptr %elevator to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call, ptr %elevator, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %48, %if.then3 ], [ 0, %if.end5 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_exit_sched(ptr nocapture noundef readonly %e) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %timer = getelementptr inbounds %struct.kyber_queue_data, ptr %1, i32 0, i32 5
  %call = tail call i32 @del_timer_sync(ptr noundef %timer) #17
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  tail call void @blk_stat_disable_accounting(ptr noundef %3) #17
  %ws.i = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %ws.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ws.i, align 4
  tail call void @kfree(ptr noundef %5) #17
  %alloc_hint.i.i = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 5
  %6 = ptrtoint ptr %alloc_hint.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alloc_hint.i.i, align 4
  tail call void @free_percpu(ptr noundef %7) #17
  %map.i.i = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 0, i32 0, i32 4
  %8 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %map.i.i, align 4
  tail call void @kfree(ptr noundef %9) #17
  %10 = ptrtoint ptr %map.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %map.i.i, align 4
  %ws.i.1 = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 1, i32 3
  %11 = ptrtoint ptr %ws.i.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ws.i.1, align 4
  tail call void @kfree(ptr noundef %12) #17
  %alloc_hint.i.i.1 = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 5
  %13 = ptrtoint ptr %alloc_hint.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %alloc_hint.i.i.1, align 4
  tail call void @free_percpu(ptr noundef %14) #17
  %map.i.i.1 = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 1, i32 0, i32 4
  %15 = ptrtoint ptr %map.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %map.i.i.1, align 4
  tail call void @kfree(ptr noundef %16) #17
  %17 = ptrtoint ptr %map.i.i.1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %map.i.i.1, align 4
  %ws.i.2 = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 2, i32 3
  %18 = ptrtoint ptr %ws.i.2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ws.i.2, align 4
  tail call void @kfree(ptr noundef %19) #17
  %alloc_hint.i.i.2 = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 2, i32 0, i32 5
  %20 = ptrtoint ptr %alloc_hint.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %alloc_hint.i.i.2, align 4
  tail call void @free_percpu(ptr noundef %21) #17
  %map.i.i.2 = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 2, i32 0, i32 4
  %22 = ptrtoint ptr %map.i.i.2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %map.i.i.2, align 4
  tail call void @kfree(ptr noundef %23) #17
  %24 = ptrtoint ptr %map.i.i.2 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %map.i.i.2, align 4
  %ws.i.3 = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 3, i32 3
  %25 = ptrtoint ptr %ws.i.3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ws.i.3, align 4
  tail call void @kfree(ptr noundef %26) #17
  %alloc_hint.i.i.3 = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 5
  %27 = ptrtoint ptr %alloc_hint.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %alloc_hint.i.i.3, align 4
  tail call void @free_percpu(ptr noundef %28) #17
  %map.i.i.3 = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 2, i32 3, i32 0, i32 4
  %29 = ptrtoint ptr %map.i.i.3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %map.i.i.3, align 4
  tail call void @kfree(ptr noundef %30) #17
  %31 = ptrtoint ptr %map.i.i.3 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %map.i.i.3, align 4
  %cpu_latency = getelementptr inbounds %struct.kyber_queue_data, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %cpu_latency to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cpu_latency, align 4
  tail call void @free_percpu(ptr noundef %33) #17
  tail call void @kfree(ptr noundef %1) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_init_hctx(ptr noundef %hctx, i32 noundef %hctx_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %numa_node = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 23
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 312) #20
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_ctx = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 14
  %1 = ptrtoint ptr %nr_ctx to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nr_ctx, align 2
  %conv = zext i16 %2 to i32
  %3 = shl nuw nsw i32 %conv, 7
  %call.i.i93 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %3, i32 noundef 3264) #21
  %kcqs = getelementptr inbounds %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %kcqs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i.i93, ptr %kcqs, align 4
  %tobool4.not = icmp eq ptr %call.i.i93, null
  br i1 %tobool4.not, label %if.end.err_khd_crit_edge, label %for.cond.preheader

if.end.err_khd_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_khd

for.cond.preheader:                               ; preds = %if.end
  %5 = ptrtoint ptr %nr_ctx to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nr_ctx, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp100.not = icmp eq i16 %6, 0
  br i1 %cmp100.not, label %for.cond.preheader.for.cond11.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond11.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond11.preheader

for.cond11.preheader:                             ; preds = %for.body.for.cond11.preheader_crit_edge, %for.cond.preheader.for.cond11.preheader_crit_edge
  %arrayidx15 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 0
  %7 = ptrtoint ptr %nr_ctx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nr_ctx, align 2
  %conv17 = zext i16 %8 to i32
  %9 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %numa_node, align 128
  %call19 = tail call i32 @sbitmap_init_node(ptr noundef %arrayidx15, i32 noundef %conv17, i32 noundef 3, i32 noundef 3264, i32 noundef %10, i1 noundef zeroext false, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.inc27, label %for.cond11.preheader.err_kcqs_crit_edge

for.cond11.preheader.err_kcqs_crit_edge:          ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_kcqs

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0101 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %11 = ptrtoint ptr %kcqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kcqs, align 4
  %arrayidx = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %i.0101
  tail call void @__raw_spin_lock_init(ptr noundef %arrayidx, ptr noundef nonnull @.str.29, ptr noundef nonnull @kyber_ctx_queue_init.__key, i16 noundef signext 3) #17
  %arrayidx.i = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %i.0101, i32 1, i32 0
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %arrayidx.i, ptr %arrayidx.i, align 4
  %prev.i.i = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %i.0101, i32 1, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %arrayidx.i, ptr %prev.i.i, align 4
  %arrayidx.1.i = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %i.0101, i32 1, i32 1
  %15 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %arrayidx.1.i, ptr %arrayidx.1.i, align 4
  %prev.i.1.i = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %i.0101, i32 1, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %arrayidx.1.i, ptr %prev.i.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %i.0101, i32 1, i32 2
  %17 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %arrayidx.2.i, ptr %arrayidx.2.i, align 4
  %prev.i.2.i = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %i.0101, i32 1, i32 2, i32 1
  %18 = ptrtoint ptr %prev.i.2.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %arrayidx.2.i, ptr %prev.i.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %i.0101, i32 1, i32 3
  %19 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %arrayidx.3.i, ptr %arrayidx.3.i, align 4
  %prev.i.3.i = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %i.0101, i32 1, i32 3, i32 1
  %20 = ptrtoint ptr %prev.i.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %arrayidx.3.i, ptr %prev.i.3.i, align 4
  %inc = add nuw nsw i32 %i.0101, 1
  %21 = ptrtoint ptr %nr_ctx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nr_ctx, align 2
  %conv8 = zext i16 %22 to i32
  %cmp = icmp ult i32 %inc, %conv8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond11.preheader_crit_edge

for.body.for.cond11.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond11.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

while.body.1:                                     ; preds = %while.body.preheader
  %dec = add nsw i32 %dec106.ph, -1
  %alloc_hint.i.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 %dec, i32 5
  %23 = ptrtoint ptr %alloc_hint.i.1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %alloc_hint.i.1, align 4
  tail call void @free_percpu(ptr noundef %24) #17
  %map.i.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 %dec, i32 4
  %25 = ptrtoint ptr %map.i.1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %map.i.1, align 8
  tail call void @kfree(ptr noundef %26) #17
  %27 = ptrtoint ptr %map.i.1 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %map.i.1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp22.not.1 = icmp eq i32 %dec, 0
  br i1 %cmp22.not.1, label %while.body.1.err_kcqs_crit_edge, label %while.body.2

while.body.1.err_kcqs_crit_edge:                  ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_kcqs

while.body.2:                                     ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #19
  %dec.1 = add nsw i32 %dec106.ph, -2
  %alloc_hint.i.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 %dec.1, i32 5
  %28 = ptrtoint ptr %alloc_hint.i.2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %alloc_hint.i.2, align 4
  tail call void @free_percpu(ptr noundef %29) #17
  %map.i.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 %dec.1, i32 4
  %30 = ptrtoint ptr %map.i.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %map.i.2, align 8
  tail call void @kfree(ptr noundef %31) #17
  %32 = ptrtoint ptr %map.i.2 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %map.i.2, align 8
  br label %err_kcqs

for.inc27:                                        ; preds = %for.cond11.preheader
  %arrayidx15.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 1
  %33 = ptrtoint ptr %nr_ctx to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %nr_ctx, align 2
  %conv17.1 = zext i16 %34 to i32
  %35 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %numa_node, align 128
  %call19.1 = tail call i32 @sbitmap_init_node(ptr noundef %arrayidx15.1, i32 noundef %conv17.1, i32 noundef 3, i32 noundef 3264, i32 noundef %36, i1 noundef zeroext false, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %tobool20.not.1 = icmp eq i32 %call19.1, 0
  br i1 %tobool20.not.1, label %for.inc27.1, label %for.inc27.while.body.preheader_crit_edge

for.inc27.while.body.preheader_crit_edge:         ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.preheader

while.body.preheader:                             ; preds = %for.inc27.2.while.body.preheader_crit_edge, %for.inc27.1.while.body.preheader_crit_edge, %for.inc27.while.body.preheader_crit_edge
  %dec106.ph = phi i32 [ 0, %for.inc27.while.body.preheader_crit_edge ], [ 1, %for.inc27.1.while.body.preheader_crit_edge ], [ 2, %for.inc27.2.while.body.preheader_crit_edge ]
  %alloc_hint.i = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 %dec106.ph, i32 5
  %37 = ptrtoint ptr %alloc_hint.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %alloc_hint.i, align 4
  tail call void @free_percpu(ptr noundef %38) #17
  %map.i = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 %dec106.ph, i32 4
  %39 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %map.i, align 8
  tail call void @kfree(ptr noundef %40) #17
  %41 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %map.i, align 8
  br i1 %tobool20.not.1, label %while.body.1, label %while.body.preheader.err_kcqs_crit_edge

while.body.preheader.err_kcqs_crit_edge:          ; preds = %while.body.preheader
  call void @__sanitizer_cov_trace_pc() #19
  br label %err_kcqs

for.inc27.1:                                      ; preds = %for.inc27
  %arrayidx15.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 2
  %42 = ptrtoint ptr %nr_ctx to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %nr_ctx, align 2
  %conv17.2 = zext i16 %43 to i32
  %44 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %numa_node, align 128
  %call19.2 = tail call i32 @sbitmap_init_node(ptr noundef %arrayidx15.2, i32 noundef %conv17.2, i32 noundef 3, i32 noundef 3264, i32 noundef %45, i1 noundef zeroext false, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2)
  %tobool20.not.2 = icmp eq i32 %call19.2, 0
  br i1 %tobool20.not.2, label %for.inc27.2, label %for.inc27.1.while.body.preheader_crit_edge

for.inc27.1.while.body.preheader_crit_edge:       ; preds = %for.inc27.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.preheader

for.inc27.2:                                      ; preds = %for.inc27.1
  %arrayidx15.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 5, i32 3
  %46 = ptrtoint ptr %nr_ctx to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %nr_ctx, align 2
  %conv17.3 = zext i16 %47 to i32
  %48 = ptrtoint ptr %numa_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %numa_node, align 128
  %call19.3 = tail call i32 @sbitmap_init_node(ptr noundef %arrayidx15.3, i32 noundef %conv17.3, i32 noundef 3, i32 noundef 3264, i32 noundef %49, i1 noundef zeroext false, i1 noundef zeroext false) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.3)
  %tobool20.not.3 = icmp eq i32 %call19.3, 0
  br i1 %tobool20.not.3, label %for.inc27.3, label %for.inc27.2.while.body.preheader_crit_edge

for.inc27.2.while.body.preheader_crit_edge:       ; preds = %for.inc27.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.preheader

for.inc27.3:                                      ; preds = %for.inc27.2
  call void @__sanitizer_cov_trace_pc() #19
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i.i, ptr noundef nonnull @.str.28, ptr noundef nonnull @kyber_init_hctx.__key, i16 noundef signext 3) #17
  %arrayidx35 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 1, i32 0
  %50 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %arrayidx35, ptr %arrayidx35, align 4
  %prev.i = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 1, i32 0, i32 1
  %51 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx35, ptr %prev.i, align 8
  %arrayidx36 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 0
  %52 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %arrayidx36, align 8
  %wait = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1
  %53 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %wait, align 4
  %private.i = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1, i32 1
  %func1.i = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1, i32 2
  %54 = ptrtoint ptr %func1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @kyber_domain_wake, ptr %func1.i, align 4
  %55 = ptrtoint ptr %private.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %hctx, ptr %private.i, align 8
  %entry45 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1, i32 3
  %56 = ptrtoint ptr %entry45 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %entry45, ptr %entry45, align 8
  %prev.i94 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 0, i32 1, i32 3, i32 1
  %57 = ptrtoint ptr %prev.i94 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %entry45, ptr %prev.i94, align 4
  %arrayidx46 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 8, i32 0
  %call.i.i92 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx46, i32 noundef 4) #17
  %58 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile i32 0, ptr %arrayidx46, align 8
  %arrayidx35.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %arrayidx35.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %arrayidx35.1, ptr %arrayidx35.1, align 4
  %prev.i.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 1, i32 1, i32 1
  %60 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %arrayidx35.1, ptr %prev.i.1, align 8
  %arrayidx36.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 1
  %61 = ptrtoint ptr %arrayidx36.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %arrayidx36.1, align 8
  %wait.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 1, i32 1
  %62 = ptrtoint ptr %wait.1 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %wait.1, align 4
  %private.i.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 1, i32 1, i32 1
  %func1.i.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 1, i32 1, i32 2
  %63 = ptrtoint ptr %func1.i.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @kyber_domain_wake, ptr %func1.i.1, align 4
  %64 = ptrtoint ptr %private.i.1 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %hctx, ptr %private.i.1, align 8
  %entry45.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 1, i32 1, i32 3
  %65 = ptrtoint ptr %entry45.1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %entry45.1, ptr %entry45.1, align 8
  %prev.i94.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 1, i32 1, i32 3, i32 1
  %66 = ptrtoint ptr %prev.i94.1 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %entry45.1, ptr %prev.i94.1, align 4
  %arrayidx46.1 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 8, i32 1
  %call.i.i92.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx46.1, i32 noundef 4) #17
  %67 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %arrayidx46.1, align 4
  %arrayidx35.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 1, i32 2
  %68 = ptrtoint ptr %arrayidx35.2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %arrayidx35.2, ptr %arrayidx35.2, align 4
  %prev.i.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 1, i32 2, i32 1
  %69 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %arrayidx35.2, ptr %prev.i.2, align 8
  %arrayidx36.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 2
  %70 = ptrtoint ptr %arrayidx36.2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr null, ptr %arrayidx36.2, align 8
  %wait.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 2, i32 1
  %71 = ptrtoint ptr %wait.2 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %wait.2, align 4
  %private.i.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 2, i32 1, i32 1
  %func1.i.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 2, i32 1, i32 2
  %72 = ptrtoint ptr %func1.i.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @kyber_domain_wake, ptr %func1.i.2, align 4
  %73 = ptrtoint ptr %private.i.2 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %hctx, ptr %private.i.2, align 8
  %entry45.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 2, i32 1, i32 3
  %74 = ptrtoint ptr %entry45.2 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %entry45.2, ptr %entry45.2, align 8
  %prev.i94.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 2, i32 1, i32 3, i32 1
  %75 = ptrtoint ptr %prev.i94.2 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %entry45.2, ptr %prev.i94.2, align 4
  %arrayidx46.2 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 8, i32 2
  %call.i.i92.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx46.2, i32 noundef 4) #17
  %76 = ptrtoint ptr %arrayidx46.2 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile i32 0, ptr %arrayidx46.2, align 8
  %arrayidx35.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 1, i32 3
  %77 = ptrtoint ptr %arrayidx35.3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %arrayidx35.3, ptr %arrayidx35.3, align 4
  %prev.i.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 1, i32 3, i32 1
  %78 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %arrayidx35.3, ptr %prev.i.3, align 8
  %arrayidx36.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 3
  %79 = ptrtoint ptr %arrayidx36.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr null, ptr %arrayidx36.3, align 8
  %wait.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 3, i32 1
  %80 = ptrtoint ptr %wait.3 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %wait.3, align 4
  %private.i.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 3, i32 1, i32 1
  %func1.i.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 3, i32 1, i32 2
  %81 = ptrtoint ptr %func1.i.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @kyber_domain_wake, ptr %func1.i.3, align 4
  %82 = ptrtoint ptr %private.i.3 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %hctx, ptr %private.i.3, align 8
  %entry45.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 3, i32 1, i32 3
  %83 = ptrtoint ptr %entry45.3 to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %entry45.3, ptr %entry45.3, align 8
  %prev.i94.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 6, i32 3, i32 1, i32 3, i32 1
  %84 = ptrtoint ptr %prev.i94.3 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %entry45.3, ptr %prev.i94.3, align 4
  %arrayidx46.3 = getelementptr %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 8, i32 3
  %call.i.i92.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx46.3, i32 noundef 4) #17
  %85 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile i32 0, ptr %arrayidx46.3, align 4
  %cur_domain = getelementptr inbounds %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 2
  %86 = ptrtoint ptr %cur_domain to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 0, ptr %cur_domain, align 4
  %batching = getelementptr inbounds %struct.kyber_hctx_data, ptr %call.i.i, i32 0, i32 3
  %87 = ptrtoint ptr %batching to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %batching, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 6
  %88 = ptrtoint ptr %sched_data to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call.i.i, ptr %sched_data, align 4
  %queue.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %89 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %queue.i, align 8
  %elevator.i = getelementptr inbounds %struct.request_queue, ptr %90, i32 0, i32 1
  %91 = ptrtoint ptr %elevator.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %elevator.i, align 4
  %elevator_data.i = getelementptr inbounds %struct.elevator_queue, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %elevator_data.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %elevator_data.i, align 4
  %sched_tags.i = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 20
  %95 = ptrtoint ptr %sched_tags.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %sched_tags.i, align 4
  %bitmap_tags.i = getelementptr inbounds %struct.blk_mq_tags, ptr %96, i32 0, i32 3
  %shift1.i = getelementptr inbounds %struct.blk_mq_tags, ptr %96, i32 0, i32 3, i32 0, i32 1
  %97 = ptrtoint ptr %shift1.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %shift1.i, align 4
  %mul.i = shl i32 75, %98
  %div.i = udiv i32 %mul.i, 100
  %async_depth.i = getelementptr inbounds %struct.kyber_queue_data, ptr %94, i32 0, i32 3
  %99 = ptrtoint ptr %async_depth.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %div.i, ptr %async_depth.i, align 8
  tail call void @sbitmap_queue_min_shallow_depth(ptr noundef %bitmap_tags.i, i32 noundef %div.i) #17
  br label %cleanup

err_kcqs:                                         ; preds = %while.body.preheader.err_kcqs_crit_edge, %while.body.2, %while.body.1.err_kcqs_crit_edge, %for.cond11.preheader.err_kcqs_crit_edge
  %100 = ptrtoint ptr %kcqs to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %kcqs, align 4
  tail call void @kfree(ptr noundef %101) #17
  br label %err_khd

err_khd:                                          ; preds = %err_kcqs, %if.end.err_khd_crit_edge
  tail call void @kfree(ptr noundef nonnull %call.i.i) #17
  br label %cleanup

cleanup:                                          ; preds = %err_khd, %for.inc27.3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_khd ], [ 0, %for.inc27.3 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_exit_hctx(ptr nocapture noundef readonly %hctx, i32 noundef %hctx_idx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 6
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %alloc_hint.i = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 0, i32 5
  %2 = ptrtoint ptr %alloc_hint.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_hint.i, align 4
  tail call void @free_percpu(ptr noundef %3) #17
  %map.i = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 0, i32 4
  %4 = ptrtoint ptr %map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %map.i, align 4
  tail call void @kfree(ptr noundef %5) #17
  %6 = ptrtoint ptr %map.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %map.i, align 4
  %alloc_hint.i.1 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 1, i32 5
  %7 = ptrtoint ptr %alloc_hint.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %alloc_hint.i.1, align 4
  tail call void @free_percpu(ptr noundef %8) #17
  %map.i.1 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 1, i32 4
  %9 = ptrtoint ptr %map.i.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.i.1, align 4
  tail call void @kfree(ptr noundef %10) #17
  %11 = ptrtoint ptr %map.i.1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %map.i.1, align 4
  %alloc_hint.i.2 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 2, i32 5
  %12 = ptrtoint ptr %alloc_hint.i.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alloc_hint.i.2, align 4
  tail call void @free_percpu(ptr noundef %13) #17
  %map.i.2 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 2, i32 4
  %14 = ptrtoint ptr %map.i.2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %map.i.2, align 4
  tail call void @kfree(ptr noundef %15) #17
  %16 = ptrtoint ptr %map.i.2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %map.i.2, align 4
  %alloc_hint.i.3 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 3, i32 5
  %17 = ptrtoint ptr %alloc_hint.i.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %alloc_hint.i.3, align 4
  tail call void @free_percpu(ptr noundef %18) #17
  %map.i.3 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 3, i32 4
  %19 = ptrtoint ptr %map.i.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %map.i.3, align 4
  tail call void @kfree(ptr noundef %20) #17
  %21 = ptrtoint ptr %map.i.3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %map.i.3, align 4
  %kcqs = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %kcqs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %kcqs, align 4
  tail call void @kfree(ptr noundef %23) #17
  %24 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sched_data, align 4
  tail call void @kfree(ptr noundef %25) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_depth_updated(ptr nocapture noundef readonly %hctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %sched_tags = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 20
  %6 = ptrtoint ptr %sched_tags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sched_tags, align 4
  %bitmap_tags = getelementptr inbounds %struct.blk_mq_tags, ptr %7, i32 0, i32 3
  %shift1 = getelementptr inbounds %struct.blk_mq_tags, ptr %7, i32 0, i32 3, i32 0, i32 1
  %8 = ptrtoint ptr %shift1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift1, align 4
  %mul = shl i32 75, %9
  %div = udiv i32 %mul, 100
  %async_depth = getelementptr inbounds %struct.kyber_queue_data, ptr %5, i32 0, i32 3
  %10 = ptrtoint ptr %async_depth to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div, ptr %async_depth, align 8
  tail call void @sbitmap_queue_min_shallow_depth(ptr noundef %bitmap_tags, i32 noundef %div) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @kyber_bio_merge(ptr nocapture noundef readonly %q, ptr noundef %bio, i32 noundef %nr_segs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu.i, align 4
  %queue_ctx.i.i = getelementptr inbounds %struct.request_queue, ptr %q, i32 0, i32 6
  %4 = ptrtoint ptr %queue_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue_ctx.i.i, align 4
  %6 = ptrtoint ptr %5 to i32
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %3
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %8, %6
  %9 = inttoptr i32 %add.i.i to ptr
  %bi_opf = getelementptr inbounds %struct.bio, ptr %bio, i32 0, i32 2
  %10 = ptrtoint ptr %bi_opf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bi_opf, align 8
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i.i = icmp eq i32 %12, 0
  %and1.i.i = and i32 %11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %cmp.i.i = icmp eq i32 %and1.i.i, 0
  %spec.select.i.i = zext i1 %cmp.i.i to i32
  %type.0.i.i = select i1 %tobool.not.i.i, i32 %spec.select.i.i, i32 2
  %arrayidx.i = getelementptr %struct.blk_mq_ctx, ptr %9, i32 0, i32 3, i32 %type.0.i.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sched_data, align 4
  %kcqs = getelementptr inbounds %struct.kyber_hctx_data, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %kcqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %kcqs, align 4
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 13
  %19 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %type, align 4
  %idxprom = zext i16 %20 to i32
  %arrayidx = getelementptr %struct.blk_mq_ctx, ptr %9, i32 0, i32 2, i32 %idxprom
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx, align 2
  %23 = and i32 %11, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %switch.lookup, label %entry.kyber_sched_domain.exit_crit_edge

entry.kyber_sched_domain.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %kyber_sched_domain.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %sext = shl i32 %11, 24
  %25 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.kyber_bio_merge, i32 0, i32 %25
  %26 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %26)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %kyber_sched_domain.exit

kyber_sched_domain.exit:                          ; preds = %switch.lookup, %entry.kyber_sched_domain.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %entry.kyber_sched_domain.exit_crit_edge ]
  %idxprom2 = zext i16 %22 to i32
  %arrayidx3 = getelementptr %struct.kyber_ctx_queue, ptr %18, i32 %idxprom2
  %arrayidx7 = getelementptr %struct.kyber_ctx_queue, ptr %18, i32 %idxprom2, i32 1, i32 %retval.0.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx3) #17
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %14, i32 0, i32 7
  %27 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %queue, align 8
  %call8 = tail call zeroext i1 @blk_bio_list_merge(ptr noundef %28, ptr noundef %arrayidx7, ptr noundef %bio, i32 noundef %nr_segs) #17
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx3) #17
  ret i1 %call8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @kyber_limit_depth(i32 noundef %op, ptr nocapture noundef %data) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %op, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  %0 = and i32 %op, 395264
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.i = icmp ne i32 %0, 0
  %1 = or i1 %cmp.i, %tobool.i
  br i1 %1, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %elevator = getelementptr inbounds %struct.request_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %elevator_data, align 4
  %async_depth = getelementptr inbounds %struct.kyber_queue_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %async_depth to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %async_depth, align 8
  %shallow_depth = getelementptr inbounds %struct.blk_mq_alloc_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %shallow_depth to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %shallow_depth, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal void @kyber_prepare_request(ptr nocapture noundef writeonly %rq) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %priv.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_finish_request(ptr nocapture noundef readonly %rq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %priv.i.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 30, i32 0, i32 1
  %6 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv.i.i, align 4
  %8 = ptrtoint ptr %7 to i32
  %cmp.not.i = icmp eq ptr %7, inttoptr (i32 -1 to ptr)
  br i1 %cmp.not.i, label %entry.rq_clear_domain_token.exit_crit_edge, label %if.then.i

entry.rq_clear_domain_token.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %rq_clear_domain_token.exit

if.then.i:                                        ; preds = %entry
  %cmd_flags.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %9 = ptrtoint ptr %cmd_flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cmd_flags.i, align 4
  %11 = and i32 %10, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %switch.lookup, label %if.then.i.kyber_sched_domain.exit.i_crit_edge

if.then.i.kyber_sched_domain.exit.i_crit_edge:    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kyber_sched_domain.exit.i

switch.lookup:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #19
  %sext = shl i32 %10, 24
  %13 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.kyber_finish_request, i32 0, i32 %13
  %14 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %14)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %kyber_sched_domain.exit.i

kyber_sched_domain.exit.i:                        ; preds = %switch.lookup, %if.then.i.kyber_sched_domain.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %if.then.i.kyber_sched_domain.exit.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.kyber_queue_data, ptr %5, i32 0, i32 2, i32 %retval.0.i.i
  %mq_ctx.i = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 1
  %15 = ptrtoint ptr %mq_ctx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mq_ctx.i, align 4
  %cpu.i = getelementptr inbounds %struct.blk_mq_ctx, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu.i, align 128
  tail call void @sbitmap_queue_clear(ptr noundef %arrayidx.i, i32 noundef %8, i32 noundef %18) #17
  br label %rq_clear_domain_token.exit

rq_clear_domain_token.exit:                       ; preds = %kyber_sched_domain.exit.i, %entry.rq_clear_domain_token.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_insert_requests(ptr nocapture noundef readonly %hctx, ptr noundef readonly %rq_list, i1 noundef zeroext %at_head) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 6
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %2 = ptrtoint ptr %rq_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rq_list, align 4
  %cmp.not47 = icmp eq ptr %3, %rq_list
  br i1 %cmp.not47, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %kcqs = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 4
  %type = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %.pn.in48 = phi ptr [ %3, %for.body.lr.ph ], [ %.pn51, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn51 = load ptr, ptr %.pn.in48, align 8
  %rq.0 = getelementptr i8, ptr %.pn.in48, i32 -56
  %cmd_flags = getelementptr i8, ptr %.pn.in48, i32 -44
  %5 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cmd_flags, align 4
  %7 = and i32 %6, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %switch.lookup, label %for.body.kyber_sched_domain.exit_crit_edge

for.body.kyber_sched_domain.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %kyber_sched_domain.exit

switch.lookup:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  %sext = shl i32 %6, 24
  %9 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.kyber_insert_requests, i32 0, i32 %9
  %10 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %10)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %kyber_sched_domain.exit

kyber_sched_domain.exit:                          ; preds = %switch.lookup, %for.body.kyber_sched_domain.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 3, %for.body.kyber_sched_domain.exit_crit_edge ]
  %11 = ptrtoint ptr %kcqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %kcqs, align 4
  %mq_ctx = getelementptr i8, ptr %.pn.in48, i32 -52
  %13 = ptrtoint ptr %mq_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mq_ctx, align 4
  %15 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %type, align 4
  %idxprom = zext i16 %16 to i32
  %arrayidx = getelementptr %struct.blk_mq_ctx, ptr %14, i32 0, i32 2, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx, align 2
  %idxprom6 = zext i16 %18 to i32
  %arrayidx7 = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %idxprom6
  %arrayidx9 = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %idxprom6, i32 1, i32 %retval.0.i
  tail call void @_raw_spin_lock(ptr noundef %arrayidx7) #17
  tail call fastcc void @trace_block_rq_insert(ptr noundef %rq.0)
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in48) #17
  br i1 %at_head, label %if.then, label %if.else

if.then:                                          ; preds = %kyber_sched_domain.exit
  br i1 %call.i.i, label %if.end.i.i, label %if.then.__list_del_entry.exit.i_crit_edge

if.then.__list_del_entry.exit.i_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in48, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %.pn.in48, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then.__list_del_entry.exit.i_crit_edge
  %25 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx9, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in48, ptr noundef %arrayidx9, ptr noundef %26) #17
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end_crit_edge

__list_del_entry.exit.i.if.end_crit_edge:         ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #19
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  br label %if.end.sink.split

if.else:                                          ; preds = %kyber_sched_domain.exit
  br i1 %call.i.i, label %if.end.i.i41, label %if.else.__list_del_entry.exit.i43_crit_edge

if.else.__list_del_entry.exit.i43_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %__list_del_entry.exit.i43

if.end.i.i41:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i39 = getelementptr inbounds %struct.list_head, ptr %.pn.in48, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i39 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i39, align 4
  %29 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn.in48, align 4
  %prev1.i.i.i40 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i40, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %__list_del_entry.exit.i43

__list_del_entry.exit.i43:                        ; preds = %if.end.i.i41, %if.else.__list_del_entry.exit.i43_crit_edge
  %prev.i2.i = getelementptr %struct.kyber_ctx_queue, ptr %12, i32 %idxprom6, i32 1, i32 %retval.0.i, i32 1
  %33 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i42 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in48, ptr noundef %34, ptr noundef %arrayidx9) #17
  br i1 %call.i.i.i42, label %__list_del_entry.exit.i43.if.end.sink.split_crit_edge, label %__list_del_entry.exit.i43.if.end_crit_edge

__list_del_entry.exit.i43.if.end_crit_edge:       ; preds = %__list_del_entry.exit.i43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end

__list_del_entry.exit.i43.if.end.sink.split_crit_edge: ; preds = %__list_del_entry.exit.i43
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end.sink.split

if.end.sink.split:                                ; preds = %__list_del_entry.exit.i43.if.end.sink.split_crit_edge, %if.end.i.i.i
  %prev.i2.i.sink = phi ptr [ %prev1.i.i2.i, %if.end.i.i.i ], [ %prev.i2.i, %__list_del_entry.exit.i43.if.end.sink.split_crit_edge ]
  %arrayidx9.sink = phi ptr [ %26, %if.end.i.i.i ], [ %arrayidx9, %__list_del_entry.exit.i43.if.end.sink.split_crit_edge ]
  %.sink52 = phi ptr [ %arrayidx9, %if.end.i.i.i ], [ %34, %__list_del_entry.exit.i43.if.end.sink.split_crit_edge ]
  %35 = ptrtoint ptr %prev.i2.i.sink to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %.pn.in48, ptr %prev.i2.i.sink, align 4
  %36 = ptrtoint ptr %.pn.in48 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %arrayidx9.sink, ptr %.pn.in48, align 4
  %prev3.i.i.i44 = getelementptr inbounds %struct.list_head, ptr %.pn.in48, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i.i44 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %.sink52, ptr %prev3.i.i.i44, align 4
  %38 = ptrtoint ptr %.sink52 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %.pn.in48, ptr %.sink52, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.sink.split, %__list_del_entry.exit.i43.if.end_crit_edge, %__list_del_entry.exit.i.if.end_crit_edge
  %39 = ptrtoint ptr %mq_ctx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %mq_ctx, align 4
  %41 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %type, align 4
  %idxprom14 = zext i16 %42 to i32
  %arrayidx15 = getelementptr %struct.blk_mq_ctx, ptr %40, i32 0, i32 2, i32 %idxprom14
  %43 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %arrayidx15, align 2
  %conv = zext i16 %44 to i32
  %shift.i = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 %retval.0.i, i32 1
  %45 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %shift.i, align 4
  %notmask.i = shl nsw i32 -1, %46
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %sub.i, %conv
  %map.i.i = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 %retval.0.i, i32 4
  %47 = ptrtoint ptr %map.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %map.i.i, align 4
  %shr.i.i = lshr i32 %conv, %46
  %word.i.i = getelementptr %struct.sbitmap_word, ptr %48, i32 %shr.i.i, i32 2
  tail call void @_set_bit(i32 noundef %and.i, ptr noundef %word.i.i) #17
  tail call void @_raw_spin_unlock(ptr noundef %arrayidx7) #17
  %cmp.not = icmp eq ptr %.pn51, %rq_list
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kyber_dispatch_request(ptr nocapture noundef readonly %hctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 7
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 6
  %6 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sched_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %7) #17
  %batching = getelementptr inbounds %struct.kyber_hctx_data, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %batching to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %batching, align 4
  %cur_domain = getelementptr inbounds %struct.kyber_hctx_data, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cur_domain, align 4
  %arrayidx = getelementptr [4 x i32], ptr @kyber_batch_size, i32 0, i32 %11
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp = icmp ult i32 %9, %13
  br i1 %cmp, label %if.then, label %entry.if.end2_crit_edge

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end2

if.then:                                          ; preds = %entry
  %call = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %5, ptr noundef %7)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then.if.end2_crit_edge, label %if.then.out_crit_edge

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

if.then.if.end2_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end2

if.end2:                                          ; preds = %if.then.if.end2_crit_edge, %entry.if.end2_crit_edge
  %14 = ptrtoint ptr %batching to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %batching, align 4
  %15 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cur_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %16)
  %cmp6 = icmp eq i32 %16, 3
  %inc = add i32 %16, 1
  %storemerge = select i1 %cmp6, i32 0, i32 %inc
  %17 = ptrtoint ptr %cur_domain to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %storemerge, ptr %cur_domain, align 4
  %call11 = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %5, ptr noundef %7)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %for.cond, label %if.end2.out_crit_edge

if.end2.out_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.cond:                                         ; preds = %if.end2
  %18 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %19)
  %cmp6.1 = icmp eq i32 %19, 3
  %inc.1 = add i32 %19, 1
  %storemerge.1 = select i1 %cmp6.1, i32 0, i32 %inc.1
  %20 = ptrtoint ptr %cur_domain to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge.1, ptr %cur_domain, align 4
  %call11.1 = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %5, ptr noundef %7)
  %tobool12.not.1 = icmp eq ptr %call11.1, null
  br i1 %tobool12.not.1, label %for.cond.1, label %for.cond.out_crit_edge

for.cond.out_crit_edge:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.cond.1:                                       ; preds = %for.cond
  %21 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cur_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp6.2 = icmp eq i32 %22, 3
  %inc.2 = add i32 %22, 1
  %storemerge.2 = select i1 %cmp6.2, i32 0, i32 %inc.2
  %23 = ptrtoint ptr %cur_domain to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %storemerge.2, ptr %cur_domain, align 4
  %call11.2 = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %5, ptr noundef %7)
  %tobool12.not.2 = icmp eq ptr %call11.2, null
  br i1 %tobool12.not.2, label %for.cond.2, label %for.cond.1.out_crit_edge

for.cond.1.out_crit_edge:                         ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %out

for.cond.2:                                       ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #19
  %24 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cur_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %25)
  %cmp6.3 = icmp eq i32 %25, 3
  %inc.3 = add i32 %25, 1
  %storemerge.3 = select i1 %cmp6.3, i32 0, i32 %inc.3
  %26 = ptrtoint ptr %cur_domain to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge.3, ptr %cur_domain, align 4
  %call11.3 = tail call fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %5, ptr noundef %7)
  br label %out

out:                                              ; preds = %for.cond.2, %for.cond.1.out_crit_edge, %for.cond.out_crit_edge, %if.end2.out_crit_edge, %if.then.out_crit_edge
  %rq.0 = phi ptr [ %call, %if.then.out_crit_edge ], [ %call11, %if.end2.out_crit_edge ], [ %call11.1, %for.cond.out_crit_edge ], [ %call11.2, %for.cond.1.out_crit_edge ], [ %call11.3, %for.cond.2 ]
  tail call void @_raw_spin_unlock(ptr noundef %7) #17
  ret ptr %rq.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @kyber_has_work(ptr nocapture noundef readonly %hctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %hctx, i32 0, i32 6
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %arrayidx = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i = icmp eq ptr %3, %arrayidx
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond:                                         ; preds = %lor.lhs.false
  %arrayidx.1 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %arrayidx.1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i.1 = icmp eq ptr %5, %arrayidx.1
  br i1 %cmp.i.not.i.1, label %list_empty_careful.exit.1, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

list_empty_careful.exit.1:                        ; preds = %for.cond
  %prev.i.1 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 1, i32 1
  %6 = ptrtoint ptr %prev.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.1, align 4
  %cmp.i.not.1 = icmp eq ptr %7, %arrayidx.1
  br i1 %cmp.i.not.1, label %lor.lhs.false.1, label %list_empty_careful.exit.1.cleanup_crit_edge

list_empty_careful.exit.1.cleanup_crit_edge:      ; preds = %list_empty_careful.exit.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.1:                                  ; preds = %list_empty_careful.exit.1
  %arrayidx1.1 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 1
  %call2.1 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %arrayidx1.1) #17
  br i1 %call2.1, label %lor.lhs.false.1.cleanup_crit_edge, label %for.cond.1

lor.lhs.false.1.cleanup_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.1:                                       ; preds = %lor.lhs.false.1
  %arrayidx.2 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %arrayidx.2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i.2 = icmp eq ptr %9, %arrayidx.2
  br i1 %cmp.i.not.i.2, label %list_empty_careful.exit.2, label %for.cond.1.cleanup_crit_edge

for.cond.1.cleanup_crit_edge:                     ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

list_empty_careful.exit.2:                        ; preds = %for.cond.1
  %prev.i.2 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 2, i32 1
  %10 = ptrtoint ptr %prev.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.2, align 4
  %cmp.i.not.2 = icmp eq ptr %11, %arrayidx.2
  br i1 %cmp.i.not.2, label %lor.lhs.false.2, label %list_empty_careful.exit.2.cleanup_crit_edge

list_empty_careful.exit.2.cleanup_crit_edge:      ; preds = %list_empty_careful.exit.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.2:                                  ; preds = %list_empty_careful.exit.2
  %arrayidx1.2 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 2
  %call2.2 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %arrayidx1.2) #17
  br i1 %call2.2, label %lor.lhs.false.2.cleanup_crit_edge, label %for.cond.2

lor.lhs.false.2.cleanup_crit_edge:                ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

for.cond.2:                                       ; preds = %lor.lhs.false.2
  %arrayidx.3 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %arrayidx.3, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i.3 = icmp eq ptr %13, %arrayidx.3
  br i1 %cmp.i.not.i.3, label %list_empty_careful.exit.3, label %for.cond.2.cleanup_crit_edge

for.cond.2.cleanup_crit_edge:                     ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

list_empty_careful.exit.3:                        ; preds = %for.cond.2
  %prev.i.3 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 3, i32 1
  %14 = ptrtoint ptr %prev.i.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i.3, align 4
  %cmp.i.not.3 = icmp eq ptr %15, %arrayidx.3
  br i1 %cmp.i.not.3, label %lor.lhs.false.3, label %list_empty_careful.exit.3.cleanup_crit_edge

list_empty_careful.exit.3.cleanup_crit_edge:      ; preds = %list_empty_careful.exit.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false.3:                                  ; preds = %list_empty_careful.exit.3
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx1.3 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 3
  %call2.3 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %arrayidx1.3) #17
  br label %cleanup

list_empty_careful.exit:                          ; preds = %entry
  %prev.i = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %17, %arrayidx
  br i1 %cmp.i.not, label %lor.lhs.false, label %list_empty_careful.exit.cleanup_crit_edge

list_empty_careful.exit.cleanup_crit_edge:        ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

lor.lhs.false:                                    ; preds = %list_empty_careful.exit
  %arrayidx1 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 5, i32 0
  %call2 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %arrayidx1) #17
  br i1 %call2, label %lor.lhs.false.cleanup_crit_edge, label %for.cond

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false.cleanup_crit_edge, %list_empty_careful.exit.cleanup_crit_edge, %lor.lhs.false.3, %list_empty_careful.exit.3.cleanup_crit_edge, %for.cond.2.cleanup_crit_edge, %lor.lhs.false.2.cleanup_crit_edge, %list_empty_careful.exit.2.cleanup_crit_edge, %for.cond.1.cleanup_crit_edge, %lor.lhs.false.1.cleanup_crit_edge, %list_empty_careful.exit.1.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.lcssa = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %list_empty_careful.exit.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %for.cond.cleanup_crit_edge ], [ true, %list_empty_careful.exit.1.cleanup_crit_edge ], [ true, %lor.lhs.false.1.cleanup_crit_edge ], [ true, %for.cond.1.cleanup_crit_edge ], [ true, %list_empty_careful.exit.2.cleanup_crit_edge ], [ true, %lor.lhs.false.2.cleanup_crit_edge ], [ true, %for.cond.2.cleanup_crit_edge ], [ true, %list_empty_careful.exit.3.cleanup_crit_edge ], [ %call2.3, %lor.lhs.false.3 ]
  ret i1 %cmp.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_completed_request(ptr nocapture noundef readonly %rq, i64 noundef %now) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rq, align 8
  %elevator = getelementptr inbounds %struct.request_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %elevator_data, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 3
  %6 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cmd_flags, align 4
  %trunc.i = trunc i32 %7 to i8
  %8 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %trunc.i, label %entry.cleanup_crit_edge [
    i8 0, label %entry.do.body_crit_edge
    i8 1, label %sw.bb1.i
    i8 3, label %sw.bb2.i
  ]

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body

do.body:                                          ; preds = %sw.bb2.i, %sw.bb1.i, %entry.do.body_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %entry.do.body_crit_edge ], [ 1, %sw.bb1.i ], [ 2, %sw.bb2.i ]
  %9 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !182
  %cpu_latency5 = getelementptr inbounds %struct.kyber_queue_data, ptr %5, i32 0, i32 4
  %13 = ptrtoint ptr %cpu_latency5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cpu_latency5, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %add = add i32 %21, %15
  %22 = inttoptr i32 %add to ptr
  %arrayidx8 = getelementptr %struct.kyber_queue_data, ptr %5, i32 0, i32 9, i32 %retval.0.i.ph
  %23 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx8, align 8
  %start_time_ns = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 15
  %25 = ptrtoint ptr %start_time_ns to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %start_time_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %26, i64 %now)
  %cmp.not.i = icmp eq i64 %26, %now
  br i1 %cmp.not.i, label %do.body.add_latency_sample.exit_crit_edge, label %if.then.i

do.body.add_latency_sample.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %add_latency_sample.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %24)
  %cmp1.i = icmp ugt i64 %24, 7
  %shr.i = lshr i64 %24, 2
  %cond.i = select i1 %cmp1.i, i64 %shr.i, i64 1
  %27 = xor i64 %26, -1
  %sub.i36 = add i64 %27, %now
  %call.i = tail call i64 @div64_u64(i64 noundef %sub.i36, i64 noundef %cond.i) #17
  %conv.i = trunc i64 %call.i to i32
  %28 = tail call i32 @llvm.umin.i32(i32 %conv.i, i32 7) #17
  br label %add_latency_sample.exit

add_latency_sample.exit:                          ; preds = %if.then.i, %do.body.add_latency_sample.exit_crit_edge
  %bucket.0.i = phi i32 [ %28, %if.then.i ], [ 0, %do.body.add_latency_sample.exit_crit_edge ]
  %arrayidx10.i = getelementptr [3 x [2 x [8 x %struct.atomic_t]]], ptr %22, i32 0, i32 %retval.0.i.ph, i32 0, i32 %bucket.0.i
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx10.i, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %arrayidx10.i, i32 1, i32 3, i32 1) #17
  %29 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx10.i, ptr %arrayidx10.i, i32 1, ptr elementtype(i32) %arrayidx10.i) #17, !srcloc !183
  %io_start_time_ns = getelementptr inbounds %struct.request, ptr %rq, i32 0, i32 16
  %30 = ptrtoint ptr %io_start_time_ns to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %io_start_time_ns, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %31, i64 %now)
  %cmp.not.i37 = icmp eq i64 %31, %now
  br i1 %cmp.not.i37, label %add_latency_sample.exit.add_latency_sample.exit48_crit_edge, label %if.then.i44

add_latency_sample.exit.add_latency_sample.exit48_crit_edge: ; preds = %add_latency_sample.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %add_latency_sample.exit48

if.then.i44:                                      ; preds = %add_latency_sample.exit
  call void @__sanitizer_cov_trace_pc() #19
  call void @__sanitizer_cov_trace_const_cmp8(i64 7, i64 %24)
  %cmp1.i38 = icmp ugt i64 %24, 7
  %shr.i39 = lshr i64 %24, 2
  %cond.i40 = select i1 %cmp1.i38, i64 %shr.i39, i64 1
  %32 = xor i64 %31, -1
  %sub.i41 = add i64 %32, %now
  %call.i42 = tail call i64 @div64_u64(i64 noundef %sub.i41, i64 noundef %cond.i40) #17
  %conv.i43 = trunc i64 %call.i42 to i32
  %33 = tail call i32 @llvm.umin.i32(i32 %conv.i43, i32 7) #17
  br label %add_latency_sample.exit48

add_latency_sample.exit48:                        ; preds = %if.then.i44, %add_latency_sample.exit.add_latency_sample.exit48_crit_edge
  %bucket.0.i45 = phi i32 [ %33, %if.then.i44 ], [ 0, %add_latency_sample.exit.add_latency_sample.exit48_crit_edge ]
  %arrayidx10.i46 = getelementptr [3 x [2 x [8 x %struct.atomic_t]]], ptr %22, i32 0, i32 %retval.0.i.ph, i32 1, i32 %bucket.0.i45
  %call.i.i.i47 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx10.i46, i32 noundef 4) #17
  tail call void @llvm.prefetch.p0(ptr %arrayidx10.i46, i32 1, i32 3, i32 1) #17
  %34 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx10.i46, ptr %arrayidx10.i46, i32 1, ptr elementtype(i32) %arrayidx10.i46) #17, !srcloc !183
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !184
  %35 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i34 = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i34 to ptr
  %preempt_count.i.i35 = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %preempt_count.i.i35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %preempt_count.i.i35, align 4
  %sub.i = add i32 %38, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i35, align 4
  %timer = getelementptr inbounds %struct.kyber_queue_data, ptr %5, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %add17 = add i32 %39, 10
  %call18 = tail call i32 @timer_reduce(ptr noundef %timer, i32 noundef %add17) #17
  br label %cleanup

cleanup:                                          ; preds = %add_latency_sample.exit48, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @elevator_alloc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kobject_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_enable_accounting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_timer_fn(ptr noundef %t) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -192
  %call88 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call88, i32 %0)
  %cmp89 = icmp ult i32 %call88, %0
  br i1 %cmp89, label %for.body.lr.ph, label %entry.for.cond8.preheader_crit_edge

entry.for.cond8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond8.preheader

for.body.lr.ph:                                   ; preds = %entry
  %cpu_latency2 = getelementptr i8, ptr %t, i32 -4
  br label %for.body

for.cond8.preheader:                              ; preds = %for.body.for.cond8.preheader_crit_edge, %entry.for.cond8.preheader_crit_edge
  %call11 = tail call fastcc i32 @calculate_percentile(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 1, i32 noundef 90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call11)
  %cmp12 = icmp sgt i32 %call11, 3
  %call11.1 = tail call fastcc i32 @calculate_percentile(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 1, i32 noundef 90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call11.1)
  %cmp12.1 = icmp sgt i32 %call11.1, 3
  %call11.2 = tail call fastcc i32 @calculate_percentile(ptr noundef %add.ptr, i32 noundef 2, i32 noundef 1, i32 noundef 90)
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call11.2)
  %cmp12.2 = icmp sgt i32 %call11.2, 3
  %1 = select i1 %cmp12.2, i1 true, i1 %cmp12.1
  %spec.select.2 = select i1 %1, i1 true, i1 %cmp12
  %domain_p9929 = getelementptr i8, ptr %t, i32 252
  %domain_tokens = getelementptr i8, ptr %t, i32 -184
  %dev.i = getelementptr i8, ptr %t, i32 -188
  %call19 = tail call fastcc i32 @calculate_percentile(ptr noundef %add.ptr, i32 noundef 0, i32 noundef 0, i32 noundef 99)
  br i1 %spec.select.2, label %if.then20, label %if.else

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call90 = phi i32 [ %call88, %for.body.lr.ph ], [ %call, %for.body.for.body_crit_edge ]
  %2 = ptrtoint ptr %cpu_latency2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cpu_latency2, align 4
  %4 = ptrtoint ptr %3 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call90
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add = add i32 %6, %4
  %7 = inttoptr i32 %add to ptr
  tail call fastcc void @flush_latency_buckets(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 0, i32 noundef 0)
  tail call fastcc void @flush_latency_buckets(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 0, i32 noundef 1)
  tail call fastcc void @flush_latency_buckets(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 1, i32 noundef 0)
  tail call fastcc void @flush_latency_buckets(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 1, i32 noundef 1)
  tail call fastcc void @flush_latency_buckets(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 2, i32 noundef 0)
  tail call fastcc void @flush_latency_buckets(ptr noundef %add.ptr, ptr noundef %7, i32 noundef 2, i32 noundef 1)
  %call = tail call i32 @cpumask_next(i32 noundef %call90, ptr noundef nonnull @__cpu_online_mask) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond8.preheader_crit_edge

for.body.for.cond8.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.cond8.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.body

if.then20:                                        ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp21 = icmp slt i32 %call19, 0
  br i1 %cmp21, label %if.then22, label %if.then20.if.end32_crit_edge

if.then20.if.end32_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

if.then22:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #19
  %9 = ptrtoint ptr %domain_p9929 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %domain_p9929, align 4
  br label %if.end32

if.else:                                          ; preds = %for.cond8.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19)
  %cmp27 = icmp sgt i32 %call19, -1
  br i1 %cmp27, label %if.else.if.end32_crit_edge, label %cleanup.thread

if.else.if.end32_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #19
  %call19.195 = tail call fastcc i32 @calculate_percentile(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0, i32 noundef 99)
  br label %if.else.1

if.end32:                                         ; preds = %if.else.if.end32_crit_edge, %if.then22, %if.then20.if.end32_crit_edge
  %storemerge = phi i32 [ -1, %if.then22 ], [ -1, %if.then20.if.end32_crit_edge ], [ %call19, %if.else.if.end32_crit_edge ]
  %p99.1 = phi i32 [ %10, %if.then22 ], [ %call19, %if.then20.if.end32_crit_edge ], [ %call19, %if.else.if.end32_crit_edge ]
  %11 = ptrtoint ptr %domain_p9929 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %domain_p9929, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %p99.1)
  %cmp33 = icmp sgt i32 %p99.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %p99.1)
  %cmp37 = icmp sgt i32 %p99.1, 3
  %or.cond = select i1 %spec.select.2, i1 true, i1 %cmp37
  %or.cond81 = select i1 %cmp33, i1 %or.cond, i1 false
  br i1 %or.cond81, label %if.then38, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then38:                                        ; preds = %if.end32
  %12 = ptrtoint ptr %domain_tokens to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %domain_tokens, align 4
  %add41 = add nuw i32 %p99.1, 1
  %mul = mul i32 %13, %add41
  %shr = lshr i32 %mul, 2
  %14 = tail call i32 @llvm.umax.i32(i32 %shr, i32 1) #17
  %15 = tail call i32 @llvm.umin.i32(i32 %14, i32 256) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %13)
  %cmp9.not.i = icmp eq i32 %15, %13
  br i1 %cmp9.not.i, label %if.then38.cleanup_crit_edge, label %if.then.i

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then.i:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx7.i = getelementptr i8, ptr %t, i32 -184
  tail call void @sbitmap_queue_resize(ptr noundef %arrayidx7.i, i32 noundef %15) #17
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev.i, align 4
  tail call fastcc void @trace_kyber_adjust(i32 noundef %17, ptr noundef nonnull @.str.22, i32 noundef %15) #17
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then38.cleanup_crit_edge, %if.end32.cleanup_crit_edge
  %call19.1 = tail call fastcc i32 @calculate_percentile(ptr noundef %add.ptr, i32 noundef 1, i32 noundef 0, i32 noundef 99)
  br i1 %spec.select.2, label %if.then20.1, label %cleanup.if.else.1_crit_edge

cleanup.if.else.1_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.1

if.else.1:                                        ; preds = %cleanup.if.else.1_crit_edge, %cleanup.thread
  %call19.196 = phi i32 [ %call19.195, %cleanup.thread ], [ %call19.1, %cleanup.if.else.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.196)
  %cmp27.1 = icmp sgt i32 %call19.196, -1
  br i1 %cmp27.1, label %if.else.1.if.end32.1_crit_edge, label %cleanup.1.thread

if.else.1.if.end32.1_crit_edge:                   ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.1

cleanup.1.thread:                                 ; preds = %if.else.1
  call void @__sanitizer_cov_trace_pc() #19
  %call19.297 = tail call fastcc i32 @calculate_percentile(ptr noundef %add.ptr, i32 noundef 2, i32 noundef 0, i32 noundef 99)
  br label %if.else.2

if.then20.1:                                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.1)
  %cmp21.1 = icmp slt i32 %call19.1, 0
  br i1 %cmp21.1, label %if.then22.1, label %if.then20.1.if.end32.1_crit_edge

if.then20.1.if.end32.1_crit_edge:                 ; preds = %if.then20.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.1

if.then22.1:                                      ; preds = %if.then20.1
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx23.1 = getelementptr i8, ptr %t, i32 256
  %18 = ptrtoint ptr %arrayidx23.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx23.1, align 4
  br label %if.end32.1

if.end32.1:                                       ; preds = %if.then22.1, %if.then20.1.if.end32.1_crit_edge, %if.else.1.if.end32.1_crit_edge
  %.sink = phi i32 [ %call19.196, %if.else.1.if.end32.1_crit_edge ], [ -1, %if.then22.1 ], [ -1, %if.then20.1.if.end32.1_crit_edge ]
  %p99.1.1 = phi i32 [ %call19.196, %if.else.1.if.end32.1_crit_edge ], [ %19, %if.then22.1 ], [ %call19.1, %if.then20.1.if.end32.1_crit_edge ]
  %arrayidx26.1 = getelementptr i8, ptr %t, i32 256
  %20 = ptrtoint ptr %arrayidx26.1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %.sink, ptr %arrayidx26.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %p99.1.1)
  %cmp33.1 = icmp sgt i32 %p99.1.1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %p99.1.1)
  %cmp37.1 = icmp sgt i32 %p99.1.1, 3
  %or.cond.1 = select i1 %spec.select.2, i1 true, i1 %cmp37.1
  %or.cond81.1 = select i1 %cmp33.1, i1 %or.cond.1, i1 false
  br i1 %or.cond81.1, label %if.then38.1, label %if.end32.1.cleanup.1_crit_edge

if.end32.1.cleanup.1_crit_edge:                   ; preds = %if.end32.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.1

if.then38.1:                                      ; preds = %if.end32.1
  %arrayidx39.1 = getelementptr i8, ptr %t, i32 -140
  %21 = ptrtoint ptr %arrayidx39.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx39.1, align 4
  %add41.1 = add nuw i32 %p99.1.1, 1
  %mul.1 = mul i32 %22, %add41.1
  %shr.1 = lshr i32 %mul.1, 2
  %23 = tail call i32 @llvm.umax.i32(i32 %shr.1, i32 1) #17
  %24 = tail call i32 @llvm.umin.i32(i32 %23, i32 128) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %22)
  %cmp9.not.i.1 = icmp eq i32 %24, %22
  br i1 %cmp9.not.i.1, label %if.then38.1.cleanup.1_crit_edge, label %if.then.i.1

if.then38.1.cleanup.1_crit_edge:                  ; preds = %if.then38.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.1

if.then.i.1:                                      ; preds = %if.then38.1
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx7.i.1 = getelementptr i8, ptr %t, i32 -140
  tail call void @sbitmap_queue_resize(ptr noundef %arrayidx7.i.1, i32 noundef %24) #17
  %25 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev.i, align 4
  tail call fastcc void @trace_kyber_adjust(i32 noundef %26, ptr noundef nonnull @.str.23, i32 noundef %24) #17
  br label %cleanup.1

cleanup.1:                                        ; preds = %if.then.i.1, %if.then38.1.cleanup.1_crit_edge, %if.end32.1.cleanup.1_crit_edge
  %call19.2 = tail call fastcc i32 @calculate_percentile(ptr noundef %add.ptr, i32 noundef 2, i32 noundef 0, i32 noundef 99)
  br i1 %spec.select.2, label %if.then20.2, label %cleanup.1.if.else.2_crit_edge

cleanup.1.if.else.2_crit_edge:                    ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.else.2

if.else.2:                                        ; preds = %cleanup.1.if.else.2_crit_edge, %cleanup.1.thread
  %call19.298 = phi i32 [ %call19.297, %cleanup.1.thread ], [ %call19.2, %cleanup.1.if.else.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call19.298)
  %cmp27.2 = icmp sgt i32 %call19.298, -1
  br i1 %cmp27.2, label %if.else.2.if.end32.2_crit_edge, label %if.else.2.cleanup.2_crit_edge

if.else.2.cleanup.2_crit_edge:                    ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.2

if.else.2.if.end32.2_crit_edge:                   ; preds = %if.else.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.2

if.then20.2:                                      ; preds = %cleanup.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.2)
  %cmp21.2 = icmp slt i32 %call19.2, 0
  br i1 %cmp21.2, label %if.then22.2, label %if.then20.2.if.end32.2_crit_edge

if.then20.2.if.end32.2_crit_edge:                 ; preds = %if.then20.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end32.2

if.then22.2:                                      ; preds = %if.then20.2
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx23.2 = getelementptr i8, ptr %t, i32 260
  %27 = ptrtoint ptr %arrayidx23.2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx23.2, align 4
  br label %if.end32.2

if.end32.2:                                       ; preds = %if.then22.2, %if.then20.2.if.end32.2_crit_edge, %if.else.2.if.end32.2_crit_edge
  %.sink99 = phi i32 [ %call19.298, %if.else.2.if.end32.2_crit_edge ], [ -1, %if.then22.2 ], [ -1, %if.then20.2.if.end32.2_crit_edge ]
  %p99.1.2 = phi i32 [ %call19.298, %if.else.2.if.end32.2_crit_edge ], [ %28, %if.then22.2 ], [ %call19.2, %if.then20.2.if.end32.2_crit_edge ]
  %arrayidx26.2 = getelementptr i8, ptr %t, i32 260
  %29 = ptrtoint ptr %arrayidx26.2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink99, ptr %arrayidx26.2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %p99.1.2)
  %cmp33.2 = icmp sgt i32 %p99.1.2, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %p99.1.2)
  %cmp37.2 = icmp sgt i32 %p99.1.2, 3
  %or.cond.2 = select i1 %spec.select.2, i1 true, i1 %cmp37.2
  %or.cond81.2 = select i1 %cmp33.2, i1 %or.cond.2, i1 false
  br i1 %or.cond81.2, label %if.then38.2, label %if.end32.2.cleanup.2_crit_edge

if.end32.2.cleanup.2_crit_edge:                   ; preds = %if.end32.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.2

if.then38.2:                                      ; preds = %if.end32.2
  %arrayidx39.2 = getelementptr i8, ptr %t, i32 -96
  %30 = ptrtoint ptr %arrayidx39.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx39.2, align 4
  %add41.2 = add nuw i32 %p99.1.2, 1
  %mul.2 = mul i32 %31, %add41.2
  %shr.2 = lshr i32 %mul.2, 2
  %32 = tail call i32 @llvm.umax.i32(i32 %shr.2, i32 1) #17
  %33 = tail call i32 @llvm.umin.i32(i32 %32, i32 64) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %31)
  %cmp9.not.i.2 = icmp eq i32 %33, %31
  br i1 %cmp9.not.i.2, label %if.then38.2.cleanup.2_crit_edge, label %if.then.i.2

if.then38.2.cleanup.2_crit_edge:                  ; preds = %if.then38.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.2

if.then.i.2:                                      ; preds = %if.then38.2
  call void @__sanitizer_cov_trace_pc() #19
  %arrayidx7.i.2 = getelementptr i8, ptr %t, i32 -96
  tail call void @sbitmap_queue_resize(ptr noundef %arrayidx7.i.2, i32 noundef %33) #17
  %34 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dev.i, align 4
  tail call fastcc void @trace_kyber_adjust(i32 noundef %35, ptr noundef nonnull @.str.24, i32 noundef %33) #17
  br label %cleanup.2

cleanup.2:                                        ; preds = %if.then.i.2, %if.then38.2.cleanup.2_crit_edge, %if.end32.2.cleanup.2_crit_edge, %if.else.2.cleanup.2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_queue_init_node(ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @flush_latency_buckets(ptr nocapture noundef %kqd, ptr noundef %cpu_latency, i32 noundef %sched_domain, i32 noundef %type) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr %struct.kyber_queue_data, ptr %kqd, i32 0, i32 6, i32 %sched_domain, i32 %type
  %arrayidx4 = getelementptr [3 x [2 x [8 x %struct.atomic_t]]], ptr %cpu_latency, i32 0, i32 %sched_domain, i32 %type
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx4, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %arrayidx4, i32 1, i32 3, i32 1) #17
  %0 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx4) #17, !srcloc !186
  %asmresult.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !187
  %1 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx1, align 4
  %add = add i32 %2, %asmresult.i.i
  store i32 %add, ptr %arrayidx1, align 4
  %arrayidx6.1 = getelementptr %struct.atomic_t, ptr %arrayidx4, i32 1
  %call.i.i.1 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6.1, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %arrayidx6.1, i32 1, i32 3, i32 1) #17
  %3 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx6.1) #17, !srcloc !186
  %asmresult.i.i.1 = extractvalue { i32, i32 } %3, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !187
  %arrayidx7.1 = getelementptr i32, ptr %arrayidx1, i32 1
  %4 = ptrtoint ptr %arrayidx7.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx7.1, align 4
  %add.1 = add i32 %5, %asmresult.i.i.1
  store i32 %add.1, ptr %arrayidx7.1, align 4
  %arrayidx6.2 = getelementptr %struct.atomic_t, ptr %arrayidx4, i32 2
  %call.i.i.2 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6.2, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %arrayidx6.2, i32 1, i32 3, i32 1) #17
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx6.2) #17, !srcloc !186
  %asmresult.i.i.2 = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !187
  %arrayidx7.2 = getelementptr i32, ptr %arrayidx1, i32 2
  %7 = ptrtoint ptr %arrayidx7.2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx7.2, align 4
  %add.2 = add i32 %8, %asmresult.i.i.2
  store i32 %add.2, ptr %arrayidx7.2, align 4
  %arrayidx6.3 = getelementptr %struct.atomic_t, ptr %arrayidx4, i32 3
  %call.i.i.3 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6.3, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %arrayidx6.3, i32 1, i32 3, i32 1) #17
  %9 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx6.3) #17, !srcloc !186
  %asmresult.i.i.3 = extractvalue { i32, i32 } %9, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !187
  %arrayidx7.3 = getelementptr i32, ptr %arrayidx1, i32 3
  %10 = ptrtoint ptr %arrayidx7.3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx7.3, align 4
  %add.3 = add i32 %11, %asmresult.i.i.3
  store i32 %add.3, ptr %arrayidx7.3, align 4
  %arrayidx6.4 = getelementptr %struct.atomic_t, ptr %arrayidx4, i32 4
  %call.i.i.4 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6.4, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %arrayidx6.4, i32 1, i32 3, i32 1) #17
  %12 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx6.4) #17, !srcloc !186
  %asmresult.i.i.4 = extractvalue { i32, i32 } %12, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !187
  %arrayidx7.4 = getelementptr i32, ptr %arrayidx1, i32 4
  %13 = ptrtoint ptr %arrayidx7.4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx7.4, align 4
  %add.4 = add i32 %14, %asmresult.i.i.4
  store i32 %add.4, ptr %arrayidx7.4, align 4
  %arrayidx6.5 = getelementptr %struct.atomic_t, ptr %arrayidx4, i32 5
  %call.i.i.5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6.5, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %arrayidx6.5, i32 1, i32 3, i32 1) #17
  %15 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx6.5) #17, !srcloc !186
  %asmresult.i.i.5 = extractvalue { i32, i32 } %15, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !187
  %arrayidx7.5 = getelementptr i32, ptr %arrayidx1, i32 5
  %16 = ptrtoint ptr %arrayidx7.5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx7.5, align 4
  %add.5 = add i32 %17, %asmresult.i.i.5
  store i32 %add.5, ptr %arrayidx7.5, align 4
  %arrayidx6.6 = getelementptr %struct.atomic_t, ptr %arrayidx4, i32 6
  %call.i.i.6 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6.6, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %arrayidx6.6, i32 1, i32 3, i32 1) #17
  %18 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx6.6) #17, !srcloc !186
  %asmresult.i.i.6 = extractvalue { i32, i32 } %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !187
  %arrayidx7.6 = getelementptr i32, ptr %arrayidx1, i32 6
  %19 = ptrtoint ptr %arrayidx7.6 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx7.6, align 4
  %add.6 = add i32 %20, %asmresult.i.i.6
  store i32 %add.6, ptr %arrayidx7.6, align 4
  %arrayidx6.7 = getelementptr %struct.atomic_t, ptr %arrayidx4, i32 7
  %call.i.i.7 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6.7, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !185
  tail call void @llvm.prefetch.p0(ptr %arrayidx6.7, i32 1, i32 3, i32 1) #17
  %21 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %arrayidx6.7) #17, !srcloc !186
  %asmresult.i.i.7 = extractvalue { i32, i32 } %21, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !187
  %arrayidx7.7 = getelementptr i32, ptr %arrayidx1, i32 7
  %22 = ptrtoint ptr %arrayidx7.7 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx7.7, align 4
  %add.7 = add i32 %23, %asmresult.i.i.7
  store i32 %add.7, ptr %arrayidx7.7, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @calculate_percentile(ptr nocapture noundef %kqd, i32 noundef %sched_domain, i32 noundef %type, i32 noundef %percentile) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx1 = getelementptr %struct.kyber_queue_data, ptr %kqd, i32 0, i32 6, i32 %sched_domain, i32 %type
  %0 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx1, align 4
  %arrayidx2.1 = getelementptr i32, ptr %arrayidx1, i32 1
  %2 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2.1, align 4
  %add.1 = add i32 %3, %1
  %arrayidx2.2 = getelementptr i32, ptr %arrayidx1, i32 2
  %4 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx2.2, align 4
  %add.2 = add i32 %5, %add.1
  %arrayidx2.3 = getelementptr i32, ptr %arrayidx1, i32 3
  %6 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx2.3, align 4
  %add.3 = add i32 %7, %add.2
  %arrayidx2.4 = getelementptr i32, ptr %arrayidx1, i32 4
  %8 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2.4, align 4
  %add.4 = add i32 %9, %add.3
  %arrayidx2.5 = getelementptr i32, ptr %arrayidx1, i32 5
  %10 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.5, align 4
  %add.5 = add i32 %11, %add.4
  %arrayidx2.6 = getelementptr i32, ptr %arrayidx1, i32 6
  %12 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx2.6, align 4
  %add.6 = add i32 %13, %add.5
  %arrayidx2.7 = getelementptr i32, ptr %arrayidx1, i32 7
  %14 = ptrtoint ptr %arrayidx2.7 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2.7, align 4
  %add.7 = add i32 %15, %add.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.7)
  %tobool.not = icmp eq i32 %add.7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx3 = getelementptr %struct.kyber_queue_data, ptr %kqd, i32 0, i32 7, i32 %sched_domain
  %16 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool4.not = icmp eq i32 %17, 0
  br i1 %tobool4.not, label %if.then5, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end10

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %add6 = add i32 %18, 100
  %19 = tail call i32 @llvm.umax.i32(i32 %add6, i32 1)
  %20 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx3, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then5, %if.end.if.end10_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %add.7)
  %cmp11 = icmp ult i32 %add.7, 500
  br i1 %cmp11, label %land.lhs.true, label %if.end10.if.end16_crit_edge

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

land.lhs.true:                                    ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %21 = load volatile i32, ptr @jiffies, align 128
  %22 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx3, align 4
  %sub = sub i32 %21, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp14 = icmp slt i32 %sub, 0
  br i1 %cmp14, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end16_crit_edge

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end16

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end16:                                         ; preds = %land.lhs.true.if.end16_crit_edge, %if.end10.if.end16_crit_edge
  %24 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %arrayidx3, align 4
  %mul = mul i32 %add.7, %percentile
  %sub20 = add i32 %mul, 99
  %div = udiv i32 %sub20, 100
  %25 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %26)
  %cmp25.not = icmp ugt i32 %div, %26
  br i1 %cmp25.not, label %if.end27, label %if.end16.for.end32_crit_edge

if.end16.for.end32_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32

if.end27:                                         ; preds = %if.end16
  %sub29 = sub i32 %div, %26
  %27 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx2.1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29, i32 %28)
  %cmp25.not.1 = icmp ugt i32 %sub29, %28
  br i1 %cmp25.not.1, label %if.end27.1, label %if.end27.for.end32_crit_edge

if.end27.for.end32_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32

if.end27.1:                                       ; preds = %if.end27
  %sub29.1 = sub i32 %sub29, %28
  %29 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29.1, i32 %30)
  %cmp25.not.2 = icmp ugt i32 %sub29.1, %30
  br i1 %cmp25.not.2, label %if.end27.2, label %if.end27.1.for.end32_crit_edge

if.end27.1.for.end32_crit_edge:                   ; preds = %if.end27.1
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32

if.end27.2:                                       ; preds = %if.end27.1
  %sub29.2 = sub i32 %sub29.1, %30
  %31 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx2.3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29.2, i32 %32)
  %cmp25.not.3 = icmp ugt i32 %sub29.2, %32
  br i1 %cmp25.not.3, label %if.end27.3, label %if.end27.2.for.end32_crit_edge

if.end27.2.for.end32_crit_edge:                   ; preds = %if.end27.2
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32

if.end27.3:                                       ; preds = %if.end27.2
  %sub29.3 = sub i32 %sub29.2, %32
  %33 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx2.4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29.3, i32 %34)
  %cmp25.not.4 = icmp ugt i32 %sub29.3, %34
  br i1 %cmp25.not.4, label %if.end27.4, label %if.end27.3.for.end32_crit_edge

if.end27.3.for.end32_crit_edge:                   ; preds = %if.end27.3
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32

if.end27.4:                                       ; preds = %if.end27.3
  %sub29.4 = sub i32 %sub29.3, %34
  %35 = ptrtoint ptr %arrayidx2.5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx2.5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29.4, i32 %36)
  %cmp25.not.5 = icmp ugt i32 %sub29.4, %36
  br i1 %cmp25.not.5, label %if.end27.5, label %if.end27.4.for.end32_crit_edge

if.end27.4.for.end32_crit_edge:                   ; preds = %if.end27.4
  call void @__sanitizer_cov_trace_pc() #19
  br label %for.end32

if.end27.5:                                       ; preds = %if.end27.4
  call void @__sanitizer_cov_trace_pc() #19
  %sub29.5 = sub i32 %sub29.4, %36
  %37 = ptrtoint ptr %arrayidx2.6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx2.6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub29.5, i32 %38)
  %cmp25.not.6 = icmp ugt i32 %sub29.5, %38
  %spec.select = select i1 %cmp25.not.6, i32 7, i32 6
  br label %for.end32

for.end32:                                        ; preds = %if.end27.5, %if.end27.4.for.end32_crit_edge, %if.end27.3.for.end32_crit_edge, %if.end27.2.for.end32_crit_edge, %if.end27.1.for.end32_crit_edge, %if.end27.for.end32_crit_edge, %if.end16.for.end32_crit_edge
  %bucket.1.lcssa = phi i32 [ 0, %if.end16.for.end32_crit_edge ], [ 1, %if.end27.for.end32_crit_edge ], [ 2, %if.end27.1.for.end32_crit_edge ], [ 3, %if.end27.2.for.end32_crit_edge ], [ 4, %if.end27.3.for.end32_crit_edge ], [ 5, %if.end27.4.for.end32_crit_edge ], [ %spec.select, %if.end27.5 ]
  %39 = call ptr @memset(ptr %arrayidx1, i32 0, i32 32)
  %dev = getelementptr inbounds %struct.kyber_queue_data, ptr %kqd, i32 0, i32 1
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dev, align 4
  %arrayidx33 = getelementptr [4 x ptr], ptr @kyber_domain_names, i32 0, i32 %sched_domain
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx33, align 4
  %arrayidx34 = getelementptr [2 x ptr], ptr @kyber_latency_type_names, i32 0, i32 %type
  %44 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx34, align 4
  %add35 = add nuw nsw i32 %bucket.1.lcssa, 1
  tail call fastcc void @trace_kyber_latency(i32 noundef %41, ptr noundef %43, ptr noundef %45, i32 noundef %percentile, i32 noundef %add35, i32 noundef %add.7)
  br label %cleanup

cleanup:                                          ; preds = %for.end32, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %bucket.1.lcssa, %for.end32 ], [ -1, %entry.cleanup_crit_edge ], [ -1, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #12

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_kyber_latency(i32 noundef %dev, ptr noundef %domain, ptr noundef %type, i32 noundef %percentile, i32 noundef %numerator, i32 noundef %samples) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_latency, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_kyber_latency, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !168) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !178

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div1.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i4 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i4
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !189
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_latency, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %dev, ptr noundef %domain, ptr noundef %type, i32 noundef %percentile, i32 noundef %numerator, i32 noundef 4, i32 noundef %samples) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !190
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !190
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i2.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i2.c to ptr
  %preempt_count.i.i3.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i3.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i3.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i3.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i5 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i5 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i6 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i6, label %if.end48.cpu_online.exit14_crit_edge, label %land.rhs.i.i.i.i8

if.end48.cpu_online.exit14_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

land.rhs.i.i.i.i8:                                ; preds = %if.end48
  %.b37.i.i.i.i7 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i7, label %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, label %if.then.i.i.i.i9, !prof !178

land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge:    ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit14

if.then.i.i.i.i9:                                 ; preds = %land.rhs.i.i.i.i8
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit14

cpu_online.exit14:                                ; preds = %if.then.i.i.i.i9, %land.rhs.i.i.i.i8.cpu_online.exit14_crit_edge, %if.end48.cpu_online.exit14_crit_edge
  %div1.i.i.i10 = lshr i32 %27, 5
  %arrayidx.i.i.i11 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i10
  %29 = ptrtoint ptr %arrayidx.i.i.i11 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i11, align 4
  %and.i.i.i12 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i12
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i13.not = icmp eq i32 %32, 0
  br i1 %tobool.i13.not, label %cpu_online.exit14.if.end69_crit_edge, label %if.then52

cpu_online.exit14.if.end69_crit_edge:             ; preds = %cpu_online.exit14
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit14
  %33 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !191
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_latency, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b1 = load i1, ptr @trace_kyber_latency.__warned, align 1
  br i1 %.b1, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_kyber_latency.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 46, ptr noundef nonnull @.str.20) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !192
  %38 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i.i15 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i15 to ptr
  %preempt_count.i.i.i16 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i16, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i16, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit14.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_resize(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_kyber_adjust(i32 noundef %dev, ptr noundef %domain, i32 noundef %depth) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_adjust, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_kyber_adjust, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !168) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !178

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !193
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_adjust, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %dev, ptr noundef %domain, i32 noundef %depth) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !194
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !194
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !178

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !191
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_adjust, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_kyber_adjust.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_kyber_adjust.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 69, ptr noundef nonnull @.str.20) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !192
  %38 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_stat_disable_accounting(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sbitmap_init_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_domain_wake(ptr noundef %wqe, i32 noundef %mode, i32 noundef %flags, ptr nocapture noundef readnone %key) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.wait_queue_entry, ptr %wqe, i32 0, i32 1
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %private, align 4
  %add.ptr = getelementptr i8, ptr %wqe, i32 -4
  tail call void @sbitmap_del_wait_queue(ptr noundef %add.ptr) #17
  tail call void @blk_mq_run_hw_queue(ptr noundef %1, i1 noundef zeroext true) #17
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_del_wait_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_mq_run_hw_queue(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_min_shallow_depth(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @blk_bio_list_merge(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_block_rq_insert(ptr noundef %rq) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 1), ptr blockaddress(@trace_block_rq_insert, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !168) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !178

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  %9 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !195
  %call42 = tail call i32 @__traceiter_block_rq_insert(ptr noundef null, ptr noundef %rq) #17
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !196
  %13 = tail call i32 @llvm.read_register.i32(metadata !168) #17
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !168) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !178

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !191
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_block_rq_insert, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_block_rq_insert.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_block_rq_insert.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 195, ptr noundef nonnull @.str.20) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !192
  %31 = tail call i32 @llvm.read_register.i32(metadata !168) #17
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
declare dso_local i32 @__traceiter_block_rq_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @kyber_dispatch_cur_domain(ptr noundef %kqd, ptr noundef %khd) unnamed_addr #0 align 64 {
entry:
  %word.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_domain = getelementptr inbounds %struct.kyber_hctx_data, ptr %khd, i32 0, i32 2
  %0 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_domain, align 4
  %arrayidx = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 1, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %arrayidx, align 4
  %cmp.not = icmp eq ptr %3, %arrayidx
  %add.ptr = getelementptr i8, ptr %3, i32 -56
  %tobool.not8 = icmp eq ptr %add.ptr, null
  %tobool.not = or i1 %cmp.not, %tobool.not8
  br i1 %tobool.not, label %if.else8, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call fastcc i32 @kyber_get_domain_token(ptr noundef %kqd, ptr noundef %khd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp4 = icmp sgt i32 %call, -1
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.then
  %batching = getelementptr inbounds %struct.kyber_hctx_data, ptr %khd, i32 0, i32 3
  %4 = ptrtoint ptr %batching to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %batching, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %batching, align 4
  %6 = inttoptr i32 %call to ptr
  %priv.i = getelementptr i8, ptr %3, i32 96
  %7 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %priv.i, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #17
  br i1 %call.i.i, label %if.end.i.i, label %if.then5.list_del_init.exit_crit_edge

if.then5.list_del_init.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.then5.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %3, ptr %prev.i3.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #19
  %dev = getelementptr inbounds %struct.kyber_queue_data, ptr %kqd, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev, align 4
  %18 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cur_domain, align 4
  %arrayidx7 = getelementptr [4 x ptr], ptr @kyber_domain_names, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx7, align 4
  tail call fastcc void @trace_kyber_throttled(i32 noundef %17, ptr noundef %21)
  br label %cleanup

if.else8:                                         ; preds = %entry
  %arrayidx10 = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 5, i32 %1
  %call11 = tail call zeroext i1 @sbitmap_any_bit_set(ptr noundef %arrayidx10) #17
  br i1 %call11, label %if.then12, label %if.else8.cleanup_crit_edge

if.else8.cleanup_crit_edge:                       ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.then12:                                        ; preds = %if.else8
  %call13 = tail call fastcc i32 @kyber_get_domain_token(ptr noundef %kqd, ptr noundef %khd)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call13)
  %cmp14 = icmp sgt i32 %call13, -1
  br i1 %cmp14, label %if.then15, label %if.else23

if.then15:                                        ; preds = %if.then12
  %22 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cur_domain, align 4
  %arrayidx.i = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 5, i32 %23
  %shift.i.i.i = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 5, i32 %23, i32 1
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp34.not.i.i.i = icmp eq i32 %25, 0
  br i1 %cmp34.not.i.i.i, label %if.then15.kyber_flush_busy_kcqs.exit_crit_edge, label %while.body.lr.ph.i.i.i

if.then15.kyber_flush_busy_kcqs.exit_crit_edge:   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #19
  br label %kyber_flush_busy_kcqs.exit

while.body.lr.ph.i.i.i:                           ; preds = %if.then15
  %map.i.i.i = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 5, i32 %23, i32 4
  %map_nr.i.i.i = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 5, i32 %23, i32 2
  %kcqs.i.i.i.i = getelementptr inbounds %struct.kyber_hctx_data, ptr %khd, i32 0, i32 4
  %prev.i.i.i.i.i = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 1, i32 %1, i32 1
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %cleanup.i.i.i.while.body.i.i.i_crit_edge, %while.body.lr.ph.i.i.i
  %26 = phi i32 [ %25, %while.body.lr.ph.i.i.i ], [ %59, %cleanup.i.i.i.while.body.i.i.i_crit_edge ]
  %index.06.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %spec.store.select42.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ]
  %scanned.05.i.i.i = phi i32 [ 0, %while.body.lr.ph.i.i.i ], [ %add.i.i.i, %cleanup.i.i.i.while.body.i.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %word.i.i.i) #17
  %27 = ptrtoint ptr %word.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -1, ptr %word.i.i.i, align 4, !annotation !180
  %28 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %map.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr %struct.sbitmap_word, ptr %29, i32 %index.06.i.i.i
  %30 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx.i.i.i, align 128
  %sub8.i.i.i = sub i32 %26, %scanned.05.i.i.i
  %32 = call i32 @llvm.umin.i32(i32 %31, i32 %sub8.i.i.i) #17
  %add.i.i.i = add i32 %32, %scanned.05.i.i.i
  %word12.i.i.i = getelementptr %struct.sbitmap_word, ptr %29, i32 %index.06.i.i.i, i32 2
  %33 = ptrtoint ptr %word12.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %word12.i.i.i, align 128
  %cleared.i.i.i = getelementptr %struct.sbitmap_word, ptr %29, i32 %index.06.i.i.i, i32 4
  %35 = ptrtoint ptr %cleared.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cleared.i.i.i, align 128
  %neg.i.i.i = xor i32 %36, -1
  %and15.i.i.i = and i32 %34, %neg.i.i.i
  %37 = ptrtoint ptr %word.i.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and15.i.i.i, ptr %word.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and15.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %while.body.i.i.i.cleanup.i.i.i_crit_edge, label %while.cond19.preheader.i.i.i

while.body.i.i.i.cleanup.i.i.i_crit_edge:         ; preds = %while.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i.i.i

while.cond19.preheader.i.i.i:                     ; preds = %while.body.i.i.i
  %call1.i.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %word.i.i.i, i32 noundef %32, i32 noundef 0) #17
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i.i.i, i32 %32)
  %cmp21.not2.i.i.i = icmp ult i32 %call1.i.i.i, %32
  br i1 %cmp21.not2.i.i.i, label %while.cond19.preheader.i.i.i.if.end23.i.i.i_crit_edge, label %while.cond19.preheader.i.i.i.cleanup.i.i.i_crit_edge

while.cond19.preheader.i.i.i.cleanup.i.i.i_crit_edge: ; preds = %while.cond19.preheader.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i.i.i

while.cond19.preheader.i.i.i.if.end23.i.i.i_crit_edge: ; preds = %while.cond19.preheader.i.i.i
  br label %if.end23.i.i.i

if.end23.i.i.i:                                   ; preds = %if.end29.i.i.i.if.end23.i.i.i_crit_edge, %while.cond19.preheader.i.i.i.if.end23.i.i.i_crit_edge
  %call3.i.i.i = phi i32 [ %call.i.i.i, %if.end29.i.i.i.if.end23.i.i.i_crit_edge ], [ %call1.i.i.i, %while.cond19.preheader.i.i.i.if.end23.i.i.i_crit_edge ]
  %38 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %shift.i.i.i, align 4
  %shl25.i.i.i = shl i32 %index.06.i.i.i, %39
  %add26.i.i.i = add i32 %shl25.i.i.i, %call3.i.i.i
  %40 = ptrtoint ptr %kcqs.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %kcqs.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr %struct.kyber_ctx_queue, ptr %41, i32 %add26.i.i.i
  call void @_raw_spin_lock(ptr noundef %arrayidx.i.i.i.i) #17
  %arrayidx1.i.i.i.i = getelementptr %struct.kyber_ctx_queue, ptr %41, i32 %add26.i.i.i, i32 1, i32 %23
  %42 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %arrayidx1.i.i.i.i, align 4
  %cmp.i.not.i.i.i.i.i = icmp eq ptr %43, %arrayidx1.i.i.i.i
  br i1 %cmp.i.not.i.i.i.i.i, label %if.end23.i.i.i.if.end29.i.i.i_crit_edge, label %if.then.i.i.i.i.i

if.end23.i.i.i.if.end29.i.i.i_crit_edge:          ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end29.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end23.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  %44 = ptrtoint ptr %prev.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %prev.i.i.i.i.i, align 4
  %prev2.i.i.i.i.i.i = getelementptr %struct.kyber_ctx_queue, ptr %41, i32 %add26.i.i.i, i32 1, i32 %23, i32 1
  %46 = ptrtoint ptr %prev2.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev2.i.i.i.i.i.i, align 4
  %prev3.i.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i.i.i.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %43, ptr %45, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %arrayidx, ptr %47, align 4
  store ptr %47, ptr %prev.i.i.i.i.i, align 4
  %51 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %arrayidx1.i.i.i.i, ptr %arrayidx1.i.i.i.i, align 4
  store ptr %arrayidx1.i.i.i.i, ptr %prev2.i.i.i.i.i.i, align 4
  br label %if.end29.i.i.i

if.end29.i.i.i:                                   ; preds = %if.then.i.i.i.i.i, %if.end23.i.i.i.if.end29.i.i.i_crit_edge
  %52 = ptrtoint ptr %shift.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %shift.i.i.i, align 4
  %notmask.i.i.i.i.i = shl nsw i32 -1, %53
  %sub.i.i.i.i.i = xor i32 %notmask.i.i.i.i.i, -1
  %and.i.i.i.i.i = and i32 %add26.i.i.i, %sub.i.i.i.i.i
  %54 = ptrtoint ptr %map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %map.i.i.i, align 4
  %shr.i.i.i.i.i.i = lshr i32 %add26.i.i.i, %53
  %word.i.i.i.i.i.i = getelementptr %struct.sbitmap_word, ptr %55, i32 %shr.i.i.i.i.i.i, i32 2
  call void @_clear_bit(i32 noundef %and.i.i.i.i.i, ptr noundef %word.i.i.i.i.i.i) #17
  call void @_raw_spin_unlock(ptr noundef %arrayidx.i.i.i.i) #17
  %inc.i.i.i = add nuw i32 %call3.i.i.i, 1
  %call.i.i.i = call i32 @_find_next_bit_be(ptr noundef nonnull %word.i.i.i, i32 noundef %32, i32 noundef %inc.i.i.i) #17
  %cmp21.not.i.i.i = icmp ult i32 %call.i.i.i, %32
  br i1 %cmp21.not.i.i.i, label %if.end29.i.i.i.if.end23.i.i.i_crit_edge, label %if.end29.i.i.i.cleanup.i.i.i_crit_edge

if.end29.i.i.i.cleanup.i.i.i_crit_edge:           ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup.i.i.i

if.end29.i.i.i.if.end23.i.i.i_crit_edge:          ; preds = %if.end29.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end23.i.i.i

cleanup.i.i.i:                                    ; preds = %if.end29.i.i.i.cleanup.i.i.i_crit_edge, %while.cond19.preheader.i.i.i.cleanup.i.i.i_crit_edge, %while.body.i.i.i.cleanup.i.i.i_crit_edge
  %inc30.i.i.i = add i32 %index.06.i.i.i, 1
  %56 = ptrtoint ptr %map_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %map_nr.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc30.i.i.i, i32 %57)
  %cmp31.not.i.i.i = icmp ult i32 %inc30.i.i.i, %57
  %spec.store.select42.i.i.i = select i1 %cmp31.not.i.i.i, i32 %inc30.i.i.i, i32 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %word.i.i.i) #17
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i, align 4
  %cmp3.i.i.i = icmp ugt i32 %59, %add.i.i.i
  br i1 %cmp3.i.i.i, label %cleanup.i.i.i.while.body.i.i.i_crit_edge, label %cleanup.i.i.i.kyber_flush_busy_kcqs.exit_crit_edge

cleanup.i.i.i.kyber_flush_busy_kcqs.exit_crit_edge: ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %kyber_flush_busy_kcqs.exit

cleanup.i.i.i.while.body.i.i.i_crit_edge:         ; preds = %cleanup.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %while.body.i.i.i

kyber_flush_busy_kcqs.exit:                       ; preds = %cleanup.i.i.i.kyber_flush_busy_kcqs.exit_crit_edge, %if.then15.kyber_flush_busy_kcqs.exit_crit_edge
  %60 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx, align 4
  %add.ptr20 = getelementptr i8, ptr %61, i32 -56
  %batching21 = getelementptr inbounds %struct.kyber_hctx_data, ptr %khd, i32 0, i32 3
  %62 = ptrtoint ptr %batching21 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %batching21, align 4
  %inc22 = add i32 %63, 1
  store i32 %inc22, ptr %batching21, align 4
  %64 = inttoptr i32 %call13 to ptr
  %priv.i1 = getelementptr i8, ptr %61, i32 96
  %65 = ptrtoint ptr %priv.i1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %priv.i1, align 4
  %call.i.i2 = call zeroext i1 @__list_del_entry_valid(ptr noundef %61) #17
  br i1 %call.i.i2, label %if.end.i.i5, label %kyber_flush_busy_kcqs.exit.list_del_init.exit7_crit_edge

kyber_flush_busy_kcqs.exit.list_del_init.exit7_crit_edge: ; preds = %kyber_flush_busy_kcqs.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_del_init.exit7

if.end.i.i5:                                      ; preds = %kyber_flush_busy_kcqs.exit
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i.i3 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i3, align 4
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %61, align 4
  %prev1.i.i.i4 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i4 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i4, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del_init.exit7

list_del_init.exit7:                              ; preds = %if.end.i.i5, %kyber_flush_busy_kcqs.exit.list_del_init.exit7_crit_edge
  %72 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %61, ptr %61, align 4
  %prev.i3.i6 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i3.i6 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %61, ptr %prev.i3.i6, align 4
  br label %cleanup

if.else23:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #19
  %dev24 = getelementptr inbounds %struct.kyber_queue_data, ptr %kqd, i32 0, i32 1
  %74 = ptrtoint ptr %dev24 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dev24, align 4
  %76 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cur_domain, align 4
  %arrayidx26 = getelementptr [4 x ptr], ptr @kyber_domain_names, i32 0, i32 %77
  %78 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx26, align 4
  tail call fastcc void @trace_kyber_throttled(i32 noundef %75, ptr noundef %79)
  br label %cleanup

cleanup:                                          ; preds = %if.else23, %list_del_init.exit7, %if.else8.cleanup_crit_edge, %if.else, %list_del_init.exit
  %retval.0 = phi ptr [ %add.ptr, %list_del_init.exit ], [ %add.ptr20, %list_del_init.exit7 ], [ null, %if.else8.cleanup_crit_edge ], [ null, %if.else23 ], [ null, %if.else ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @kyber_get_domain_token(ptr noundef %kqd, ptr noundef %khd) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %cur_domain = getelementptr inbounds %struct.kyber_hctx_data, ptr %khd, i32 0, i32 2
  %0 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cur_domain, align 4
  %arrayidx = getelementptr %struct.kyber_queue_data, ptr %kqd, i32 0, i32 2, i32 %1
  %arrayidx2 = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 6, i32 %1
  %call = tail call i32 @__sbitmap_queue_get(ptr noundef %arrayidx) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %land.lhs.true, label %entry.land.lhs.true11_crit_edge

entry.land.lhs.true11_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11

land.lhs.true:                                    ; preds = %entry
  %entry4 = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 6, i32 %1, i32 1, i32 3
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %entry4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i = icmp eq ptr %3, %entry4
  br i1 %cmp.i.not.i, label %list_empty_careful.exit, label %land.lhs.true.if.end22_crit_edge

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

list_empty_careful.exit:                          ; preds = %land.lhs.true
  %prev.i = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 6, i32 %1, i32 1, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i.not = icmp eq ptr %5, %entry4
  br i1 %cmp.i.not, label %if.then, label %list_empty_careful.exit.if.end22_crit_edge

list_empty_careful.exit.if.end22_crit_edge:       ; preds = %list_empty_careful.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then:                                          ; preds = %list_empty_careful.exit
  %arrayidx6 = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 8, i32 %1
  %ws1.i = getelementptr %struct.kyber_queue_data, ptr %kqd, i32 0, i32 2, i32 %1, i32 3
  %6 = ptrtoint ptr %ws1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ws1.i, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx6, i32 noundef 4) #17
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %arrayidx6, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx6, i32 noundef 4) #17
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx6, align 4
  %add.i.i.i = add i32 %11, 1
  %and.i.i.i = and i32 %add.i.i.i, 7
  %call.i.i5.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx6, i32 noundef 4) #17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !197
  tail call void @llvm.prefetch.p0(ptr %arrayidx6, i32 1, i32 3, i32 1) #17
  br label %do.body.i.i.i.i.i

do.body.i.i.i.i.i:                                ; preds = %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge, %if.then
  %12 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %arrayidx6, ptr %arrayidx6, i32 %11, i32 %and.i.i.i, ptr elementtype(i32) %arrayidx6) #17, !srcloc !198
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %12, 0
  %tobool.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end, label %do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.do.body.i.i.i.i.i_crit_edge:    ; preds = %do.body.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body.i.i.i.i.i

if.end:                                           ; preds = %do.body.i.i.i.i.i
  %arrayidx.i = getelementptr %struct.sbq_wait_state, ptr %7, i32 %9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !199
  %arrayidx8 = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 7, i32 %1
  %13 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %arrayidx.i, ptr %arrayidx8, align 4
  tail call void @sbitmap_add_wait_queue(ptr noundef %arrayidx, ptr noundef %arrayidx.i, ptr noundef %arrayidx2) #17
  %call9 = tail call i32 @__sbitmap_queue_get(ptr noundef %arrayidx) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call9)
  %cmp10 = icmp sgt i32 %call9, -1
  br i1 %cmp10, label %if.end.land.lhs.true11_crit_edge, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.end.land.lhs.true11_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #19
  br label %land.lhs.true11

land.lhs.true11:                                  ; preds = %if.end.land.lhs.true11_crit_edge, %entry.land.lhs.true11_crit_edge
  %nr.014 = phi i32 [ %call9, %if.end.land.lhs.true11_crit_edge ], [ %call, %entry.land.lhs.true11_crit_edge ]
  %entry13 = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 6, i32 %1, i32 1, i32 3
  %14 = ptrtoint ptr %entry13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %entry13, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i1 = icmp eq ptr %15, %entry13
  br i1 %cmp.i.not.i1, label %list_empty_careful.exit6, label %land.lhs.true11.if.then16_crit_edge

land.lhs.true11.if.then16_crit_edge:              ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then16

list_empty_careful.exit6:                         ; preds = %land.lhs.true11
  %prev.i2 = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 6, i32 %1, i32 1, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i2, align 4
  %cmp.i3.not = icmp eq ptr %17, %entry13
  br i1 %cmp.i3.not, label %list_empty_careful.exit6.if.end22_crit_edge, label %list_empty_careful.exit6.if.then16_crit_edge

list_empty_careful.exit6.if.then16_crit_edge:     ; preds = %list_empty_careful.exit6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.then16

list_empty_careful.exit6.if.end22_crit_edge:      ; preds = %list_empty_careful.exit6
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end22

if.then16:                                        ; preds = %list_empty_careful.exit6.if.then16_crit_edge, %land.lhs.true11.if.then16_crit_edge
  %arrayidx18 = getelementptr %struct.kyber_hctx_data, ptr %khd, i32 0, i32 7, i32 %1
  %18 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx18, align 4
  %wait19 = getelementptr inbounds %struct.sbq_wait_state, ptr %19, i32 0, i32 1
  tail call void @_raw_spin_lock_irq(ptr noundef %wait19) #17
  tail call void @sbitmap_del_wait_queue(ptr noundef %arrayidx2) #17
  tail call void @_raw_spin_unlock_irq(ptr noundef %wait19) #17
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %list_empty_careful.exit6.if.end22_crit_edge, %if.end.if.end22_crit_edge, %list_empty_careful.exit.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge
  %nr.010 = phi i32 [ %nr.014, %if.then16 ], [ %nr.014, %list_empty_careful.exit6.if.end22_crit_edge ], [ %call9, %if.end.if.end22_crit_edge ], [ %call, %list_empty_careful.exit.if.end22_crit_edge ], [ %call, %land.lhs.true.if.end22_crit_edge ]
  ret i32 %nr.010
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_kyber_throttled(i32 noundef %dev, ptr noundef %domain) unnamed_addr #13 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_throttled, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_kyber_throttled, %do.body)) #17
          to label %if.end48 [label %do.body], !srcloc !188

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !168) #17
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
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !178

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %if.end31

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !200
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_throttled, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end48.critedge, label %if.end31.do.body2.i_crit_edge

if.end31.do.body2.i_crit_edge:                    ; preds = %if.end31
  br label %do.body2.i

do.body2.i:                                       ; preds = %do.body2.i.do.body2.i_crit_edge, %if.end31.do.body2.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body2.i.do.body2.i_crit_edge ], [ %13, %if.end31.do.body2.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i32 noundef %dev, ptr noundef %domain) #17
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !201
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #19
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !201
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i73.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i73.c to ptr
  %preempt_count.i.i74.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i74.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i74.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i74.c, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end48.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i76 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i76 to ptr
  %cpu50 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu50, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i77 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i77, label %if.end48.cpu_online.exit85_crit_edge, label %land.rhs.i.i.i.i79

if.end48.cpu_online.exit85_crit_edge:             ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !178

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 108, i32 noundef 9, ptr noundef null) #17
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div1.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div1.i.i.i81
  %29 = ptrtoint ptr %arrayidx.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i82, align 4
  %and.i.i.i83 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i83
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i84.not = icmp eq i32 %32, 0
  br i1 %tobool.i84.not, label %cpu_online.exit85.if.end69_crit_edge, label %if.then52

cpu_online.exit85.if.end69_crit_edge:             ; preds = %cpu_online.exit85
  call void @__sanitizer_cov_trace_pc() #19
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !191
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_kyber_throttled, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_kyber_throttled.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #19
  store i1 true, ptr @trace_kyber_throttled.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.19, i32 noundef 89, ptr noundef nonnull @.str.20) #17
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #17, !srcloc !192
  %38 = tail call i32 @llvm.read_register.i32(metadata !168) #17
  %and.i.i.i.i86 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i86 to ptr
  %preempt_count.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i87, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i87, align 4
  br label %if.end69

if.end69:                                         ; preds = %do.end67, %cpu_online.exit85.if.end69_crit_edge, %cpu_online.exit.if.end69_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sbitmap_any_bit_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sbitmap_queue_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_add_wait_queue(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @timer_reduce(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_read_lat_show(ptr nocapture noundef readonly %e, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %latency_targets = getelementptr inbounds %struct.kyber_queue_data, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %latency_targets to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %latency_targets, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.33, i64 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_read_lat_store(ptr nocapture noundef readonly %e, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %nsec = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nsec) #17
  %2 = ptrtoint ptr %nsec to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %nsec, align 8, !annotation !180
  %call = call i32 @kstrtoull(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %nsec) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %nsec to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %nsec, align 8
  %latency_targets = getelementptr inbounds %struct.kyber_queue_data, ptr %1, i32 0, i32 9
  %5 = ptrtoint ptr %latency_targets to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %latency_targets, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nsec) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_write_lat_show(ptr nocapture noundef readonly %e, ptr nocapture noundef writeonly %page) #14 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arrayidx, align 8
  %call = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %page, ptr noundef nonnull @.str.33, i64 noundef %3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_write_lat_store(ptr nocapture noundef readonly %e, ptr noundef %page, i32 noundef %count) #0 align 64 {
entry:
  %nsec = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %e, i32 0, i32 1
  %0 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %nsec) #17
  %2 = ptrtoint ptr %nsec to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %nsec, align 8, !annotation !180
  %call = call i32 @kstrtoull(ptr noundef %page, i32 noundef 10, ptr noundef nonnull %nsec) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %3 = ptrtoint ptr %nsec to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %nsec, align 8
  %arrayidx = getelementptr %struct.kyber_queue_data, ptr %1, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %arrayidx, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %nsec) #17
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_read_tokens_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %domain_tokens = getelementptr inbounds %struct.kyber_queue_data, ptr %3, i32 0, i32 2
  tail call void @sbitmap_queue_show(ptr noundef %domain_tokens, ptr noundef %m) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_write_tokens_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 1
  tail call void @sbitmap_queue_show(ptr noundef %arrayidx, ptr noundef %m) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_discard_tokens_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 2
  tail call void @sbitmap_queue_show(ptr noundef %arrayidx, ptr noundef %m) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_other_tokens_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %arrayidx = getelementptr %struct.kyber_queue_data, ptr %3, i32 0, i32 2, i32 3
  tail call void @sbitmap_queue_show(ptr noundef %arrayidx, ptr noundef %m) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_async_depth_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %elevator = getelementptr inbounds %struct.request_queue, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %elevator to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %elevator, align 4
  %elevator_data = getelementptr inbounds %struct.elevator_queue, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %elevator_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %elevator_data, align 4
  %async_depth = getelementptr inbounds %struct.kyber_queue_data, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %async_depth to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %async_depth, align 8
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %5) #17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sbitmap_queue_show(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_read_waiting_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %entry2 = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 0, i32 1, i32 3
  %2 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %entry2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i = icmp eq ptr %3, %entry2
  br i1 %cmp.i.not.i, label %land.rhs.i, label %entry.list_empty_careful.exit_crit_edge

entry.list_empty_careful.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 0, i32 1, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i = icmp ne ptr %5, %entry2
  %phi.cast = zext i1 %cmp.i to i32
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %entry.list_empty_careful.exit_crit_edge
  %6 = phi i32 [ 1, %entry.list_empty_careful.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %6) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_write_waiting_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %entry2 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 1, i32 1, i32 3
  %2 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %entry2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i = icmp eq ptr %3, %entry2
  br i1 %cmp.i.not.i, label %land.rhs.i, label %entry.list_empty_careful.exit_crit_edge

entry.list_empty_careful.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 1, i32 1, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i = icmp ne ptr %5, %entry2
  %phi.cast = zext i1 %cmp.i to i32
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %entry.list_empty_careful.exit_crit_edge
  %6 = phi i32 [ 1, %entry.list_empty_careful.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %6) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_discard_waiting_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %entry2 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 2, i32 1, i32 3
  %2 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %entry2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i = icmp eq ptr %3, %entry2
  br i1 %cmp.i.not.i, label %land.rhs.i, label %entry.list_empty_careful.exit_crit_edge

entry.list_empty_careful.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 2, i32 1, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i = icmp ne ptr %5, %entry2
  %phi.cast = zext i1 %cmp.i to i32
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %entry.list_empty_careful.exit_crit_edge
  %6 = phi i32 [ 1, %entry.list_empty_careful.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %6) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_other_waiting_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %entry2 = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 3, i32 1, i32 3
  %2 = ptrtoint ptr %entry2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %entry2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #17, !srcloc !181
  %cmp.i.not.i = icmp eq ptr %3, %entry2
  br i1 %cmp.i.not.i, label %land.rhs.i, label %entry.list_empty_careful.exit_crit_edge

entry.list_empty_careful.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  br label %list_empty_careful.exit

land.rhs.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #19
  %prev.i = getelementptr %struct.kyber_hctx_data, ptr %1, i32 0, i32 6, i32 3, i32 1, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %cmp.i = icmp ne ptr %5, %entry2
  %phi.cast = zext i1 %cmp.i to i32
  br label %list_empty_careful.exit

list_empty_careful.exit:                          ; preds = %land.rhs.i, %entry.list_empty_careful.exit_crit_edge
  %6 = phi i32 [ 1, %entry.list_empty_careful.exit_crit_edge ], [ %phi.cast, %land.rhs.i ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.50, i32 noundef %6) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_cur_domain_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %cur_domain = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cur_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_domain, align 4
  %arrayidx = getelementptr [4 x ptr], ptr @kyber_domain_names, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.51, ptr noundef %5) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @kyber_batching_show(ptr nocapture noundef readonly %data, ptr noundef %m) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %data, i32 0, i32 6
  %0 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_data, align 4
  %batching = getelementptr inbounds %struct.kyber_hctx_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %batching to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %batching, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %m, ptr noundef nonnull @.str.39, i32 noundef %3) #17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kyber_read_rqs_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  %rqs = getelementptr inbounds %struct.kyber_hctx_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %rqs, i64 noundef %5) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_read_rqs_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  tail call void @_raw_spin_unlock(ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kyber_read_rqs_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  %rqs = getelementptr inbounds %struct.kyber_hctx_data, ptr %3, i32 0, i32 1
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %rqs, ptr noundef %pos) #17
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_mq_debugfs_rq_show(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_start(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @seq_list_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kyber_write_rqs_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  %arrayidx = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx, i64 noundef %5) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_write_rqs_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  tail call void @_raw_spin_unlock(ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kyber_write_rqs_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  %arrayidx = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 1
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx, ptr noundef %pos) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kyber_discard_rqs_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  %arrayidx = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx, i64 noundef %5) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_discard_rqs_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  tail call void @_raw_spin_unlock(ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kyber_discard_rqs_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  %arrayidx = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 2
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx, ptr noundef %pos) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kyber_other_rqs_start(ptr nocapture noundef readonly %m, ptr nocapture noundef readonly %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %3) #17
  %arrayidx = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %pos to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %pos, align 8
  %call = tail call ptr @seq_list_start(ptr noundef %arrayidx, i64 noundef %5) #17
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @kyber_other_rqs_stop(ptr nocapture noundef readonly %m, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  tail call void @_raw_spin_unlock(ptr noundef %3) #17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @kyber_other_rqs_next(ptr nocapture noundef readonly %m, ptr noundef %v, ptr noundef %pos) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #19
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %sched_data = getelementptr inbounds %struct.blk_mq_hw_ctx, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %sched_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sched_data, align 4
  %arrayidx = getelementptr %struct.kyber_hctx_data, ptr %3, i32 0, i32 1, i32 3
  %call = tail call ptr @seq_list_next(ptr noundef %v, ptr noundef %arrayidx, ptr noundef %pos) #17
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @elv_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #16

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #16

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #17

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #18 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #18 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #13 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #14 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #16 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #17 = { nounwind }
attributes #18 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #19 = { nomerge }
attributes #20 = { nounwind allocsize(2) }
attributes #21 = { nounwind allocsize(0) }
attributes #22 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !26, !28, !30, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !67, !69, !71, !72, !74, !75, !76, !77, !78, !80, !81, !83, !85, !87, !89, !91, !93, !95, !97, !98, !99, !101, !103, !105, !107, !108, !110, !111, !113, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !155, !157, !159, !160, !162, !164, !166}
!llvm.named.register.sp = !{!168}
!llvm.module.flags = !{!169, !170, !171, !172, !173, !174, !175, !176}
!llvm.ident = !{!177}

!0 = !{ptr @__tracepoint_kyber_latency, !1, !"__tracepoint_kyber_latency", i1 false, i1 false}
!1 = !{!"../include/trace/events/kyber.h", i32 14, i32 1}
!2 = !{ptr @__tracepoint_ptr_kyber_latency, !1, !"__tracepoint_ptr_kyber_latency", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_kyber_latency, !1, !"__SCK__tp_func_kyber_latency", i1 false, i1 false}
!4 = !{ptr @__tracepoint_kyber_adjust, !5, !"__tracepoint_kyber_adjust", i1 false, i1 false}
!5 = !{!"../include/trace/events/kyber.h", i32 48, i32 1}
!6 = !{ptr @__tracepoint_ptr_kyber_adjust, !5, !"__tracepoint_ptr_kyber_adjust", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_kyber_adjust, !5, !"__SCK__tp_func_kyber_adjust", i1 false, i1 false}
!8 = !{ptr @__tracepoint_kyber_throttled, !9, !"__tracepoint_kyber_throttled", i1 false, i1 false}
!9 = !{!"../include/trace/events/kyber.h", i32 71, i32 1}
!10 = !{ptr @__tracepoint_ptr_kyber_throttled, !9, !"__tracepoint_ptr_kyber_throttled", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_kyber_throttled, !9, !"__SCK__tp_func_kyber_throttled", i1 false, i1 false}
!12 = !{ptr @event_class_kyber_latency, !1, !"event_class_kyber_latency", i1 false, i1 false}
!13 = !{ptr @event_kyber_latency, !1, !"event_kyber_latency", i1 false, i1 false}
!14 = !{ptr @__event_kyber_latency, !1, !"__event_kyber_latency", i1 false, i1 false}
!15 = !{ptr @event_class_kyber_adjust, !5, !"event_class_kyber_adjust", i1 false, i1 false}
!16 = !{ptr @event_kyber_adjust, !5, !"event_kyber_adjust", i1 false, i1 false}
!17 = !{ptr @__event_kyber_adjust, !5, !"__event_kyber_adjust", i1 false, i1 false}
!18 = !{ptr @event_class_kyber_throttled, !9, !"event_class_kyber_throttled", i1 false, i1 false}
!19 = !{ptr @event_kyber_throttled, !9, !"event_kyber_throttled", i1 false, i1 false}
!20 = !{ptr @__event_kyber_throttled, !9, !"__event_kyber_throttled", i1 false, i1 false}
!21 = !{ptr @__bpf_trace_tp_map_kyber_latency, !1, !"__bpf_trace_tp_map_kyber_latency", i1 false, i1 false}
!22 = !{ptr @__bpf_trace_tp_map_kyber_adjust, !5, !"__bpf_trace_tp_map_kyber_adjust", i1 false, i1 false}
!23 = !{ptr @__bpf_trace_tp_map_kyber_throttled, !9, !"__bpf_trace_tp_map_kyber_throttled", i1 false, i1 false}
!24 = !{ptr @__initcall__kmod_kyber_iosched__372_1050_kyber_init6, !25, !"__initcall__kmod_kyber_iosched__372_1050_kyber_init6", i1 false, i1 false}
!25 = !{!"../block/kyber-iosched.c", i32 1050, i32 1}
!26 = !{ptr @__exitcall_kyber_exit, !27, !"__exitcall_kyber_exit", i1 false, i1 false}
!27 = !{!"../block/kyber-iosched.c", i32 1051, i32 1}
!28 = !{ptr @__UNIQUE_ID_author373, !29, !"__UNIQUE_ID_author373", i1 false, i1 false}
!29 = !{!"../block/kyber-iosched.c", i32 1053, i32 1}
!30 = !{ptr @__UNIQUE_ID_file374, !31, !"__UNIQUE_ID_file374", i1 false, i1 false}
!31 = !{!"../block/kyber-iosched.c", i32 1054, i32 1}
!32 = !{ptr @__UNIQUE_ID_license375, !31, !"__UNIQUE_ID_license375", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_description376, !34, !"__UNIQUE_ID_description376", i1 false, i1 false}
!34 = !{!"../block/kyber-iosched.c", i32 1055, i32 1}
!35 = !{ptr @__tpstrtab_kyber_latency, !1, !"__tpstrtab_kyber_latency", i1 false, i1 false}
!36 = !{ptr @__tpstrtab_kyber_adjust, !5, !"__tpstrtab_kyber_adjust", i1 false, i1 false}
!37 = !{ptr @__tpstrtab_kyber_throttled, !9, !"__tpstrtab_kyber_throttled", i1 false, i1 false}
!38 = !{ptr @str__kyber__trace_system_name, !39, !"str__kyber__trace_system_name", i1 false, i1 false}
!39 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!40 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.5, !1, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.6, !1, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.7, !1, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.8, !1, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.9, !1, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.10, !1, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.11, !1, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @trace_event_fields_kyber_latency, !1, !"trace_event_fields_kyber_latency", i1 false, i1 false}
!53 = !{ptr @trace_event_type_funcs_kyber_latency, !1, !"trace_event_type_funcs_kyber_latency", i1 false, i1 false}
!54 = !{ptr @.str.12, !1, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @print_fmt_kyber_latency, !1, !"print_fmt_kyber_latency", i1 false, i1 false}
!56 = !{ptr @.str.13, !5, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @trace_event_fields_kyber_adjust, !5, !"trace_event_fields_kyber_adjust", i1 false, i1 false}
!58 = !{ptr @trace_event_type_funcs_kyber_adjust, !5, !"trace_event_type_funcs_kyber_adjust", i1 false, i1 false}
!59 = !{ptr @.str.14, !5, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @print_fmt_kyber_adjust, !5, !"print_fmt_kyber_adjust", i1 false, i1 false}
!61 = !{ptr @trace_event_fields_kyber_throttled, !9, !"trace_event_fields_kyber_throttled", i1 false, i1 false}
!62 = !{ptr @trace_event_type_funcs_kyber_throttled, !9, !"trace_event_type_funcs_kyber_throttled", i1 false, i1 false}
!63 = !{ptr @.str.15, !9, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @print_fmt_kyber_throttled, !9, !"print_fmt_kyber_throttled", i1 false, i1 false}
!65 = !{ptr @.str.16, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../block/kyber-iosched.c", i32 1035, i32 19}
!67 = !{ptr @kyber_sched, !68, !"kyber_sched", i1 false, i1 false}
!68 = !{!"../block/kyber-iosched.c", i32 1013, i32 29}
!69 = !{ptr @kyber_queue_data_alloc.__key, !70, !"__key", i1 false, i1 false}
!70 = !{!"../block/kyber-iosched.c", i32 377, i32 2}
!71 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../block/kyber-iosched.c", i32 380, i32 3}
!74 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!75 = !{ptr @.str.19, !1, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!77 = !{ptr @.str.20, !1, !"<string literal>", i1 false, i1 false}
!78 = distinct !{null, !79, !"__already_done", i1 false, i1 false}
!79 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!80 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @.str.22, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../block/kyber-iosched.c", i32 40, i32 17}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../block/kyber-iosched.c", i32 41, i32 18}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../block/kyber-iosched.c", i32 42, i32 20}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../block/kyber-iosched.c", i32 43, i32 18}
!89 = !{ptr @kyber_domain_names, !90, !"kyber_domain_names", i1 false, i1 false}
!90 = !{!"../block/kyber-iosched.c", i32 39, i32 20}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../block/kyber-iosched.c", i32 127, i32 26}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../block/kyber-iosched.c", i32 128, i32 23}
!95 = !{ptr @kyber_latency_type_names, !96, !"kyber_latency_type_names", i1 false, i1 false}
!96 = !{!"../block/kyber-iosched.c", i32 126, i32 20}
!97 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!98 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!99 = distinct !{null, !100, !"kyber_depth", i1 false, i1 false}
!100 = !{!"../block/kyber-iosched.c", i32 62, i32 27}
!101 = !{ptr @kyber_batch_size, !102, !"kyber_batch_size", i1 false, i1 false}
!102 = !{!"../block/kyber-iosched.c", i32 82, i32 27}
!103 = distinct !{null, !104, !"kyber_latency_targets", i1 false, i1 false}
!104 = !{!"../block/kyber-iosched.c", i32 72, i32 18}
!105 = !{ptr @kyber_init_hctx.__key, !106, !"__key", i1 false, i1 false}
!106 = !{!"../block/kyber-iosched.c", i32 492, i32 2}
!107 = !{ptr @.str.28, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @kyber_ctx_queue_init.__key, !109, !"__key", i1 false, i1 false}
!109 = !{!"../block/kyber-iosched.c", i32 448, i32 2}
!110 = !{ptr @.str.29, !109, !"<string literal>", i1 false, i1 false}
!111 = distinct !{null, !112, !"__already_done", i1 false, i1 false}
!112 = !{!"../include/trace/events/block.h", i32 190, i32 1}
!113 = !{ptr @.str.30, !112, !"<string literal>", i1 false, i1 false}
!114 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!115 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!116 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!117 = !{ptr @.str.31, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../block/kyber-iosched.c", i32 892, i32 2}
!119 = !{ptr @.str.32, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../block/kyber-iosched.c", i32 893, i32 2}
!121 = !{ptr @kyber_sched_attrs, !122, !"kyber_sched_attrs", i1 false, i1 false}
!122 = !{!"../block/kyber-iosched.c", i32 891, i32 28}
!123 = !{ptr @.str.33, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../block/kyber-iosched.c", i32 886, i32 1}
!125 = !{ptr @.str.34, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../block/kyber-iosched.c", i32 989, i32 2}
!127 = !{ptr @.str.35, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../block/kyber-iosched.c", i32 990, i32 2}
!129 = !{ptr @.str.36, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../block/kyber-iosched.c", i32 991, i32 2}
!131 = !{ptr @.str.37, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../block/kyber-iosched.c", i32 992, i32 2}
!133 = !{ptr @.str.38, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../block/kyber-iosched.c", i32 993, i32 3}
!135 = !{ptr @kyber_queue_debugfs_attrs, !136, !"kyber_queue_debugfs_attrs", i1 false, i1 false}
!136 = !{!"../block/kyber-iosched.c", i32 988, i32 41}
!137 = !{ptr @.str.39, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../block/kyber-iosched.c", i32 964, i32 16}
!139 = !{ptr @.str.40, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../block/kyber-iosched.c", i32 1002, i32 2}
!141 = !{ptr @.str.41, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.42, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../block/kyber-iosched.c", i32 1003, i32 2}
!144 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.44, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../block/kyber-iosched.c", i32 1004, i32 2}
!147 = !{ptr @.str.45, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.46, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../block/kyber-iosched.c", i32 1005, i32 2}
!150 = !{ptr @.str.47, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.48, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../block/kyber-iosched.c", i32 1006, i32 3}
!153 = !{ptr @.str.49, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../block/kyber-iosched.c", i32 1007, i32 3}
!155 = !{ptr @kyber_hctx_debugfs_attrs, !156, !"kyber_hctx_debugfs_attrs", i1 false, i1 false}
!156 = !{!"../block/kyber-iosched.c", i32 1001, i32 41}
!157 = !{ptr @kyber_read_rqs_seq_ops, !158, !"kyber_read_rqs_seq_ops", i1 false, i1 false}
!158 = !{!"../block/kyber-iosched.c", i32 953, i32 1}
!159 = !{ptr @.str.50, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @kyber_write_rqs_seq_ops, !161, !"kyber_write_rqs_seq_ops", i1 false, i1 false}
!161 = !{!"../block/kyber-iosched.c", i32 954, i32 1}
!162 = !{ptr @kyber_discard_rqs_seq_ops, !163, !"kyber_discard_rqs_seq_ops", i1 false, i1 false}
!163 = !{!"../block/kyber-iosched.c", i32 955, i32 1}
!164 = !{ptr @kyber_other_rqs_seq_ops, !165, !"kyber_other_rqs_seq_ops", i1 false, i1 false}
!165 = !{!"../block/kyber-iosched.c", i32 956, i32 1}
!166 = !{ptr @.str.51, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../block/kyber-iosched.c", i32 973, i32 16}
!168 = !{!"sp"}
!169 = !{i32 1, !"wchar_size", i32 2}
!170 = !{i32 1, !"min_enum_size", i32 4}
!171 = !{i32 8, !"branch-target-enforcement", i32 0}
!172 = !{i32 8, !"sign-return-address", i32 0}
!173 = !{i32 8, !"sign-return-address-all", i32 0}
!174 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!175 = !{i32 7, !"uwtable", i32 1}
!176 = !{i32 7, !"frame-pointer", i32 2}
!177 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!178 = !{!"branch_weights", i32 2000, i32 1}
!179 = !{!"branch_weights", i32 1, i32 2000}
!180 = !{!"auto-init"}
!181 = !{i64 2149048640}
!182 = !{i64 2156526265}
!183 = !{i64 2148236370, i64 2148236396, i64 2148236425, i64 2148236459, i64 2148236490, i64 2148236513}
!184 = !{i64 2156527386}
!185 = !{i64 2148496210}
!186 = !{i64 743138, i64 743155, i64 743179, i64 743205, i64 743223}
!187 = !{i64 2148496580}
!188 = !{i64 2148718185, i64 2148718190, i64 2148718203, i64 2148718247, i64 2148718281, i64 2148718302}
!189 = !{i64 2155251341}
!190 = !{i64 2155251654}
!191 = !{i64 2149321774}
!192 = !{i64 2149322810}
!193 = !{i64 2155268392}
!194 = !{i64 2155268615}
!195 = !{i64 2154836711}
!196 = !{i64 2154836908}
!197 = !{i64 2148338193}
!198 = !{i64 720106, i64 720130, i64 720151, i64 720168, i64 720185}
!199 = !{i64 2148338419}
!200 = !{i64 2155284606}
!201 = !{i64 2155284821}
