; ModuleID = '/llk/IR_all_yes/kernel/trace/ring_buffer_benchmark.c_pt.bc'
source_filename = "../kernel/trace/ring_buffer_benchmark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.rb_page = type { i64, %struct.local_t, [4080 x i8] }
%struct.local_t = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ring_buffer_event = type { i32, [0 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.53, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.29 }
%struct.llist_node = type { ptr }
%union.anon.29 = type { i32 }
%struct.sched_entity = type { %struct.load_weight, %struct.rb_node, %struct.list_head, i32, i64, i64, i64, i64, i64, i32, ptr, ptr, ptr, i32, [36 x i8], %struct.sched_avg }
%struct.load_weight = type { i32, i32 }
%struct.sched_avg = type { i64, i64, i64, i32, i32, i32, i32, i32, [4 x i8], %struct.util_est, [72 x i8] }
%struct.util_est = type { i32, i32 }
%struct.sched_rt_entity = type { %struct.list_head, i32, i32, i32, i16, i16, ptr, ptr, ptr, ptr }
%struct.sched_dl_entity = type { %struct.rb_node, i64, i64, i64, i64, i64, i64, i64, i32, i8, %struct.hrtimer, %struct.hrtimer, ptr }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.uclamp_se = type { i16, [2 x i8] }
%struct.sched_statistics = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [24 x i8] }
%union.rcu_special = type { i32 }
%struct.sched_info = type { i32, i64, i64, i64 }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.rb_node = type { i32, ptr, ptr }
%struct.vmacache = type { i64, [4 x ptr] }
%struct.task_rss_stat = type { i32, [4 x i32] }
%struct.restart_block = type { i32, ptr, %union.anon.31 }
%union.anon.31 = type { %struct.anon.32 }
%struct.anon.32 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.kuid_t = type { i32 }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tlbflush_unmap_batch = type {}
%union.anon.53 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }

@__param_str_disable_reader = internal constant [37 x i8] c"ring_buffer_benchmark.disable_reader\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@disable_reader = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_reader = internal constant %struct.kernel_param { ptr @__param_str_disable_reader, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @disable_reader } }, section "__param", align 4
@__UNIQUE_ID_disable_readertype225 = internal constant [51 x i8] c"ring_buffer_benchmark.parmtype=disable_reader:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_reader226 = internal constant [60 x i8] c"ring_buffer_benchmark.parm=disable_reader:only run producer\00", section ".modinfo", align 1
@__param_str_write_iteration = internal constant [38 x i8] c"ring_buffer_benchmark.write_iteration\00", align 1
@write_iteration = internal global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__param_write_iteration = internal constant %struct.kernel_param { ptr @__param_str_write_iteration, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @write_iteration } }, section "__param", align 4
@__UNIQUE_ID_write_iterationtype227 = internal constant [52 x i8] c"ring_buffer_benchmark.parmtype=write_iteration:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_write_iteration228 = internal constant [82 x i8] c"ring_buffer_benchmark.parm=write_iteration:# of writes between timestamp readings\00", section ".modinfo", align 1
@__param_str_producer_nice = internal constant [36 x i8] c"ring_buffer_benchmark.producer_nice\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@producer_nice = internal global { i32, [28 x i8] } { i32 19, [28 x i8] zeroinitializer }, align 32
@__param_producer_nice = internal constant %struct.kernel_param { ptr @__param_str_producer_nice, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @producer_nice } }, section "__param", align 4
@__UNIQUE_ID_producer_nicetype229 = internal constant [49 x i8] c"ring_buffer_benchmark.parmtype=producer_nice:int\00", section ".modinfo", align 1
@__UNIQUE_ID_producer_nice230 = internal constant [64 x i8] c"ring_buffer_benchmark.parm=producer_nice:nice prio for producer\00", section ".modinfo", align 1
@__param_str_consumer_nice = internal constant [36 x i8] c"ring_buffer_benchmark.consumer_nice\00", align 1
@consumer_nice = internal global { i32, [28 x i8] } { i32 19, [28 x i8] zeroinitializer }, align 32
@__param_consumer_nice = internal constant %struct.kernel_param { ptr @__param_str_consumer_nice, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @consumer_nice } }, section "__param", align 4
@__UNIQUE_ID_consumer_nicetype231 = internal constant [49 x i8] c"ring_buffer_benchmark.parmtype=consumer_nice:int\00", section ".modinfo", align 1
@__UNIQUE_ID_consumer_nice232 = internal constant [64 x i8] c"ring_buffer_benchmark.parm=consumer_nice:nice prio for consumer\00", section ".modinfo", align 1
@__param_str_producer_fifo = internal constant [36 x i8] c"ring_buffer_benchmark.producer_fifo\00", align 1
@producer_fifo = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_producer_fifo = internal constant %struct.kernel_param { ptr @__param_str_producer_fifo, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @producer_fifo } }, section "__param", align 4
@__UNIQUE_ID_producer_fifotype233 = internal constant [49 x i8] c"ring_buffer_benchmark.parmtype=producer_fifo:int\00", section ".modinfo", align 1
@__UNIQUE_ID_producer_fifo234 = internal constant [101 x i8] c"ring_buffer_benchmark.parm=producer_fifo:use fifo for producer: 0 - disabled, 1 - low prio, 2 - fifo\00", section ".modinfo", align 1
@__param_str_consumer_fifo = internal constant [36 x i8] c"ring_buffer_benchmark.consumer_fifo\00", align 1
@consumer_fifo = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_consumer_fifo = internal constant %struct.kernel_param { ptr @__param_str_consumer_fifo, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.65 { ptr @consumer_fifo } }, section "__param", align 4
@__UNIQUE_ID_consumer_fifotype235 = internal constant [49 x i8] c"ring_buffer_benchmark.parmtype=consumer_fifo:int\00", section ".modinfo", align 1
@__UNIQUE_ID_consumer_fifo236 = internal constant [101 x i8] c"ring_buffer_benchmark.parm=consumer_fifo:use fifo for consumer: 0 - disabled, 1 - low prio, 2 - fifo\00", section ".modinfo", align 1
@producer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@consumer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@buffer = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_ring_buffer_benchmark__247_492_ring_buffer_benchmark_init6 = internal global ptr @ring_buffer_benchmark_init, section ".initcall6.init", align 4
@__exitcall_ring_buffer_benchmark_exit = internal global ptr @ring_buffer_benchmark_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [44 x i8] c"ring_buffer_benchmark.author=Steven Rostedt\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [56 x i8] c"ring_buffer_benchmark.description=ring_buffer_benchmark\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [62 x i8] c"ring_buffer_benchmark.file=kernel/trace/ring_buffer_benchmark\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [34 x i8] c"ring_buffer_benchmark.license=GPL\00", section ".modinfo", align 1
@ring_buffer_benchmark_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rb_consumer\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rb_producer\00", [20 x i8] zeroinitializer }, align 32
@read_start = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @read_start, i64 48), ptr getelementptr (i8, ptr @read_start, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"kernel/trace/ring_buffer_benchmark.c\00", [59 x i8] zeroinitializer }, align 32
@test_error = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(read_start).wait.lock\00", [41 x i8] zeroinitializer }, align 32
@read_events = internal global { i32, [28 x i8] } zeroinitializer, align 32
@read = internal global { i32, [28 x i8] } zeroinitializer, align 32
@reader_finish = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@read_done = internal global { %struct.completion, [40 x i8] } { %struct.completion { i32 0, %struct.swait_queue_head { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.list_head { ptr getelementptr (i8, ptr @read_done, i64 48), ptr getelementptr (i8, ptr @read_done, i64 48) } } }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"(read_done).wait.lock\00", [42 x i8] zeroinitializer }, align 32
@ring_buffer_producer_thread.trace_printk_fmt = internal global ptr @.str.9, section "__trace_printk_fmt", align 4
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Sleeping for 10 secs\0A\00", [42 x i8] zeroinitializer }, align 32
@ring_buffer_producer_thread.trace_printk_fmt.10 = internal global ptr @.str.9, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt = internal global ptr @.str.12, section "__trace_printk_fmt", align 4
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Starting ring buffer hammer\0A\00", [35 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.13 = internal global ptr @.str.12, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.15 = internal global ptr @.str.16, section "__trace_printk_fmt", align 4
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"End ring buffer hammer\0A\00", [40 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.17 = internal global ptr @.str.16, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.19 = internal global ptr @.str.20, section "__trace_printk_fmt", align 4
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ERROR!\0A\00", [24 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.21 = internal global ptr @.str.20, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.23 = internal global ptr @.str.24, section "__trace_printk_fmt", align 4
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Running Consumer at SCHED_FIFO %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.27 = internal global ptr @.str.24, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.29 = internal global ptr @.str.30, section "__trace_printk_fmt", align 4
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Running Consumer at nice: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.31 = internal global ptr @.str.30, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.33 = internal global ptr @.str.34, section "__trace_printk_fmt", align 4
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Running Producer at SCHED_FIFO %s\0A\00", [61 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.35 = internal global ptr @.str.34, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.37 = internal global ptr @.str.38, section "__trace_printk_fmt", align 4
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Running Producer at nice: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.39 = internal global ptr @.str.38, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.41 = internal global ptr @.str.42, section "__trace_printk_fmt", align 4
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"WARNING!!! This test is running at lowest priority.\0A\00", [43 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.43 = internal global ptr @.str.42, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.45 = internal global ptr @.str.46, section "__trace_printk_fmt", align 4
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Time:     %lld (usecs)\0A\00", [40 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.47 = internal global ptr @.str.46, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.49 = internal global ptr @.str.50, section "__trace_printk_fmt", align 4
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Overruns: %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.51 = internal global ptr @.str.50, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.53 = internal global ptr @.str.54, section "__trace_printk_fmt", align 4
@.str.54 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Read:     (reader disabled)\0A\00", [35 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.55 = internal global ptr @.str.54, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.57 = internal global ptr @.str.58, section "__trace_printk_fmt", align 4
@.str.58 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Read:     %ld  (by %s)\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"events\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pages\00", [26 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.61 = internal global ptr @.str.58, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.63 = internal global ptr @.str.64, section "__trace_printk_fmt", align 4
@.str.64 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Entries:  %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.65 = internal global ptr @.str.64, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.67 = internal global ptr @.str.68, section "__trace_printk_fmt", align 4
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Total:    %lld\0A\00", [16 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.69 = internal global ptr @.str.68, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.71 = internal global ptr @.str.72, section "__trace_printk_fmt", align 4
@.str.72 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Missed:   %ld\0A\00", [17 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.73 = internal global ptr @.str.72, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.75 = internal global ptr @.str.76, section "__trace_printk_fmt", align 4
@.str.76 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Hit:      %ld\0A\00", [17 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.77 = internal global ptr @.str.76, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.79 = internal global ptr @.str.80, section "__trace_printk_fmt", align 4
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"TIME IS ZERO??\0A\00", [16 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.81 = internal global ptr @.str.80, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.83 = internal global ptr @.str.84, section "__trace_printk_fmt", align 4
@.str.84 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Entries per millisec: %ld\0A\00", [37 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.85 = internal global ptr @.str.84, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.87 = internal global ptr @.str.88, section "__trace_printk_fmt", align 4
@.str.88 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%ld ns per entry\0A\00", [46 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.89 = internal global ptr @.str.88, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.91 = internal global ptr @.str.92, section "__trace_printk_fmt", align 4
@.str.92 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Total iterations per millisec: %ld\0A\00", [60 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.93 = internal global ptr @.str.92, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.95 = internal global ptr @.str.96, section "__trace_printk_fmt", align 4
@.str.96 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"hit + missed overflowed and totalled zero!\0A\00", [52 x i8] zeroinitializer }, align 32
@ring_buffer_producer.trace_printk_fmt.97 = internal global ptr @.str.96, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.99 = internal global ptr @.str.88, section "__trace_printk_fmt", align 4
@ring_buffer_producer.trace_printk_fmt.100 = internal global ptr @.str.88, section "__trace_printk_fmt", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.102 = internal global [12 x i64] zeroinitializer
@__llvm_gcov_ctr.103 = internal global [11 x i64] zeroinitializer
@__llvm_gcov_ctr.104 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.105 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.106 = internal global [20 x i64] zeroinitializer
@__llvm_gcov_ctr.107 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.108 = internal global [18 x i64] zeroinitializer
@__llvm_gcov_ctr.109 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.110 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.111 = internal global [5 x i64] zeroinitializer
@__llvm_gcov_ctr.112 = internal global [28 x i64] zeroinitializer
@__llvm_gcov_ctr.113 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.114 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.115 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.116 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.117 = internal global [192 x i64] zeroinitializer
@__llvm_gcov_ctr.118 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.119 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.120 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.121 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.122 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.123 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.124 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.125 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.126 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.127 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.128 = internal global [22 x i64] zeroinitializer
@__llvm_gcov_ctr.129 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/ring_buffer_benchmark.gcda\00", [55 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [29 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 290317725, i32 857082856 }, %emit_function_args_ty { i32 1, i32 106512013, i32 857082856 }, %emit_function_args_ty { i32 2, i32 461230307, i32 857082856 }, %emit_function_args_ty { i32 3, i32 1781672997, i32 857082856 }, %emit_function_args_ty { i32 4, i32 -10115036, i32 857082856 }, %emit_function_args_ty { i32 5, i32 -1412481656, i32 857082856 }, %emit_function_args_ty { i32 6, i32 -358179319, i32 857082856 }, %emit_function_args_ty { i32 7, i32 -1528529247, i32 857082856 }, %emit_function_args_ty { i32 8, i32 288547376, i32 857082856 }, %emit_function_args_ty { i32 9, i32 -2017830274, i32 857082856 }, %emit_function_args_ty { i32 10, i32 677823501, i32 857082856 }, %emit_function_args_ty { i32 11, i32 -1715295163, i32 857082856 }, %emit_function_args_ty { i32 12, i32 607313389, i32 857082856 }, %emit_function_args_ty { i32 13, i32 1663674071, i32 857082856 }, %emit_function_args_ty { i32 14, i32 -564905271, i32 857082856 }, %emit_function_args_ty { i32 15, i32 -1672745738, i32 857082856 }, %emit_function_args_ty { i32 16, i32 -1194784452, i32 857082856 }, %emit_function_args_ty { i32 17, i32 -1777657395, i32 857082856 }, %emit_function_args_ty { i32 18, i32 1609094753, i32 857082856 }, %emit_function_args_ty { i32 19, i32 147492095, i32 857082856 }, %emit_function_args_ty { i32 20, i32 -1961772047, i32 857082856 }, %emit_function_args_ty { i32 21, i32 -1016141526, i32 857082856 }, %emit_function_args_ty { i32 22, i32 1624494247, i32 857082856 }, %emit_function_args_ty { i32 23, i32 -1639498784, i32 857082856 }, %emit_function_args_ty { i32 24, i32 746673099, i32 857082856 }, %emit_function_args_ty { i32 25, i32 1981047778, i32 857082856 }, %emit_function_args_ty { i32 26, i32 1049741477, i32 857082856 }, %emit_function_args_ty { i32 27, i32 -827478227, i32 857082856 }, %emit_function_args_ty { i32 28, i32 -963894156, i32 857082856 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [29 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 12, ptr @__llvm_gcov_ctr.102 }, %emit_arcs_args_ty { i32 11, ptr @__llvm_gcov_ctr.103 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.104 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.105 }, %emit_arcs_args_ty { i32 20, ptr @__llvm_gcov_ctr.106 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.107 }, %emit_arcs_args_ty { i32 18, ptr @__llvm_gcov_ctr.108 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.109 }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.110 }, %emit_arcs_args_ty { i32 5, ptr @__llvm_gcov_ctr.111 }, %emit_arcs_args_ty { i32 28, ptr @__llvm_gcov_ctr.112 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.113 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.114 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.115 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.116 }, %emit_arcs_args_ty { i32 192, ptr @__llvm_gcov_ctr.117 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.118 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.119 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.120 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.121 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.122 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.123 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.124 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.125 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.126 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.127 }, %emit_arcs_args_ty { i32 22, ptr @__llvm_gcov_ctr.128 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.129 }]
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 29, i64 30]
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"disable_reader\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 37, i32 21 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"write_iteration\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 41, i32 21 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"producer_nice\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 45, i32 12 }
@___asan_gen_.139 = private unnamed_addr constant [14 x i8] c"consumer_nice\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 46, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant [14 x i8] c"producer_fifo\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 48, i32 12 }
@___asan_gen_.145 = private unnamed_addr constant [14 x i8] c"consumer_fifo\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 49, i32 12 }
@___asan_gen_.148 = private unnamed_addr constant [9 x i8] c"producer\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 33, i32 28 }
@___asan_gen_.151 = private unnamed_addr constant [9 x i8] c"consumer\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 34, i32 28 }
@___asan_gen_.154 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 32, i32 29 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 435, i32 11 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 440, i32 14 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 447, i32 13 }
@___asan_gen_.166 = private unnamed_addr constant [11 x i8] c"read_start\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 388, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [11 x i8] c"test_error\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 29, i32 8 }
@___asan_gen_.176 = private unnamed_addr constant [12 x i8] c"read_events\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 63, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant [5 x i8] c"read\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 35, i32 22 }
@___asan_gen_.182 = private unnamed_addr constant [14 x i8] c"reader_finish\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 28, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant [10 x i8] c"read_done\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 30, i32 8 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 415, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 245, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 284, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 303, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 307, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 310, i32 4 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 314, i32 3 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 317, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 323, i32 3 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 325, i32 2 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 326, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 328, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 330, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 332, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 333, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 334, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 335, i32 2 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 342, i32 3 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 344, i32 2 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 349, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 356, i32 3 }
@___asan_gen_.267 = private constant [40 x i8] c"../kernel/trace/ring_buffer_benchmark.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 361, i32 4 }
@___asan_gen_.269 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.272 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.273 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.273, i32 87, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_consumer_fifo236, ptr @__UNIQUE_ID_consumer_fifotype235, ptr @__UNIQUE_ID_consumer_nice232, ptr @__UNIQUE_ID_consumer_nicetype231, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_disable_reader226, ptr @__UNIQUE_ID_disable_readertype225, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__UNIQUE_ID_producer_fifo234, ptr @__UNIQUE_ID_producer_fifotype233, ptr @__UNIQUE_ID_producer_nice230, ptr @__UNIQUE_ID_producer_nicetype229, ptr @__UNIQUE_ID_write_iteration228, ptr @__UNIQUE_ID_write_iterationtype227, ptr @__exitcall_ring_buffer_benchmark_exit, ptr @__initcall__kmod_ring_buffer_benchmark__247_492_ring_buffer_benchmark_init6, ptr @__param_consumer_fifo, ptr @__param_consumer_nice, ptr @__param_disable_reader, ptr @__param_producer_fifo, ptr @__param_producer_nice, ptr @__param_write_iteration, ptr @ring_buffer_benchmark_exit, ptr @ring_buffer_producer.trace_printk_fmt, ptr @ring_buffer_producer.trace_printk_fmt.100, ptr @ring_buffer_producer.trace_printk_fmt.13, ptr @ring_buffer_producer.trace_printk_fmt.15, ptr @ring_buffer_producer.trace_printk_fmt.17, ptr @ring_buffer_producer.trace_printk_fmt.19, ptr @ring_buffer_producer.trace_printk_fmt.21, ptr @ring_buffer_producer.trace_printk_fmt.23, ptr @ring_buffer_producer.trace_printk_fmt.27, ptr @ring_buffer_producer.trace_printk_fmt.29, ptr @ring_buffer_producer.trace_printk_fmt.31, ptr @ring_buffer_producer.trace_printk_fmt.33, ptr @ring_buffer_producer.trace_printk_fmt.35, ptr @ring_buffer_producer.trace_printk_fmt.37, ptr @ring_buffer_producer.trace_printk_fmt.39, ptr @ring_buffer_producer.trace_printk_fmt.41, ptr @ring_buffer_producer.trace_printk_fmt.43, ptr @ring_buffer_producer.trace_printk_fmt.45, ptr @ring_buffer_producer.trace_printk_fmt.47, ptr @ring_buffer_producer.trace_printk_fmt.49, ptr @ring_buffer_producer.trace_printk_fmt.51, ptr @ring_buffer_producer.trace_printk_fmt.53, ptr @ring_buffer_producer.trace_printk_fmt.55, ptr @ring_buffer_producer.trace_printk_fmt.57, ptr @ring_buffer_producer.trace_printk_fmt.61, ptr @ring_buffer_producer.trace_printk_fmt.63, ptr @ring_buffer_producer.trace_printk_fmt.65, ptr @ring_buffer_producer.trace_printk_fmt.67, ptr @ring_buffer_producer.trace_printk_fmt.69, ptr @ring_buffer_producer.trace_printk_fmt.71, ptr @ring_buffer_producer.trace_printk_fmt.73, ptr @ring_buffer_producer.trace_printk_fmt.75, ptr @ring_buffer_producer.trace_printk_fmt.77, ptr @ring_buffer_producer.trace_printk_fmt.79, ptr @ring_buffer_producer.trace_printk_fmt.81, ptr @ring_buffer_producer.trace_printk_fmt.83, ptr @ring_buffer_producer.trace_printk_fmt.85, ptr @ring_buffer_producer.trace_printk_fmt.87, ptr @ring_buffer_producer.trace_printk_fmt.89, ptr @ring_buffer_producer.trace_printk_fmt.91, ptr @ring_buffer_producer.trace_printk_fmt.93, ptr @ring_buffer_producer.trace_printk_fmt.95, ptr @ring_buffer_producer.trace_printk_fmt.97, ptr @ring_buffer_producer.trace_printk_fmt.99, ptr @ring_buffer_producer_thread.trace_printk_fmt, ptr @ring_buffer_producer_thread.trace_printk_fmt.10, ptr @disable_reader, ptr @write_iteration, ptr @producer_nice, ptr @consumer_nice, ptr @producer_fifo, ptr @consumer_fifo, ptr @producer, ptr @consumer, ptr @buffer, ptr @ring_buffer_benchmark_init.__key, ptr @.str, ptr @.str.1, ptr @read_start, ptr @.str.2, ptr @test_error, ptr @.str.4, ptr @read_events, ptr @read, ptr @reader_finish, ptr @read_done, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.16, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.30, ptr @.str.34, ptr @.str.38, ptr @.str.42, ptr @.str.46, ptr @.str.50, ptr @.str.54, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.64, ptr @.str.68, ptr @.str.72, ptr @.str.76, ptr @.str.80, ptr @.str.84, ptr @.str.88, ptr @.str.92, ptr @.str.96, ptr @init_completion.__key, ptr @.str.101], section "llvm.metadata"
@1 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disable_reader to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_iteration to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @producer_nice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @consumer_nice to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @producer_fifo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @consumer_fifo to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @producer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @consumer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @buffer to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ring_buffer_benchmark_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_start to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_error to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_events to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reader_finish to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_done to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ring_buffer_benchmark_exit() #0 section ".exit.text" align 64 !dbg !217 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !220
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8, !dbg !221
  %0 = add i64 %gcov_ctr, 1, !dbg !221
  store i64 %0, ptr @__llvm_gcov_ctr, align 8, !dbg !221
  %1 = load ptr, ptr @producer, align 4, !dbg !221
  %call = tail call i32 @kthread_stop(ptr noundef %1) #11, !dbg !222
  %2 = load ptr, ptr @consumer, align 4, !dbg !223
  %tobool.not = icmp eq ptr %2, null, !dbg !223
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !223

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !223
  br label %if.end, !dbg !223

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !224
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !224
  %3 = add i64 %gcov_ctr2, 1, !dbg !224
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr, i32 0, i32 1), align 8, !dbg !224
  %call1 = tail call i32 @kthread_stop(ptr noundef nonnull %2) #11, !dbg !225
  br label %if.end, !dbg !225

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = load ptr, ptr @buffer, align 4, !dbg !226
  tail call void @ring_buffer_free(ptr noundef %4) #11, !dbg !227
  ret void, !dbg !228
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kthread_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ring_buffer_benchmark_init() #0 section ".init.text" align 64 !dbg !229 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !230
  %call = tail call ptr @__ring_buffer_alloc(i32 noundef 1000000, i32 noundef 1, ptr noundef nonnull @ring_buffer_benchmark_init.__key) #11, !dbg !231
  store ptr %call, ptr @buffer, align 4, !dbg !232
  %tobool.not = icmp eq ptr %call, null, !dbg !233
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !234

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !235
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.102, align 16, !dbg !235
  %0 = add i64 %gcov_ctr, 1, !dbg !235
  store i64 %0, ptr @__llvm_gcov_ctr.102, align 16, !dbg !235
  br label %cleanup, !dbg !235

if.end:                                           ; preds = %entry
  %1 = load i32, ptr @disable_reader, align 4, !dbg !236
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1), !dbg !236
  %tobool1.not = icmp eq i32 %1, 0, !dbg !236
  br i1 %tobool1.not, label %if.then2, label %if.end.if.end8_crit_edge, !dbg !237

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10, !dbg !237
  br label %if.end8, !dbg !237

if.then2:                                         ; preds = %if.end
  %call3 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ring_buffer_consumer_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str) #11, !dbg !238
  store ptr %call3, ptr @consumer, align 4, !dbg !239
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.104, align 8
  %2 = add i64 %gcov_ctr.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.104, align 8
  %gcov_ctr.i54 = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %3 = add i64 %gcov_ctr.i54, 1
  store i64 %3, ptr @__llvm_gcov_ctr.105, align 8
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr), !dbg !240
  br i1 %cmp.i, label %if.then2.out_fail_crit_edge, label %if.end7, !dbg !244

if.then2.out_fail_crit_edge:                      ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10, !dbg !244
  br label %out_fail, !dbg !244

if.end7:                                          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10, !dbg !245
  %gcov_ctr41 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 2), align 16, !dbg !245
  %4 = add i64 %gcov_ctr41, 1, !dbg !245
  store i64 %4, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 2), align 16, !dbg !245
  br label %if.end8, !dbg !245

if.end8:                                          ; preds = %if.end7, %if.end.if.end8_crit_edge
  %call9 = tail call ptr (ptr, ptr, i32, ptr, ...) @kthread_create_on_node(ptr noundef nonnull @ring_buffer_producer_thread, ptr noundef null, i32 noundef -1, ptr noundef nonnull @.str.1) #11, !dbg !246
  %gcov_ctr.i55 = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %5 = add i64 %gcov_ctr.i55, 1
  store i64 %5, ptr @__llvm_gcov_ctr.105, align 8
  %cmp.i56 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr), !dbg !247
  br i1 %cmp.i56, label %out_kill.critedge, label %if.then11, !dbg !246

if.then11:                                        ; preds = %if.end8
  %gcov_ctr42 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 3), align 8, !dbg !246
  %6 = add i64 %gcov_ctr42, 1, !dbg !246
  store i64 %6, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 3), align 8, !dbg !246
  %call12 = tail call i32 @wake_up_process(ptr noundef %call9) #11, !dbg !246
  store ptr %call9, ptr @producer, align 4, !dbg !249
  %gcov_ctr.i57.c = load i64, ptr @__llvm_gcov_ctr.104, align 8
  %7 = add i64 %gcov_ctr.i57.c, 1
  store i64 %7, ptr @__llvm_gcov_ctr.104, align 8
  %gcov_ctr.i58.c = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %8 = add i64 %gcov_ctr.i58.c, 1
  store i64 %8, ptr @__llvm_gcov_ctr.105, align 8
  %9 = load i32, ptr @disable_reader, align 4, !dbg !250
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9), !dbg !250
  %tobool19.not = icmp eq i32 %9, 0, !dbg !250
  br i1 %tobool19.not, label %if.then20, label %if.then11.if.end27_crit_edge, !dbg !251

if.then11.if.end27_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #10, !dbg !251
  br label %if.end27, !dbg !251

if.then20:                                        ; preds = %if.then11
  %10 = load i32, ptr @consumer_fifo, align 4, !dbg !252
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10), !dbg !253
  %cmp = icmp sgt i32 %10, 1, !dbg !253
  br i1 %cmp, label %if.then21, label %if.else, !dbg !252

if.then21:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #10, !dbg !254
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 4), align 16, !dbg !254
  %11 = add i64 %gcov_ctr43, 1, !dbg !254
  store i64 %11, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 4), align 16, !dbg !254
  %12 = load ptr, ptr @consumer, align 4, !dbg !254
  tail call void @sched_set_fifo(ptr noundef %12) #11, !dbg !255
  br label %if.end27, !dbg !255

if.else:                                          ; preds = %if.then20
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10), !dbg !256
  %cmp22 = icmp eq i32 %10, 1, !dbg !256
  br i1 %cmp22, label %if.then23, label %if.else24, !dbg !257

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10, !dbg !258
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 5), align 8, !dbg !258
  %13 = add i64 %gcov_ctr44, 1, !dbg !258
  store i64 %13, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 5), align 8, !dbg !258
  %14 = load ptr, ptr @consumer, align 4, !dbg !258
  tail call void @sched_set_fifo_low(ptr noundef %14) #11, !dbg !259
  br label %if.end27, !dbg !259

if.else24:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10, !dbg !260
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 6), align 16, !dbg !260
  %15 = add i64 %gcov_ctr45, 1, !dbg !260
  store i64 %15, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 6), align 16, !dbg !260
  %16 = load ptr, ptr @consumer, align 4, !dbg !260
  %17 = load i32, ptr @consumer_nice, align 4, !dbg !261
  tail call void @set_user_nice(ptr noundef %16, i32 noundef %17) #11, !dbg !262
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then23, %if.then21, %if.then11.if.end27_crit_edge
  %18 = load i32, ptr @producer_fifo, align 4, !dbg !263
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18), !dbg !264
  %cmp28 = icmp sgt i32 %18, 1, !dbg !264
  br i1 %cmp28, label %if.then29, label %if.else30, !dbg !263

if.then29:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10, !dbg !265
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 7), align 8, !dbg !265
  %19 = add i64 %gcov_ctr46, 1, !dbg !265
  store i64 %19, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 7), align 8, !dbg !265
  %20 = load ptr, ptr @producer, align 4, !dbg !265
  tail call void @sched_set_fifo(ptr noundef %20) #11, !dbg !266
  br label %cleanup, !dbg !266

if.else30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18), !dbg !267
  %cmp31 = icmp eq i32 %18, 1, !dbg !267
  br i1 %cmp31, label %if.then32, label %if.else33, !dbg !268

if.then32:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10, !dbg !269
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 8), align 16, !dbg !269
  %21 = add i64 %gcov_ctr47, 1, !dbg !269
  store i64 %21, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 8), align 16, !dbg !269
  %22 = load ptr, ptr @producer, align 4, !dbg !269
  tail call void @sched_set_fifo_low(ptr noundef %22) #11, !dbg !270
  br label %cleanup, !dbg !270

if.else33:                                        ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #10, !dbg !271
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 9), align 8, !dbg !271
  %23 = add i64 %gcov_ctr48, 1, !dbg !271
  store i64 %23, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 9), align 8, !dbg !271
  %24 = load ptr, ptr @producer, align 4, !dbg !271
  %25 = load i32, ptr @producer_nice, align 4, !dbg !272
  tail call void @set_user_nice(ptr noundef %24, i32 noundef %25) #11, !dbg !273
  br label %cleanup

out_kill.critedge:                                ; preds = %if.end8
  store ptr %call9, ptr @producer, align 4, !dbg !249
  %gcov_ctr.i57.c60 = load i64, ptr @__llvm_gcov_ctr.104, align 8
  %26 = add i64 %gcov_ctr.i57.c60, 1
  store i64 %26, ptr @__llvm_gcov_ctr.104, align 8
  %gcov_ctr.i58.c61 = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %27 = add i64 %gcov_ctr.i58.c61, 1
  store i64 %27, ptr @__llvm_gcov_ctr.105, align 8
  %28 = load ptr, ptr @consumer, align 4, !dbg !274
  %tobool36.not = icmp eq ptr %28, null, !dbg !274
  br i1 %tobool36.not, label %out_kill.critedge.out_fail_crit_edge, label %if.then37, !dbg !274

out_kill.critedge.out_fail_crit_edge:             ; preds = %out_kill.critedge
  call void @__sanitizer_cov_trace_pc() #10, !dbg !274
  br label %out_fail, !dbg !274

if.then37:                                        ; preds = %out_kill.critedge
  call void @__sanitizer_cov_trace_pc() #10, !dbg !275
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 10), align 16, !dbg !275
  %29 = add i64 %gcov_ctr49, 1, !dbg !275
  store i64 %29, ptr getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 10), align 16, !dbg !275
  %call38 = tail call i32 @kthread_stop(ptr noundef nonnull %28) #11, !dbg !276
  br label %out_fail, !dbg !276

out_fail:                                         ; preds = %if.then37, %out_kill.critedge.out_fail_crit_edge, %if.then2.out_fail_crit_edge
  %.sink = phi ptr [ getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 1), %if.then2.out_fail_crit_edge ], [ getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 11), %if.then37 ], [ getelementptr inbounds ([12 x i64], ptr @__llvm_gcov_ctr.102, i32 0, i32 11), %out_kill.critedge.out_fail_crit_edge ]
  %ret.0.in = phi ptr [ %call3, %if.then2.out_fail_crit_edge ], [ %call9, %if.then37 ], [ %call9, %out_kill.critedge.out_fail_crit_edge ]
  %30 = ptrtoint ptr %.sink to i32, !dbg !277
  call void @__asan_load8_noabort(i32 %30), !dbg !277
  %gcov_ctr50 = load i64, ptr %.sink, align 8, !dbg !277
  %31 = add i64 %gcov_ctr50, 1, !dbg !277
  store i64 %31, ptr %.sink, align 8, !dbg !277
  %ret.0 = ptrtoint ptr %ret.0.in to i32, !dbg !277
  %32 = load ptr, ptr @buffer, align 4, !dbg !278
  tail call void @ring_buffer_free(ptr noundef %32) #11, !dbg !279
  br label %cleanup, !dbg !280

cleanup:                                          ; preds = %out_fail, %if.else33, %if.then32, %if.then29, %if.then
  %retval.0 = phi i32 [ %ret.0, %out_fail ], [ -12, %if.then ], [ 0, %if.then32 ], [ 0, %if.else33 ], [ 0, %if.then29 ], !dbg !277
  ret i32 %retval.0, !dbg !281
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__ring_buffer_alloc(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kthread_create_on_node(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ring_buffer_consumer_thread(ptr nocapture noundef readnone %arg) #3 align 64 !dbg !282 {
entry:
  %bpage.i.i = alloca ptr, align 4
  %ts.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10, !dbg !283
  %gcov_ctr.i171 = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !284
  %0 = add i64 %gcov_ctr.i171, 1, !dbg !284
  store i64 %0, ptr @__llvm_gcov_ctr.107, align 8, !dbg !284
  %.b.i172 = load i1, ptr @test_error, align 4, !dbg !284
  br i1 %.b.i172, label %entry.if.end107_crit_edge, label %entry.break_test.exit_crit_edge, !dbg !287

entry.break_test.exit_crit_edge:                  ; preds = %entry
  br label %break_test.exit, !dbg !287

entry.if.end107_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !287
  br label %if.end107, !dbg !287

break_test.exit:                                  ; preds = %if.end64.break_test.exit_crit_edge, %entry.break_test.exit_crit_edge
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !288
  %1 = add i64 %gcov_ctr1.i, 1, !dbg !288
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !288
  %call.i = call zeroext i1 @kthread_should_stop() #11, !dbg !288
  br i1 %call.i, label %break_test.exit.if.end107_crit_edge, label %while.body, !dbg !289

break_test.exit.if.end107_crit_edge:              ; preds = %break_test.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !289
  br label %if.end107, !dbg !289

while.body:                                       ; preds = %break_test.exit
  call void @complete(ptr noundef nonnull @read_start) #11, !dbg !290
  %2 = load i32, ptr @read_events, align 4, !dbg !291
  %xor.i = xor i32 %2, 1, !dbg !291
  store i32 %xor.i, ptr @read_events, align 4, !dbg !291
  store i32 0, ptr @read, align 4, !dbg !294
  %3 = load volatile i32, ptr @reader_finish, align 4, !dbg !295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !296
  %tobool.not218.i = icmp eq i32 %3, 0, !dbg !296
  br i1 %tobool.not218.i, label %while.body.land.rhs.i_crit_edge, label %while.body.ring_buffer_consumer.exit_crit_edge, !dbg !297

while.body.ring_buffer_consumer.exit_crit_edge:   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !297
  br label %ring_buffer_consumer.exit, !dbg !297

while.body.land.rhs.i_crit_edge:                  ; preds = %while.body
  br label %land.rhs.i, !dbg !297

land.rhs.i:                                       ; preds = %land.rhs.i.backedge, %while.body.land.rhs.i_crit_edge
  %gcov_ctr.i154 = load i64, ptr @__llvm_gcov_ctr.108, align 16, !dbg !298
  %4 = add i64 %gcov_ctr.i154, 1, !dbg !298
  store i64 %4, ptr @__llvm_gcov_ctr.108, align 16, !dbg !298
  %.b188.i = load i1, ptr @test_error, align 4, !dbg !298
  br i1 %.b188.i, label %land.rhs.i.if.end50.i_crit_edge, label %for.cond.preheader.i, !dbg !299

land.rhs.i.if.end50.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !299
  br label %if.end50.i, !dbg !299

for.cond.preheader.i:                             ; preds = %land.rhs.i
  %call208.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #12, !dbg !300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !300
  %5 = load i32, ptr @nr_cpu_ids, align 4, !dbg !300
  call void @__sanitizer_cov_trace_cmp4(i32 %call208.i, i32 %5), !dbg !300
  %cmp209.i = icmp ult i32 %call208.i, %5, !dbg !300
  br i1 %cmp209.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.end.thread.i, !dbg !300

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !300

for.end.thread.i:                                 ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !301
  %gcov_ctr168221.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 6), align 16, !dbg !301
  %6 = add i64 %gcov_ctr168221.i, 1, !dbg !301
  store i64 %6, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 6), align 16, !dbg !301
  br label %if.end50.i, !dbg !302

for.body.i:                                       ; preds = %cleanup.cont.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call211.i = phi i32 [ %call.i156, %cleanup.cont.i.for.body.i_crit_edge ], [ %call208.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %found.1210.i = phi i32 [ %found.2.i, %cleanup.cont.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %7 = load i32, ptr @read_events, align 4, !dbg !303
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7), !dbg !303
  %tobool6.not.i = icmp eq i32 %7, 0, !dbg !303
  br i1 %tobool6.not.i, label %if.else.i, label %if.then.i, !dbg !303

if.then.i:                                        ; preds = %for.body.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %ts.i.i) #11, !dbg !304
  %8 = ptrtoint ptr %ts.i.i to i32, !dbg !307
  call void @__asan_store8_noabort(i32 %8), !dbg !307
  store i64 -1, ptr %ts.i.i, align 8, !dbg !307, !annotation !308
  %9 = load ptr, ptr @buffer, align 4, !dbg !309
  %call.i.i = call ptr @ring_buffer_consume(ptr noundef %9, i32 noundef %call211.i, ptr noundef nonnull %ts.i.i, ptr noundef null) #11, !dbg !310
  %tobool.not.i.i = icmp eq ptr %call.i.i, null, !dbg !311
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !312

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !313
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.111, align 16, !dbg !313
  %10 = add i64 %gcov_ctr.i.i, 1, !dbg !313
  store i64 %10, ptr @__llvm_gcov_ctr.111, align 16, !dbg !313
  br label %read_event.exit.i, !dbg !313

if.end.i.i:                                       ; preds = %if.then.i
  %call2.i.i = call ptr @ring_buffer_event_data(ptr noundef nonnull %call.i.i) #11, !dbg !314
  %11 = ptrtoint ptr %call2.i.i to i32, !dbg !315
  call void @__asan_load4_noabort(i32 %11), !dbg !315
  %12 = load i32, ptr %call2.i.i, align 4, !dbg !315
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %call211.i), !dbg !316
  %cmp.not.i.i = icmp eq i32 %12, %call211.i, !dbg !316
  br i1 %cmp.not.i.i, label %if.end27.i.i, label %do.body.i.i, !dbg !315

do.body.i.i:                                      ; preds = %if.end.i.i
  %.b.i.i = load i1, ptr @test_error, align 4, !dbg !317
  br i1 %.b.i.i, label %do.body.i.i.do.end26.i.i_crit_edge, label %if.then5.i.i, !dbg !317

do.body.i.i.do.end26.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !317
  br label %do.end26.i.i, !dbg !317

if.then5.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !317
  store i1 true, ptr @test_error, align 4, !dbg !317
  %gcov_ctr30.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !317
  %13 = add i64 %gcov_ctr30.i.i, 1, !dbg !317
  store i64 %13, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 1), align 8, !dbg !317
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 97, i32 noundef 9, ptr noundef null) #11, !dbg !317
  %gcov_ctr31.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 2), align 16, !dbg !317
  %14 = add i64 %gcov_ctr31.i.i, 1, !dbg !317
  store i64 %14, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 2), align 16, !dbg !317
  br label %do.end26.i.i, !dbg !317

do.end26.i.i:                                     ; preds = %if.then5.i.i, %do.body.i.i.do.end26.i.i_crit_edge
  %gcov_ctr32.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 3), align 8, !dbg !318
  %15 = add i64 %gcov_ctr32.i.i, 1, !dbg !318
  store i64 %15, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 3), align 8, !dbg !318
  br label %read_event.exit.i, !dbg !318

if.end27.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !319
  %gcov_ctr33.i.i = load i64, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 4), align 16, !dbg !319
  %16 = add i64 %gcov_ctr33.i.i, 1, !dbg !319
  store i64 %16, ptr getelementptr inbounds ([5 x i64], ptr @__llvm_gcov_ctr.111, i32 0, i32 4), align 16, !dbg !319
  %17 = load i32, ptr @read, align 4, !dbg !319
  %inc.i.i = add i32 %17, 1, !dbg !319
  store i32 %inc.i.i, ptr @read, align 4, !dbg !319
  br label %read_event.exit.i, !dbg !320

read_event.exit.i:                                ; preds = %if.end27.i.i, %do.end26.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ 1, %do.end26.i.i ], [ 0, %if.end27.i.i ], [ 1, %if.then.i.i ], !dbg !321
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %ts.i.i) #11, !dbg !322
  br label %if.end.i, !dbg !323

if.else.i:                                        ; preds = %for.body.i
  %gcov_ctr163.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !324
  %18 = add i64 %gcov_ctr163.i, 1, !dbg !324
  store i64 %18, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 1), align 8, !dbg !324
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bpage.i.i) #11, !dbg !325
  %19 = load ptr, ptr @buffer, align 4, !dbg !328
  %call.i190.i = call ptr @ring_buffer_alloc_read_page(ptr noundef %19, i32 noundef %call211.i) #11, !dbg !329
  %20 = ptrtoint ptr %bpage.i.i to i32, !dbg !330
  call void @__asan_store4_noabort(i32 %20), !dbg !330
  store ptr %call.i190.i, ptr %bpage.i.i, align 4, !dbg !330
  %gcov_ctr.i296.i.i = load i64, ptr @__llvm_gcov_ctr.105, align 8
  %21 = add i64 %gcov_ctr.i296.i.i, 1
  store i64 %21, ptr @__llvm_gcov_ctr.105, align 8
  %cmp.i.i.i = icmp ugt ptr %call.i190.i, inttoptr (i32 -4096 to ptr), !dbg !331
  br i1 %cmp.i.i.i, label %if.then.i192.i, label %if.end.i193.i, !dbg !333

if.then.i192.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !334
  %gcov_ctr.i191.i = load i64, ptr @__llvm_gcov_ctr.112, align 16, !dbg !334
  %22 = add i64 %gcov_ctr.i191.i, 1, !dbg !334
  store i64 %22, ptr @__llvm_gcov_ctr.112, align 16, !dbg !334
  br label %read_page.exit.i, !dbg !334

if.end.i193.i:                                    ; preds = %if.else.i
  %23 = load ptr, ptr @buffer, align 4, !dbg !335
  %call3.i.i = call i32 @ring_buffer_read_page(ptr noundef %23, ptr noundef nonnull %bpage.i.i, i32 noundef 4096, i32 noundef %call211.i, i32 noundef 1) #11, !dbg !336
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3.i.i), !dbg !337
  %cmp.i.i = icmp sgt i32 %call3.i.i, -1, !dbg !337
  br i1 %cmp.i.i, label %if.then4.i.i, label %if.end.i193.i.if.end230.i.i_crit_edge, !dbg !338

if.end.i193.i.if.end230.i.i_crit_edge:            ; preds = %if.end.i193.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !338
  br label %if.end230.i.i, !dbg !338

if.then4.i.i:                                     ; preds = %if.end.i193.i
  %24 = ptrtoint ptr %bpage.i.i to i32, !dbg !339
  call void @__asan_load4_noabort(i32 %24), !dbg !339
  %25 = load ptr, ptr %bpage.i.i, align 4, !dbg !339
  %commit5.i.i = getelementptr inbounds %struct.rb_page, ptr %25, i32 0, i32 1, !dbg !340
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.113, align 8
  %26 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %26, ptr @__llvm_gcov_ctr.113, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.114, align 8
  %27 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %27, ptr @__llvm_gcov_ctr.114, align 8
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %commit5.i.i, i32 noundef 4) #11, !dbg !341
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.116, align 8
  %28 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %28, ptr @__llvm_gcov_ctr.116, align 8
  %gcov_ctr.i2.i.i.i = load i64, ptr @__llvm_gcov_ctr.115, align 8
  %29 = add i64 %gcov_ctr.i2.i.i.i, 1
  store i64 %29, ptr @__llvm_gcov_ctr.115, align 8
  %30 = ptrtoint ptr %commit5.i.i to i32, !dbg !348
  call void @__asan_load4_noabort(i32 %30), !dbg !348
  %31 = load volatile i32, ptr %commit5.i.i, align 4, !dbg !348
  %and.i.i = and i32 %31, 1048575, !dbg !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i), !dbg !353
  %cmp7303.not.i.i = icmp eq i32 %and.i.i, 0, !dbg !353
  br i1 %cmp7303.not.i.i, label %if.then4.i.i.for.end.i.i_crit_edge, label %if.then4.i.i.land.rhs.i.i_crit_edge, !dbg !354

if.then4.i.i.land.rhs.i.i_crit_edge:              ; preds = %if.then4.i.i
  br label %land.rhs.i.i, !dbg !354

if.then4.i.i.for.end.i.i_crit_edge:               ; preds = %if.then4.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !354
  br label %for.end.i.i, !dbg !354

land.rhs.i.i:                                     ; preds = %for.inc.i.i.land.rhs.i.i_crit_edge, %if.then4.i.i.land.rhs.i.i_crit_edge
  %i.0304.i.i = phi i32 [ %add229.i.i, %for.inc.i.i.land.rhs.i.i_crit_edge ], [ 0, %if.then4.i.i.land.rhs.i.i_crit_edge ]
  %gcov_ctr241.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !355
  %32 = add i64 %gcov_ctr241.i.i, 1, !dbg !355
  store i64 %32, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 1), align 8, !dbg !355
  %.b295.i.i = load i1, ptr @test_error, align 4, !dbg !355
  br i1 %.b295.i.i, label %land.rhs.i.i.for.end.i.i_crit_edge, label %for.body.i.i, !dbg !356

land.rhs.i.i.for.end.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !356
  br label %for.end.i.i, !dbg !356

for.body.i.i:                                     ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4083, i32 %i.0304.i.i), !dbg !357
  %cmp8.i.i = icmp ugt i32 %i.0304.i.i, 4083, !dbg !357
  br i1 %cmp8.i.i, label %if.then11.critedge.i.i, label %if.end34.i.i, !dbg !358

if.then11.critedge.i.i:                           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !359
  store i1 true, ptr @test_error, align 4, !dbg !359
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 128, i32 noundef 9, ptr noundef null) #11, !dbg !359
  %gcov_ctr242.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 2), align 16, !dbg !359
  %33 = add i64 %gcov_ctr242.i.i, 1, !dbg !359
  store i64 %33, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 2), align 16, !dbg !359
  %gcov_ctr243.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 3), align 8, !dbg !359
  %34 = add i64 %gcov_ctr243.i.i, 1, !dbg !359
  store i64 %34, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 3), align 8, !dbg !359
  %gcov_ctr244.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 4), align 16, !dbg !360
  %35 = add i64 %gcov_ctr244.i.i, 1, !dbg !360
  store i64 %35, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 4), align 16, !dbg !360
  br label %for.end.i.i, !dbg !360

if.end34.i.i:                                     ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.rb_page, ptr %25, i32 0, i32 2, i32 %i.0304.i.i, !dbg !361
  %36 = ptrtoint ptr %arrayidx.i.i to i32, !dbg !362
  call void @__asan_load4_noabort(i32 %36), !dbg !362
  %bf.load.i.i = load i32, ptr %arrayidx.i.i, align 4, !dbg !362
  %bf.lshr.i.i = lshr i32 %bf.load.i.i, 27, !dbg !362
  %37 = zext i32 %bf.lshr.i.i to i64, !dbg !363
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values), !dbg !363
  switch i32 %bf.lshr.i.i, label %sw.default.i.i [
    i32 29, label %sw.bb.i.i
    i32 30, label %sw.epilog.thread.i.i
    i32 0, label %sw.bb73.i.i
  ], !dbg !363

sw.bb.i.i:                                        ; preds = %if.end34.i.i
  %bf.clear.i.i = and i32 %bf.load.i.i, 134217727, !dbg !364
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear.i.i), !dbg !365
  %tobool36.not.i.i = icmp eq i32 %bf.clear.i.i, 0, !dbg !365
  br i1 %tobool36.not.i.i, label %if.then40.critedge.i.i, label %sw.bb.i.i.if.end70.i.i_crit_edge, !dbg !366

sw.bb.i.i.if.end70.i.i_crit_edge:                 ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !366
  br label %if.end70.i.i, !dbg !366

if.then40.critedge.i.i:                           ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !367
  store i1 true, ptr @test_error, align 4, !dbg !367
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 138, i32 noundef 9, ptr noundef null) #11, !dbg !367
  %gcov_ctr245.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 5), align 8, !dbg !367
  %38 = add i64 %gcov_ctr245.i.i, 1, !dbg !367
  store i64 %38, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 5), align 8, !dbg !367
  %gcov_ctr246.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 6), align 16, !dbg !367
  %39 = add i64 %gcov_ctr246.i.i, 1, !dbg !367
  store i64 %39, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 6), align 16, !dbg !367
  %gcov_ctr247.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 7), align 8, !dbg !367
  %40 = add i64 %gcov_ctr247.i.i, 1, !dbg !367
  store i64 %40, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 7), align 8, !dbg !367
  br label %if.end70.i.i, !dbg !367

if.end70.i.i:                                     ; preds = %if.then40.critedge.i.i, %sw.bb.i.i.if.end70.i.i_crit_edge
  %gcov_ctr248.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 8), align 16, !dbg !368
  %41 = add i64 %gcov_ctr248.i.i, 1, !dbg !368
  store i64 %41, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 8), align 16, !dbg !368
  %array.i.i = getelementptr inbounds %struct.ring_buffer_event, ptr %arrayidx.i.i, i32 0, i32 1, !dbg !369
  %42 = ptrtoint ptr %array.i.i to i32, !dbg !368
  call void @__asan_load4_noabort(i32 %42), !dbg !368
  %43 = load i32, ptr %array.i.i, align 4, !dbg !368
  %add.i.i = add i32 %43, 4, !dbg !370
  br label %sw.epilog.i.i, !dbg !371

sw.bb73.i.i:                                      ; preds = %if.end34.i.i
  %call74.i.i = call ptr @ring_buffer_event_data(ptr noundef %arrayidx.i.i) #11, !dbg !372
  %44 = ptrtoint ptr %call74.i.i to i32, !dbg !373
  call void @__asan_load4_noabort(i32 %44), !dbg !373
  %45 = load i32, ptr %call74.i.i, align 4, !dbg !373
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %call211.i), !dbg !374
  %cmp75.not.i.i = icmp eq i32 %45, %call211.i, !dbg !374
  br i1 %cmp75.not.i.i, label %if.end109.i.i, label %do.body77.i.i, !dbg !373

do.body77.i.i:                                    ; preds = %sw.bb73.i.i
  %.b294.i.i = load i1, ptr @test_error, align 4, !dbg !375
  br i1 %.b294.i.i, label %do.body77.i.i.do.end108.i.i_crit_edge, label %if.then79.i.i, !dbg !375

do.body77.i.i.do.end108.i.i_crit_edge:            ; preds = %do.body77.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !375
  br label %do.end108.i.i, !dbg !375

if.then79.i.i:                                    ; preds = %do.body77.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !375
  store i1 true, ptr @test_error, align 4, !dbg !375
  %gcov_ctr250.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 10), align 16, !dbg !375
  %46 = add i64 %gcov_ctr250.i.i, 1, !dbg !375
  store i64 %46, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 10), align 16, !dbg !375
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 147, i32 noundef 9, ptr noundef null) #11, !dbg !375
  %gcov_ctr251.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 11), align 8, !dbg !375
  %47 = add i64 %gcov_ctr251.i.i, 1, !dbg !375
  store i64 %47, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 11), align 8, !dbg !375
  br label %do.end108.i.i, !dbg !375

do.end108.i.i:                                    ; preds = %if.then79.i.i, %do.body77.i.i.do.end108.i.i_crit_edge
  %gcov_ctr252.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 12), align 16, !dbg !376
  %48 = add i64 %gcov_ctr252.i.i, 1, !dbg !376
  store i64 %48, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 12), align 16, !dbg !376
  br label %sw.epilog.i.i, !dbg !376

if.end109.i.i:                                    ; preds = %sw.bb73.i.i
  %49 = load i32, ptr @read, align 4, !dbg !377
  %inc110.i.i = add i32 %49, 1, !dbg !377
  store i32 %inc110.i.i, ptr @read, align 4, !dbg !377
  %array111.i.i = getelementptr inbounds %struct.ring_buffer_event, ptr %arrayidx.i.i, i32 0, i32 1, !dbg !378
  %50 = ptrtoint ptr %array111.i.i to i32, !dbg !379
  call void @__asan_load4_noabort(i32 %50), !dbg !379
  %51 = load i32, ptr %array111.i.i, align 4, !dbg !379
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51), !dbg !379
  %tobool113.not.i.i = icmp eq i32 %51, 0, !dbg !379
  br i1 %tobool113.not.i.i, label %do.body115.i.i, label %if.end147.i.i, !dbg !380

do.body115.i.i:                                   ; preds = %if.end109.i.i
  %.b293.i.i = load i1, ptr @test_error, align 4, !dbg !381
  br i1 %.b293.i.i, label %do.body115.i.i.do.end146.i.i_crit_edge, label %if.then117.i.i, !dbg !381

do.body115.i.i.do.end146.i.i_crit_edge:           ; preds = %do.body115.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !381
  br label %do.end146.i.i, !dbg !381

if.then117.i.i:                                   ; preds = %do.body115.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !381
  store i1 true, ptr @test_error, align 4, !dbg !381
  %gcov_ctr254.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 14), align 16, !dbg !381
  %52 = add i64 %gcov_ctr254.i.i, 1, !dbg !381
  store i64 %52, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 14), align 16, !dbg !381
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 152, i32 noundef 9, ptr noundef null) #11, !dbg !381
  %gcov_ctr255.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 15), align 8, !dbg !381
  %53 = add i64 %gcov_ctr255.i.i, 1, !dbg !381
  store i64 %53, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 15), align 8, !dbg !381
  br label %do.end146.i.i, !dbg !381

do.end146.i.i:                                    ; preds = %if.then117.i.i, %do.body115.i.i.do.end146.i.i_crit_edge
  %gcov_ctr256.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 16), align 16, !dbg !382
  %54 = add i64 %gcov_ctr256.i.i, 1, !dbg !382
  store i64 %54, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 16), align 16, !dbg !382
  br label %sw.epilog.i.i, !dbg !382

if.end147.i.i:                                    ; preds = %if.end109.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !383
  %gcov_ctr253.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 13), align 8, !dbg !383
  %55 = add i64 %gcov_ctr253.i.i, 1, !dbg !383
  store i64 %55, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 13), align 8, !dbg !383
  %56 = ptrtoint ptr %array111.i.i to i32, !dbg !383
  call void @__asan_load4_noabort(i32 %56), !dbg !383
  %57 = load i32, ptr %array111.i.i, align 4, !dbg !383
  %add150.i.i = add i32 %57, 4, !dbg !384
  br label %sw.epilog.i.i, !dbg !385

sw.default.i.i:                                   ; preds = %if.end34.i.i
  %call151.i.i = call ptr @ring_buffer_event_data(ptr noundef %arrayidx.i.i) #11, !dbg !386
  %58 = ptrtoint ptr %call151.i.i to i32, !dbg !387
  call void @__asan_load4_noabort(i32 %58), !dbg !387
  %59 = load i32, ptr %call151.i.i, align 4, !dbg !387
  call void @__sanitizer_cov_trace_cmp4(i32 %59, i32 %call211.i), !dbg !388
  %cmp152.not.i.i = icmp eq i32 %59, %call211.i, !dbg !388
  br i1 %cmp152.not.i.i, label %if.end186.i.i, label %do.body154.i.i, !dbg !387

do.body154.i.i:                                   ; preds = %sw.default.i.i
  %.b292.i.i = load i1, ptr @test_error, align 4, !dbg !389
  br i1 %.b292.i.i, label %do.body154.i.i.do.end185.i.i_crit_edge, label %if.then156.i.i, !dbg !389

do.body154.i.i.do.end185.i.i_crit_edge:           ; preds = %do.body154.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !389
  br label %do.end185.i.i, !dbg !389

if.then156.i.i:                                   ; preds = %do.body154.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !389
  store i1 true, ptr @test_error, align 4, !dbg !389
  %gcov_ctr257.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 17), align 8, !dbg !389
  %60 = add i64 %gcov_ctr257.i.i, 1, !dbg !389
  store i64 %60, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 17), align 8, !dbg !389
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 160, i32 noundef 9, ptr noundef null) #11, !dbg !389
  %gcov_ctr258.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 18), align 16, !dbg !389
  %61 = add i64 %gcov_ctr258.i.i, 1, !dbg !389
  store i64 %61, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 18), align 16, !dbg !389
  br label %do.end185.i.i, !dbg !389

do.end185.i.i:                                    ; preds = %if.then156.i.i, %do.body154.i.i.do.end185.i.i_crit_edge
  %gcov_ctr259.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 19), align 8, !dbg !390
  %62 = add i64 %gcov_ctr259.i.i, 1, !dbg !390
  store i64 %62, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 19), align 8, !dbg !390
  br label %sw.epilog.i.i, !dbg !390

if.end186.i.i:                                    ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !391
  %gcov_ctr260.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 20), align 16, !dbg !391
  %63 = add i64 %gcov_ctr260.i.i, 1, !dbg !391
  store i64 %63, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 20), align 16, !dbg !391
  %64 = load i32, ptr @read, align 4, !dbg !391
  %inc187.i.i = add i32 %64, 1, !dbg !391
  store i32 %inc187.i.i, ptr @read, align 4, !dbg !391
  %65 = ptrtoint ptr %arrayidx.i.i to i32, !dbg !392
  call void @__asan_load4_noabort(i32 %65), !dbg !392
  %bf.load188.i.i = load i32, ptr %arrayidx.i.i, align 4, !dbg !392
  %66 = lshr i32 %bf.load188.i.i, 25, !dbg !393
  %add190.i.i = and i32 %66, 124, !dbg !393
  %mul.i.i = add nuw nsw i32 %add190.i.i, 4, !dbg !393
  br label %sw.epilog.i.i, !dbg !394

sw.epilog.i.i:                                    ; preds = %if.end186.i.i, %do.end185.i.i, %if.end147.i.i, %do.end146.i.i, %do.end108.i.i, %if.end70.i.i
  %inc.0.i.i = phi i32 [ -1, %do.end185.i.i ], [ %mul.i.i, %if.end186.i.i ], [ -1, %do.end108.i.i ], [ %add150.i.i, %if.end147.i.i ], [ -1, %do.end146.i.i ], [ %add.i.i, %if.end70.i.i ], !dbg !395
  %.b.i194.i = load i1, ptr @test_error, align 4, !dbg !396
  br i1 %.b.i194.i, label %if.then192.i.i, label %if.end193.i.i, !dbg !396

sw.epilog.thread.i.i:                             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !397
  %gcov_ctr249.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 9), align 8, !dbg !397
  %67 = add i64 %gcov_ctr249.i.i, 1, !dbg !397
  store i64 %67, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 9), align 8, !dbg !397
  br label %for.inc.i.i

if.then192.i.i:                                   ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !398
  %gcov_ctr261.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 21), align 8, !dbg !398
  %68 = add i64 %gcov_ctr261.i.i, 1, !dbg !398
  store i64 %68, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 21), align 8, !dbg !398
  br label %for.end.i.i, !dbg !398

if.end193.i.i:                                    ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %inc.0.i.i), !dbg !399
  %cmp194.i.i = icmp slt i32 %inc.0.i.i, 1, !dbg !399
  br i1 %cmp194.i.i, label %if.then198.i.i, label %if.end193.i.i.for.inc.i.i_crit_edge, !dbg !400

if.end193.i.i.for.inc.i.i_crit_edge:              ; preds = %if.end193.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !400
  br label %for.inc.i.i, !dbg !400

if.then198.i.i:                                   ; preds = %if.end193.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !401
  store i1 true, ptr @test_error, align 4, !dbg !401
  %gcov_ctr262.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 22), align 16, !dbg !401
  %69 = add i64 %gcov_ctr262.i.i, 1, !dbg !401
  store i64 %69, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 22), align 16, !dbg !401
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 170, i32 noundef 9, ptr noundef null) #11, !dbg !401
  %gcov_ctr263.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 23), align 8, !dbg !401
  %70 = add i64 %gcov_ctr263.i.i, 1, !dbg !401
  store i64 %70, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 23), align 8, !dbg !401
  %gcov_ctr264.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 24), align 16, !dbg !402
  %71 = add i64 %gcov_ctr264.i.i, 1, !dbg !402
  store i64 %71, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 24), align 16, !dbg !402
  br label %for.end.i.i, !dbg !402

for.inc.i.i:                                      ; preds = %if.end193.i.i.for.inc.i.i_crit_edge, %sw.epilog.thread.i.i
  %inc.0299302.i.i = phi i32 [ %inc.0.i.i, %if.end193.i.i.for.inc.i.i_crit_edge ], [ 8, %sw.epilog.thread.i.i ]
  %add229.i.i = add nuw i32 %inc.0299302.i.i, %i.0304.i.i, !dbg !403
  %cmp7.i.i = icmp ult i32 %add229.i.i, %and.i.i, !dbg !353
  br i1 %cmp7.i.i, label %for.inc.i.i.land.rhs.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge, !dbg !354, !llvm.loop !404

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !354
  br label %for.end.i.i, !dbg !354

for.inc.i.i.land.rhs.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !354
  br label %land.rhs.i.i, !dbg !354

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %if.then198.i.i, %if.then192.i.i, %if.then11.critedge.i.i, %land.rhs.i.i.for.end.i.i_crit_edge, %if.then4.i.i.for.end.i.i_crit_edge
  %gcov_ctr265.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 25), align 8, !dbg !406
  %72 = add i64 %gcov_ctr265.i.i, 1, !dbg !406
  store i64 %72, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 25), align 8, !dbg !406
  br label %if.end230.i.i, !dbg !406

if.end230.i.i:                                    ; preds = %for.end.i.i, %if.end.i193.i.if.end230.i.i_crit_edge
  %73 = load ptr, ptr @buffer, align 4, !dbg !407
  %74 = ptrtoint ptr %bpage.i.i to i32, !dbg !408
  call void @__asan_load4_noabort(i32 %74), !dbg !408
  %75 = load ptr, ptr %bpage.i.i, align 4, !dbg !408
  call void @ring_buffer_free_read_page(ptr noundef %73, i32 noundef %call211.i, ptr noundef %75) #11, !dbg !409
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i), !dbg !410
  %cmp231.i.i = icmp slt i32 %call3.i.i, 0, !dbg !410
  br i1 %cmp231.i.i, label %if.then232.i.i, label %if.end233.i.i, !dbg !411

if.then232.i.i:                                   ; preds = %if.end230.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !412
  %gcov_ctr267.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 27), align 8, !dbg !412
  %76 = add i64 %gcov_ctr267.i.i, 1, !dbg !412
  store i64 %76, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 27), align 8, !dbg !412
  br label %read_page.exit.i, !dbg !412

if.end233.i.i:                                    ; preds = %if.end230.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !413
  %gcov_ctr266.i.i = load i64, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 26), align 16, !dbg !413
  %77 = add i64 %gcov_ctr266.i.i, 1, !dbg !413
  store i64 %77, ptr getelementptr inbounds ([28 x i64], ptr @__llvm_gcov_ctr.112, i32 0, i32 26), align 16, !dbg !413
  br label %read_page.exit.i, !dbg !413

read_page.exit.i:                                 ; preds = %if.end233.i.i, %if.then232.i.i, %if.then.i192.i
  %retval.0.i195.i = phi i32 [ 1, %if.then.i192.i ], [ 1, %if.then232.i.i ], [ 0, %if.end233.i.i ], !dbg !395
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bpage.i.i) #11, !dbg !414
  br label %if.end.i

if.end.i:                                         ; preds = %read_page.exit.i, %read_event.exit.i
  %stat.0.i = phi i32 [ %retval.0.i.i, %read_event.exit.i ], [ %retval.0.i195.i, %read_page.exit.i ], !dbg !415
  %.b.i155 = load i1, ptr @test_error, align 4, !dbg !416
  br i1 %.b.i155, label %cleanup.i, label %if.end11.i, !dbg !416

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stat.0.i), !dbg !417
  %cmp12.i = icmp eq i32 %stat.0.i, 0, !dbg !417
  br i1 %cmp12.i, label %if.then13.i, label %if.end11.i.cleanup.cont.i_crit_edge, !dbg !418

if.end11.i.cleanup.cont.i_crit_edge:              ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !418
  br label %cleanup.cont.i, !dbg !418

if.then13.i:                                      ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !419
  %gcov_ctr165.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 3), align 8, !dbg !419
  %78 = add i64 %gcov_ctr165.i, 1, !dbg !419
  store i64 %78, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 3), align 8, !dbg !419
  br label %cleanup.cont.i, !dbg !420

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !421
  %gcov_ctr164.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 2), align 16
  %79 = add i64 %gcov_ctr164.i, 1
  store i64 %79, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 2), align 16
  br label %for.end.i

cleanup.cont.i:                                   ; preds = %if.then13.i, %if.end11.i.cleanup.cont.i_crit_edge
  %found.2.i = phi i32 [ 1, %if.then13.i ], [ %found.1210.i, %if.end11.i.cleanup.cont.i_crit_edge ], !dbg !415
  %gcov_ctr166.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 4), align 16, !dbg !422
  %80 = add i64 %gcov_ctr166.i, 1, !dbg !422
  store i64 %80, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 4), align 16, !dbg !422
  %gcov_ctr167.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 5), align 8, !dbg !300
  %81 = add i64 %gcov_ctr167.i, 1, !dbg !300
  store i64 %81, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 5), align 8, !dbg !300
  %call.i156 = call i32 @cpumask_next(i32 noundef %call211.i, ptr noundef nonnull @__cpu_online_mask) #12, !dbg !300
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32)), !dbg !300
  %82 = load i32, ptr @nr_cpu_ids, align 4, !dbg !300
  %cmp.i = icmp ult i32 %call.i156, %82, !dbg !300
  br i1 %cmp.i, label %cleanup.cont.i.for.body.i_crit_edge, label %cleanup.cont.i.for.end.i_crit_edge, !dbg !300, !llvm.loop !423

cleanup.cont.i.for.end.i_crit_edge:               ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !300
  br label %for.end.i, !dbg !300

cleanup.cont.i.for.body.i_crit_edge:              ; preds = %cleanup.cont.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !300
  br label %for.body.i, !dbg !300

for.end.i:                                        ; preds = %cleanup.cont.i.for.end.i_crit_edge, %cleanup.i
  %found.1207.i = phi i32 [ %found.1210.i, %cleanup.i ], [ %found.2.i, %cleanup.cont.i.for.end.i_crit_edge ]
  %gcov_ctr168.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 6), align 16, !dbg !301
  %83 = add i64 %gcov_ctr168.i, 1, !dbg !301
  store i64 %83, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 6), align 16, !dbg !301
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %found.1207.i), !dbg !424
  %tobool2.not.i = icmp eq i32 %found.1207.i, 0, !dbg !424
  br i1 %tobool2.not.i, label %for.end.i.if.end50.i_crit_edge, label %for.end.i.land.rhs.i.backedge_crit_edge, !dbg !302

for.end.i.land.rhs.i.backedge_crit_edge:          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !302
  br label %land.rhs.i.backedge, !dbg !302

for.end.i.if.end50.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !302
  br label %if.end50.i, !dbg !302

land.rhs.i.backedge:                              ; preds = %cleanup.cont89.i.land.rhs.i.backedge_crit_edge, %for.end.i.land.rhs.i.backedge_crit_edge
  br label %land.rhs.i, !dbg !298, !llvm.loop !425

if.end50.i:                                       ; preds = %for.end.i.if.end50.i_crit_edge, %for.end.thread.i, %land.rhs.i.if.end50.i_crit_edge
  %gcov_ctr.i196.i = load i64, ptr @__llvm_gcov_ctr.109, align 8, !dbg !427
  %84 = add i64 %gcov_ctr.i196.i, 1, !dbg !427
  store i64 %84, ptr @__llvm_gcov_ctr.109, align 8, !dbg !427
  %85 = call i32 @llvm.read_register.i32(metadata !206) #11, !dbg !427
  %and.i197.i = and i32 %85, -16384, !dbg !431
  %86 = inttoptr i32 %and.i197.i to ptr, !dbg !432
  %task.i = getelementptr inbounds %struct.thread_info, ptr %86, i32 0, i32 2, !dbg !433
  %87 = ptrtoint ptr %task.i to i32, !dbg !433
  call void @__asan_load4_noabort(i32 %87), !dbg !433
  %88 = load ptr, ptr %task.i, align 8, !dbg !433
  %task_state_change.i = getelementptr inbounds %struct.task_struct, ptr %88, i32 0, i32 212, !dbg !433
  %89 = ptrtoint ptr %task_state_change.i to i32, !dbg !433
  call void @__asan_store4_noabort(i32 %89), !dbg !433
  store i32 1, ptr %task_state_change.i, align 4, !dbg !433
  %90 = load ptr, ptr %task.i, align 8, !dbg !433
  %91 = ptrtoint ptr %90 to i32, !dbg !433
  call void @__asan_store4_noabort(i32 %91), !dbg !433
  store volatile i32 1, ptr %90, align 128, !dbg !433
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !dbg !433, !srcloc !434
  %92 = load i32, ptr @reader_finish, align 4, !dbg !435
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92), !dbg !435
  %tobool84.not.i = icmp eq i32 %92, 0, !dbg !435
  br i1 %tobool84.not.i, label %cleanup.cont89.i, label %cleanup87.i, !dbg !435

cleanup87.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !421
  %gcov_ctr172.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 10), align 16
  %93 = add i64 %gcov_ctr172.i, 1
  store i64 %93, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 10), align 16
  br label %ring_buffer_consumer.exit

cleanup.cont89.i:                                 ; preds = %if.end50.i
  %gcov_ctr173.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 11), align 8, !dbg !436
  %94 = add i64 %gcov_ctr173.i, 1, !dbg !436
  store i64 %94, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 11), align 8, !dbg !436
  call void @schedule() #11, !dbg !436
  %gcov_ctr174.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 12), align 16, !dbg !297
  %95 = add i64 %gcov_ctr174.i, 1, !dbg !297
  store i64 %95, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 12), align 16, !dbg !297
  %96 = load volatile i32, ptr @reader_finish, align 4, !dbg !295
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96), !dbg !296
  %tobool.not.i = icmp eq i32 %96, 0, !dbg !296
  br i1 %tobool.not.i, label %cleanup.cont89.i.land.rhs.i.backedge_crit_edge, label %cleanup.cont89.i.ring_buffer_consumer.exit_crit_edge, !dbg !297

cleanup.cont89.i.ring_buffer_consumer.exit_crit_edge: ; preds = %cleanup.cont89.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !297
  br label %ring_buffer_consumer.exit, !dbg !297

cleanup.cont89.i.land.rhs.i.backedge_crit_edge:   ; preds = %cleanup.cont89.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !297
  br label %land.rhs.i.backedge, !dbg !297

ring_buffer_consumer.exit:                        ; preds = %cleanup.cont89.i.ring_buffer_consumer.exit_crit_edge, %cleanup87.i, %while.body.ring_buffer_consumer.exit_crit_edge
  %gcov_ctr179.i = load i64, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 17), align 8, !dbg !437
  %97 = add i64 %gcov_ctr179.i, 1, !dbg !437
  store i64 %97, ptr getelementptr inbounds ([18 x i64], ptr @__llvm_gcov_ctr.108, i32 0, i32 17), align 8, !dbg !437
  %gcov_ctr.i198.i = load i64, ptr @__llvm_gcov_ctr.109, align 8, !dbg !438
  %98 = add i64 %gcov_ctr.i198.i, 1, !dbg !438
  store i64 %98, ptr @__llvm_gcov_ctr.109, align 8, !dbg !438
  %99 = call i32 @llvm.read_register.i32(metadata !206) #11, !dbg !438
  %and.i199.i = and i32 %99, -16384, !dbg !440
  %100 = inttoptr i32 %and.i199.i to ptr, !dbg !441
  %task144.i = getelementptr inbounds %struct.thread_info, ptr %100, i32 0, i32 2, !dbg !437
  %101 = ptrtoint ptr %task144.i to i32, !dbg !437
  call void @__asan_load4_noabort(i32 %101), !dbg !437
  %102 = load ptr, ptr %task144.i, align 8, !dbg !437
  %task_state_change145.i = getelementptr inbounds %struct.task_struct, ptr %102, i32 0, i32 212, !dbg !437
  %103 = ptrtoint ptr %task_state_change145.i to i32, !dbg !437
  call void @__asan_store4_noabort(i32 %103), !dbg !437
  store i32 1, ptr %task_state_change145.i, align 4, !dbg !437
  %104 = load ptr, ptr %task144.i, align 8, !dbg !437
  %105 = ptrtoint ptr %104 to i32, !dbg !437
  call void @__asan_store4_noabort(i32 %105), !dbg !437
  store volatile i32 0, ptr %104, align 128, !dbg !437
  store i32 0, ptr @reader_finish, align 4, !dbg !442
  call void @complete(ptr noundef nonnull @read_done) #11, !dbg !443
  %gcov_ctr.i157 = load i64, ptr @__llvm_gcov_ctr.109, align 8, !dbg !444
  %106 = add i64 %gcov_ctr.i157, 1, !dbg !444
  store i64 %106, ptr @__llvm_gcov_ctr.109, align 8, !dbg !444
  %107 = call i32 @llvm.read_register.i32(metadata !206) #11, !dbg !444
  %and.i = and i32 %107, -16384, !dbg !446
  %108 = inttoptr i32 %and.i to ptr, !dbg !447
  %task = getelementptr inbounds %struct.thread_info, ptr %108, i32 0, i32 2, !dbg !448
  %109 = ptrtoint ptr %task to i32, !dbg !448
  call void @__asan_load4_noabort(i32 %109), !dbg !448
  %110 = load ptr, ptr %task, align 8, !dbg !448
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %110, i32 0, i32 212, !dbg !448
  %111 = ptrtoint ptr %task_state_change to i32, !dbg !448
  call void @__asan_store4_noabort(i32 %111), !dbg !448
  store i32 1, ptr %task_state_change, align 4, !dbg !448
  %112 = load ptr, ptr %task, align 8, !dbg !448
  %113 = ptrtoint ptr %112 to i32, !dbg !448
  call void @__asan_store4_noabort(i32 %113), !dbg !448
  store volatile i32 1, ptr %112, align 128, !dbg !448
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !dbg !448, !srcloc !449
  %gcov_ctr.i158 = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !450
  %114 = add i64 %gcov_ctr.i158, 1, !dbg !450
  store i64 %114, ptr @__llvm_gcov_ctr.107, align 8, !dbg !450
  %.b.i159 = load i1, ptr @test_error, align 4, !dbg !450
  br i1 %.b.i159, label %ring_buffer_consumer.exit.if.then63_crit_edge, label %break_test.exit163, !dbg !452

ring_buffer_consumer.exit.if.then63_crit_edge:    ; preds = %ring_buffer_consumer.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !452
  br label %if.then63, !dbg !452

break_test.exit163:                               ; preds = %ring_buffer_consumer.exit
  %gcov_ctr1.i160 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !453
  %115 = add i64 %gcov_ctr1.i160, 1, !dbg !453
  store i64 %115, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !453
  %call.i161 = call zeroext i1 @kthread_should_stop() #11, !dbg !453
  br i1 %call.i161, label %break_test.exit163.if.then63_crit_edge, label %if.end64, !dbg !454

break_test.exit163.if.then63_crit_edge:           ; preds = %break_test.exit163
  call void @__sanitizer_cov_trace_pc() #10, !dbg !454
  br label %if.then63, !dbg !454

if.then63:                                        ; preds = %break_test.exit163.if.then63_crit_edge, %ring_buffer_consumer.exit.if.then63_crit_edge
  %gcov_ctr143 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 4), align 16, !dbg !455
  %116 = add i64 %gcov_ctr143, 1, !dbg !455
  store i64 %116, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 4), align 16, !dbg !455
  br label %if.end107, !dbg !455

if.end64:                                         ; preds = %break_test.exit163
  %gcov_ctr142 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 3), align 8, !dbg !456
  %117 = add i64 %gcov_ctr142, 1, !dbg !456
  store i64 %117, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 3), align 8, !dbg !456
  call void @schedule() #11, !dbg !456
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !284
  %118 = add i64 %gcov_ctr.i, 1, !dbg !284
  store i64 %118, ptr @__llvm_gcov_ctr.107, align 8, !dbg !284
  %.b.i = load i1, ptr @test_error, align 4, !dbg !284
  br i1 %.b.i, label %if.end64.if.end107_crit_edge, label %if.end64.break_test.exit_crit_edge, !dbg !287, !llvm.loop !457

if.end64.break_test.exit_crit_edge:               ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10, !dbg !287
  br label %break_test.exit, !dbg !287

if.end64.if.end107_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10, !dbg !287
  br label %if.end107, !dbg !287

if.end107:                                        ; preds = %if.end64.if.end107_crit_edge, %if.then63, %break_test.exit.if.end107_crit_edge, %entry.if.end107_crit_edge
  %gcov_ctr149 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 10), align 16, !dbg !459
  %119 = add i64 %gcov_ctr149, 1, !dbg !459
  store i64 %119, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 10), align 16, !dbg !459
  %gcov_ctr.i164 = load i64, ptr @__llvm_gcov_ctr.109, align 8, !dbg !460
  %120 = add i64 %gcov_ctr.i164, 1, !dbg !460
  store i64 %120, ptr @__llvm_gcov_ctr.109, align 8, !dbg !460
  %121 = call i32 @llvm.read_register.i32(metadata !206) #11, !dbg !460
  %and.i165 = and i32 %121, -16384, !dbg !462
  %122 = inttoptr i32 %and.i165 to ptr, !dbg !463
  %task118 = getelementptr inbounds %struct.thread_info, ptr %122, i32 0, i32 2, !dbg !459
  %123 = ptrtoint ptr %task118 to i32, !dbg !459
  call void @__asan_load4_noabort(i32 %123), !dbg !459
  %124 = load ptr, ptr %task118, align 8, !dbg !459
  %task_state_change119 = getelementptr inbounds %struct.task_struct, ptr %124, i32 0, i32 212, !dbg !459
  %125 = ptrtoint ptr %task_state_change119 to i32, !dbg !459
  call void @__asan_store4_noabort(i32 %125), !dbg !459
  store i32 1, ptr %task_state_change119, align 4, !dbg !459
  %126 = load ptr, ptr %task118, align 8, !dbg !459
  %127 = ptrtoint ptr %126 to i32, !dbg !459
  call void @__asan_store4_noabort(i32 %127), !dbg !459
  store volatile i32 0, ptr %126, align 128, !dbg !459
  %call136 = call zeroext i1 @kthread_should_stop() #11, !dbg !464
  br i1 %call136, label %if.end107.if.end138_crit_edge, label %if.then137, !dbg !465

if.end107.if.end138_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #10, !dbg !465
  br label %if.end138, !dbg !465

if.then137:                                       ; preds = %if.end107
  %gcov_ctr147 = load i64, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 8), align 16, !dbg !466
  %128 = add i64 %gcov_ctr147, 1, !dbg !466
  store i64 %128, ptr getelementptr inbounds ([11 x i64], ptr @__llvm_gcov_ctr.103, i32 0, i32 8), align 16, !dbg !466
  %gcov_ctr.i.i166 = load i64, ptr @__llvm_gcov_ctr.109, align 8, !dbg !467
  %129 = add i64 %gcov_ctr.i.i166, 1, !dbg !467
  store i64 %129, ptr @__llvm_gcov_ctr.109, align 8, !dbg !467
  %130 = call i32 @llvm.read_register.i32(metadata !206) #11, !dbg !467
  %and.i.i167 = and i32 %130, -16384, !dbg !471
  %131 = inttoptr i32 %and.i.i167 to ptr, !dbg !472
  %task.i168 = getelementptr inbounds %struct.thread_info, ptr %131, i32 0, i32 2, !dbg !473
  %132 = ptrtoint ptr %task.i168 to i32, !dbg !473
  call void @__asan_load4_noabort(i32 %132), !dbg !473
  %133 = load ptr, ptr %task.i168, align 8, !dbg !473
  %task_state_change.i169 = getelementptr inbounds %struct.task_struct, ptr %133, i32 0, i32 212, !dbg !473
  %134 = ptrtoint ptr %task_state_change.i169 to i32, !dbg !473
  call void @__asan_store4_noabort(i32 %134), !dbg !473
  store i32 1, ptr %task_state_change.i169, align 4, !dbg !473
  %135 = load ptr, ptr %task.i168, align 8, !dbg !473
  %136 = ptrtoint ptr %135 to i32, !dbg !473
  call void @__asan_store4_noabort(i32 %136), !dbg !473
  store volatile i32 1, ptr %135, align 128, !dbg !473
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !dbg !473, !srcloc !474
  %call60234.i = call zeroext i1 @kthread_should_stop() #11, !dbg !475
  br i1 %call60234.i, label %if.then137.wait_to_die.exit_crit_edge, label %if.then137.while.body.i_crit_edge, !dbg !476

if.then137.while.body.i_crit_edge:                ; preds = %if.then137
  br label %while.body.i, !dbg !476

if.then137.wait_to_die.exit_crit_edge:            ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #10, !dbg !476
  br label %wait_to_die.exit, !dbg !476

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then137.while.body.i_crit_edge
  call void @schedule() #11, !dbg !477
  %gcov_ctr226.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 11), align 8, !dbg !478
  %137 = add i64 %gcov_ctr226.i, 1, !dbg !478
  store i64 %137, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 11), align 8, !dbg !478
  %138 = ptrtoint ptr %task.i168 to i32, !dbg !478
  call void @__asan_load4_noabort(i32 %138), !dbg !478
  %139 = load ptr, ptr %task.i168, align 8, !dbg !478
  %task_state_change117.i = getelementptr inbounds %struct.task_struct, ptr %139, i32 0, i32 212, !dbg !478
  %140 = ptrtoint ptr %task_state_change117.i to i32, !dbg !478
  call void @__asan_store4_noabort(i32 %140), !dbg !478
  store i32 1, ptr %task_state_change117.i, align 4, !dbg !478
  %141 = load ptr, ptr %task.i168, align 8, !dbg !478
  %142 = ptrtoint ptr %141 to i32, !dbg !478
  call void @__asan_store4_noabort(i32 %142), !dbg !478
  store volatile i32 1, ptr %141, align 128, !dbg !478
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !dbg !478, !srcloc !479
  %call60.i = call zeroext i1 @kthread_should_stop() #11, !dbg !475
  br i1 %call60.i, label %while.body.i.wait_to_die.exit_crit_edge, label %while.body.i.while.body.i_crit_edge, !dbg !476, !llvm.loop !480

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !476
  br label %while.body.i, !dbg !476

while.body.i.wait_to_die.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !476
  br label %wait_to_die.exit, !dbg !476

wait_to_die.exit:                                 ; preds = %while.body.i.wait_to_die.exit_crit_edge, %if.then137.wait_to_die.exit_crit_edge
  %gcov_ctr227.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 12), align 16, !dbg !482
  %143 = add i64 %gcov_ctr227.i, 1, !dbg !482
  store i64 %143, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 12), align 16, !dbg !482
  %144 = ptrtoint ptr %task.i168 to i32, !dbg !482
  call void @__asan_load4_noabort(i32 %144), !dbg !482
  %145 = load ptr, ptr %task.i168, align 8, !dbg !482
  %task_state_change197.i = getelementptr inbounds %struct.task_struct, ptr %145, i32 0, i32 212, !dbg !482
  %146 = ptrtoint ptr %task_state_change197.i to i32, !dbg !482
  call void @__asan_store4_noabort(i32 %146), !dbg !482
  store i32 1, ptr %task_state_change197.i, align 4, !dbg !482
  %147 = load ptr, ptr %task.i168, align 8, !dbg !482
  %148 = ptrtoint ptr %147 to i32, !dbg !482
  call void @__asan_store4_noabort(i32 %148), !dbg !482
  store volatile i32 0, ptr %147, align 128, !dbg !482
  br label %if.end138, !dbg !466

if.end138:                                        ; preds = %wait_to_die.exit, %if.end107.if.end138_crit_edge
  ret i32 0, !dbg !483
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ring_buffer_producer_thread(ptr nocapture noundef readnone %arg) #3 align 64 !dbg !484 {
entry:
  call void @__sanitizer_cov_trace_pc() #10, !dbg !485
  %gcov_ctr.i229 = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !486
  %0 = add i64 %gcov_ctr.i229, 1, !dbg !486
  store i64 %0, ptr @__llvm_gcov_ctr.107, align 8, !dbg !486
  %.b.i230 = load i1, ptr @test_error, align 4, !dbg !486
  br i1 %.b.i230, label %entry.while.end_crit_edge, label %entry.break_test.exit_crit_edge, !dbg !488

entry.break_test.exit_crit_edge:                  ; preds = %entry
  br label %break_test.exit, !dbg !488

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10, !dbg !488
  br label %while.end, !dbg !488

break_test.exit:                                  ; preds = %if.end100.break_test.exit_crit_edge, %entry.break_test.exit_crit_edge
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !489
  %1 = add i64 %gcov_ctr1.i, 1, !dbg !489
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !489
  %call.i = tail call zeroext i1 @kthread_should_stop() #11, !dbg !489
  br i1 %call.i, label %break_test.exit.while.end_crit_edge, label %while.body, !dbg !490

break_test.exit.while.end_crit_edge:              ; preds = %break_test.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !490
  br label %while.end, !dbg !490

while.body:                                       ; preds = %break_test.exit
  %2 = load ptr, ptr @buffer, align 4, !dbg !491
  tail call void @ring_buffer_reset(ptr noundef %2) #11, !dbg !492
  %3 = load ptr, ptr @consumer, align 4, !dbg !493
  %tobool.not = icmp eq ptr %3, null, !dbg !493
  br i1 %tobool.not, label %while.body.if.end_crit_edge, label %if.then, !dbg !493

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !493
  br label %if.end, !dbg !493

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !494
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.106, align 16, !dbg !494
  %4 = add i64 %gcov_ctr, 1, !dbg !494
  store i64 %4, ptr @__llvm_gcov_ctr.106, align 16, !dbg !494
  %call1 = tail call i32 @wake_up_process(ptr noundef nonnull %3) #11, !dbg !495
  tail call void @wait_for_completion(ptr noundef nonnull @read_start) #11, !dbg !496
  br label %if.end, !dbg !497

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %gcov_ctr1187.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 116), align 16, !dbg !498
  %5 = add i64 %gcov_ctr1187.i, 1, !dbg !498
  store i64 %5, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 116), align 16, !dbg !498
  %6 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.13, align 4, !dbg !498
  %call13.i = tail call i32 @__trace_bputs(i32 noundef 1, ptr noundef %6) #11, !dbg !498
  %call22.i = tail call i64 @ktime_get() #11, !dbg !501
  %add.i = add i64 %call22.i, 10000000000, !dbg !502
  br label %do.body23.i, !dbg !503

do.body23.i:                                      ; preds = %break_test.exit.i.do.body23.i_crit_edge, %if.end
  %cnt.0.i = phi i32 [ 0, %if.end ], [ %inc35.i, %break_test.exit.i.do.body23.i_crit_edge ], !dbg !504
  %hit.0.i = phi i32 [ 0, %if.end ], [ %hit.1.lcssa.i, %break_test.exit.i.do.body23.i_crit_edge ], !dbg !505
  %missed.0.i = phi i32 [ 0, %if.end ], [ %missed.1.lcssa.i, %break_test.exit.i.do.body23.i_crit_edge ], !dbg !506
  %7 = load i32, ptr @write_iteration, align 4, !dbg !507
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7), !dbg !508
  %cmp1382.not.i = icmp eq i32 %7, 0, !dbg !508
  br i1 %cmp1382.not.i, label %do.body23.i.for.end.i_crit_edge, label %do.body23.i.for.body.i_crit_edge, !dbg !509

do.body23.i.for.body.i_crit_edge:                 ; preds = %do.body23.i
  br label %for.body.i, !dbg !509

do.body23.i.for.end.i_crit_edge:                  ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !509
  br label %for.end.i, !dbg !509

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %do.body23.i.for.body.i_crit_edge
  %missed.11385.i = phi i32 [ %missed.2.i, %for.inc.i.for.body.i_crit_edge ], [ %missed.0.i, %do.body23.i.for.body.i_crit_edge ]
  %hit.11384.i = phi i32 [ %hit.2.i, %for.inc.i.for.body.i_crit_edge ], [ %hit.0.i, %do.body23.i.for.body.i_crit_edge ]
  %i.01383.i = phi i32 [ %inc33.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %do.body23.i.for.body.i_crit_edge ]
  %8 = load ptr, ptr @buffer, align 4, !dbg !510
  %call25.i = tail call ptr @ring_buffer_lock_reserve(ptr noundef %8, i32 noundef 10) #11, !dbg !511
  %tobool.not.i = icmp eq ptr %call25.i, null, !dbg !512
  br i1 %tobool.not.i, label %if.then26.i, label %if.else27.i, !dbg !513

if.then26.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !514
  %gcov_ctr.i204 = load i64, ptr @__llvm_gcov_ctr.117, align 16, !dbg !514
  %9 = add i64 %gcov_ctr.i204, 1, !dbg !514
  store i64 %9, ptr @__llvm_gcov_ctr.117, align 16, !dbg !514
  %inc.i = add i32 %missed.11385.i, 1, !dbg !514
  br label %for.inc.i, !dbg !515

if.else27.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !516
  %gcov_ctr1072.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 1), align 8, !dbg !516
  %10 = add i64 %gcov_ctr1072.i, 1, !dbg !516
  store i64 %10, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 1), align 8, !dbg !516
  %inc28.i = add i32 %hit.11384.i, 1, !dbg !516
  %call29.i = tail call ptr @ring_buffer_event_data(ptr noundef nonnull %call25.i) #11, !dbg !517
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.109, align 8, !dbg !518
  %11 = add i64 %gcov_ctr.i.i, 1, !dbg !518
  store i64 %11, ptr @__llvm_gcov_ctr.109, align 8, !dbg !518
  %12 = tail call i32 @llvm.read_register.i32(metadata !206) #11, !dbg !518
  %and.i.i = and i32 %12, -16384, !dbg !520
  %13 = inttoptr i32 %and.i.i to ptr, !dbg !521
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3, !dbg !522
  %14 = ptrtoint ptr %cpu.i to i32, !dbg !522
  call void @__asan_load4_noabort(i32 %14), !dbg !522
  %15 = load i32, ptr %cpu.i, align 4, !dbg !522
  %16 = ptrtoint ptr %call29.i to i32, !dbg !523
  call void @__asan_store4_noabort(i32 %16), !dbg !523
  store i32 %15, ptr %call29.i, align 4, !dbg !523
  %17 = load ptr, ptr @buffer, align 4, !dbg !524
  %call31.i = tail call i32 @ring_buffer_unlock_commit(ptr noundef %17, ptr noundef nonnull %call25.i) #11, !dbg !525
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else27.i, %if.then26.i
  %hit.2.i = phi i32 [ %inc28.i, %if.else27.i ], [ %hit.11384.i, %if.then26.i ], !dbg !504
  %missed.2.i = phi i32 [ %missed.11385.i, %if.else27.i ], [ %inc.i, %if.then26.i ], !dbg !504
  %inc33.i = add nuw i32 %i.01383.i, 1, !dbg !526
  %18 = load i32, ptr @write_iteration, align 4, !dbg !507
  %cmp.i = icmp ult i32 %inc33.i, %18, !dbg !508
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.for.end.i_crit_edge, !dbg !509, !llvm.loop !527

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !509
  br label %for.end.i, !dbg !509

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !509
  br label %for.body.i, !dbg !509

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %do.body23.i.for.end.i_crit_edge
  %hit.1.lcssa.i = phi i32 [ %hit.0.i, %do.body23.i.for.end.i_crit_edge ], [ %hit.2.i, %for.inc.i.for.end.i_crit_edge ], !dbg !504
  %missed.1.lcssa.i = phi i32 [ %missed.0.i, %do.body23.i.for.end.i_crit_edge ], [ %missed.2.i, %for.inc.i.for.end.i_crit_edge ], !dbg !506
  %call34.i = tail call i64 @ktime_get() #11, !dbg !529
  %inc35.i = add i32 %cnt.0.i, 1, !dbg !530
  %19 = load ptr, ptr @consumer, align 4, !dbg !531
  %tobool36.not.i = icmp eq ptr %19, null, !dbg !531
  br i1 %tobool36.not.i, label %for.end.if.end40_crit_edge.i, label %land.lhs.true.i, !dbg !532

for.end.if.end40_crit_edge.i:                     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !533
  %.pre1393.i = srem i32 %inc35.i, 100, !dbg !533
  br label %if.end40.i, !dbg !532

land.lhs.true.i:                                  ; preds = %for.end.i
  %gcov_ctr1073.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 2), align 16, !dbg !534
  %20 = add i64 %gcov_ctr1073.i, 1, !dbg !534
  store i64 %20, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 2), align 16, !dbg !534
  %rem.i = srem i32 %inc35.i, 100, !dbg !535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i), !dbg !535
  %tobool37.not.i = icmp eq i32 %rem.i, 0, !dbg !535
  br i1 %tobool37.not.i, label %if.end40.thread.i, label %land.lhs.true.i.if.end40.i_crit_edge, !dbg !531

land.lhs.true.i.if.end40.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !531
  br label %if.end40.i, !dbg !531

if.end40.thread.i:                                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !536
  %gcov_ctr1074.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 3), align 8, !dbg !536
  %21 = add i64 %gcov_ctr1074.i, 1, !dbg !536
  store i64 %21, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 3), align 8, !dbg !536
  %call39.i = tail call i32 @wake_up_process(ptr noundef nonnull %19) #11, !dbg !537
  br label %if.end46.i, !dbg !538

if.end40.i:                                       ; preds = %land.lhs.true.i.if.end40.i_crit_edge, %for.end.if.end40_crit_edge.i
  %rem41.pre-phi.i = phi i32 [ %.pre1393.i, %for.end.if.end40_crit_edge.i ], [ %rem.i, %land.lhs.true.i.if.end40.i_crit_edge ], !dbg !533
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem41.pre-phi.i), !dbg !533
  %tobool42.not.i = icmp eq i32 %rem41.pre-phi.i, 0, !dbg !533
  br i1 %tobool42.not.i, label %if.end40.i.if.end46.i_crit_edge, label %if.then43.i, !dbg !538

if.end40.i.if.end46.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !538
  br label %if.end46.i, !dbg !538

if.then43.i:                                      ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !539
  %gcov_ctr1075.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 4), align 16, !dbg !539
  %22 = add i64 %gcov_ctr1075.i, 1, !dbg !539
  store i64 %22, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 4), align 16, !dbg !539
  tail call void @__might_resched(ptr noundef nonnull @.str.2, i32 noundef 281, i32 noundef 0) #11, !dbg !539
  %gcov_ctr.i1368.i = load i64, ptr @__llvm_gcov_ctr.118, align 8, !dbg !540
  %23 = add i64 %gcov_ctr.i1368.i, 1, !dbg !540
  store i64 %23, ptr @__llvm_gcov_ctr.118, align 8, !dbg !540
  %call.i.i = tail call i32 @__cond_resched() #11, !dbg !540
  br label %if.end46.i, !dbg !539

if.end46.i:                                       ; preds = %if.then43.i, %if.end40.i.if.end46.i_crit_edge, %if.end40.thread.i
  %gcov_ctr1076.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 5), align 8, !dbg !544
  %24 = add i64 %gcov_ctr1076.i, 1, !dbg !544
  store i64 %24, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 5), align 8, !dbg !544
  %gcov_ctr.i1369.i = load i64, ptr @__llvm_gcov_ctr.119, align 8
  %25 = add i64 %gcov_ctr.i1369.i, 1
  store i64 %25, ptr @__llvm_gcov_ctr.119, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %call34.i, i64 %add.i), !dbg !545
  %cmp.i.i.i = icmp slt i64 %call34.i, %add.i, !dbg !545
  br i1 %cmp.i.i.i, label %land.rhs.i, label %if.end.i.i.i, !dbg !551

if.end.i.i.i:                                     ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call34.i, i64 %add.i), !dbg !552
  %cmp3.i.i.i = icmp sgt i64 %call34.i, %add.i, !dbg !552
  br i1 %cmp3.i.i.i, label %if.then4.i.i.i, label %if.end5.i.i.i, !dbg !553

if.then4.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !554
  %gcov_ctr6.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 1), align 8, !dbg !554
  %26 = add i64 %gcov_ctr6.i.i.i, 1, !dbg !554
  store i64 %26, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 1), align 8, !dbg !554
  br label %do.body51.i, !dbg !554

if.end5.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !555
  %gcov_ctr7.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 2), align 16, !dbg !555
  %27 = add i64 %gcov_ctr7.i.i.i, 1, !dbg !555
  store i64 %27, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.126, i32 0, i32 2), align 16, !dbg !555
  br label %do.body51.i, !dbg !555

land.rhs.i:                                       ; preds = %if.end46.i
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.126, align 16, !dbg !556
  %28 = add i64 %gcov_ctr.i.i.i, 1, !dbg !556
  store i64 %28, ptr @__llvm_gcov_ctr.126, align 16, !dbg !556
  %gcov_ctr1077.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 6), align 16, !dbg !557
  %29 = add i64 %gcov_ctr1077.i, 1, !dbg !557
  store i64 %29, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 6), align 16, !dbg !557
  %gcov_ctr.i1370.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !558
  %30 = add i64 %gcov_ctr.i1370.i, 1, !dbg !558
  store i64 %30, ptr @__llvm_gcov_ctr.107, align 8, !dbg !558
  %.b.i.i = load i1, ptr @test_error, align 4, !dbg !558
  br i1 %.b.i.i, label %land.rhs.i.do.body51.i_crit_edge, label %break_test.exit.i, !dbg !560

land.rhs.i.do.body51.i_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !560
  br label %do.body51.i, !dbg !560

break_test.exit.i:                                ; preds = %land.rhs.i
  %gcov_ctr1.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !561
  %31 = add i64 %gcov_ctr1.i.i, 1, !dbg !561
  store i64 %31, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !561
  %call.i1371.i = tail call zeroext i1 @kthread_should_stop() #11, !dbg !561
  br i1 %call.i1371.i, label %break_test.exit.i.do.body51.i_crit_edge, label %break_test.exit.i.do.body23.i_crit_edge, !dbg !544, !llvm.loop !562

break_test.exit.i.do.body23.i_crit_edge:          ; preds = %break_test.exit.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !544
  br label %do.body23.i, !dbg !544

break_test.exit.i.do.body51.i_crit_edge:          ; preds = %break_test.exit.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !544
  br label %do.body51.i, !dbg !544

do.body51.i:                                      ; preds = %break_test.exit.i.do.body51.i_crit_edge, %land.rhs.i.do.body51.i_crit_edge, %if.end5.i.i.i, %if.then4.i.i.i
  %gcov_ctr1190.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 119), align 8, !dbg !564
  %32 = add i64 %gcov_ctr1190.i, 1, !dbg !564
  store i64 %32, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 119), align 8, !dbg !564
  %33 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.17, align 4, !dbg !564
  %call73.i = tail call i32 @__trace_bputs(i32 noundef 1, ptr noundef %33) #11, !dbg !564
  %34 = load ptr, ptr @consumer, align 4, !dbg !565
  %tobool82.not.i = icmp eq ptr %34, null, !dbg !565
  br i1 %tobool82.not.i, label %do.body51.i.if.end91.i_crit_edge, label %if.then83.i, !dbg !565

do.body51.i.if.end91.i_crit_edge:                 ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !565
  br label %if.end91.i, !dbg !565

if.then83.i:                                      ; preds = %do.body51.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !566
  %gcov_ctr.i1372.i = load i64, ptr @__llvm_gcov_ctr.120, align 8
  %35 = add i64 %gcov_ctr.i1372.i, 1
  store i64 %35, ptr @__llvm_gcov_ctr.120, align 8
  store i32 0, ptr @read_start, align 4, !dbg !567
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.completion, ptr @read_start, i32 0, i32 1), ptr noundef nonnull @.str.101, ptr noundef nonnull @init_completion.__key) #11, !dbg !571
  %gcov_ctr.i1373.i = load i64, ptr @__llvm_gcov_ctr.120, align 8
  %36 = add i64 %gcov_ctr.i1373.i, 1
  store i64 %36, ptr @__llvm_gcov_ctr.120, align 8
  store i32 0, ptr @read_done, align 4, !dbg !572
  tail call void @__init_swait_queue_head(ptr noundef getelementptr inbounds (%struct.completion, ptr @read_done, i32 0, i32 1), ptr noundef nonnull @.str.101, ptr noundef nonnull @init_completion.__key) #11, !dbg !574
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !dbg !575, !srcloc !576
  %gcov_ctr1078.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 7), align 8, !dbg !577
  %37 = add i64 %gcov_ctr1078.i, 1, !dbg !577
  store i64 %37, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 7), align 8, !dbg !577
  store i32 1, ptr @reader_finish, align 4, !dbg !577
  %38 = load ptr, ptr @consumer, align 4, !dbg !578
  %call90.i = tail call i32 @wake_up_process(ptr noundef %38) #11, !dbg !579
  tail call void @wait_for_completion(ptr noundef nonnull @read_done) #11, !dbg !580
  br label %if.end91.i, !dbg !581

if.end91.i:                                       ; preds = %if.then83.i, %do.body51.i.if.end91.i_crit_edge
  %gcov_ctr.i1374.i = load i64, ptr @__llvm_gcov_ctr.121, align 8
  %39 = add i64 %gcov_ctr.i1374.i, 1
  store i64 %39, ptr @__llvm_gcov_ctr.121, align 8
  %sub.i.i = sub i64 %call34.i, %call22.i, !dbg !582
  %gcov_ctr.i.i1375.i = load i64, ptr @__llvm_gcov_ctr.127, align 8
  %40 = add i64 %gcov_ctr.i.i1375.i, 1
  store i64 %40, ptr @__llvm_gcov_ctr.127, align 8
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.128, align 16
  %41 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %41, ptr @__llvm_gcov_ctr.128, align 16
  %gcov_ctr217.i.i.i.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 2), align 16, !dbg !585
  %42 = add i64 %gcov_ctr217.i.i.i.i, 1, !dbg !585
  store i64 %42, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 2), align 16, !dbg !585
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub.i.i), !dbg !590
  %cmp8.i.i.i.i = icmp slt i64 %sub.i.i, 0, !dbg !590
  br i1 %cmp8.i.i.i.i, label %cond.true.i.i.i.i, label %if.end91.i.land.lhs.true9.i.i.i.i_crit_edge, !dbg !591

if.end91.i.land.lhs.true9.i.i.i.i_crit_edge:      ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !591
  br label %land.lhs.true9.i.i.i.i, !dbg !591

cond.true.i.i.i.i:                                ; preds = %if.end91.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !592
  %gcov_ctr218.i.i.i.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 3), align 8, !dbg !592
  %43 = add i64 %gcov_ctr218.i.i.i.i, 1, !dbg !592
  store i64 %43, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 3), align 8, !dbg !592
  %sub.i.i.i.i = sub i64 0, %sub.i.i, !dbg !593
  br label %land.lhs.true9.i.i.i.i, !dbg !591

land.lhs.true9.i.i.i.i:                           ; preds = %cond.true.i.i.i.i, %if.end91.i.land.lhs.true9.i.i.i.i_crit_edge
  %cond.i.i.i.i = phi i64 [ %sub.i.i.i.i, %cond.true.i.i.i.i ], [ %sub.i.i, %if.end91.i.land.lhs.true9.i.i.i.i_crit_edge ], !dbg !591
  %gcov_ctr219.i.i.i.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 4), align 16, !dbg !594
  %44 = add i64 %gcov_ctr219.i.i.i.i, 1, !dbg !594
  store i64 %44, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 4), align 16, !dbg !594
  %gcov_ctr223.i.i.i.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 8), align 16, !dbg !594
  %45 = add i64 %gcov_ctr223.i.i.i.i, 1, !dbg !594
  store i64 %45, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 8), align 16, !dbg !594
  %gcov_ctr225.i.i.i.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 10), align 16, !dbg !594
  %46 = add i64 %gcov_ctr225.i.i.i.i, 1, !dbg !594
  store i64 %46, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 10), align 16, !dbg !594
  %gcov_ctr227.i.i.i.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 12), align 16, !dbg !594
  %47 = add i64 %gcov_ctr227.i.i.i.i, 1, !dbg !594
  store i64 %47, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 12), align 16, !dbg !594
  %gcov_ctr14.i.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16, !dbg !595
  %48 = add i64 %gcov_ctr14.i.i.i.i.i, 1, !dbg !595
  store i64 %48, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16, !dbg !595
  %49 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %cond.i.i.i.i, i32 0) #13, !dbg !595, !srcloc !599
  %asmresult.i.i.i.i.i = extractvalue { i64, i32 } %49, 0, !dbg !595
  %asmresult4.i.i.i.i.i = extractvalue { i64, i32 } %49, 1, !dbg !595
  %50 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %cond.i.i.i.i, i64 %asmresult.i.i.i.i.i, i32 %asmresult4.i.i.i.i.i) #13, !dbg !600, !srcloc !601
  %asmresult10.i.i.i.i.i = extractvalue { i64, i32 } %50, 0, !dbg !600
  %div1811.i.i.i.i = lshr i64 %asmresult10.i.i.i.i.i, 9, !dbg !594
  br i1 %cmp8.i.i.i.i, label %cond.true209.i.i.i.i, label %land.lhs.true9.i.i.i.i.ktime_us_delta.exit.i_crit_edge, !dbg !602

land.lhs.true9.i.i.i.i.ktime_us_delta.exit.i_crit_edge: ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !602
  br label %ktime_us_delta.exit.i, !dbg !602

cond.true209.i.i.i.i:                             ; preds = %land.lhs.true9.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !603
  %gcov_ctr236.i.i.i.i = load i64, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 21), align 8, !dbg !603
  %51 = add i64 %gcov_ctr236.i.i.i.i, 1, !dbg !603
  store i64 %51, ptr getelementptr inbounds ([22 x i64], ptr @__llvm_gcov_ctr.128, i32 0, i32 21), align 8, !dbg !603
  %sub210.i.i.i.i = sub nsw i64 0, %div1811.i.i.i.i, !dbg !604
  br label %ktime_us_delta.exit.i, !dbg !602

ktime_us_delta.exit.i:                            ; preds = %cond.true209.i.i.i.i, %land.lhs.true9.i.i.i.i.ktime_us_delta.exit.i_crit_edge
  %cond213.i.i.i.i = phi i64 [ %sub210.i.i.i.i, %cond.true209.i.i.i.i ], [ %div1811.i.i.i.i, %land.lhs.true9.i.i.i.i.ktime_us_delta.exit.i_crit_edge ], !dbg !602
  %52 = load ptr, ptr @buffer, align 4, !dbg !605
  %call93.i = tail call i32 @ring_buffer_entries(ptr noundef %52) #11, !dbg !606
  %conv.i = zext i32 %call93.i to i64, !dbg !606
  %53 = load ptr, ptr @buffer, align 4, !dbg !607
  %call94.i = tail call i32 @ring_buffer_overruns(ptr noundef %53) #11, !dbg !608
  %conv95.i = zext i32 %call94.i to i64, !dbg !608
  %.b.i205 = load i1, ptr @test_error, align 4, !dbg !609
  br i1 %.b.i205, label %do.body98.i, label %ktime_us_delta.exit.i.if.end129.i_crit_edge, !dbg !609

ktime_us_delta.exit.i.if.end129.i_crit_edge:      ; preds = %ktime_us_delta.exit.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !609
  br label %if.end129.i, !dbg !609

do.body98.i:                                      ; preds = %ktime_us_delta.exit.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !610
  %gcov_ctr1194.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 123), align 8, !dbg !610
  %54 = add i64 %gcov_ctr1194.i, 1, !dbg !610
  store i64 %54, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 123), align 8, !dbg !610
  %55 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.21, align 4, !dbg !610
  %call120.i = tail call i32 @__trace_bputs(i32 noundef 1, ptr noundef %55) #11, !dbg !610
  br label %if.end129.i, !dbg !610

if.end129.i:                                      ; preds = %do.body98.i, %ktime_us_delta.exit.i.if.end129.i_crit_edge
  %56 = load i32, ptr @disable_reader, align 4, !dbg !611
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56), !dbg !611
  %tobool130.not.i = icmp eq i32 %56, 0, !dbg !611
  br i1 %tobool130.not.i, label %if.then131.i, label %if.end129.i.if.end203.i_crit_edge, !dbg !612

if.end129.i.if.end203.i_crit_edge:                ; preds = %if.end129.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !612
  br label %if.end203.i, !dbg !612

if.then131.i:                                     ; preds = %if.end129.i
  %57 = load i32, ptr @consumer_fifo, align 4, !dbg !613
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57), !dbg !613
  %tobool132.not.i = icmp eq i32 %57, 0, !dbg !613
  br i1 %tobool132.not.i, label %do.body171.i, label %do.body134.i, !dbg !613

do.body134.i:                                     ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !614
  %gcov_ctr1196.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 125), align 8, !dbg !614
  %58 = add i64 %gcov_ctr1196.i, 1, !dbg !614
  store i64 %58, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 125), align 8, !dbg !614
  %59 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.23, align 4, !dbg !614
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %57), !dbg !614
  %cmp144.i = icmp eq i32 %57, 1, !dbg !614
  %cond.i = select i1 %cmp144.i, ptr @.str.25, ptr @.str.26, !dbg !614
  %call146.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %59, ptr noundef nonnull %cond.i) #11, !dbg !614
  br label %if.end203.i, !dbg !614

do.body171.i:                                     ; preds = %if.then131.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !615
  %gcov_ctr1200.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 129), align 8, !dbg !615
  %60 = add i64 %gcov_ctr1200.i, 1, !dbg !615
  store i64 %60, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 129), align 8, !dbg !615
  %61 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.29, align 4, !dbg !615
  %62 = load i32, ptr @consumer_nice, align 4, !dbg !615
  %call181.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %61, i32 noundef %62) #11, !dbg !615
  br label %if.end203.i

if.end203.i:                                      ; preds = %do.body171.i, %do.body134.i, %if.end129.i.if.end203.i_crit_edge
  %63 = load i32, ptr @producer_fifo, align 4, !dbg !616
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63), !dbg !616
  %tobool204.not.i = icmp eq i32 %63, 0, !dbg !616
  br i1 %tobool204.not.i, label %do.body244.i, label %do.body206.i, !dbg !616

do.body206.i:                                     ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !617
  %64 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.33, align 4, !dbg !617
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63), !dbg !617
  %cmp216.i = icmp eq i32 %63, 1, !dbg !617
  %cond218.i = select i1 %cmp216.i, ptr @.str.25, ptr @.str.26, !dbg !617
  %call219.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %64, ptr noundef nonnull %cond218.i) #11, !dbg !617
  br label %if.end275.i, !dbg !617

do.body244.i:                                     ; preds = %if.end203.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !618
  %gcov_ctr1207.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 136), align 16, !dbg !618
  %65 = add i64 %gcov_ctr1207.i, 1, !dbg !618
  store i64 %65, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 136), align 16, !dbg !618
  %66 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.37, align 4, !dbg !618
  %67 = load i32, ptr @producer_nice, align 4, !dbg !618
  %call254.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %66, i32 noundef %67) #11, !dbg !618
  br label %if.end275.i

if.end275.i:                                      ; preds = %do.body244.i, %do.body206.i
  %68 = load i32, ptr @producer_fifo, align 4, !dbg !619
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68), !dbg !619
  %tobool276.not.i = icmp eq i32 %68, 0, !dbg !619
  br i1 %tobool276.not.i, label %land.lhs.true277.i, label %if.end275.i.do.body318.i_crit_edge, !dbg !620

if.end275.i.do.body318.i_crit_edge:               ; preds = %if.end275.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !620
  br label %do.body318.i, !dbg !620

land.lhs.true277.i:                               ; preds = %if.end275.i
  %gcov_ctr1079.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 8), align 16, !dbg !621
  %69 = add i64 %gcov_ctr1079.i, 1, !dbg !621
  store i64 %69, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 8), align 16, !dbg !621
  %70 = load i32, ptr @consumer_fifo, align 4, !dbg !621
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70), !dbg !621
  %tobool278.not.i = icmp eq i32 %70, 0, !dbg !621
  br i1 %tobool278.not.i, label %land.lhs.true279.i, label %land.lhs.true277.i.do.body318.i_crit_edge, !dbg !622

land.lhs.true277.i.do.body318.i_crit_edge:        ; preds = %land.lhs.true277.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !622
  br label %do.body318.i, !dbg !622

land.lhs.true279.i:                               ; preds = %land.lhs.true277.i
  %gcov_ctr1080.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 9), align 8, !dbg !623
  %71 = add i64 %gcov_ctr1080.i, 1, !dbg !623
  store i64 %71, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 9), align 8, !dbg !623
  %72 = load i32, ptr @producer_nice, align 4, !dbg !623
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %72), !dbg !624
  %cmp280.i = icmp eq i32 %72, 19, !dbg !624
  br i1 %cmp280.i, label %land.lhs.true282.i, label %land.lhs.true279.i.do.body318.i_crit_edge, !dbg !625

land.lhs.true279.i.do.body318.i_crit_edge:        ; preds = %land.lhs.true279.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !625
  br label %do.body318.i, !dbg !625

land.lhs.true282.i:                               ; preds = %land.lhs.true279.i
  %gcov_ctr1081.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 10), align 16, !dbg !626
  %73 = add i64 %gcov_ctr1081.i, 1, !dbg !626
  store i64 %73, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 10), align 16, !dbg !626
  %74 = load i32, ptr @consumer_nice, align 4, !dbg !626
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %74), !dbg !627
  %cmp283.i = icmp eq i32 %74, 19, !dbg !627
  br i1 %cmp283.i, label %do.body286.i, label %land.lhs.true282.i.do.body318.i_crit_edge, !dbg !628

land.lhs.true282.i.do.body318.i_crit_edge:        ; preds = %land.lhs.true282.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !628
  br label %do.body318.i, !dbg !628

do.body286.i:                                     ; preds = %land.lhs.true282.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !629
  %gcov_ctr1213.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 142), align 16, !dbg !629
  %75 = add i64 %gcov_ctr1213.i, 1, !dbg !629
  store i64 %75, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 142), align 16, !dbg !629
  %76 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.43, align 4, !dbg !629
  %call308.i = tail call i32 @__trace_bputs(i32 noundef 1, ptr noundef %76) #11, !dbg !629
  br label %do.body318.i, !dbg !629

do.body318.i:                                     ; preds = %do.body286.i, %land.lhs.true282.i.do.body318.i_crit_edge, %land.lhs.true279.i.do.body318.i_crit_edge, %land.lhs.true277.i.do.body318.i_crit_edge, %if.end275.i.do.body318.i_crit_edge
  %77 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.45, align 4, !dbg !630
  %call328.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %77, i64 noundef %cond213.i.i.i.i) #11, !dbg !630
  %78 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.49, align 4, !dbg !631
  %call359.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %78, i64 noundef %conv95.i) #11, !dbg !631
  %79 = load i32, ptr @disable_reader, align 4, !dbg !632
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79), !dbg !632
  %tobool380.not.i = icmp eq i32 %79, 0, !dbg !632
  br i1 %tobool380.not.i, label %do.body414.i, label %do.body382.i, !dbg !632

do.body382.i:                                     ; preds = %do.body318.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !633
  %gcov_ctr1223.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 152), align 16, !dbg !633
  %80 = add i64 %gcov_ctr1223.i, 1, !dbg !633
  store i64 %80, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 152), align 16, !dbg !633
  %81 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.55, align 4, !dbg !633
  %call404.i = tail call i32 @__trace_bputs(i32 noundef 1, ptr noundef %81) #11, !dbg !633
  br label %do.body450.i, !dbg !633

do.body414.i:                                     ; preds = %do.body318.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !634
  %gcov_ctr1225.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 154), align 16, !dbg !634
  %82 = add i64 %gcov_ctr1225.i, 1, !dbg !634
  store i64 %82, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 154), align 16, !dbg !634
  %83 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.57, align 4, !dbg !634
  %84 = load i32, ptr @read, align 4, !dbg !634
  %85 = load i32, ptr @read_events, align 4, !dbg !634
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85), !dbg !634
  %tobool424.not.i = icmp eq i32 %85, 0, !dbg !634
  %cond425.i = select i1 %tobool424.not.i, ptr @.str.60, ptr @.str.59, !dbg !634
  %call426.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %83, i32 noundef %84, ptr noundef nonnull %cond425.i) #11, !dbg !634
  br label %do.body450.i

do.body450.i:                                     ; preds = %do.body414.i, %do.body382.i
  %86 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.63, align 4, !dbg !635
  %call460.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %86, i64 noundef %conv.i) #11, !dbg !635
  %87 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.67, align 4, !dbg !636
  %add491.i = add nuw nsw i64 %conv95.i, %conv.i, !dbg !636
  %88 = load i32, ptr @read, align 4, !dbg !636
  %conv492.i = zext i32 %88 to i64, !dbg !636
  %add493.i = add nuw nsw i64 %add491.i, %conv492.i, !dbg !636
  %call494.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %87, i64 noundef %add493.i) #11, !dbg !636
  %89 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.71, align 4, !dbg !637
  %call528.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %89, i32 noundef %missed.1.lcssa.i) #11, !dbg !637
  %90 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.75, align 4, !dbg !638
  %call559.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %90, i32 noundef %hit.1.lcssa.i) #11, !dbg !638
  %gcov_ctr1082.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 11), align 8, !dbg !639
  %91 = add i64 %gcov_ctr1082.i, 1, !dbg !639
  store i64 %91, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 11), align 8, !dbg !639
  %gcov_ctr1086.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 15), align 8, !dbg !639
  %92 = add i64 %gcov_ctr1086.i, 1, !dbg !639
  store i64 %92, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 15), align 8, !dbg !639
  %gcov_ctr1088.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 17), align 8, !dbg !639
  %93 = add i64 %gcov_ctr1088.i, 1, !dbg !639
  store i64 %93, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 17), align 8, !dbg !639
  %gcov_ctr1090.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 19), align 8, !dbg !639
  %94 = add i64 %gcov_ctr1090.i, 1, !dbg !639
  store i64 %94, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 19), align 8, !dbg !639
  %gcov_ctr14.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16, !dbg !640
  %95 = add i64 %gcov_ctr14.i.i, 1, !dbg !640
  store i64 %95, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.124, i32 0, i32 2), align 16, !dbg !640
  %96 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %cond213.i.i.i.i, i32 0) #13, !dbg !640, !srcloc !599
  %asmresult.i.i = extractvalue { i64, i32 } %96, 0, !dbg !640
  %asmresult4.i.i = extractvalue { i64, i32 } %96, 1, !dbg !640
  %97 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %cond213.i.i.i.i, i64 %asmresult.i.i, i32 %asmresult4.i.i) #13, !dbg !642, !srcloc !601
  %asmresult10.i.i = extractvalue { i64, i32 } %97, 0, !dbg !642
  %div7501367.i = lshr i64 %asmresult10.i.i, 9, !dbg !639
  call void @__sanitizer_cov_trace_const_cmp8(i64 512, i64 %asmresult10.i.i), !dbg !643
  %tobool773.not.i = icmp ult i64 %asmresult10.i.i, 512, !dbg !643
  br i1 %tobool773.not.i, label %do.body778.i, label %if.then774.i, !dbg !643

if.then774.i:                                     ; preds = %do.body450.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !644
  %conv775.i = trunc i64 %div7501367.i to i32, !dbg !644
  %div776.i = udiv i32 %hit.1.lcssa.i, %conv775.i, !dbg !645
  br label %do.body810.i, !dbg !646

do.body778.i:                                     ; preds = %do.body450.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !647
  %gcov_ctr1243.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 172), align 16, !dbg !647
  %98 = add i64 %gcov_ctr1243.i, 1, !dbg !647
  store i64 %98, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 172), align 16, !dbg !647
  %99 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.81, align 4, !dbg !647
  %call800.i = tail call i32 @__trace_bputs(i32 noundef 1, ptr noundef %99) #11, !dbg !647
  br label %do.body810.i

do.body810.i:                                     ; preds = %do.body778.i, %if.then774.i
  %hit.3.i = phi i32 [ %div776.i, %if.then774.i ], [ %hit.1.lcssa.i, %do.body778.i ], !dbg !504
  %100 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.83, align 4, !dbg !648
  %call820.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %100, i32 noundef %hit.3.i) #11, !dbg !648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hit.3.i), !dbg !649
  %tobool841.not.i = icmp eq i32 %hit.3.i, 0, !dbg !649
  br i1 %tobool841.not.i, label %do.body810.i.if.end875.i_crit_edge, label %if.then842.i, !dbg !649

do.body810.i.if.end875.i_crit_edge:               ; preds = %do.body810.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !649
  br label %if.end875.i, !dbg !649

if.then842.i:                                     ; preds = %do.body810.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !650
  %div843.i = udiv i32 1000000, %hit.3.i, !dbg !650
  %gcov_ctr1248.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 177), align 8, !dbg !651
  %101 = add i64 %gcov_ctr1248.i, 1, !dbg !651
  store i64 %101, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 177), align 8, !dbg !651
  %102 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.87, align 4, !dbg !651
  %call854.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %102, i32 noundef %div843.i) #11, !dbg !651
  br label %if.end875.i, !dbg !652

if.end875.i:                                      ; preds = %if.then842.i, %do.body810.i.if.end875.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %missed.1.lcssa.i), !dbg !653
  %tobool876.not.i = icmp eq i32 %missed.1.lcssa.i, 0, !dbg !653
  br i1 %tobool876.not.i, label %if.end875.i.ring_buffer_producer.exit_crit_edge, label %if.then877.i, !dbg !653

if.end875.i.ring_buffer_producer.exit_crit_edge:  ; preds = %if.end875.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !653
  br label %ring_buffer_producer.exit, !dbg !653

if.then877.i:                                     ; preds = %if.end875.i
  br i1 %tobool773.not.i, label %if.then877.i.do.body883.i_crit_edge, label %if.then879.i, !dbg !654

if.then877.i.do.body883.i_crit_edge:              ; preds = %if.then877.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !654
  br label %do.body883.i, !dbg !654

if.then879.i:                                     ; preds = %if.then877.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !655
  %gcov_ctr1098.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 27), align 8, !dbg !655
  %103 = add i64 %gcov_ctr1098.i, 1, !dbg !655
  store i64 %103, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 27), align 8, !dbg !655
  %conv880.i = trunc i64 %div7501367.i to i32, !dbg !656
  %div881.i = udiv i32 %missed.1.lcssa.i, %conv880.i, !dbg !657
  br label %do.body883.i, !dbg !658

do.body883.i:                                     ; preds = %if.then879.i, %if.then877.i.do.body883.i_crit_edge
  %missed.3.i = phi i32 [ %div881.i, %if.then879.i ], [ %missed.1.lcssa.i, %if.then877.i.do.body883.i_crit_edge ], !dbg !504
  %104 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.91, align 4, !dbg !659
  %add893.i = add i32 %missed.3.i, %hit.3.i, !dbg !659
  %call894.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %104, i32 noundef %add893.i) #11, !dbg !659
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add893.i), !dbg !660
  %tobool917.not.i = icmp eq i32 %add893.i, 0, !dbg !660
  br i1 %tobool917.not.i, label %do.body919.i, label %do.body883.i.if.end950.i_crit_edge, !dbg !661

do.body883.i.if.end950.i_crit_edge:               ; preds = %do.body883.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !661
  br label %if.end950.i, !dbg !661

do.body919.i:                                     ; preds = %do.body883.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !662
  %gcov_ctr1257.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 186), align 16, !dbg !662
  %105 = add i64 %gcov_ctr1257.i, 1, !dbg !662
  store i64 %105, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 186), align 16, !dbg !662
  %106 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.97, align 4, !dbg !662
  %call941.i = tail call i32 @__trace_bputs(i32 noundef 1, ptr noundef %106) #11, !dbg !662
  br label %if.end950.i, !dbg !663

if.end950.i:                                      ; preds = %do.body919.i, %do.body883.i.if.end950.i_crit_edge
  %add951.pre-phi.i = phi i32 [ -1, %do.body919.i ], [ %add893.i, %do.body883.i.if.end950.i_crit_edge ], !dbg !664
  %div952.i = udiv i32 1000000, %add951.pre-phi.i, !dbg !665
  %gcov_ctr1259.i = load i64, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 188), align 16, !dbg !666
  %107 = add i64 %gcov_ctr1259.i, 1, !dbg !666
  store i64 %107, ptr getelementptr inbounds ([192 x i64], ptr @__llvm_gcov_ctr.117, i32 0, i32 188), align 16, !dbg !666
  %108 = load ptr, ptr @ring_buffer_producer.trace_printk_fmt.99, align 4, !dbg !666
  %call963.i = tail call i32 (i32, ptr, ...) @__trace_bprintk(i32 noundef 1, ptr noundef %108, i32 noundef %div952.i) #11, !dbg !666
  br label %ring_buffer_producer.exit, !dbg !667

ring_buffer_producer.exit:                        ; preds = %if.end950.i, %if.end875.i.ring_buffer_producer.exit_crit_edge
  %gcov_ctr.i206 = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !668
  %109 = add i64 %gcov_ctr.i206, 1, !dbg !668
  store i64 %109, ptr @__llvm_gcov_ctr.107, align 8, !dbg !668
  %.b.i207 = load i1, ptr @test_error, align 4, !dbg !668
  br i1 %.b.i207, label %ring_buffer_producer.exit.if.then3_crit_edge, label %break_test.exit211, !dbg !670

ring_buffer_producer.exit.if.then3_crit_edge:     ; preds = %ring_buffer_producer.exit
  call void @__sanitizer_cov_trace_pc() #10, !dbg !670
  br label %if.then3, !dbg !670

break_test.exit211:                               ; preds = %ring_buffer_producer.exit
  %gcov_ctr1.i208 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !671
  %110 = add i64 %gcov_ctr1.i208, 1, !dbg !671
  store i64 %110, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !671
  %call.i209 = tail call zeroext i1 @kthread_should_stop() #11, !dbg !671
  br i1 %call.i209, label %break_test.exit211.if.then3_crit_edge, label %do.body, !dbg !672

break_test.exit211.if.then3_crit_edge:            ; preds = %break_test.exit211
  call void @__sanitizer_cov_trace_pc() #10, !dbg !672
  br label %if.then3, !dbg !672

if.then3:                                         ; preds = %break_test.exit211.if.then3_crit_edge, %ring_buffer_producer.exit.if.then3_crit_edge
  %gcov_ctr181 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 1), align 8, !dbg !673
  %111 = add i64 %gcov_ctr181, 1, !dbg !673
  store i64 %111, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 1), align 8, !dbg !673
  br label %if.end144, !dbg !673

do.body:                                          ; preds = %break_test.exit211
  %gcov_ctr198 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 18), align 16, !dbg !674
  %112 = add i64 %gcov_ctr198, 1, !dbg !674
  store i64 %112, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 18), align 16, !dbg !674
  %113 = load ptr, ptr @ring_buffer_producer_thread.trace_printk_fmt.10, align 4, !dbg !674
  %call20 = tail call i32 @__trace_bputs(i32 noundef 1, ptr noundef %113) #11, !dbg !674
  %gcov_ctr.i212 = load i64, ptr @__llvm_gcov_ctr.109, align 8, !dbg !675
  %114 = add i64 %gcov_ctr.i212, 1, !dbg !675
  store i64 %114, ptr @__llvm_gcov_ctr.109, align 8, !dbg !675
  %115 = tail call i32 @llvm.read_register.i32(metadata !206) #11, !dbg !675
  %and.i = and i32 %115, -16384, !dbg !677
  %116 = inttoptr i32 %and.i to ptr, !dbg !678
  %task = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2, !dbg !679
  %117 = ptrtoint ptr %task to i32, !dbg !679
  call void @__asan_load4_noabort(i32 %117), !dbg !679
  %118 = load ptr, ptr %task, align 8, !dbg !679
  %task_state_change = getelementptr inbounds %struct.task_struct, ptr %118, i32 0, i32 212, !dbg !679
  %119 = ptrtoint ptr %task_state_change to i32, !dbg !679
  call void @__asan_store4_noabort(i32 %119), !dbg !679
  store i32 1, ptr %task_state_change, align 4, !dbg !679
  %120 = load ptr, ptr %task, align 8, !dbg !679
  %121 = ptrtoint ptr %120 to i32, !dbg !679
  call void @__asan_store4_noabort(i32 %121), !dbg !679
  store volatile i32 1, ptr %120, align 128, !dbg !679
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !dbg !679, !srcloc !680
  %gcov_ctr.i213 = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !681
  %122 = add i64 %gcov_ctr.i213, 1, !dbg !681
  store i64 %122, ptr @__llvm_gcov_ctr.107, align 8, !dbg !681
  %.b.i214 = load i1, ptr @test_error, align 4, !dbg !681
  br i1 %.b.i214, label %do.body.if.then99_crit_edge, label %break_test.exit218, !dbg !683

do.body.if.then99_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10, !dbg !683
  br label %if.then99, !dbg !683

break_test.exit218:                               ; preds = %do.body
  %gcov_ctr1.i215 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !684
  %123 = add i64 %gcov_ctr1.i215, 1, !dbg !684
  store i64 %123, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.107, i32 0, i32 1), align 8, !dbg !684
  %call.i216 = tail call zeroext i1 @kthread_should_stop() #11, !dbg !684
  br i1 %call.i216, label %break_test.exit218.if.then99_crit_edge, label %if.end100, !dbg !685

break_test.exit218.if.then99_crit_edge:           ; preds = %break_test.exit218
  call void @__sanitizer_cov_trace_pc() #10, !dbg !685
  br label %if.then99, !dbg !685

if.then99:                                        ; preds = %break_test.exit218.if.then99_crit_edge, %do.body.if.then99_crit_edge
  %gcov_ctr185 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 5), align 8, !dbg !686
  %124 = add i64 %gcov_ctr185, 1, !dbg !686
  store i64 %124, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 5), align 8, !dbg !686
  br label %if.end144, !dbg !686

if.end100:                                        ; preds = %break_test.exit218
  %call101 = tail call i32 @schedule_timeout(i32 noundef 1000) #11, !dbg !687
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.107, align 8, !dbg !486
  %125 = add i64 %gcov_ctr.i, 1, !dbg !486
  store i64 %125, ptr @__llvm_gcov_ctr.107, align 8, !dbg !486
  %.b.i = load i1, ptr @test_error, align 4, !dbg !486
  br i1 %.b.i, label %if.end100.while.end_crit_edge, label %if.end100.break_test.exit_crit_edge, !dbg !488, !llvm.loop !688

if.end100.break_test.exit_crit_edge:              ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10, !dbg !488
  br label %break_test.exit, !dbg !488

if.end100.while.end_crit_edge:                    ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #10, !dbg !488
  br label %while.end, !dbg !488

while.end:                                        ; preds = %if.end100.while.end_crit_edge, %break_test.exit.while.end_crit_edge, %entry.while.end_crit_edge
  %gcov_ctr186 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 6), align 16, !dbg !490
  %126 = add i64 %gcov_ctr186, 1, !dbg !490
  store i64 %126, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 6), align 16, !dbg !490
  br label %if.end144, !dbg !490

if.end144:                                        ; preds = %while.end, %if.then99, %if.then3
  %gcov_ctr.i219 = load i64, ptr @__llvm_gcov_ctr.109, align 8, !dbg !690
  %127 = add i64 %gcov_ctr.i219, 1, !dbg !690
  store i64 %127, ptr @__llvm_gcov_ctr.109, align 8, !dbg !690
  %128 = tail call i32 @llvm.read_register.i32(metadata !206) #11, !dbg !690
  %and.i220 = and i32 %128, -16384, !dbg !692
  %129 = inttoptr i32 %and.i220 to ptr, !dbg !693
  %task155 = getelementptr inbounds %struct.thread_info, ptr %129, i32 0, i32 2, !dbg !694
  %130 = ptrtoint ptr %task155 to i32, !dbg !694
  call void @__asan_load4_noabort(i32 %130), !dbg !694
  %131 = load ptr, ptr %task155, align 8, !dbg !694
  %task_state_change156 = getelementptr inbounds %struct.task_struct, ptr %131, i32 0, i32 212, !dbg !694
  %132 = ptrtoint ptr %task_state_change156 to i32, !dbg !694
  call void @__asan_store4_noabort(i32 %132), !dbg !694
  store i32 1, ptr %task_state_change156, align 4, !dbg !694
  %133 = load ptr, ptr %task155, align 8, !dbg !694
  %134 = ptrtoint ptr %133 to i32, !dbg !694
  call void @__asan_store4_noabort(i32 %134), !dbg !694
  store volatile i32 0, ptr %133, align 128, !dbg !694
  %call173 = tail call zeroext i1 @kthread_should_stop() #11, !dbg !695
  br i1 %call173, label %if.end144.if.end175_crit_edge, label %if.then174, !dbg !696

if.end144.if.end175_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #10, !dbg !696
  br label %if.end175, !dbg !696

if.then174:                                       ; preds = %if.end144
  %gcov_ctr190 = load i64, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 10), align 16, !dbg !697
  %135 = add i64 %gcov_ctr190, 1, !dbg !697
  store i64 %135, ptr getelementptr inbounds ([20 x i64], ptr @__llvm_gcov_ctr.106, i32 0, i32 10), align 16, !dbg !697
  %gcov_ctr.i.i221 = load i64, ptr @__llvm_gcov_ctr.109, align 8, !dbg !698
  %136 = add i64 %gcov_ctr.i.i221, 1, !dbg !698
  store i64 %136, ptr @__llvm_gcov_ctr.109, align 8, !dbg !698
  %137 = tail call i32 @llvm.read_register.i32(metadata !206) #11, !dbg !698
  %and.i.i222 = and i32 %137, -16384, !dbg !701
  %138 = inttoptr i32 %and.i.i222 to ptr, !dbg !702
  %task.i = getelementptr inbounds %struct.thread_info, ptr %138, i32 0, i32 2, !dbg !703
  %139 = ptrtoint ptr %task.i to i32, !dbg !703
  call void @__asan_load4_noabort(i32 %139), !dbg !703
  %140 = load ptr, ptr %task.i, align 8, !dbg !703
  %task_state_change.i = getelementptr inbounds %struct.task_struct, ptr %140, i32 0, i32 212, !dbg !703
  %141 = ptrtoint ptr %task_state_change.i to i32, !dbg !703
  call void @__asan_store4_noabort(i32 %141), !dbg !703
  store i32 1, ptr %task_state_change.i, align 4, !dbg !703
  %142 = load ptr, ptr %task.i, align 8, !dbg !703
  %143 = ptrtoint ptr %142 to i32, !dbg !703
  call void @__asan_store4_noabort(i32 %143), !dbg !703
  store volatile i32 1, ptr %142, align 128, !dbg !703
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !dbg !703, !srcloc !474
  %call60234.i = tail call zeroext i1 @kthread_should_stop() #11, !dbg !704
  br i1 %call60234.i, label %if.then174.wait_to_die.exit_crit_edge, label %if.then174.while.body.i_crit_edge, !dbg !705

if.then174.while.body.i_crit_edge:                ; preds = %if.then174
  br label %while.body.i, !dbg !705

if.then174.wait_to_die.exit_crit_edge:            ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #10, !dbg !705
  br label %wait_to_die.exit, !dbg !705

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.then174.while.body.i_crit_edge
  tail call void @schedule() #11, !dbg !706
  %gcov_ctr226.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 11), align 8, !dbg !707
  %144 = add i64 %gcov_ctr226.i, 1, !dbg !707
  store i64 %144, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 11), align 8, !dbg !707
  %145 = ptrtoint ptr %task.i to i32, !dbg !707
  call void @__asan_load4_noabort(i32 %145), !dbg !707
  %146 = load ptr, ptr %task.i, align 8, !dbg !707
  %task_state_change117.i = getelementptr inbounds %struct.task_struct, ptr %146, i32 0, i32 212, !dbg !707
  %147 = ptrtoint ptr %task_state_change117.i to i32, !dbg !707
  call void @__asan_store4_noabort(i32 %147), !dbg !707
  store i32 1, ptr %task_state_change117.i, align 4, !dbg !707
  %148 = load ptr, ptr %task.i, align 8, !dbg !707
  %149 = ptrtoint ptr %148 to i32, !dbg !707
  call void @__asan_store4_noabort(i32 %149), !dbg !707
  store volatile i32 1, ptr %148, align 128, !dbg !707
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !dbg !707, !srcloc !479
  %call60.i = tail call zeroext i1 @kthread_should_stop() #11, !dbg !704
  br i1 %call60.i, label %while.body.i.wait_to_die.exit_crit_edge, label %while.body.i.while.body.i_crit_edge, !dbg !705, !llvm.loop !708

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !705
  br label %while.body.i, !dbg !705

while.body.i.wait_to_die.exit_crit_edge:          ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10, !dbg !705
  br label %wait_to_die.exit, !dbg !705

wait_to_die.exit:                                 ; preds = %while.body.i.wait_to_die.exit_crit_edge, %if.then174.wait_to_die.exit_crit_edge
  %gcov_ctr227.i = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 12), align 16, !dbg !710
  %150 = add i64 %gcov_ctr227.i, 1, !dbg !710
  store i64 %150, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.110, i32 0, i32 12), align 16, !dbg !710
  %151 = ptrtoint ptr %task.i to i32, !dbg !710
  call void @__asan_load4_noabort(i32 %151), !dbg !710
  %152 = load ptr, ptr %task.i, align 8, !dbg !710
  %task_state_change197.i = getelementptr inbounds %struct.task_struct, ptr %152, i32 0, i32 212, !dbg !710
  %153 = ptrtoint ptr %task_state_change197.i to i32, !dbg !710
  call void @__asan_store4_noabort(i32 %153), !dbg !710
  store i32 1, ptr %task_state_change197.i, align 4, !dbg !710
  %154 = load ptr, ptr %task.i, align 8, !dbg !710
  %155 = ptrtoint ptr %154 to i32, !dbg !710
  call void @__asan_store4_noabort(i32 %155), !dbg !710
  store volatile i32 0, ptr %154, align 128, !dbg !710
  br label %if.end175, !dbg !697

if.end175:                                        ; preds = %wait_to_die.exit, %if.end144.if.end175_crit_edge
  ret i32 0, !dbg !711
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_set_fifo_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @set_user_nice(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @kthread_should_stop() local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_consume(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_event_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_alloc_read_page(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_read_page(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_free_read_page(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @ring_buffer_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__trace_bprintk(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__trace_bputs(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ring_buffer_lock_reserve(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_unlock_commit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_entries(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ring_buffer_overruns(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #6 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 857082856) #11
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #11
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #11
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 29
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #10
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcda_summary_info() #11
  tail call void @llvm_gcda_end_file() #11
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #7 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) @__llvm_gcov_ctr.102, i8 0, i64 96, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(88) @__llvm_gcov_ctr.103, i8 0, i64 88, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.104, align 8
  store i64 0, ptr @__llvm_gcov_ctr.105, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) @__llvm_gcov_ctr.106, i8 0, i64 160, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.107, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) @__llvm_gcov_ctr.108, i8 0, i64 144, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.109, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.110, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) @__llvm_gcov_ctr.111, i8 0, i64 40, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(224) @__llvm_gcov_ctr.112, i8 0, i64 224, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.113, align 8
  store i64 0, ptr @__llvm_gcov_ctr.114, align 8
  store i64 0, ptr @__llvm_gcov_ctr.115, align 8
  store i64 0, ptr @__llvm_gcov_ctr.116, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1536) @__llvm_gcov_ctr.117, i8 0, i64 1536, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.118, align 8
  store i64 0, ptr @__llvm_gcov_ctr.119, align 8
  store i64 0, ptr @__llvm_gcov_ctr.120, align 8
  store i64 0, ptr @__llvm_gcov_ctr.121, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.122, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.123, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.124, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.125, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.126, i8 0, i64 24, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.127, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) @__llvm_gcov_ctr.128, i8 0, i64 176, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.129, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #6 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #11
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { noinline nounwind uwtable(sync) }
attributes #7 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { nounwind }
attributes #12 = { nounwind readonly willreturn }
attributes #13 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !32, !34, !36, !38, !40, !42, !43, !45, !47, !49, !51, !53, !55, !56, !57, !59, !60, !62, !63, !65, !66, !67, !69, !71, !73, !75, !76, !78, !80, !82, !83, !85, !87, !89, !91, !93, !95, !96, !98, !100, !102, !104, !105, !106, !108, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !203, !205}
!llvm.named.register.sp = !{!206}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212, !213, !214}
!llvm.gcov = !{!215}
!llvm.ident = !{!216}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/ring_buffer_benchmark.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = !{ptr @__param_disable_reader, !3, !"__param_disable_reader", i1 false, i1 false}
!3 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 38, i32 1}
!4 = !{ptr @__UNIQUE_ID_disable_readertype225, !3, !"__UNIQUE_ID_disable_readertype225", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_disable_reader226, !6, !"__UNIQUE_ID_disable_reader226", i1 false, i1 false}
!6 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 39, i32 1}
!7 = !{ptr @__param_write_iteration, !8, !"__param_write_iteration", i1 false, i1 false}
!8 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 42, i32 1}
!9 = !{ptr @__UNIQUE_ID_write_iterationtype227, !8, !"__UNIQUE_ID_write_iterationtype227", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_write_iteration228, !11, !"__UNIQUE_ID_write_iteration228", i1 false, i1 false}
!11 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 43, i32 1}
!12 = !{ptr @__param_producer_nice, !13, !"__param_producer_nice", i1 false, i1 false}
!13 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 51, i32 1}
!14 = !{ptr @__UNIQUE_ID_producer_nicetype229, !13, !"__UNIQUE_ID_producer_nicetype229", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_producer_nice230, !16, !"__UNIQUE_ID_producer_nice230", i1 false, i1 false}
!16 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 52, i32 1}
!17 = !{ptr @__param_consumer_nice, !18, !"__param_consumer_nice", i1 false, i1 false}
!18 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 54, i32 1}
!19 = !{ptr @__UNIQUE_ID_consumer_nicetype231, !18, !"__UNIQUE_ID_consumer_nicetype231", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_consumer_nice232, !21, !"__UNIQUE_ID_consumer_nice232", i1 false, i1 false}
!21 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 55, i32 1}
!22 = !{ptr @__param_producer_fifo, !23, !"__param_producer_fifo", i1 false, i1 false}
!23 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 57, i32 1}
!24 = !{ptr @__UNIQUE_ID_producer_fifotype233, !23, !"__UNIQUE_ID_producer_fifotype233", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_producer_fifo234, !26, !"__UNIQUE_ID_producer_fifo234", i1 false, i1 false}
!26 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 58, i32 1}
!27 = !{ptr @__param_consumer_fifo, !28, !"__param_consumer_fifo", i1 false, i1 false}
!28 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 60, i32 1}
!29 = !{ptr @__UNIQUE_ID_consumer_fifotype235, !28, !"__UNIQUE_ID_consumer_fifotype235", i1 false, i1 false}
!30 = !{ptr @__UNIQUE_ID_consumer_fifo236, !31, !"__UNIQUE_ID_consumer_fifo236", i1 false, i1 false}
!31 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 61, i32 1}
!32 = !{ptr @__initcall__kmod_ring_buffer_benchmark__247_492_ring_buffer_benchmark_init6, !33, !"__initcall__kmod_ring_buffer_benchmark__247_492_ring_buffer_benchmark_init6", i1 false, i1 false}
!33 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 492, i32 1}
!34 = !{ptr @__exitcall_ring_buffer_benchmark_exit, !35, !"__exitcall_ring_buffer_benchmark_exit", i1 false, i1 false}
!35 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 493, i32 1}
!36 = !{ptr @__UNIQUE_ID_author248, !37, !"__UNIQUE_ID_author248", i1 false, i1 false}
!37 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 495, i32 1}
!38 = !{ptr @__UNIQUE_ID_description249, !39, !"__UNIQUE_ID_description249", i1 false, i1 false}
!39 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 496, i32 1}
!40 = !{ptr @__UNIQUE_ID_file250, !41, !"__UNIQUE_ID_file250", i1 false, i1 false}
!41 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 497, i32 1}
!42 = !{ptr @__UNIQUE_ID_license251, !41, !"__UNIQUE_ID_license251", i1 false, i1 false}
!43 = !{ptr @buffer, !44, !"buffer", i1 false, i1 false}
!44 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 32, i32 29}
!45 = !{ptr @producer, !46, !"producer", i1 false, i1 false}
!46 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 33, i32 28}
!47 = !{ptr @consumer, !48, !"consumer", i1 false, i1 false}
!48 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 34, i32 28}
!49 = !{ptr @disable_reader, !50, !"disable_reader", i1 false, i1 false}
!50 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 37, i32 21}
!51 = !{ptr @producer_fifo, !52, !"producer_fifo", i1 false, i1 false}
!52 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 48, i32 12}
!53 = !{ptr @consumer_fifo, !54, !"consumer_fifo", i1 false, i1 false}
!54 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 49, i32 12}
!55 = !{ptr @__param_str_disable_reader, !3, !"__param_str_disable_reader", i1 false, i1 false}
!56 = !{ptr @__param_str_write_iteration, !8, !"__param_str_write_iteration", i1 false, i1 false}
!57 = !{ptr @write_iteration, !58, !"write_iteration", i1 false, i1 false}
!58 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 41, i32 21}
!59 = !{ptr @__param_str_producer_nice, !13, !"__param_str_producer_nice", i1 false, i1 false}
!60 = !{ptr @producer_nice, !61, !"producer_nice", i1 false, i1 false}
!61 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 45, i32 12}
!62 = !{ptr @__param_str_consumer_nice, !18, !"__param_str_consumer_nice", i1 false, i1 false}
!63 = !{ptr @consumer_nice, !64, !"consumer_nice", i1 false, i1 false}
!64 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 46, i32 12}
!65 = !{ptr @__param_str_producer_fifo, !23, !"__param_str_producer_fifo", i1 false, i1 false}
!66 = !{ptr @__param_str_consumer_fifo, !28, !"__param_str_consumer_fifo", i1 false, i1 false}
!67 = !{ptr @ring_buffer_benchmark_init.__key, !68, !"__key", i1 false, i1 false}
!68 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 435, i32 11}
!69 = !{ptr @.str, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 440, i32 14}
!71 = !{ptr @.str.1, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 447, i32 13}
!73 = distinct !{null, !74, !"__already_done", i1 false, i1 false}
!74 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 388, i32 3}
!75 = !{ptr @.str.2, !74, !"<string literal>", i1 false, i1 false}
!76 = distinct !{null, !77, !"__already_done", i1 false, i1 false}
!77 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 393, i32 2}
!78 = distinct !{null, !79, !"test_error", i1 false, i1 false}
!79 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 65, i32 12}
!80 = !{ptr @.str.4, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 29, i32 8}
!82 = !{ptr @read_start, !81, !"read_start", i1 false, i1 false}
!83 = distinct !{null, !84, !"__already_done", i1 false, i1 false}
!84 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 219, i32 3}
!85 = distinct !{null, !86, !"__already_done", i1 false, i1 false}
!86 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 225, i32 2}
!87 = !{ptr @read_events, !88, !"read_events", i1 false, i1 false}
!88 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 63, i32 12}
!89 = !{ptr @read, !90, !"read", i1 false, i1 false}
!90 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 35, i32 22}
!91 = !{ptr @reader_finish, !92, !"reader_finish", i1 false, i1 false}
!92 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 28, i32 12}
!93 = !{ptr @.str.6, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 30, i32 8}
!95 = !{ptr @read_done, !94, !"read_done", i1 false, i1 false}
!96 = distinct !{null, !97, !"__already_done", i1 false, i1 false}
!97 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 373, i32 2}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 376, i32 3}
!100 = distinct !{null, !101, !"__already_done", i1 false, i1 false}
!101 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 378, i32 2}
!102 = !{ptr @.str.9, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 415, i32 3}
!104 = !{ptr @ring_buffer_producer_thread.trace_printk_fmt, !103, !"trace_printk_fmt", i1 false, i1 false}
!105 = !{ptr @ring_buffer_producer_thread.trace_printk_fmt.10, !103, !"trace_printk_fmt", i1 false, i1 false}
!106 = distinct !{null, !107, !"__already_done", i1 false, i1 false}
!107 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 416, i32 3}
!108 = distinct !{null, !109, !"__already_done", i1 false, i1 false}
!109 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 423, i32 2}
!110 = !{ptr @.str.12, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 245, i32 2}
!112 = !{ptr @ring_buffer_producer.trace_printk_fmt, !111, !"trace_printk_fmt", i1 false, i1 false}
!113 = !{ptr @ring_buffer_producer.trace_printk_fmt.13, !111, !"trace_printk_fmt", i1 false, i1 false}
!114 = !{ptr @.str.16, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 284, i32 2}
!116 = !{ptr @ring_buffer_producer.trace_printk_fmt.15, !115, !"trace_printk_fmt", i1 false, i1 false}
!117 = !{ptr @ring_buffer_producer.trace_printk_fmt.17, !115, !"trace_printk_fmt", i1 false, i1 false}
!118 = !{ptr @.str.20, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 303, i32 3}
!120 = !{ptr @ring_buffer_producer.trace_printk_fmt.19, !119, !"trace_printk_fmt", i1 false, i1 false}
!121 = !{ptr @ring_buffer_producer.trace_printk_fmt.21, !119, !"trace_printk_fmt", i1 false, i1 false}
!122 = !{ptr @.str.24, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 307, i32 4}
!124 = !{ptr @ring_buffer_producer.trace_printk_fmt.23, !123, !"trace_printk_fmt", i1 false, i1 false}
!125 = !{ptr @.str.25, !123, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.26, !123, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ring_buffer_producer.trace_printk_fmt.27, !123, !"trace_printk_fmt", i1 false, i1 false}
!128 = !{ptr @.str.30, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 310, i32 4}
!130 = !{ptr @ring_buffer_producer.trace_printk_fmt.29, !129, !"trace_printk_fmt", i1 false, i1 false}
!131 = !{ptr @ring_buffer_producer.trace_printk_fmt.31, !129, !"trace_printk_fmt", i1 false, i1 false}
!132 = !{ptr @.str.34, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 314, i32 3}
!134 = !{ptr @ring_buffer_producer.trace_printk_fmt.33, !133, !"trace_printk_fmt", i1 false, i1 false}
!135 = !{ptr @ring_buffer_producer.trace_printk_fmt.35, !133, !"trace_printk_fmt", i1 false, i1 false}
!136 = !{ptr @.str.38, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 317, i32 3}
!138 = !{ptr @ring_buffer_producer.trace_printk_fmt.37, !137, !"trace_printk_fmt", i1 false, i1 false}
!139 = !{ptr @ring_buffer_producer.trace_printk_fmt.39, !137, !"trace_printk_fmt", i1 false, i1 false}
!140 = !{ptr @.str.42, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 323, i32 3}
!142 = !{ptr @ring_buffer_producer.trace_printk_fmt.41, !141, !"trace_printk_fmt", i1 false, i1 false}
!143 = !{ptr @ring_buffer_producer.trace_printk_fmt.43, !141, !"trace_printk_fmt", i1 false, i1 false}
!144 = !{ptr @.str.46, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 325, i32 2}
!146 = !{ptr @ring_buffer_producer.trace_printk_fmt.45, !145, !"trace_printk_fmt", i1 false, i1 false}
!147 = !{ptr @ring_buffer_producer.trace_printk_fmt.47, !145, !"trace_printk_fmt", i1 false, i1 false}
!148 = !{ptr @.str.50, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 326, i32 2}
!150 = !{ptr @ring_buffer_producer.trace_printk_fmt.49, !149, !"trace_printk_fmt", i1 false, i1 false}
!151 = !{ptr @ring_buffer_producer.trace_printk_fmt.51, !149, !"trace_printk_fmt", i1 false, i1 false}
!152 = !{ptr @.str.54, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 328, i32 3}
!154 = !{ptr @ring_buffer_producer.trace_printk_fmt.53, !153, !"trace_printk_fmt", i1 false, i1 false}
!155 = !{ptr @ring_buffer_producer.trace_printk_fmt.55, !153, !"trace_printk_fmt", i1 false, i1 false}
!156 = !{ptr @.str.58, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 330, i32 3}
!158 = !{ptr @ring_buffer_producer.trace_printk_fmt.57, !157, !"trace_printk_fmt", i1 false, i1 false}
!159 = !{ptr @.str.59, !157, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.60, !157, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @ring_buffer_producer.trace_printk_fmt.61, !157, !"trace_printk_fmt", i1 false, i1 false}
!162 = !{ptr @.str.64, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 332, i32 2}
!164 = !{ptr @ring_buffer_producer.trace_printk_fmt.63, !163, !"trace_printk_fmt", i1 false, i1 false}
!165 = !{ptr @ring_buffer_producer.trace_printk_fmt.65, !163, !"trace_printk_fmt", i1 false, i1 false}
!166 = !{ptr @.str.68, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 333, i32 2}
!168 = !{ptr @ring_buffer_producer.trace_printk_fmt.67, !167, !"trace_printk_fmt", i1 false, i1 false}
!169 = !{ptr @ring_buffer_producer.trace_printk_fmt.69, !167, !"trace_printk_fmt", i1 false, i1 false}
!170 = !{ptr @.str.72, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 334, i32 2}
!172 = !{ptr @ring_buffer_producer.trace_printk_fmt.71, !171, !"trace_printk_fmt", i1 false, i1 false}
!173 = !{ptr @ring_buffer_producer.trace_printk_fmt.73, !171, !"trace_printk_fmt", i1 false, i1 false}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 335, i32 2}
!176 = !{ptr @ring_buffer_producer.trace_printk_fmt.75, !175, !"trace_printk_fmt", i1 false, i1 false}
!177 = !{ptr @ring_buffer_producer.trace_printk_fmt.77, !175, !"trace_printk_fmt", i1 false, i1 false}
!178 = !{ptr @.str.80, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 342, i32 3}
!180 = !{ptr @ring_buffer_producer.trace_printk_fmt.79, !179, !"trace_printk_fmt", i1 false, i1 false}
!181 = !{ptr @ring_buffer_producer.trace_printk_fmt.81, !179, !"trace_printk_fmt", i1 false, i1 false}
!182 = !{ptr @.str.84, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 344, i32 2}
!184 = !{ptr @ring_buffer_producer.trace_printk_fmt.83, !183, !"trace_printk_fmt", i1 false, i1 false}
!185 = !{ptr @ring_buffer_producer.trace_printk_fmt.85, !183, !"trace_printk_fmt", i1 false, i1 false}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 349, i32 3}
!188 = !{ptr @ring_buffer_producer.trace_printk_fmt.87, !187, !"trace_printk_fmt", i1 false, i1 false}
!189 = !{ptr @ring_buffer_producer.trace_printk_fmt.89, !187, !"trace_printk_fmt", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 356, i32 3}
!192 = !{ptr @ring_buffer_producer.trace_printk_fmt.91, !191, !"trace_printk_fmt", i1 false, i1 false}
!193 = !{ptr @ring_buffer_producer.trace_printk_fmt.93, !191, !"trace_printk_fmt", i1 false, i1 false}
!194 = !{ptr @.str.96, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 361, i32 4}
!196 = !{ptr @ring_buffer_producer.trace_printk_fmt.95, !195, !"trace_printk_fmt", i1 false, i1 false}
!197 = !{ptr @ring_buffer_producer.trace_printk_fmt.97, !195, !"trace_printk_fmt", i1 false, i1 false}
!198 = !{ptr @ring_buffer_producer.trace_printk_fmt.99, !199, !"trace_printk_fmt", i1 false, i1 false}
!199 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 367, i32 3}
!200 = !{ptr @ring_buffer_producer.trace_printk_fmt.100, !199, !"trace_printk_fmt", i1 false, i1 false}
!201 = distinct !{null, !202, !"wakeup_interval", i1 false, i1 false}
!202 = !{!"../kernel/trace/ring_buffer_benchmark.c", i32 26, i32 12}
!203 = !{ptr @init_completion.__key, !204, !"__key", i1 false, i1 false}
!204 = !{!"../include/linux/completion.h", i32 87, i32 2}
!205 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!206 = !{!"sp"}
!207 = !{i32 2, !"Debug Info Version", i32 3}
!208 = !{i32 1, !"wchar_size", i32 2}
!209 = !{i32 1, !"min_enum_size", i32 4}
!210 = !{i32 8, !"branch-target-enforcement", i32 0}
!211 = !{i32 8, !"sign-return-address", i32 0}
!212 = !{i32 8, !"sign-return-address-all", i32 0}
!213 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!214 = !{i32 7, !"uwtable", i32 1}
!215 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/ring_buffer_benchmark.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/ring_buffer_benchmark.gcda", !0}
!216 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!217 = distinct !DISubprogram(name: "ring_buffer_benchmark_exit", scope: !1, file: !1, line: 484, type: !218, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!218 = !DISubroutineType(types: !219)
!219 = !{}
!220 = !DILocation(line: 485, scope: !217)
!221 = !DILocation(line: 486, column: 15, scope: !217)
!222 = !DILocation(line: 486, column: 2, scope: !217)
!223 = !DILocation(line: 487, column: 6, scope: !217)
!224 = !DILocation(line: 488, column: 16, scope: !217)
!225 = !DILocation(line: 488, column: 3, scope: !217)
!226 = !DILocation(line: 489, column: 19, scope: !217)
!227 = !DILocation(line: 489, column: 2, scope: !217)
!228 = !DILocation(line: 490, column: 1, scope: !217)
!229 = distinct !DISubprogram(name: "ring_buffer_benchmark_init", scope: !1, file: !1, line: 430, type: !218, scopeLine: 431, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!230 = !DILocation(line: 431, scope: !229)
!231 = !DILocation(line: 435, column: 11, scope: !229)
!232 = !DILocation(line: 435, column: 9, scope: !229)
!233 = !DILocation(line: 436, column: 7, scope: !229)
!234 = !DILocation(line: 436, column: 6, scope: !229)
!235 = !DILocation(line: 437, column: 3, scope: !229)
!236 = !DILocation(line: 439, column: 7, scope: !229)
!237 = !DILocation(line: 439, column: 6, scope: !229)
!238 = !DILocation(line: 440, column: 14, scope: !229)
!239 = !DILocation(line: 440, column: 12, scope: !229)
!240 = !DILocation(line: 36, column: 9, scope: !241, inlinedAt: !243)
!241 = distinct !DISubprogram(name: "IS_ERR", scope: !242, file: !242, line: 34, type: !218, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!242 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!243 = distinct !DILocation(line: 443, column: 7, scope: !229)
!244 = !DILocation(line: 443, column: 7, scope: !229)
!245 = !DILocation(line: 445, column: 2, scope: !229)
!246 = !DILocation(line: 447, column: 13, scope: !229)
!247 = !DILocation(line: 36, column: 9, scope: !241, inlinedAt: !248)
!248 = distinct !DILocation(line: 447, column: 13, scope: !229)
!249 = !DILocation(line: 447, column: 11, scope: !229)
!250 = !DILocation(line: 457, column: 7, scope: !229)
!251 = !DILocation(line: 457, column: 6, scope: !229)
!252 = !DILocation(line: 458, column: 7, scope: !229)
!253 = !DILocation(line: 458, column: 21, scope: !229)
!254 = !DILocation(line: 459, column: 19, scope: !229)
!255 = !DILocation(line: 459, column: 4, scope: !229)
!256 = !DILocation(line: 460, column: 26, scope: !229)
!257 = !DILocation(line: 460, column: 12, scope: !229)
!258 = !DILocation(line: 461, column: 23, scope: !229)
!259 = !DILocation(line: 461, column: 4, scope: !229)
!260 = !DILocation(line: 463, column: 18, scope: !229)
!261 = !DILocation(line: 463, column: 28, scope: !229)
!262 = !DILocation(line: 463, column: 4, scope: !229)
!263 = !DILocation(line: 466, column: 6, scope: !229)
!264 = !DILocation(line: 466, column: 20, scope: !229)
!265 = !DILocation(line: 467, column: 18, scope: !229)
!266 = !DILocation(line: 467, column: 3, scope: !229)
!267 = !DILocation(line: 468, column: 25, scope: !229)
!268 = !DILocation(line: 468, column: 11, scope: !229)
!269 = !DILocation(line: 469, column: 22, scope: !229)
!270 = !DILocation(line: 469, column: 3, scope: !229)
!271 = !DILocation(line: 471, column: 17, scope: !229)
!272 = !DILocation(line: 471, column: 27, scope: !229)
!273 = !DILocation(line: 471, column: 3, scope: !229)
!274 = !DILocation(line: 476, column: 6, scope: !229)
!275 = !DILocation(line: 477, column: 16, scope: !229)
!276 = !DILocation(line: 477, column: 3, scope: !229)
!277 = !DILocation(line: 0, scope: !229)
!278 = !DILocation(line: 480, column: 19, scope: !229)
!279 = !DILocation(line: 480, column: 2, scope: !229)
!280 = !DILocation(line: 481, column: 2, scope: !229)
!281 = !DILocation(line: 482, column: 1, scope: !229)
!282 = distinct !DISubprogram(name: "ring_buffer_consumer_thread", scope: !1, file: !1, line: 381, type: !218, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!283 = !DILocation(line: 382, scope: !282)
!284 = !DILocation(line: 82, column: 9, scope: !285, inlinedAt: !286)
!285 = distinct !DISubprogram(name: "break_test", scope: !1, file: !1, line: 80, type: !218, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!286 = distinct !DILocation(line: 383, column: 10, scope: !282)
!287 = !DILocation(line: 82, column: 20, scope: !285, inlinedAt: !286)
!288 = !DILocation(line: 82, column: 23, scope: !285, inlinedAt: !286)
!289 = !DILocation(line: 383, column: 2, scope: !282)
!290 = !DILocation(line: 384, column: 3, scope: !282)
!291 = !DILocation(line: 185, column: 14, scope: !292, inlinedAt: !293)
!292 = distinct !DISubprogram(name: "ring_buffer_consumer", scope: !1, file: !1, line: 182, type: !218, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!293 = distinct !DILocation(line: 386, column: 3, scope: !282)
!294 = !DILocation(line: 187, column: 7, scope: !292, inlinedAt: !293)
!295 = !DILocation(line: 192, column: 10, scope: !292, inlinedAt: !293)
!296 = !DILocation(line: 192, column: 9, scope: !292, inlinedAt: !293)
!297 = !DILocation(line: 192, column: 2, scope: !292, inlinedAt: !293)
!298 = !DILocation(line: 195, column: 20, scope: !292, inlinedAt: !293)
!299 = !DILocation(line: 195, column: 3, scope: !292, inlinedAt: !293)
!300 = !DILocation(line: 199, column: 4, scope: !292, inlinedAt: !293)
!301 = !DILocation(line: 214, column: 3, scope: !292, inlinedAt: !293)
!302 = !DILocation(line: 195, column: 16, scope: !292, inlinedAt: !293)
!303 = !DILocation(line: 202, column: 9, scope: !292, inlinedAt: !293)
!304 = !DILocation(line: 89, column: 2, scope: !305, inlinedAt: !306)
!305 = distinct !DISubprogram(name: "read_event", scope: !1, file: !1, line: 85, type: !218, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!306 = distinct !DILocation(line: 203, column: 13, scope: !292, inlinedAt: !293)
!307 = !DILocation(line: 89, column: 6, scope: !305, inlinedAt: !306)
!308 = !{!"auto-init"}
!309 = !DILocation(line: 91, column: 30, scope: !305, inlinedAt: !306)
!310 = !DILocation(line: 91, column: 10, scope: !305, inlinedAt: !306)
!311 = !DILocation(line: 92, column: 7, scope: !305, inlinedAt: !306)
!312 = !DILocation(line: 92, column: 6, scope: !305, inlinedAt: !306)
!313 = !DILocation(line: 93, column: 3, scope: !305, inlinedAt: !306)
!314 = !DILocation(line: 95, column: 10, scope: !305, inlinedAt: !306)
!315 = !DILocation(line: 96, column: 6, scope: !305, inlinedAt: !306)
!316 = !DILocation(line: 96, column: 13, scope: !305, inlinedAt: !306)
!317 = !DILocation(line: 97, column: 3, scope: !305, inlinedAt: !306)
!318 = !DILocation(line: 98, column: 3, scope: !305, inlinedAt: !306)
!319 = !DILocation(line: 101, column: 6, scope: !305, inlinedAt: !306)
!320 = !DILocation(line: 102, column: 2, scope: !305, inlinedAt: !306)
!321 = !DILocation(line: 0, scope: !305, inlinedAt: !306)
!322 = !DILocation(line: 103, column: 1, scope: !305, inlinedAt: !306)
!323 = !DILocation(line: 203, column: 6, scope: !292, inlinedAt: !293)
!324 = !DILocation(line: 205, column: 23, scope: !292, inlinedAt: !293)
!325 = !DILocation(line: 110, column: 2, scope: !326, inlinedAt: !327)
!326 = distinct !DISubprogram(name: "read_page", scope: !1, file: !1, line: 105, type: !218, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!327 = distinct !DILocation(line: 205, column: 13, scope: !292, inlinedAt: !293)
!328 = !DILocation(line: 116, column: 38, scope: !326, inlinedAt: !327)
!329 = !DILocation(line: 116, column: 10, scope: !326, inlinedAt: !327)
!330 = !DILocation(line: 116, column: 8, scope: !326, inlinedAt: !327)
!331 = !DILocation(line: 36, column: 9, scope: !241, inlinedAt: !332)
!332 = distinct !DILocation(line: 117, column: 6, scope: !326, inlinedAt: !327)
!333 = !DILocation(line: 117, column: 6, scope: !326, inlinedAt: !327)
!334 = !DILocation(line: 118, column: 3, scope: !326, inlinedAt: !327)
!335 = !DILocation(line: 120, column: 30, scope: !326, inlinedAt: !327)
!336 = !DILocation(line: 120, column: 8, scope: !326, inlinedAt: !327)
!337 = !DILocation(line: 121, column: 10, scope: !326, inlinedAt: !327)
!338 = !DILocation(line: 121, column: 6, scope: !326, inlinedAt: !327)
!339 = !DILocation(line: 122, column: 11, scope: !326, inlinedAt: !327)
!340 = !DILocation(line: 124, column: 12, scope: !326, inlinedAt: !327)
!341 = !DILocation(line: 71, column: 2, scope: !342, inlinedAt: !344)
!342 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !343, file: !343, line: 69, type: !218, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!343 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!344 = distinct !DILocation(line: 1265, column: 2, scope: !345, inlinedAt: !347)
!345 = distinct !DISubprogram(name: "atomic_long_read", scope: !346, file: !346, line: 1263, type: !218, scopeLine: 1264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!346 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!347 = distinct !DILocation(line: 124, column: 12, scope: !326, inlinedAt: !327)
!348 = !DILocation(line: 523, column: 9, scope: !349, inlinedAt: !351)
!349 = distinct !DISubprogram(name: "arch_atomic_long_read", scope: !350, file: !350, line: 521, type: !218, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!350 = !DIFile(filename: "../include/linux/atomic/atomic-long.h", directory: "/llk/linux-5.17/build_arm_allyes")
!351 = distinct !DILocation(line: 1266, column: 9, scope: !345, inlinedAt: !347)
!352 = !DILocation(line: 124, column: 39, scope: !326, inlinedAt: !327)
!353 = !DILocation(line: 125, column: 17, scope: !326, inlinedAt: !327)
!354 = !DILocation(line: 125, column: 26, scope: !326, inlinedAt: !327)
!355 = !DILocation(line: 125, column: 30, scope: !326, inlinedAt: !327)
!356 = !DILocation(line: 125, column: 3, scope: !326, inlinedAt: !327)
!357 = !DILocation(line: 127, column: 10, scope: !326, inlinedAt: !327)
!358 = !DILocation(line: 127, column: 8, scope: !326, inlinedAt: !327)
!359 = !DILocation(line: 128, column: 5, scope: !326, inlinedAt: !327)
!360 = !DILocation(line: 129, column: 5, scope: !326, inlinedAt: !327)
!361 = !DILocation(line: 133, column: 21, scope: !326, inlinedAt: !327)
!362 = !DILocation(line: 134, column: 19, scope: !326, inlinedAt: !327)
!363 = !DILocation(line: 134, column: 4, scope: !326, inlinedAt: !327)
!364 = !DILocation(line: 137, column: 17, scope: !326, inlinedAt: !327)
!365 = !DILocation(line: 137, column: 10, scope: !326, inlinedAt: !327)
!366 = !DILocation(line: 137, column: 9, scope: !326, inlinedAt: !327)
!367 = !DILocation(line: 138, column: 6, scope: !326, inlinedAt: !327)
!368 = !DILocation(line: 139, column: 11, scope: !326, inlinedAt: !327)
!369 = !DILocation(line: 139, column: 18, scope: !326, inlinedAt: !327)
!370 = !DILocation(line: 139, column: 27, scope: !326, inlinedAt: !327)
!371 = !DILocation(line: 140, column: 5, scope: !326, inlinedAt: !327)
!372 = !DILocation(line: 145, column: 13, scope: !326, inlinedAt: !327)
!373 = !DILocation(line: 146, column: 9, scope: !326, inlinedAt: !327)
!374 = !DILocation(line: 146, column: 16, scope: !326, inlinedAt: !327)
!375 = !DILocation(line: 147, column: 6, scope: !326, inlinedAt: !327)
!376 = !DILocation(line: 148, column: 6, scope: !326, inlinedAt: !327)
!377 = !DILocation(line: 150, column: 9, scope: !326, inlinedAt: !327)
!378 = !DILocation(line: 151, column: 17, scope: !326, inlinedAt: !327)
!379 = !DILocation(line: 151, column: 10, scope: !326, inlinedAt: !327)
!380 = !DILocation(line: 151, column: 9, scope: !326, inlinedAt: !327)
!381 = !DILocation(line: 152, column: 6, scope: !326, inlinedAt: !327)
!382 = !DILocation(line: 153, column: 6, scope: !326, inlinedAt: !327)
!383 = !DILocation(line: 155, column: 11, scope: !326, inlinedAt: !327)
!384 = !DILocation(line: 155, column: 27, scope: !326, inlinedAt: !327)
!385 = !DILocation(line: 156, column: 5, scope: !326, inlinedAt: !327)
!386 = !DILocation(line: 158, column: 13, scope: !326, inlinedAt: !327)
!387 = !DILocation(line: 159, column: 9, scope: !326, inlinedAt: !327)
!388 = !DILocation(line: 159, column: 16, scope: !326, inlinedAt: !327)
!389 = !DILocation(line: 160, column: 6, scope: !326, inlinedAt: !327)
!390 = !DILocation(line: 161, column: 6, scope: !326, inlinedAt: !327)
!391 = !DILocation(line: 163, column: 9, scope: !326, inlinedAt: !327)
!392 = !DILocation(line: 164, column: 20, scope: !326, inlinedAt: !327)
!393 = !DILocation(line: 164, column: 34, scope: !326, inlinedAt: !327)
!394 = !DILocation(line: 165, column: 4, scope: !326, inlinedAt: !327)
!395 = !DILocation(line: 0, scope: !326, inlinedAt: !327)
!396 = !DILocation(line: 166, column: 8, scope: !326, inlinedAt: !327)
!397 = !DILocation(line: 142, column: 9, scope: !326, inlinedAt: !327)
!398 = !DILocation(line: 167, column: 5, scope: !326, inlinedAt: !327)
!399 = !DILocation(line: 169, column: 12, scope: !326, inlinedAt: !327)
!400 = !DILocation(line: 169, column: 8, scope: !326, inlinedAt: !327)
!401 = !DILocation(line: 170, column: 5, scope: !326, inlinedAt: !327)
!402 = !DILocation(line: 171, column: 5, scope: !326, inlinedAt: !327)
!403 = !DILocation(line: 125, column: 45, scope: !326, inlinedAt: !327)
!404 = distinct !{!404, !356, !405}
!405 = !DILocation(line: 173, column: 3, scope: !326, inlinedAt: !327)
!406 = !DILocation(line: 174, column: 2, scope: !326, inlinedAt: !327)
!407 = !DILocation(line: 175, column: 29, scope: !326, inlinedAt: !327)
!408 = !DILocation(line: 175, column: 42, scope: !326, inlinedAt: !327)
!409 = !DILocation(line: 175, column: 2, scope: !326, inlinedAt: !327)
!410 = !DILocation(line: 177, column: 10, scope: !326, inlinedAt: !327)
!411 = !DILocation(line: 177, column: 6, scope: !326, inlinedAt: !327)
!412 = !DILocation(line: 178, column: 3, scope: !326, inlinedAt: !327)
!413 = !DILocation(line: 179, column: 2, scope: !326, inlinedAt: !327)
!414 = !DILocation(line: 180, column: 1, scope: !326, inlinedAt: !327)
!415 = !DILocation(line: 0, scope: !292, inlinedAt: !293)
!416 = !DILocation(line: 207, column: 9, scope: !292, inlinedAt: !293)
!417 = !DILocation(line: 210, column: 14, scope: !292, inlinedAt: !293)
!418 = !DILocation(line: 210, column: 9, scope: !292, inlinedAt: !293)
!419 = !DILocation(line: 211, column: 12, scope: !292, inlinedAt: !293)
!420 = !DILocation(line: 211, column: 6, scope: !292, inlinedAt: !293)
!421 = !DILocation(line: 0, scope: !282)
!422 = !DILocation(line: 213, column: 4, scope: !292, inlinedAt: !293)
!423 = distinct !{!423, !300, !422}
!424 = !DILocation(line: 195, column: 10, scope: !292, inlinedAt: !293)
!425 = distinct !{!425, !297, !426}
!426 = !DILocation(line: 224, column: 2, scope: !292, inlinedAt: !293)
!427 = !DILocation(line: 104, column: 4, scope: !428, inlinedAt: !430)
!428 = distinct !DISubprogram(name: "current_thread_info", scope: !429, file: !429, line: 101, type: !218, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!429 = !DIFile(filename: "../arch/arm/include/asm/thread_info.h", directory: "/llk/linux-5.17/build_arm_allyes")
!430 = distinct !DILocation(line: 219, column: 3, scope: !292, inlinedAt: !293)
!431 = !DILocation(line: 104, column: 26, scope: !428, inlinedAt: !430)
!432 = !DILocation(line: 103, column: 9, scope: !428, inlinedAt: !430)
!433 = !DILocation(line: 219, column: 3, scope: !292, inlinedAt: !293)
!434 = !{i64 2153569336}
!435 = !DILocation(line: 220, column: 7, scope: !292, inlinedAt: !293)
!436 = !DILocation(line: 223, column: 3, scope: !292, inlinedAt: !293)
!437 = !DILocation(line: 225, column: 2, scope: !292, inlinedAt: !293)
!438 = !DILocation(line: 104, column: 4, scope: !428, inlinedAt: !439)
!439 = distinct !DILocation(line: 225, column: 2, scope: !292, inlinedAt: !293)
!440 = !DILocation(line: 104, column: 26, scope: !428, inlinedAt: !439)
!441 = !DILocation(line: 103, column: 9, scope: !428, inlinedAt: !439)
!442 = !DILocation(line: 226, column: 16, scope: !292, inlinedAt: !293)
!443 = !DILocation(line: 227, column: 2, scope: !292, inlinedAt: !293)
!444 = !DILocation(line: 104, column: 4, scope: !428, inlinedAt: !445)
!445 = distinct !DILocation(line: 388, column: 3, scope: !282)
!446 = !DILocation(line: 104, column: 26, scope: !428, inlinedAt: !445)
!447 = !DILocation(line: 103, column: 9, scope: !428, inlinedAt: !445)
!448 = !DILocation(line: 388, column: 3, scope: !282)
!449 = !{i64 2153639374}
!450 = !DILocation(line: 82, column: 9, scope: !285, inlinedAt: !451)
!451 = distinct !DILocation(line: 389, column: 7, scope: !282)
!452 = !DILocation(line: 82, column: 20, scope: !285, inlinedAt: !451)
!453 = !DILocation(line: 82, column: 23, scope: !285, inlinedAt: !451)
!454 = !DILocation(line: 389, column: 7, scope: !282)
!455 = !DILocation(line: 390, column: 4, scope: !282)
!456 = !DILocation(line: 391, column: 3, scope: !282)
!457 = distinct !{!457, !289, !458}
!458 = !DILocation(line: 392, column: 2, scope: !282)
!459 = !DILocation(line: 393, column: 2, scope: !282)
!460 = !DILocation(line: 104, column: 4, scope: !428, inlinedAt: !461)
!461 = distinct !DILocation(line: 393, column: 2, scope: !282)
!462 = !DILocation(line: 104, column: 26, scope: !428, inlinedAt: !461)
!463 = !DILocation(line: 103, column: 9, scope: !428, inlinedAt: !461)
!464 = !DILocation(line: 395, column: 7, scope: !282)
!465 = !DILocation(line: 395, column: 6, scope: !282)
!466 = !DILocation(line: 396, column: 3, scope: !282)
!467 = !DILocation(line: 104, column: 4, scope: !428, inlinedAt: !468)
!468 = distinct !DILocation(line: 373, column: 2, scope: !469, inlinedAt: !470)
!469 = distinct !DISubprogram(name: "wait_to_die", scope: !1, file: !1, line: 371, type: !218, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!470 = distinct !DILocation(line: 396, column: 3, scope: !282)
!471 = !DILocation(line: 104, column: 26, scope: !428, inlinedAt: !468)
!472 = !DILocation(line: 103, column: 9, scope: !428, inlinedAt: !468)
!473 = !DILocation(line: 373, column: 2, scope: !469, inlinedAt: !470)
!474 = !{i64 2153625476}
!475 = !DILocation(line: 374, column: 10, scope: !469, inlinedAt: !470)
!476 = !DILocation(line: 374, column: 2, scope: !469, inlinedAt: !470)
!477 = !DILocation(line: 375, column: 3, scope: !469, inlinedAt: !470)
!478 = !DILocation(line: 376, column: 3, scope: !469, inlinedAt: !470)
!479 = !{i64 2153630217}
!480 = distinct !{!480, !476, !481}
!481 = !DILocation(line: 377, column: 2, scope: !469, inlinedAt: !470)
!482 = !DILocation(line: 378, column: 2, scope: !469, inlinedAt: !470)
!483 = !DILocation(line: 398, column: 2, scope: !282)
!484 = distinct !DISubprogram(name: "ring_buffer_producer_thread", scope: !1, file: !1, line: 401, type: !218, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!485 = !DILocation(line: 402, scope: !484)
!486 = !DILocation(line: 82, column: 9, scope: !285, inlinedAt: !487)
!487 = distinct !DILocation(line: 403, column: 10, scope: !484)
!488 = !DILocation(line: 82, column: 20, scope: !285, inlinedAt: !487)
!489 = !DILocation(line: 82, column: 23, scope: !285, inlinedAt: !487)
!490 = !DILocation(line: 403, column: 2, scope: !484)
!491 = !DILocation(line: 404, column: 21, scope: !484)
!492 = !DILocation(line: 404, column: 3, scope: !484)
!493 = !DILocation(line: 406, column: 7, scope: !484)
!494 = !DILocation(line: 407, column: 20, scope: !484)
!495 = !DILocation(line: 407, column: 4, scope: !484)
!496 = !DILocation(line: 408, column: 4, scope: !484)
!497 = !DILocation(line: 409, column: 3, scope: !484)
!498 = !DILocation(line: 245, column: 2, scope: !499, inlinedAt: !500)
!499 = distinct !DISubprogram(name: "ring_buffer_producer", scope: !1, file: !1, line: 230, type: !218, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!500 = distinct !DILocation(line: 411, column: 3, scope: !484)
!501 = !DILocation(line: 246, column: 15, scope: !499, inlinedAt: !500)
!502 = !DILocation(line: 247, column: 12, scope: !499, inlinedAt: !500)
!503 = !DILocation(line: 248, column: 2, scope: !499, inlinedAt: !500)
!504 = !DILocation(line: 0, scope: !499, inlinedAt: !500)
!505 = !DILocation(line: 237, column: 16, scope: !499, inlinedAt: !500)
!506 = !DILocation(line: 236, column: 16, scope: !499, inlinedAt: !500)
!507 = !DILocation(line: 253, column: 19, scope: !499, inlinedAt: !500)
!508 = !DILocation(line: 253, column: 17, scope: !499, inlinedAt: !500)
!509 = !DILocation(line: 253, column: 3, scope: !499, inlinedAt: !500)
!510 = !DILocation(line: 254, column: 37, scope: !499, inlinedAt: !500)
!511 = !DILocation(line: 254, column: 12, scope: !499, inlinedAt: !500)
!512 = !DILocation(line: 255, column: 9, scope: !499, inlinedAt: !500)
!513 = !DILocation(line: 255, column: 8, scope: !499, inlinedAt: !500)
!514 = !DILocation(line: 256, column: 11, scope: !499, inlinedAt: !500)
!515 = !DILocation(line: 257, column: 4, scope: !499, inlinedAt: !500)
!516 = !DILocation(line: 258, column: 8, scope: !499, inlinedAt: !500)
!517 = !DILocation(line: 259, column: 13, scope: !499, inlinedAt: !500)
!518 = !DILocation(line: 104, column: 4, scope: !428, inlinedAt: !519)
!519 = distinct !DILocation(line: 260, column: 14, scope: !499, inlinedAt: !500)
!520 = !DILocation(line: 104, column: 26, scope: !428, inlinedAt: !519)
!521 = !DILocation(line: 103, column: 9, scope: !428, inlinedAt: !519)
!522 = !DILocation(line: 260, column: 14, scope: !499, inlinedAt: !500)
!523 = !DILocation(line: 260, column: 12, scope: !499, inlinedAt: !500)
!524 = !DILocation(line: 261, column: 31, scope: !499, inlinedAt: !500)
!525 = !DILocation(line: 261, column: 5, scope: !499, inlinedAt: !500)
!526 = !DILocation(line: 253, column: 37, scope: !499, inlinedAt: !500)
!527 = distinct !{!527, !509, !528}
!528 = !DILocation(line: 263, column: 3, scope: !499, inlinedAt: !500)
!529 = !DILocation(line: 264, column: 14, scope: !499, inlinedAt: !500)
!530 = !DILocation(line: 266, column: 6, scope: !499, inlinedAt: !500)
!531 = !DILocation(line: 267, column: 7, scope: !499, inlinedAt: !500)
!532 = !DILocation(line: 267, column: 16, scope: !499, inlinedAt: !500)
!533 = !DILocation(line: 280, column: 11, scope: !499, inlinedAt: !500)
!534 = !DILocation(line: 267, column: 21, scope: !499, inlinedAt: !500)
!535 = !DILocation(line: 267, column: 25, scope: !499, inlinedAt: !500)
!536 = !DILocation(line: 268, column: 20, scope: !499, inlinedAt: !500)
!537 = !DILocation(line: 268, column: 4, scope: !499, inlinedAt: !500)
!538 = !DILocation(line: 280, column: 7, scope: !499, inlinedAt: !500)
!539 = !DILocation(line: 281, column: 4, scope: !499, inlinedAt: !500)
!540 = !DILocation(line: 2031, column: 9, scope: !541, inlinedAt: !543)
!541 = distinct !DISubprogram(name: "_cond_resched", scope: !542, file: !542, line: 2029, type: !218, scopeLine: 2030, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!542 = !DIFile(filename: "../include/linux/sched.h", directory: "/llk/linux-5.17/build_arm_allyes")
!543 = distinct !DILocation(line: 281, column: 4, scope: !499, inlinedAt: !500)
!544 = !DILocation(line: 283, column: 2, scope: !499, inlinedAt: !500)
!545 = !DILocation(line: 97, column: 11, scope: !546, inlinedAt: !548)
!546 = distinct !DISubprogram(name: "ktime_compare", scope: !547, file: !547, line: 95, type: !218, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!547 = !DIFile(filename: "../include/linux/ktime.h", directory: "/llk/linux-5.17/build_arm_allyes")
!548 = distinct !DILocation(line: 125, column: 9, scope: !549, inlinedAt: !550)
!549 = distinct !DISubprogram(name: "ktime_before", scope: !547, file: !547, line: 123, type: !218, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!550 = distinct !DILocation(line: 283, column: 11, scope: !499, inlinedAt: !500)
!551 = !DILocation(line: 97, column: 6, scope: !546, inlinedAt: !548)
!552 = !DILocation(line: 99, column: 11, scope: !546, inlinedAt: !548)
!553 = !DILocation(line: 99, column: 6, scope: !546, inlinedAt: !548)
!554 = !DILocation(line: 100, column: 3, scope: !546, inlinedAt: !548)
!555 = !DILocation(line: 101, column: 2, scope: !546, inlinedAt: !548)
!556 = !DILocation(line: 98, column: 3, scope: !546, inlinedAt: !548)
!557 = !DILocation(line: 283, column: 47, scope: !499, inlinedAt: !500)
!558 = !DILocation(line: 82, column: 9, scope: !285, inlinedAt: !559)
!559 = distinct !DILocation(line: 283, column: 47, scope: !499, inlinedAt: !500)
!560 = !DILocation(line: 82, column: 20, scope: !285, inlinedAt: !559)
!561 = !DILocation(line: 82, column: 23, scope: !285, inlinedAt: !559)
!562 = distinct !{!562, !503, !563}
!563 = !DILocation(line: 283, column: 59, scope: !499, inlinedAt: !500)
!564 = !DILocation(line: 284, column: 2, scope: !499, inlinedAt: !500)
!565 = !DILocation(line: 286, column: 6, scope: !499, inlinedAt: !500)
!566 = !DILocation(line: 0, scope: !484)
!567 = !DILocation(line: 86, column: 10, scope: !568, inlinedAt: !570)
!568 = distinct !DISubprogram(name: "init_completion", scope: !569, file: !569, line: 84, type: !218, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!569 = !DIFile(filename: "../include/linux/completion.h", directory: "/llk/linux-5.17/build_arm_allyes")
!570 = distinct !DILocation(line: 288, column: 3, scope: !499, inlinedAt: !500)
!571 = !DILocation(line: 87, column: 2, scope: !568, inlinedAt: !570)
!572 = !DILocation(line: 86, column: 10, scope: !568, inlinedAt: !573)
!573 = distinct !DILocation(line: 289, column: 3, scope: !499, inlinedAt: !500)
!574 = !DILocation(line: 87, column: 2, scope: !568, inlinedAt: !573)
!575 = !DILocation(line: 291, column: 3, scope: !499, inlinedAt: !500)
!576 = !{i64 2153577815}
!577 = !DILocation(line: 292, column: 17, scope: !499, inlinedAt: !500)
!578 = !DILocation(line: 293, column: 19, scope: !499, inlinedAt: !500)
!579 = !DILocation(line: 293, column: 3, scope: !499, inlinedAt: !500)
!580 = !DILocation(line: 294, column: 3, scope: !499, inlinedAt: !500)
!581 = !DILocation(line: 295, column: 2, scope: !499, inlinedAt: !500)
!582 = !DILocation(line: 171, column: 27, scope: !583, inlinedAt: !584)
!583 = distinct !DISubprogram(name: "ktime_us_delta", scope: !547, file: !547, line: 169, type: !218, scopeLine: 170, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!584 = distinct !DILocation(line: 297, column: 9, scope: !499, inlinedAt: !500)
!585 = !DILocation(line: 137, column: 37, scope: !586, inlinedAt: !587)
!586 = distinct !DISubprogram(name: "ktime_divns", scope: !547, file: !547, line: 130, type: !218, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!587 = distinct !DILocation(line: 161, column: 9, scope: !588, inlinedAt: !589)
!588 = distinct !DISubprogram(name: "ktime_to_us", scope: !547, file: !547, line: 159, type: !218, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!589 = distinct !DILocation(line: 171, column: 15, scope: !583, inlinedAt: !584)
!590 = !DILocation(line: 139, column: 16, scope: !586, inlinedAt: !587)
!591 = !DILocation(line: 139, column: 13, scope: !586, inlinedAt: !587)
!592 = !DILocation(line: 139, column: 23, scope: !586, inlinedAt: !587)
!593 = !DILocation(line: 139, column: 22, scope: !586, inlinedAt: !587)
!594 = !DILocation(line: 141, column: 3, scope: !586, inlinedAt: !587)
!595 = !DILocation(line: 74, column: 3, scope: !596, inlinedAt: !598)
!596 = distinct !DISubprogram(name: "__arch_xprod_64", scope: !597, file: !597, line: 55, type: !218, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!597 = !DIFile(filename: "../arch/arm/include/asm/div64.h", directory: "/llk/linux-5.17/build_arm_allyes")
!598 = distinct !DILocation(line: 141, column: 3, scope: !586, inlinedAt: !587)
!599 = !{i64 1046243, i64 1046270, i64 1046292, i64 1046320}
!600 = !DILocation(line: 92, column: 3, scope: !596, inlinedAt: !598)
!601 = !{i64 1046651, i64 1046678, i64 1046711, i64 1046732, i64 1046759, i64 1046785}
!602 = !DILocation(line: 142, column: 10, scope: !586, inlinedAt: !587)
!603 = !DILocation(line: 142, column: 20, scope: !586, inlinedAt: !587)
!604 = !DILocation(line: 142, column: 19, scope: !586, inlinedAt: !587)
!605 = !DILocation(line: 299, column: 32, scope: !499, inlinedAt: !500)
!606 = !DILocation(line: 299, column: 12, scope: !499, inlinedAt: !500)
!607 = !DILocation(line: 300, column: 34, scope: !499, inlinedAt: !500)
!608 = !DILocation(line: 300, column: 13, scope: !499, inlinedAt: !500)
!609 = !DILocation(line: 302, column: 6, scope: !499, inlinedAt: !500)
!610 = !DILocation(line: 303, column: 3, scope: !499, inlinedAt: !500)
!611 = !DILocation(line: 305, column: 7, scope: !499, inlinedAt: !500)
!612 = !DILocation(line: 305, column: 6, scope: !499, inlinedAt: !500)
!613 = !DILocation(line: 306, column: 7, scope: !499, inlinedAt: !500)
!614 = !DILocation(line: 307, column: 4, scope: !499, inlinedAt: !500)
!615 = !DILocation(line: 310, column: 4, scope: !499, inlinedAt: !500)
!616 = !DILocation(line: 313, column: 6, scope: !499, inlinedAt: !500)
!617 = !DILocation(line: 314, column: 3, scope: !499, inlinedAt: !500)
!618 = !DILocation(line: 317, column: 3, scope: !499, inlinedAt: !500)
!619 = !DILocation(line: 321, column: 7, scope: !499, inlinedAt: !500)
!620 = !DILocation(line: 321, column: 21, scope: !499, inlinedAt: !500)
!621 = !DILocation(line: 321, column: 25, scope: !499, inlinedAt: !500)
!622 = !DILocation(line: 321, column: 39, scope: !499, inlinedAt: !500)
!623 = !DILocation(line: 322, column: 6, scope: !499, inlinedAt: !500)
!624 = !DILocation(line: 322, column: 20, scope: !499, inlinedAt: !500)
!625 = !DILocation(line: 322, column: 32, scope: !499, inlinedAt: !500)
!626 = !DILocation(line: 322, column: 35, scope: !499, inlinedAt: !500)
!627 = !DILocation(line: 322, column: 49, scope: !499, inlinedAt: !500)
!628 = !DILocation(line: 321, column: 6, scope: !499, inlinedAt: !500)
!629 = !DILocation(line: 323, column: 3, scope: !499, inlinedAt: !500)
!630 = !DILocation(line: 325, column: 2, scope: !499, inlinedAt: !500)
!631 = !DILocation(line: 326, column: 2, scope: !499, inlinedAt: !500)
!632 = !DILocation(line: 327, column: 6, scope: !499, inlinedAt: !500)
!633 = !DILocation(line: 328, column: 3, scope: !499, inlinedAt: !500)
!634 = !DILocation(line: 330, column: 3, scope: !499, inlinedAt: !500)
!635 = !DILocation(line: 332, column: 2, scope: !499, inlinedAt: !500)
!636 = !DILocation(line: 333, column: 2, scope: !499, inlinedAt: !500)
!637 = !DILocation(line: 334, column: 2, scope: !499, inlinedAt: !500)
!638 = !DILocation(line: 335, column: 2, scope: !499, inlinedAt: !500)
!639 = !DILocation(line: 338, column: 2, scope: !499, inlinedAt: !500)
!640 = !DILocation(line: 74, column: 3, scope: !596, inlinedAt: !641)
!641 = distinct !DILocation(line: 338, column: 2, scope: !499, inlinedAt: !500)
!642 = !DILocation(line: 92, column: 3, scope: !596, inlinedAt: !641)
!643 = !DILocation(line: 339, column: 6, scope: !499, inlinedAt: !500)
!644 = !DILocation(line: 340, column: 10, scope: !499, inlinedAt: !500)
!645 = !DILocation(line: 340, column: 7, scope: !499, inlinedAt: !500)
!646 = !DILocation(line: 340, column: 3, scope: !499, inlinedAt: !500)
!647 = !DILocation(line: 342, column: 3, scope: !499, inlinedAt: !500)
!648 = !DILocation(line: 344, column: 2, scope: !499, inlinedAt: !500)
!649 = !DILocation(line: 346, column: 6, scope: !499, inlinedAt: !500)
!650 = !DILocation(line: 348, column: 23, scope: !499, inlinedAt: !500)
!651 = !DILocation(line: 349, column: 3, scope: !499, inlinedAt: !500)
!652 = !DILocation(line: 350, column: 2, scope: !499, inlinedAt: !500)
!653 = !DILocation(line: 352, column: 6, scope: !499, inlinedAt: !500)
!654 = !DILocation(line: 353, column: 7, scope: !499, inlinedAt: !500)
!655 = !DILocation(line: 354, column: 20, scope: !499, inlinedAt: !500)
!656 = !DILocation(line: 354, column: 14, scope: !499, inlinedAt: !500)
!657 = !DILocation(line: 354, column: 11, scope: !499, inlinedAt: !500)
!658 = !DILocation(line: 354, column: 4, scope: !499, inlinedAt: !500)
!659 = !DILocation(line: 356, column: 3, scope: !499, inlinedAt: !500)
!660 = !DILocation(line: 360, column: 13, scope: !499, inlinedAt: !500)
!661 = !DILocation(line: 360, column: 7, scope: !499, inlinedAt: !500)
!662 = !DILocation(line: 361, column: 4, scope: !499, inlinedAt: !500)
!663 = !DILocation(line: 363, column: 3, scope: !499, inlinedAt: !500)
!664 = !DILocation(line: 366, column: 30, scope: !499, inlinedAt: !500)
!665 = !DILocation(line: 366, column: 23, scope: !499, inlinedAt: !500)
!666 = !DILocation(line: 367, column: 3, scope: !499, inlinedAt: !500)
!667 = !DILocation(line: 368, column: 2, scope: !499, inlinedAt: !500)
!668 = !DILocation(line: 82, column: 9, scope: !285, inlinedAt: !669)
!669 = distinct !DILocation(line: 412, column: 7, scope: !484)
!670 = !DILocation(line: 82, column: 20, scope: !285, inlinedAt: !669)
!671 = !DILocation(line: 82, column: 23, scope: !285, inlinedAt: !669)
!672 = !DILocation(line: 412, column: 7, scope: !484)
!673 = !DILocation(line: 413, column: 4, scope: !484)
!674 = !DILocation(line: 415, column: 3, scope: !484)
!675 = !DILocation(line: 104, column: 4, scope: !428, inlinedAt: !676)
!676 = distinct !DILocation(line: 416, column: 3, scope: !484)
!677 = !DILocation(line: 104, column: 26, scope: !428, inlinedAt: !676)
!678 = !DILocation(line: 103, column: 9, scope: !428, inlinedAt: !676)
!679 = !DILocation(line: 416, column: 3, scope: !484)
!680 = !{i64 2153650297}
!681 = !DILocation(line: 82, column: 9, scope: !285, inlinedAt: !682)
!682 = distinct !DILocation(line: 417, column: 7, scope: !484)
!683 = !DILocation(line: 82, column: 20, scope: !285, inlinedAt: !682)
!684 = !DILocation(line: 82, column: 23, scope: !285, inlinedAt: !682)
!685 = !DILocation(line: 417, column: 7, scope: !484)
!686 = !DILocation(line: 418, column: 4, scope: !484)
!687 = !DILocation(line: 419, column: 3, scope: !484)
!688 = distinct !{!688, !490, !689}
!689 = !DILocation(line: 420, column: 2, scope: !484)
!690 = !DILocation(line: 104, column: 4, scope: !428, inlinedAt: !691)
!691 = distinct !DILocation(line: 423, column: 2, scope: !484)
!692 = !DILocation(line: 104, column: 26, scope: !428, inlinedAt: !691)
!693 = !DILocation(line: 103, column: 9, scope: !428, inlinedAt: !691)
!694 = !DILocation(line: 423, column: 2, scope: !484)
!695 = !DILocation(line: 424, column: 7, scope: !484)
!696 = !DILocation(line: 424, column: 6, scope: !484)
!697 = !DILocation(line: 425, column: 3, scope: !484)
!698 = !DILocation(line: 104, column: 4, scope: !428, inlinedAt: !699)
!699 = distinct !DILocation(line: 373, column: 2, scope: !469, inlinedAt: !700)
!700 = distinct !DILocation(line: 425, column: 3, scope: !484)
!701 = !DILocation(line: 104, column: 26, scope: !428, inlinedAt: !699)
!702 = !DILocation(line: 103, column: 9, scope: !428, inlinedAt: !699)
!703 = !DILocation(line: 373, column: 2, scope: !469, inlinedAt: !700)
!704 = !DILocation(line: 374, column: 10, scope: !469, inlinedAt: !700)
!705 = !DILocation(line: 374, column: 2, scope: !469, inlinedAt: !700)
!706 = !DILocation(line: 375, column: 3, scope: !469, inlinedAt: !700)
!707 = !DILocation(line: 376, column: 3, scope: !469, inlinedAt: !700)
!708 = distinct !{!708, !705, !709}
!709 = !DILocation(line: 377, column: 2, scope: !469, inlinedAt: !700)
!710 = !DILocation(line: 378, column: 2, scope: !469, inlinedAt: !700)
!711 = !DILocation(line: 427, column: 2, scope: !484)
