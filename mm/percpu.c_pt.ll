; ModuleID = '/llk/IR_all_yes/mm/percpu.c_pt.bc'
source_filename = "../mm/percpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+__alloc_percpu_gfp\22, \22a\22\09"
module asm "\09.weak\09__crc___alloc_percpu_gfp\09\09\09\09"
module asm "\09.long\09__crc___alloc_percpu_gfp\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_percpu_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_percpu_gfp\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_percpu_gfp:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__alloc_percpu\22, \22a\22\09"
module asm "\09.weak\09__crc___alloc_percpu\09\09\09\09"
module asm "\09.long\09__crc___alloc_percpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22__alloc_percpu\22\09\09\09\09\09"
module asm "__kstrtabns___alloc_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+free_percpu\22, \22a\22\09"
module asm "\09.weak\09__crc_free_percpu\09\09\09\09"
module asm "\09.long\09__crc_free_percpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22free_percpu\22\09\09\09\09\09"
module asm "__kstrtabns_free_percpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+__per_cpu_offset\22, \22a\22\09"
module asm "\09.weak\09__crc___per_cpu_offset\09\09\09\09"
module asm "\09.long\09__crc___per_cpu_offset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___per_cpu_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22__per_cpu_offset\22\09\09\09\09\09"
module asm "__kstrtabns___per_cpu_offset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

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
%union.anon.106 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%union.anon.108 = type { %struct.bpf_raw_event_map }
%union.anon.109 = type { %struct.bpf_raw_event_map }
%union.anon.110 = type { %struct.bpf_raw_event_map }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.percpu_stats = type { i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.pcpu_alloc_info = type { i32, i32, i32, i32, i32, i32, i32, i32, [0 x %struct.pcpu_group_info] }
%struct.pcpu_group_info = type { i32, i32, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_percpu_alloc_percpu = type { %struct.trace_entry, i8, i8, i32, i32, ptr, i32, ptr, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_percpu_free_percpu = type { %struct.trace_entry, ptr, i32, ptr, [0 x i8] }
%struct.trace_event_raw_percpu_alloc_percpu_fail = type { %struct.trace_entry, i8, i8, i32, i32, [0 x i8] }
%struct.trace_event_raw_percpu_create_chunk = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.trace_event_raw_percpu_destroy_chunk = type { %struct.trace_entry, ptr, [0 x i8] }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.62, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.25 }
%struct.llist_node = type { ptr }
%union.anon.25 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.27 }
%union.anon.27 = type { %struct.anon.28 }
%struct.anon.28 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.wake_q_node = type { ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.62 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.pcpu_chunk = type { i32, i32, %struct.list_head, i32, %struct.pcpu_block_md, ptr, ptr, ptr, ptr, ptr, i8, i8, i32, i32, ptr, i32, i32, i32, [0 x i32] }
%struct.pcpu_block_md = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.7, %union.anon.80, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.80 = type { %struct.atomic_t }
%struct.obj_cgroup = type { %struct.percpu_ref, ptr, %struct.atomic_t, %union.anon.70 }
%struct.percpu_ref = type { i32, ptr }
%union.anon.70 = type { %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.vm_struct = type { ptr, ptr, i32, i32, ptr, i32, i32, ptr }
%struct.percpu_ref_data = type { %struct.atomic_t, ptr, ptr, i8, %struct.callback_head, ptr }

@__tpstrtab_percpu_alloc_percpu = internal constant [20 x i8] c"percpu_alloc_percpu\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_alloc_percpu = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_alloc_percpu }, align 4
@__tracepoint_percpu_alloc_percpu = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_percpu_alloc_percpu, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_percpu_alloc_percpu, ptr null, ptr @__traceiter_percpu_alloc_percpu, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_alloc_percpu = internal constant ptr @__tracepoint_percpu_alloc_percpu, section "__tracepoints_ptrs", align 4
@__tpstrtab_percpu_free_percpu = internal constant [19 x i8] c"percpu_free_percpu\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_free_percpu = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_free_percpu }, align 4
@__tracepoint_percpu_free_percpu = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_percpu_free_percpu, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_percpu_free_percpu, ptr null, ptr @__traceiter_percpu_free_percpu, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_free_percpu = internal constant ptr @__tracepoint_percpu_free_percpu, section "__tracepoints_ptrs", align 4
@__tpstrtab_percpu_alloc_percpu_fail = internal constant [25 x i8] c"percpu_alloc_percpu_fail\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_alloc_percpu_fail = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_alloc_percpu_fail }, align 4
@__tracepoint_percpu_alloc_percpu_fail = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_percpu_alloc_percpu_fail, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_percpu_alloc_percpu_fail, ptr null, ptr @__traceiter_percpu_alloc_percpu_fail, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_alloc_percpu_fail = internal constant ptr @__tracepoint_percpu_alloc_percpu_fail, section "__tracepoints_ptrs", align 4
@__tpstrtab_percpu_create_chunk = internal constant [20 x i8] c"percpu_create_chunk\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_create_chunk = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_create_chunk }, align 4
@__tracepoint_percpu_create_chunk = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_percpu_create_chunk, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_percpu_create_chunk, ptr null, ptr @__traceiter_percpu_create_chunk, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_create_chunk = internal constant ptr @__tracepoint_percpu_create_chunk, section "__tracepoints_ptrs", align 4
@__tpstrtab_percpu_destroy_chunk = internal constant [21 x i8] c"percpu_destroy_chunk\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_percpu_destroy_chunk = dso_local global %struct.static_call_key { ptr @__traceiter_percpu_destroy_chunk }, align 4
@__tracepoint_percpu_destroy_chunk = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_percpu_destroy_chunk, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_percpu_destroy_chunk, ptr null, ptr @__traceiter_percpu_destroy_chunk, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_percpu_destroy_chunk = internal constant ptr @__tracepoint_percpu_destroy_chunk, section "__tracepoints_ptrs", align 4
@str__percpu__trace_system_name = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"percpu\00", [25 x i8] zeroinitializer }, align 32
@trace_event_fields_percpu_alloc_percpu = internal global { [8 x %struct.trace_event_fields], [32 x i8] } { [8 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.100, %union.anon.0 { %struct.anon { ptr @.str.101, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.100, %union.anon.0 { %struct.anon { ptr @.str.102, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.103, %union.anon.0 { %struct.anon { ptr @.str.104, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.103, %union.anon.0 { %struct.anon { ptr @.str.105, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.106, %union.anon.0 { %struct.anon { ptr @.str.107, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.108, %union.anon.0 { %struct.anon { ptr @.str.109, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.106, %union.anon.0 { %struct.anon { ptr @.str.110, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_percpu_alloc_percpu = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_alloc_percpu, ptr @perf_trace_percpu_alloc_percpu, ptr @trace_event_reg, ptr @trace_event_fields_percpu_alloc_percpu, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_alloc_percpu, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_alloc_percpu, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_alloc_percpu = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_percpu_alloc_percpu, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_percpu_alloc_percpu = internal global { [163 x i8], [61 x i8] } { [163 x i8] c"\22reserved=%d is_atomic=%d size=%zu align=%zu base_addr=%p off=%d ptr=%p\22, REC->reserved, REC->is_atomic, REC->size, REC->align, REC->base_addr, REC->off, REC->ptr\00", [61 x i8] zeroinitializer }, align 32
@event_percpu_alloc_percpu = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_alloc_percpu, %union.anon.1 { ptr @__tracepoint_percpu_alloc_percpu }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_alloc_percpu }, ptr @print_fmt_percpu_alloc_percpu, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_percpu_alloc_percpu = internal global ptr @event_percpu_alloc_percpu, section "_ftrace_events", align 4
@trace_event_fields_percpu_free_percpu = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.106, %union.anon.0 { %struct.anon { ptr @.str.107, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.108, %union.anon.0 { %struct.anon { ptr @.str.109, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.106, %union.anon.0 { %struct.anon { ptr @.str.110, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_percpu_free_percpu = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_free_percpu, ptr @perf_trace_percpu_free_percpu, ptr @trace_event_reg, ptr @trace_event_fields_percpu_free_percpu, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_free_percpu, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_free_percpu, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_free_percpu = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_percpu_free_percpu, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_percpu_free_percpu = internal global { [65 x i8], [63 x i8] } { [65 x i8] c"\22base_addr=%p off=%d ptr=%p\22, REC->base_addr, REC->off, REC->ptr\00", [63 x i8] zeroinitializer }, align 32
@event_percpu_free_percpu = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_free_percpu, %union.anon.1 { ptr @__tracepoint_percpu_free_percpu }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_free_percpu }, ptr @print_fmt_percpu_free_percpu, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_percpu_free_percpu = internal global ptr @event_percpu_free_percpu, section "_ftrace_events", align 4
@trace_event_fields_percpu_alloc_percpu_fail = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.100, %union.anon.0 { %struct.anon { ptr @.str.101, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.100, %union.anon.0 { %struct.anon { ptr @.str.102, i32 1, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.103, %union.anon.0 { %struct.anon { ptr @.str.104, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.103, %union.anon.0 { %struct.anon { ptr @.str.105, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_percpu_alloc_percpu_fail = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_alloc_percpu_fail, ptr @perf_trace_percpu_alloc_percpu_fail, ptr @trace_event_reg, ptr @trace_event_fields_percpu_alloc_percpu_fail, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_alloc_percpu_fail, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_alloc_percpu_fail, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_alloc_percpu_fail = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_percpu_alloc_percpu_fail, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_percpu_alloc_percpu_fail = internal global { [100 x i8], [60 x i8] } { [100 x i8] c"\22reserved=%d is_atomic=%d size=%zu align=%zu\22, REC->reserved, REC->is_atomic, REC->size, REC->align\00", [60 x i8] zeroinitializer }, align 32
@event_percpu_alloc_percpu_fail = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_alloc_percpu_fail, %union.anon.1 { ptr @__tracepoint_percpu_alloc_percpu_fail }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_alloc_percpu_fail }, ptr @print_fmt_percpu_alloc_percpu_fail, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_percpu_alloc_percpu_fail = internal global ptr @event_percpu_alloc_percpu_fail, section "_ftrace_events", align 4
@trace_event_fields_percpu_create_chunk = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.106, %union.anon.0 { %struct.anon { ptr @.str.107, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_percpu_create_chunk = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_create_chunk, ptr @perf_trace_percpu_create_chunk, ptr @trace_event_reg, ptr @trace_event_fields_percpu_create_chunk, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_create_chunk, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_create_chunk, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_create_chunk = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_percpu_create_chunk, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_percpu_create_chunk = internal global { [31 x i8], [33 x i8] } { [31 x i8] c"\22base_addr=%p\22, REC->base_addr\00", [33 x i8] zeroinitializer }, align 32
@event_percpu_create_chunk = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_create_chunk, %union.anon.1 { ptr @__tracepoint_percpu_create_chunk }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_create_chunk }, ptr @print_fmt_percpu_create_chunk, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_percpu_create_chunk = internal global ptr @event_percpu_create_chunk, section "_ftrace_events", align 4
@trace_event_fields_percpu_destroy_chunk = internal global { [2 x %struct.trace_event_fields], [48 x i8] } { [2 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.106, %union.anon.0 { %struct.anon { ptr @.str.107, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_percpu_destroy_chunk = internal global %struct.trace_event_class { ptr @str__percpu__trace_system_name, ptr @trace_event_raw_event_percpu_destroy_chunk, ptr @perf_trace_percpu_destroy_chunk, ptr @trace_event_reg, ptr @trace_event_fields_percpu_destroy_chunk, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_percpu_destroy_chunk, i64 24), ptr getelementptr (i8, ptr @event_class_percpu_destroy_chunk, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_percpu_destroy_chunk = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_percpu_destroy_chunk, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_percpu_destroy_chunk = internal global { [31 x i8], [33 x i8] } { [31 x i8] c"\22base_addr=%p\22, REC->base_addr\00", [33 x i8] zeroinitializer }, align 32
@event_percpu_destroy_chunk = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_percpu_destroy_chunk, %union.anon.1 { ptr @__tracepoint_percpu_destroy_chunk }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_percpu_destroy_chunk }, ptr @print_fmt_percpu_destroy_chunk, ptr null, %union.anon.4 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_percpu_destroy_chunk = internal global ptr @event_percpu_destroy_chunk, section "_ftrace_events", align 4
@__bpf_trace_tp_map_percpu_alloc_percpu = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_percpu_alloc_percpu, ptr @__bpf_trace_percpu_alloc_percpu, i32 7, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_percpu_free_percpu = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_percpu_free_percpu, ptr @__bpf_trace_percpu_free_percpu, i32 3, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_percpu_alloc_percpu_fail = internal global %union.anon.108 { %struct.bpf_raw_event_map { ptr @__tracepoint_percpu_alloc_percpu_fail, ptr @__bpf_trace_percpu_alloc_percpu_fail, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_percpu_create_chunk = internal global %union.anon.109 { %struct.bpf_raw_event_map { ptr @__tracepoint_percpu_create_chunk, ptr @__bpf_trace_percpu_create_chunk, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_percpu_destroy_chunk = internal global %union.anon.110 { %struct.bpf_raw_event_map { ptr @__tracepoint_percpu_destroy_chunk, ptr @__bpf_trace_percpu_destroy_chunk, i32 1, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pcpu_lock\00", [22 x i8] zeroinitializer }, align 32
@pcpu_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.5 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__kstrtab___alloc_percpu_gfp = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_percpu_gfp = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_percpu_gfp = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_percpu_gfp to i32), ptr @__kstrtab___alloc_percpu_gfp, ptr @__kstrtabns___alloc_percpu_gfp }, section "___ksymtab_gpl+__alloc_percpu_gfp", align 4
@__kstrtab___alloc_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns___alloc_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab___alloc_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__alloc_percpu to i32), ptr @__kstrtab___alloc_percpu, ptr @__kstrtabns___alloc_percpu }, section "___ksymtab_gpl+__alloc_percpu", align 4
@pcpu_base_addr = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@__per_cpu_start = external dso_local global [0 x i8], align 1
@pcpu_unit_size = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_chunk_lists = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_free_slot = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@__kstrtab_free_percpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_percpu = external dso_local constant [0 x i8], align 1
@__ksymtab_free_percpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_percpu to i32), ptr @__kstrtab_free_percpu, ptr @__kstrtabns_free_percpu }, section "___ksymtab_gpl+free_percpu", align 4
@__per_cpu_end = external dso_local global [0 x i8], align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = dso_local global [4 x i32] zeroinitializer, section ".data..read_mostly", align 4
@pcpu_low_unit_cpu = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_high_unit_cpu = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_unit_pages = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@pcpu_setup_first_chunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\010percpu: failed to initialize, %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcpu_setup_first_chunk\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mm/percpu.c\00", [20 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr = internal global ptr @pcpu_setup_first_chunk._entry, section ".printk_index", align 4
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ai->nr_groups <= 0\00", [45 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\010percpu: cpu_possible_mask=%*pb\0A\00", [62 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.7 = internal global ptr @pcpu_setup_first_chunk._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\010\00", [29 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.10 = internal global ptr @pcpu_setup_first_chunk._entry.9, section ".printk_index", align 4
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"!ai->static_size\00", [47 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.13 = internal global ptr @pcpu_setup_first_chunk._entry.12, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.15 = internal global ptr @pcpu_setup_first_chunk._entry.14, section ".printk_index", align 4
@.str.16 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"offset_in_page(__per_cpu_start)\00", [32 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.18 = internal global ptr @pcpu_setup_first_chunk._entry.17, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.20 = internal global ptr @pcpu_setup_first_chunk._entry.19, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"!base_addr\00", [21 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.23 = internal global ptr @pcpu_setup_first_chunk._entry.22, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.25 = internal global ptr @pcpu_setup_first_chunk._entry.24, section ".printk_index", align 4
@.str.26 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"offset_in_page(base_addr)\00", [38 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.28 = internal global ptr @pcpu_setup_first_chunk._entry.27, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.30 = internal global ptr @pcpu_setup_first_chunk._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ai->unit_size < size_sum\00", [39 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2620, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.33 = internal global ptr @pcpu_setup_first_chunk._entry.32, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.35 = internal global ptr @pcpu_setup_first_chunk._entry.34, section ".printk_index", align 4
@.str.36 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"offset_in_page(ai->unit_size)\00", [34 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2621, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.38 = internal global ptr @pcpu_setup_first_chunk._entry.37, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.40 = internal global ptr @pcpu_setup_first_chunk._entry.39, section ".printk_index", align 4
@.str.41 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"ai->unit_size < PCPU_MIN_UNIT_SIZE\00", [61 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2622, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.43 = internal global ptr @pcpu_setup_first_chunk._entry.42, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.45 = internal global ptr @pcpu_setup_first_chunk._entry.44, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2623, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.48 = internal global ptr @pcpu_setup_first_chunk._entry.47, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.50 = internal global ptr @pcpu_setup_first_chunk._entry.49, section ".printk_index", align 4
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"ai->dyn_size < PERCPU_DYNAMIC_EARLY_SIZE\00", [55 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2624, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.53 = internal global ptr @pcpu_setup_first_chunk._entry.52, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.55 = internal global ptr @pcpu_setup_first_chunk._entry.54, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2625, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.58 = internal global ptr @pcpu_setup_first_chunk._entry.57, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.60 = internal global ptr @pcpu_setup_first_chunk._entry.59, section ".printk_index", align 4
@.str.61 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"!IS_ALIGNED(ai->reserved_size, PCPU_MIN_ALLOC_SIZE)\00", [44 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.62 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.63 = internal global ptr @pcpu_setup_first_chunk._entry.62, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.65 = internal global ptr @pcpu_setup_first_chunk._entry.64, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2629, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.68 = internal global ptr @pcpu_setup_first_chunk._entry.67, section ".printk_index", align 4
@.str.69 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: Failed to allocate %zu bytes\0A\00", [62 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.71 = internal global ptr @pcpu_setup_first_chunk._entry.70, section ".printk_index", align 4
@.str.72 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpu >= nr_cpu_ids\00", [46 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2673, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.74 = internal global ptr @pcpu_setup_first_chunk._entry.73, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.76 = internal global ptr @pcpu_setup_first_chunk._entry.75, section ".printk_index", align 4
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"!cpu_possible(cpu)\00", [45 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2674, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.79 = internal global ptr @pcpu_setup_first_chunk._entry.78, section ".printk_index", align 4
@pcpu_setup_first_chunk._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.81 = internal global ptr @pcpu_setup_first_chunk._entry.80, section ".printk_index", align 4
@.str.82 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unit_map[cpu] != UINT_MAX\00", [38 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.84 = internal global ptr @pcpu_setup_first_chunk._entry.83, section ".printk_index", align 4
@pcpu_nr_units = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_setup_first_chunk._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.86 = internal global ptr @pcpu_setup_first_chunk._entry.85, section ".printk_index", align 4
@.str.87 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"unit_map[cpu] == UINT_MAX\00", [38 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 2692, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_setup_first_chunk._entry_ptr.89 = internal global ptr @pcpu_setup_first_chunk._entry.88, section ".printk_index", align 4
@.str.90 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@pcpu_nr_groups = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_group_offsets = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_group_sizes = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_unit_map = internal unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_unit_offsets = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_atom_size = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_chunk_struct_size = internal unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_sidelined_slot = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_to_depopulate_slot = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_nr_slots = dso_local local_unnamed_addr global i32 0, section ".data..ro_after_init", align 4
@pcpu_reserved_chunk = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_first_chunk = dso_local local_unnamed_addr global ptr null, section ".data..ro_after_init", align 4
@pcpu_nr_empty_pop_pages = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@pcpu_nr_populated = internal global { i32, [28 x i8] } zeroinitializer, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"auto\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"embed\00", [26 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"page\00", [27 x i8] zeroinitializer }, align 32
@pcpu_fc_names = dso_local local_unnamed_addr constant [3 x ptr] [ptr @.str.91, ptr @.str.92, ptr @.str.93], section ".init.rodata", align 4
@pcpu_chosen_fc = dso_local local_unnamed_addr global i32 0, section ".init.data", align 4
@__setup_str_percpu_alloc_setup = internal constant [13 x i8] c"percpu_alloc\00", section ".init.rodata", align 1
@__setup_percpu_alloc_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_percpu_alloc_setup, ptr @percpu_alloc_setup, i32 1 }, section ".init.setup", align 4
@high_memory = external dso_local local_unnamed_addr global ptr, align 4
@pcpu_embed_first_chunk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 3119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014percpu: max_distance=0x%lx too large for vmalloc space 0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"pcpu_embed_first_chunk\00", [41 x i8] zeroinitializer }, align 32
@pcpu_embed_first_chunk._entry_ptr = internal global ptr @pcpu_embed_first_chunk._entry, section ".printk_index", align 4
@__per_cpu_load = external dso_local local_unnamed_addr global [0 x i8], align 1
@pcpu_embed_first_chunk._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 3155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016percpu: Embedded %zu pages/cpu s%zu r%zu d%zu u%zu\0A\00", [42 x i8] zeroinitializer }, align 32
@pcpu_embed_first_chunk._entry_ptr.98 = internal global ptr @pcpu_embed_first_chunk._entry.96, section ".printk_index", align 4
@__kstrtab___per_cpu_offset = external dso_local constant [0 x i8], align 1
@__kstrtabns___per_cpu_offset = external dso_local constant [0 x i8], align 1
@__ksymtab___per_cpu_offset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__per_cpu_offset to i32), ptr @__kstrtab___per_cpu_offset, ptr @__kstrtabns___per_cpu_offset }, section "___ksymtab+__per_cpu_offset", align 4
@.str.99 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Failed to initialize percpu areas.\00", [61 x i8] zeroinitializer }, align 32
@__initcall__kmod_percpu__376_3460_percpu_enable_async4 = internal global ptr @percpu_enable_async, section ".initcall4.init", align 4
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bool\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"is_atomic\00", [22 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"align\00", [26 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"void *\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"base_addr\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ptr\00", [28 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"reserved=%d is_atomic=%d size=%zu align=%zu base_addr=%p off=%d ptr=%p\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"base_addr=%p off=%d ptr=%p\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"reserved=%d is_atomic=%d size=%zu align=%zu\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"base_addr=%p\0A\00", [18 x i8] zeroinitializer }, align 32
@pcpu_alloc.warn_limit = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"illegal size (%zu) or align (%zu) for percpu allocation\0A\00", [39 x i8] zeroinitializer }, align 32
@pcpu_alloc_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.128, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @pcpu_alloc_mutex, i64 52), ptr getelementptr (i8, ptr @pcpu_alloc_mutex, i64 52) }, ptr @pcpu_alloc_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.129, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"alloc from reserved chunk failed\00", [63 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to allocate new chunk\00", [35 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"failed to populate\00", [45 x i8] zeroinitializer }, align 32
@pcpu_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.121, ptr @.str.3, i32 1901, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014percpu: allocation failed, size=%zu align=%zu atomic=%d, %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pcpu_alloc\00", [21 x i8] zeroinitializer }, align 32
@pcpu_alloc._entry_ptr = internal global ptr @pcpu_alloc._entry, section ".printk_index", align 4
@pcpu_alloc._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.123, ptr @.str.121, ptr @.str.3, i32 1904, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016percpu: limit reached, disable warning\0A\00", [54 x i8] zeroinitializer }, align 32
@pcpu_alloc._entry_ptr.124 = internal global ptr @pcpu_alloc._entry.122, section ".printk_index", align 4
@pcpu_atomic_alloc_failed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@memcg_kmem_enabled_key = external dso_local global %struct.static_key_false, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.125 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.127 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"pcpu_alloc_mutex.wait_lock\00", [37 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcpu_alloc_mutex\00", [47 x i8] zeroinitializer }, align 32
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@pcpu_mem_zalloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.130 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mm/percpu-internal.h\00", [43 x i8] zeroinitializer }, align 32
@pcpu_stats = external dso_local local_unnamed_addr global %struct.percpu_stats, align 8
@pcpu_get_pages.pages = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mm/percpu-vm.c\00", [17 x i8] zeroinitializer }, align 32
@pgprot_kernel = external dso_local local_unnamed_addr global i32, align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@cacheid = external dso_local local_unnamed_addr global i32, align 4
@.str.133 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"include/trace/events/percpu.h\00", [34 x i8] zeroinitializer }, align 32
@trace_percpu_alloc_percpu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.134 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.135 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_percpu_alloc_percpu_fail.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@trace_percpu_free_percpu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@pcpu_async_enabled = internal unnamed_addr global i1 false, section ".data..read_mostly", align 1
@pcpu_balance_work = internal global { %struct.work_struct, [52 x i8] } { %struct.work_struct { %struct.atomic_t { i32 -48 }, %struct.list_head { ptr getelementptr (i8, ptr @pcpu_balance_work, i64 4), ptr getelementptr (i8, ptr @pcpu_balance_work, i64 4) }, ptr @pcpu_balance_workfn, %struct.lockdep_map { ptr @pcpu_balance_work, [2 x ptr] zeroinitializer, ptr @.str.136, i8 0, i8 0, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.136 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"pcpu_balance_work\00", [46 x i8] zeroinitializer }, align 32
@trace_percpu_destroy_chunk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__boot_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@__const.pcpu_dump_alloc_info.empty_str = private unnamed_addr constant [9 x i8] c"--------\00", align 1
@pcpu_dump_alloc_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.137, ptr @.str.138, ptr @.str.3, i32 2506, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%spcpu-alloc: s%zu r%zu d%zu u%zu alloc=%zu*%zu\00", [48 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"pcpu_dump_alloc_info\00", [43 x i8] zeroinitializer }, align 32
@pcpu_dump_alloc_info._entry_ptr = internal global ptr @pcpu_dump_alloc_info._entry, section ".printk_index", align 4
@pcpu_dump_alloc_info._entry.139 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.3, i32 2516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"\01c\0A\00", [28 x i8] zeroinitializer }, align 32
@pcpu_dump_alloc_info._entry_ptr.141 = internal global ptr @pcpu_dump_alloc_info._entry.139, section ".printk_index", align 4
@pcpu_dump_alloc_info._entry.142 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.138, ptr @.str.3, i32 2517, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%spcpu-alloc: \00", [17 x i8] zeroinitializer }, align 32
@pcpu_dump_alloc_info._entry_ptr.144 = internal global ptr @pcpu_dump_alloc_info._entry.142, section ".printk_index", align 4
@pcpu_dump_alloc_info._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.138, ptr @.str.3, i32 2519, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01c[%0*d] \00", [22 x i8] zeroinitializer }, align 32
@pcpu_dump_alloc_info._entry_ptr.147 = internal global ptr @pcpu_dump_alloc_info._entry.145, section ".printk_index", align 4
@pcpu_dump_alloc_info._entry.148 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.149, ptr @.str.138, ptr @.str.3, i32 2524, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01c%0*d \00", [24 x i8] zeroinitializer }, align 32
@pcpu_dump_alloc_info._entry_ptr.150 = internal global ptr @pcpu_dump_alloc_info._entry.148, section ".printk_index", align 4
@pcpu_dump_alloc_info._entry.151 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.152, ptr @.str.138, ptr @.str.3, i32 2526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01c%s \00", [26 x i8] zeroinitializer }, align 32
@pcpu_dump_alloc_info._entry_ptr.153 = internal global ptr @pcpu_dump_alloc_info._entry.151, section ".printk_index", align 4
@pcpu_dump_alloc_info._entry.154 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.138, ptr @.str.3, i32 2529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@pcpu_dump_alloc_info._entry_ptr.155 = internal global ptr @pcpu_dump_alloc_info._entry.154, section ".printk_index", align 4
@pcpu_stats_ai = external dso_local local_unnamed_addr global %struct.pcpu_alloc_info, align 4
@__func__.pcpu_alloc_first_chunk = private unnamed_addr constant [23 x i8] c"pcpu_alloc_first_chunk\00", align 1
@trace_percpu_create_chunk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@percpu_alloc_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.156, ptr @.str.157, ptr @.str.3, i32 2807, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014percpu: unknown allocator %s specified\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"percpu_alloc_setup\00", [45 x i8] zeroinitializer }, align 32
@percpu_alloc_setup._entry_ptr = internal global ptr @percpu_alloc_setup._entry, section ".printk_index", align 4
@pcpu_build_alloc_info.group_map = internal unnamed_addr global [4 x i32] zeroinitializer, section ".init.data", align 4
@pcpu_build_alloc_info.group_cnt = internal unnamed_addr global [4 x i32] zeroinitializer, section ".init.data", align 4
@pcpu_build_alloc_info.mask = internal global %struct.cpumask zeroinitializer, section ".init.data", align 4
@arm_dma_zone_size = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.158 = private unnamed_addr constant [31 x i8] c"str__percpu__trace_system_name\00", align 1
@___asan_gen_.159 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.159, i32 36, i32 1 }
@___asan_gen_.161 = private unnamed_addr constant [39 x i8] c"trace_event_fields_percpu_alloc_percpu\00", align 1
@___asan_gen_.164 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_percpu_alloc_percpu\00", align 1
@___asan_gen_.167 = private unnamed_addr constant [30 x i8] c"print_fmt_percpu_alloc_percpu\00", align 1
@___asan_gen_.170 = private unnamed_addr constant [26 x i8] c"event_percpu_alloc_percpu\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [38 x i8] c"trace_event_fields_percpu_free_percpu\00", align 1
@___asan_gen_.176 = private unnamed_addr constant [42 x i8] c"trace_event_type_funcs_percpu_free_percpu\00", align 1
@___asan_gen_.179 = private unnamed_addr constant [29 x i8] c"print_fmt_percpu_free_percpu\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [25 x i8] c"event_percpu_free_percpu\00", align 1
@___asan_gen_.185 = private unnamed_addr constant [44 x i8] c"trace_event_fields_percpu_alloc_percpu_fail\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [48 x i8] c"trace_event_type_funcs_percpu_alloc_percpu_fail\00", align 1
@___asan_gen_.191 = private unnamed_addr constant [35 x i8] c"print_fmt_percpu_alloc_percpu_fail\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [31 x i8] c"event_percpu_alloc_percpu_fail\00", align 1
@___asan_gen_.197 = private unnamed_addr constant [39 x i8] c"trace_event_fields_percpu_create_chunk\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [43 x i8] c"trace_event_type_funcs_percpu_create_chunk\00", align 1
@___asan_gen_.203 = private unnamed_addr constant [30 x i8] c"print_fmt_percpu_create_chunk\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [26 x i8] c"event_percpu_create_chunk\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [40 x i8] c"trace_event_fields_percpu_destroy_chunk\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [44 x i8] c"trace_event_type_funcs_percpu_destroy_chunk\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [31 x i8] c"print_fmt_percpu_destroy_chunk\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [27 x i8] c"event_percpu_destroy_chunk\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 107, i32 1 }
@___asan_gen_.224 = private unnamed_addr constant [10 x i8] c"pcpu_lock\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 172, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2613, i32 2 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2615, i32 2 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2616, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2618, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2619, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2620, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2621, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2622, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2623, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2624, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2625, i32 2 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2626, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2629, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2635, i32 9 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2673, i32 4 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2674, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2675, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2692, i32 3 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2696, i32 23 }
@___asan_gen_.392 = private unnamed_addr constant [24 x i8] c"pcpu_nr_empty_pop_pages\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 184, i32 5 }
@___asan_gen_.395 = private unnamed_addr constant [18 x i8] c"pcpu_nr_populated\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 192, i32 22 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2784, i32 19 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2785, i32 20 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2786, i32 19 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3118, i32 3 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3153, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 3389, i32 9 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 43, i32 1 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 65, i32 1 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 90, i32 1 }
@___asan_gen_.470 = private unnamed_addr constant [11 x i8] c"warn_limit\00", align 1
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1729, i32 13 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1758, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant [17 x i8] c"pcpu_alloc_mutex\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1788, i32 10 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1836, i32 10 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1867, i32 11 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1900, i32 3 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 1904, i32 4 }
@___asan_gen_.503 = private unnamed_addr constant [25 x i8] c"pcpu_atomic_alloc_failed\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 695, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.511, i32 723, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 173, i32 8 }
@___asan_gen_.520 = private unnamed_addr constant [24 x i8] c"../mm/percpu-internal.h\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.520, i32 173, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [6 x i8] c"pages\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 34, i32 23 }
@___asan_gen_.526 = private unnamed_addr constant [18 x i8] c"../mm/percpu-vm.c\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.526, i32 37, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant [33 x i8] c"../include/trace/events/percpu.h\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.532, i32 10, i32 1 }
@___asan_gen_.535 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.535, i32 108, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [18 x i8] c"pcpu_balance_work\00", align 1
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 201, i32 8 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2504, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2516, i32 5 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2517, i32 5 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2519, i32 4 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2523, i32 6 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2526, i32 6 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2529, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.591 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.592 = private constant [15 x i8] c"../mm/percpu.c\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.592, i32 2807, i32 3 }
@llvm.compiler.used = appending global [223 x ptr] [ptr @__bpf_trace_tp_map_percpu_alloc_percpu, ptr @__bpf_trace_tp_map_percpu_alloc_percpu_fail, ptr @__bpf_trace_tp_map_percpu_create_chunk, ptr @__bpf_trace_tp_map_percpu_destroy_chunk, ptr @__bpf_trace_tp_map_percpu_free_percpu, ptr @__event_percpu_alloc_percpu, ptr @__event_percpu_alloc_percpu_fail, ptr @__event_percpu_create_chunk, ptr @__event_percpu_destroy_chunk, ptr @__event_percpu_free_percpu, ptr @__initcall__kmod_percpu__376_3460_percpu_enable_async4, ptr @__ksymtab___alloc_percpu, ptr @__ksymtab___alloc_percpu_gfp, ptr @__ksymtab___per_cpu_offset, ptr @__ksymtab_free_percpu, ptr @__setup_percpu_alloc_setup, ptr @__tracepoint_percpu_alloc_percpu, ptr @__tracepoint_percpu_alloc_percpu_fail, ptr @__tracepoint_percpu_create_chunk, ptr @__tracepoint_percpu_destroy_chunk, ptr @__tracepoint_percpu_free_percpu, ptr @__tracepoint_ptr_percpu_alloc_percpu, ptr @__tracepoint_ptr_percpu_alloc_percpu_fail, ptr @__tracepoint_ptr_percpu_create_chunk, ptr @__tracepoint_ptr_percpu_destroy_chunk, ptr @__tracepoint_ptr_percpu_free_percpu, ptr @event_class_percpu_alloc_percpu, ptr @event_class_percpu_alloc_percpu_fail, ptr @event_class_percpu_create_chunk, ptr @event_class_percpu_destroy_chunk, ptr @event_class_percpu_free_percpu, ptr @event_percpu_alloc_percpu, ptr @event_percpu_alloc_percpu_fail, ptr @event_percpu_create_chunk, ptr @event_percpu_destroy_chunk, ptr @event_percpu_free_percpu, ptr @pcpu_alloc._entry, ptr @pcpu_alloc._entry.122, ptr @pcpu_alloc._entry_ptr, ptr @pcpu_alloc._entry_ptr.124, ptr @pcpu_dump_alloc_info._entry, ptr @pcpu_dump_alloc_info._entry.139, ptr @pcpu_dump_alloc_info._entry.142, ptr @pcpu_dump_alloc_info._entry.145, ptr @pcpu_dump_alloc_info._entry.148, ptr @pcpu_dump_alloc_info._entry.151, ptr @pcpu_dump_alloc_info._entry.154, ptr @pcpu_dump_alloc_info._entry_ptr, ptr @pcpu_dump_alloc_info._entry_ptr.141, ptr @pcpu_dump_alloc_info._entry_ptr.144, ptr @pcpu_dump_alloc_info._entry_ptr.147, ptr @pcpu_dump_alloc_info._entry_ptr.150, ptr @pcpu_dump_alloc_info._entry_ptr.153, ptr @pcpu_dump_alloc_info._entry_ptr.155, ptr @pcpu_embed_first_chunk._entry, ptr @pcpu_embed_first_chunk._entry.96, ptr @pcpu_embed_first_chunk._entry_ptr, ptr @pcpu_embed_first_chunk._entry_ptr.98, ptr @pcpu_setup_first_chunk._entry, ptr @pcpu_setup_first_chunk._entry.12, ptr @pcpu_setup_first_chunk._entry.14, ptr @pcpu_setup_first_chunk._entry.17, ptr @pcpu_setup_first_chunk._entry.19, ptr @pcpu_setup_first_chunk._entry.22, ptr @pcpu_setup_first_chunk._entry.24, ptr @pcpu_setup_first_chunk._entry.27, ptr @pcpu_setup_first_chunk._entry.29, ptr @pcpu_setup_first_chunk._entry.32, ptr @pcpu_setup_first_chunk._entry.34, ptr @pcpu_setup_first_chunk._entry.37, ptr @pcpu_setup_first_chunk._entry.39, ptr @pcpu_setup_first_chunk._entry.42, ptr @pcpu_setup_first_chunk._entry.44, ptr @pcpu_setup_first_chunk._entry.47, ptr @pcpu_setup_first_chunk._entry.49, ptr @pcpu_setup_first_chunk._entry.5, ptr @pcpu_setup_first_chunk._entry.52, ptr @pcpu_setup_first_chunk._entry.54, ptr @pcpu_setup_first_chunk._entry.57, ptr @pcpu_setup_first_chunk._entry.59, ptr @pcpu_setup_first_chunk._entry.62, ptr @pcpu_setup_first_chunk._entry.64, ptr @pcpu_setup_first_chunk._entry.67, ptr @pcpu_setup_first_chunk._entry.70, ptr @pcpu_setup_first_chunk._entry.73, ptr @pcpu_setup_first_chunk._entry.75, ptr @pcpu_setup_first_chunk._entry.78, ptr @pcpu_setup_first_chunk._entry.80, ptr @pcpu_setup_first_chunk._entry.83, ptr @pcpu_setup_first_chunk._entry.85, ptr @pcpu_setup_first_chunk._entry.88, ptr @pcpu_setup_first_chunk._entry.9, ptr @pcpu_setup_first_chunk._entry_ptr, ptr @pcpu_setup_first_chunk._entry_ptr.10, ptr @pcpu_setup_first_chunk._entry_ptr.13, ptr @pcpu_setup_first_chunk._entry_ptr.15, ptr @pcpu_setup_first_chunk._entry_ptr.18, ptr @pcpu_setup_first_chunk._entry_ptr.20, ptr @pcpu_setup_first_chunk._entry_ptr.23, ptr @pcpu_setup_first_chunk._entry_ptr.25, ptr @pcpu_setup_first_chunk._entry_ptr.28, ptr @pcpu_setup_first_chunk._entry_ptr.30, ptr @pcpu_setup_first_chunk._entry_ptr.33, ptr @pcpu_setup_first_chunk._entry_ptr.35, ptr @pcpu_setup_first_chunk._entry_ptr.38, ptr @pcpu_setup_first_chunk._entry_ptr.40, ptr @pcpu_setup_first_chunk._entry_ptr.43, ptr @pcpu_setup_first_chunk._entry_ptr.45, ptr @pcpu_setup_first_chunk._entry_ptr.48, ptr @pcpu_setup_first_chunk._entry_ptr.50, ptr @pcpu_setup_first_chunk._entry_ptr.53, ptr @pcpu_setup_first_chunk._entry_ptr.55, ptr @pcpu_setup_first_chunk._entry_ptr.58, ptr @pcpu_setup_first_chunk._entry_ptr.60, ptr @pcpu_setup_first_chunk._entry_ptr.63, ptr @pcpu_setup_first_chunk._entry_ptr.65, ptr @pcpu_setup_first_chunk._entry_ptr.68, ptr @pcpu_setup_first_chunk._entry_ptr.7, ptr @pcpu_setup_first_chunk._entry_ptr.71, ptr @pcpu_setup_first_chunk._entry_ptr.74, ptr @pcpu_setup_first_chunk._entry_ptr.76, ptr @pcpu_setup_first_chunk._entry_ptr.79, ptr @pcpu_setup_first_chunk._entry_ptr.81, ptr @pcpu_setup_first_chunk._entry_ptr.84, ptr @pcpu_setup_first_chunk._entry_ptr.86, ptr @pcpu_setup_first_chunk._entry_ptr.89, ptr @percpu_alloc_setup._entry, ptr @percpu_alloc_setup._entry_ptr, ptr @str__percpu__trace_system_name, ptr @trace_event_fields_percpu_alloc_percpu, ptr @trace_event_type_funcs_percpu_alloc_percpu, ptr @print_fmt_percpu_alloc_percpu, ptr @trace_event_fields_percpu_free_percpu, ptr @trace_event_type_funcs_percpu_free_percpu, ptr @print_fmt_percpu_free_percpu, ptr @trace_event_fields_percpu_alloc_percpu_fail, ptr @trace_event_type_funcs_percpu_alloc_percpu_fail, ptr @print_fmt_percpu_alloc_percpu_fail, ptr @trace_event_fields_percpu_create_chunk, ptr @trace_event_type_funcs_percpu_create_chunk, ptr @print_fmt_percpu_create_chunk, ptr @trace_event_fields_percpu_destroy_chunk, ptr @trace_event_type_funcs_percpu_destroy_chunk, ptr @print_fmt_percpu_destroy_chunk, ptr @.str, ptr @pcpu_lock, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.16, ptr @.str.21, ptr @.str.26, ptr @.str.31, ptr @.str.36, ptr @.str.41, ptr @.str.51, ptr @.str.61, ptr @.str.69, ptr @.str.72, ptr @.str.77, ptr @.str.82, ptr @.str.87, ptr @.str.90, ptr @pcpu_nr_empty_pop_pages, ptr @pcpu_nr_populated, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @pcpu_alloc.warn_limit, ptr @.str.115, ptr @pcpu_alloc_mutex, ptr @.str.116, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.123, ptr @pcpu_atomic_alloc_failed, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @pcpu_get_pages.pages, ptr @.str.131, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @pcpu_balance_work, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.140, ptr @.str.143, ptr @.str.146, ptr @.str.149, ptr @.str.152, ptr @.str.156, ptr @.str.157], section "llvm.metadata"
@0 = internal global [146 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__percpu__trace_system_name to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_percpu_alloc_percpu to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_percpu_alloc_percpu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_percpu_alloc_percpu to i32), i32 163, i32 224, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_percpu_alloc_percpu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_percpu_free_percpu to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_percpu_free_percpu to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_percpu_free_percpu to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_percpu_free_percpu to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_percpu_alloc_percpu_fail to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_percpu_alloc_percpu_fail to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_percpu_alloc_percpu_fail to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_percpu_alloc_percpu_fail to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_percpu_create_chunk to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_percpu_create_chunk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_percpu_create_chunk to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_percpu_create_chunk to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_percpu_destroy_chunk to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_percpu_destroy_chunk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_percpu_destroy_chunk to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_percpu_destroy_chunk to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_setup_first_chunk._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_nr_empty_pop_pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_nr_populated to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_embed_first_chunk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_embed_first_chunk._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_alloc.warn_limit to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_alloc_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_alloc._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_atomic_alloc_failed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_get_pages.pages to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_balance_work to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_dump_alloc_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_dump_alloc_info._entry.139 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_dump_alloc_info._entry.142 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_dump_alloc_info._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_dump_alloc_info._entry.148 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_dump_alloc_info._entry.151 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcpu_dump_alloc_info._entry.154 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @percpu_alloc_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_percpu_alloc_percpu(ptr nocapture readnone %__data, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_alloc_percpu, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body3.do.body3_crit_edge ], [ %0, %entry.do.body3_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #22
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %do.body3.if.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body3

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end:                                           ; preds = %do.body3.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_percpu_free_percpu(ptr nocapture readnone %__data, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
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
  tail call void %2(ptr noundef %4, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #22
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_percpu_alloc_percpu_fail(ptr nocapture readnone %__data, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_alloc_percpu_fail, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body3_crit_edge

entry.do.body3_crit_edge:                         ; preds = %entry
  br label %do.body3

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.body3:                                         ; preds = %do.body3.do.body3_crit_edge, %entry.do.body3_crit_edge
  %it_func_ptr.0 = phi ptr [ %incdec.ptr, %do.body3.do.body3_crit_edge ], [ %0, %entry.do.body3_crit_edge ]
  %1 = ptrtoint ptr %it_func_ptr.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %it_func_ptr.0, align 4
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0, i32 0, i32 1
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  tail call void %2(ptr noundef %4, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align) #22
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool12.not = icmp eq ptr %6, null
  br i1 %tobool12.not, label %do.body3.if.end_crit_edge, label %do.body3.do.body3_crit_edge

do.body3.do.body3_crit_edge:                      ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body3

do.body3.if.end_crit_edge:                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end:                                           ; preds = %do.body3.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_percpu_create_chunk(ptr nocapture readnone %__data, ptr noundef %base_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_create_chunk, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
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
  tail call void %2(ptr noundef %4, ptr noundef %base_addr) #22
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_percpu_destroy_chunk(ptr nocapture readnone %__data, ptr noundef %base_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_destroy_chunk, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
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
  tail call void %2(ptr noundef %4, ptr noundef %base_addr) #22
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_alloc_percpu(ptr noundef %__data, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #24
  %frombool = zext i1 %reserved to i8
  %frombool1 = zext i1 %is_atomic to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #22
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !386

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !387

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #22
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 32) #22
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %reserved10 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call5, i32 0, i32 1
  %3 = ptrtoint ptr %reserved10 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %reserved10, align 4
  %is_atomic13 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call5, i32 0, i32 2
  %4 = ptrtoint ptr %is_atomic13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool1, ptr %is_atomic13, align 1
  %size15 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call5, i32 0, i32 3
  %5 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %size15, align 4
  %align16 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call5, i32 0, i32 4
  %6 = ptrtoint ptr %align16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %align, ptr %align16, align 4
  %base_addr17 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call5, i32 0, i32 5
  %7 = ptrtoint ptr %base_addr17 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %base_addr, ptr %base_addr17, align 4
  %off18 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call5, i32 0, i32 6
  %8 = ptrtoint ptr %off18 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %off, ptr %off18, align 4
  %ptr19 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call5, i32 0, i32 7
  %9 = ptrtoint ptr %ptr19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ptr, ptr %ptr19, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_percpu_alloc_percpu(ptr noundef %__data, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  %frombool = zext i1 %reserved to i8
  %frombool1 = zext i1 %is_atomic to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #22
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #22
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !388
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  br i1 %tobool.i.not, label %land.lhs.true10, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true10:                                  ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %entry.if.end_crit_edge
  %call16 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #22
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #22
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #22
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %reserved21 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call16, i32 0, i32 1
  %27 = ptrtoint ptr %reserved21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %reserved21, align 4
  %is_atomic24 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call16, i32 0, i32 2
  %28 = ptrtoint ptr %is_atomic24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool1, ptr %is_atomic24, align 1
  %size26 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call16, i32 0, i32 3
  %29 = ptrtoint ptr %size26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %size, ptr %size26, align 4
  %align27 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call16, i32 0, i32 4
  %30 = ptrtoint ptr %align27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %align, ptr %align27, align 4
  %base_addr28 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call16, i32 0, i32 5
  %31 = ptrtoint ptr %base_addr28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %base_addr, ptr %base_addr28, align 4
  %off29 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call16, i32 0, i32 6
  %32 = ptrtoint ptr %off29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %off, ptr %off29, align 4
  %ptr30 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %call16, i32 0, i32 7
  %33 = ptrtoint ptr %ptr30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %ptr, ptr %ptr30, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call16, i32 noundef 36, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_free_percpu(ptr noundef %__data, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #22
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !386

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !387

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #22
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #22
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %base_addr6 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %base_addr6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base_addr, ptr %base_addr6, align 4
  %off7 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %call3, i32 0, i32 2
  %4 = ptrtoint ptr %off7 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %off, ptr %off7, align 4
  %ptr8 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %call3, i32 0, i32 3
  %5 = ptrtoint ptr %ptr8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %ptr, ptr %ptr8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_percpu_free_percpu(ptr noundef %__data, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #22
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #22
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !388
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #22
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #22
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #22
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %base_addr17 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %base_addr17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %base_addr, ptr %base_addr17, align 4
  %off18 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %call13, i32 0, i32 2
  %28 = ptrtoint ptr %off18 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %off, ptr %off18, align 4
  %ptr19 = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %call13, i32 0, i32 3
  %29 = ptrtoint ptr %ptr19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %ptr, ptr %ptr19, align 4
  %30 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %rctx, align 4
  %32 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %31, ptr noundef %__data, i64 noundef 1, ptr noundef %33, ptr noundef %11, ptr noundef null) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_alloc_percpu_fail(ptr noundef %__data, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #24
  %frombool = zext i1 %reserved to i8
  %frombool1 = zext i1 %is_atomic to i8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #22
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !386

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !387

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #22
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call5 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #22
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %reserved10 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %call5, i32 0, i32 1
  %3 = ptrtoint ptr %reserved10 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %frombool, ptr %reserved10, align 4
  %is_atomic13 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %call5, i32 0, i32 2
  %4 = ptrtoint ptr %is_atomic13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool1, ptr %is_atomic13, align 1
  %size15 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %call5, i32 0, i32 3
  %5 = ptrtoint ptr %size15 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %size, ptr %size15, align 4
  %align16 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %call5, i32 0, i32 4
  %6 = ptrtoint ptr %align16 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %align, ptr %align16, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_percpu_alloc_percpu_fail(ptr noundef %__data, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  %frombool = zext i1 %reserved to i8
  %frombool1 = zext i1 %is_atomic to i8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #22
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #22
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !388
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  br i1 %tobool.i.not, label %land.lhs.true10, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true10:                                  ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true10.cleanup_crit_edge, label %land.lhs.true10.if.end_crit_edge

land.lhs.true10.if.end_crit_edge:                 ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true10.if.end_crit_edge, %entry.if.end_crit_edge
  %call16 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #22
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.end.cleanup_crit_edge, label %if.end19

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #22
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #22
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %reserved21 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %call16, i32 0, i32 1
  %27 = ptrtoint ptr %reserved21 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %frombool, ptr %reserved21, align 4
  %is_atomic24 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %call16, i32 0, i32 2
  %28 = ptrtoint ptr %is_atomic24 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool1, ptr %is_atomic24, align 1
  %size26 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %call16, i32 0, i32 3
  %29 = ptrtoint ptr %size26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %size, ptr %size26, align 4
  %align27 = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %call16, i32 0, i32 4
  %30 = ptrtoint ptr %align27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %align, ptr %align27, align 4
  %31 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rctx, align 4
  %33 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call16, i32 noundef 20, i32 noundef %32, ptr noundef %__data, i64 noundef 1, ptr noundef %34, ptr noundef %11, ptr noundef null) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.end.cleanup_crit_edge, %land.lhs.true10.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_create_chunk(ptr noundef %__data, ptr noundef %base_addr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #22
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !386

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !387

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #22
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #22
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %base_addr6 = getelementptr inbounds %struct.trace_event_raw_percpu_create_chunk, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %base_addr6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base_addr, ptr %base_addr6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_percpu_create_chunk(ptr noundef %__data, ptr noundef %base_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #22
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #22
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !388
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #22
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #22
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #22
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %base_addr17 = getelementptr inbounds %struct.trace_event_raw_percpu_create_chunk, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %base_addr17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %base_addr, ptr %base_addr17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_percpu_destroy_chunk(ptr noundef %__data, ptr noundef %base_addr) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #22
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !386

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !387

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #22
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 12) #22
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %base_addr6 = getelementptr inbounds %struct.trace_event_raw_percpu_destroy_chunk, ptr %call3, i32 0, i32 1
  %3 = ptrtoint ptr %base_addr6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %base_addr, ptr %base_addr6, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_percpu_destroy_chunk(ptr noundef %__data, ptr noundef %base_addr) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #22
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !388
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #22
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !388
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 12, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #22
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #22
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #22
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !376) #22
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %base_addr17 = getelementptr inbounds %struct.trace_event_raw_percpu_destroy_chunk, ptr %call13, i32 0, i32 1
  %27 = ptrtoint ptr %base_addr17 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %base_addr, ptr %base_addr17, align 4
  %28 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %rctx, align 4
  %30 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 12, i32 noundef %29, ptr noundef %__data, i64 noundef 1, ptr noundef %31, ptr noundef %11, ptr noundef null) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_percpu_alloc_percpu(ptr noundef %__data, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %conv = zext i1 %reserved to i64
  %conv8 = zext i1 %is_atomic to i64
  %conv12 = zext i32 %size to i64
  %conv16 = zext i32 %align to i64
  %0 = ptrtoint ptr %base_addr to i32
  %conv20 = zext i32 %0 to i64
  %conv24 = zext i32 %off to i64
  %1 = ptrtoint ptr %ptr to i32
  %conv28 = zext i32 %1 to i64
  tail call void @bpf_trace_run7(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16, i64 noundef %conv20, i64 noundef %conv24, i64 noundef %conv28) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_percpu_free_percpu(ptr noundef %__data, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %0 = ptrtoint ptr %base_addr to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %off to i64
  %1 = ptrtoint ptr %ptr to i32
  %conv8 = zext i32 %1 to i64
  tail call void @bpf_trace_run3(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_percpu_alloc_percpu_fail(ptr noundef %__data, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %conv = zext i1 %reserved to i64
  %conv8 = zext i1 %is_atomic to i64
  %conv12 = zext i32 %size to i64
  %conv16 = zext i32 %align to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv8, i64 noundef %conv12, i64 noundef %conv16) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_percpu_create_chunk(ptr noundef %__data, ptr noundef %base_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %0 = ptrtoint ptr %base_addr to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_percpu_destroy_chunk(ptr noundef %__data, ptr noundef %base_addr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %0 = ptrtoint ptr %base_addr to i32
  %conv = zext i32 %0 to i64
  tail call void @bpf_trace_run1(ptr noundef %__data, i64 noundef %conv) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__alloc_percpu_gfp(i32 noundef %size, i32 noundef %align, i32 noundef %gfp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pcpu_alloc(i32 noundef %size, i32 noundef %align, i1 noundef zeroext false, i32 noundef %gfp)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_alloc(i32 noundef %size, i32 noundef %align, i1 noundef zeroext %reserved, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task.i, align 8
  %flags1.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %flags1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flags1.i, align 4
  %and.i = and i32 %5, 269221888
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.current_gfp_context.exit_crit_edge, label %if.then.i, !prof !386

entry.current_gfp_context.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %current_gfp_context.exit

if.then.i:                                        ; preds = %entry
  %and4.i = and i32 %5, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %and7.i = and i32 %gfp, -193
  br label %if.end12.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  %and8.i = and i32 %5, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %tobool9.not.i = icmp eq i32 %and8.i, 0
  %and11.i = and i32 %gfp, -129
  %spec.select.i = select i1 %tobool9.not.i, i32 %gfp, i32 %and11.i
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then6.i
  %flags.addr.0.i = phi i32 [ %and7.i, %if.then6.i ], [ %spec.select.i, %if.else.i ]
  %and13.i = and i32 %5, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool14.not.i = icmp eq i32 %and13.i, 0
  %and16.i = and i32 %flags.addr.0.i, -9
  %spec.select25.i = select i1 %tobool14.not.i, i32 %flags.addr.0.i, i32 %and16.i
  br label %current_gfp_context.exit

current_gfp_context.exit:                         ; preds = %if.end12.i, %entry.current_gfp_context.exit_crit_edge
  %flags.addr.1.i = phi i32 [ %gfp, %entry.current_gfp_context.exit_crit_edge ], [ %spec.select25.i, %if.end12.i ]
  %and = and i32 %flags.addr.1.i, 76992
  %and1 = and i32 %flags.addr.1.i, 3264
  call void @__sanitizer_cov_trace_const_cmp4(i32 3264, i32 %and1)
  %cmp = icmp ne i32 %and1, 3264
  %and3 = and i32 %flags.addr.1.i, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %align)
  %cmp5 = icmp ult i32 %align, 4
  br i1 %cmp5, label %if.then, label %current_gfp_context.exit.if.end_crit_edge, !prof !387

current_gfp_context.exit.if.end_crit_edge:        ; preds = %current_gfp_context.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %current_gfp_context.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.end:                                           ; preds = %if.then, %current_gfp_context.exit.if.end_crit_edge
  %align.addr.0 = phi i32 [ 4, %if.then ], [ %align, %current_gfp_context.exit.if.end_crit_edge ]
  %add = add i32 %size, 3
  %and9 = and i32 %add, -4
  %shr = lshr i32 %add, 2
  %shr10 = lshr i32 %align.addr.0, 2
  %6 = add i32 %and9, -32769
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32768, i32 %6)
  %7 = icmp ult i32 %6, -32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %align.addr.0)
  %cmp14 = icmp ugt i32 %align.addr.0, 4096
  %or.cond425 = or i1 %7, %cmp14
  %8 = tail call i32 @llvm.ctpop.i32(i32 %align.addr.0) #22, !range !389
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp1.i = icmp ugt i32 %8, 1
  %or.cond = or i1 %or.cond425, %cmp1.i
  br i1 %or.cond, label %if.then24, label %if.end51, !prof !390

if.then24:                                        ; preds = %if.end
  br i1 %tobool.not, label %do.end, label %if.then24.cleanup302_crit_edge, !prof !387

if.then24.cleanup302_crit_edge:                   ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup302

do.end:                                           ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1759, i32 noundef 9, ptr noundef nonnull @.str.115, i32 noundef %and9, i32 noundef %align.addr.0) #22
  br label %cleanup302

if.end51:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09b ${1:l}\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (i8, ptr @memcg_kmem_enabled_key, i32 1), ptr blockaddress(@pcpu_alloc, %if.end62)) #22
          to label %memcg_kmem_enabled.exit.i [label %if.end62], !srcloc !391

memcg_kmem_enabled.exit.i:                        ; preds = %if.end51
  %and.i426 = and i32 %flags.addr.1.i, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i426)
  %tobool.not.i427 = icmp eq i32 %and.i426, 0
  br i1 %tobool.not.i427, label %memcg_kmem_enabled.exit.i.if.end62_crit_edge, label %if.end.i

memcg_kmem_enabled.exit.i.if.end62_crit_edge:     ; preds = %memcg_kmem_enabled.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end62

if.end.i:                                         ; preds = %memcg_kmem_enabled.exit.i
  %call1.i = tail call ptr @get_obj_cgroup_from_current() #22
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.end.i.if.end62_crit_edge, label %if.end.i.i.i.i

if.end.i.if.end62_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end62

if.end.i.i.i.i:                                   ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %9) #22
  %mul1.i.i = mul i32 %call4.i.i.i.i, %and9
  %add.i.i = add i32 %mul1.i.i, %and9
  %call6.i = tail call i32 @obj_cgroup_charge(ptr noundef nonnull %call1.i, i32 noundef %flags.addr.1.i, i32 noundef %add.i.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %if.end.i.i.i.i.if.end62_crit_edge, label %pcpu_memcg_pre_alloc_hook.exit.thread568, !prof !392

if.end.i.i.i.i.if.end62_crit_edge:                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end62

pcpu_memcg_pre_alloc_hook.exit.thread568:         ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @obj_cgroup_put(ptr noundef nonnull %call1.i) #22
  br label %cleanup302

if.end62:                                         ; preds = %if.end.i.i.i.i.if.end62_crit_edge, %if.end.i.if.end62_crit_edge, %memcg_kmem_enabled.exit.i.if.end62_crit_edge, %if.end51
  %objcg.0566 = phi ptr [ null, %if.end51 ], [ %call1.i, %if.end.i.i.i.i.if.end62_crit_edge ], [ null, %if.end.i.if.end62_crit_edge ], [ null, %memcg_kmem_enabled.exit.i.if.end62_crit_edge ]
  br i1 %cmp, label %if.end62.do.body75_crit_edge, label %if.then64

if.end62.do.body75_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body75

if.then64:                                        ; preds = %if.end62
  %and65 = and i32 %flags.addr.1.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.else, label %if.then67

if.then67:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @mutex_lock_nested(ptr noundef nonnull @pcpu_alloc_mutex, i32 noundef 0) #22
  br label %do.body75

if.else:                                          ; preds = %if.then64
  %call68 = tail call i32 @mutex_lock_killable_nested(ptr noundef nonnull @pcpu_alloc_mutex, i32 noundef 0) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.else.do.body75_crit_edge, label %if.then70

if.else.do.body75_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body75

if.then70:                                        ; preds = %if.else
  %tobool.not.i428 = icmp eq ptr %objcg.0566, null
  br i1 %tobool.not.i428, label %if.then70.cleanup302_crit_edge, label %if.end.i.i.i128.i

if.then70.cleanup302_crit_edge:                   ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup302

if.end.i.i.i128.i:                                ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i127.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %10) #22
  %mul1.i131.i = mul i32 %call4.i.i.i127.i, %and9
  %add.i132.i = add i32 %mul1.i131.i, %and9
  tail call void @obj_cgroup_uncharge(ptr noundef nonnull %objcg.0566, i32 noundef %add.i132.i) #22
  tail call fastcc void @obj_cgroup_put(ptr noundef nonnull %objcg.0566) #22
  br label %cleanup302

do.body75:                                        ; preds = %if.else.do.body75_crit_edge, %if.then67, %if.end62.do.body75_crit_edge
  %call79 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  br i1 %reserved, label %land.lhs.true, label %do.body75.if.end99_crit_edge

do.body75.if.end99_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end99

land.lhs.true:                                    ; preds = %do.body75
  %11 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %tobool86.not = icmp eq ptr %11, null
  br i1 %tobool86.not, label %land.lhs.true.if.end99_crit_edge, label %if.then87

land.lhs.true.if.end99_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end99

if.then87:                                        ; preds = %land.lhs.true
  %call89 = tail call fastcc i32 @pcpu_find_block_fit(ptr noundef nonnull %11, i32 noundef %shr, i32 noundef %shr10, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %cmp90 = icmp slt i32 %call89, 0
  br i1 %cmp90, label %if.then87.fail_unlock_crit_edge, label %if.end93

if.then87.fail_unlock_crit_edge:                  ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail_unlock

if.end93:                                         ; preds = %if.then87
  %call94 = tail call fastcc i32 @pcpu_alloc_area(ptr noundef nonnull %11, i32 noundef %shr, i32 noundef %shr10, i32 noundef %call89)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call94)
  %cmp95 = icmp sgt i32 %call94, -1
  br i1 %cmp95, label %if.end93.area_found_crit_edge, label %if.end93.fail_unlock_crit_edge

if.end93.fail_unlock_crit_edge:                   ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail_unlock

if.end93.area_found_crit_edge:                    ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #24
  br label %area_found

if.end99:                                         ; preds = %land.lhs.true.if.end99_crit_edge, %do.body75.if.end99_crit_edge
  %12 = tail call i32 @llvm.ctlz.i32(i32 %and9, i1 true) #22, !range !389
  %sub.i.op.i.i = sub nsw i32 29, %12
  %13 = tail call i32 @llvm.smax.i32(i32 %sub.i.op.i.i, i32 1) #22
  br label %restart

restart:                                          ; preds = %restart.backedge, %if.end99
  %flags.0 = phi i32 [ %call79, %if.end99 ], [ %flags.0.be, %restart.backedge ]
  %14 = load i32, ptr @pcpu_unit_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %and9)
  %cmp.i = icmp eq i32 %14, %and9
  br i1 %cmp.i, label %if.then.i432, label %restart.pcpu_size_to_slot.exit_crit_edge

restart.pcpu_size_to_slot.exit_crit_edge:         ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_size_to_slot.exit

if.then.i432:                                     ; preds = %restart
  call void @__sanitizer_cov_trace_pc() #24
  %15 = load i32, ptr @pcpu_free_slot, align 4
  br label %pcpu_size_to_slot.exit

pcpu_size_to_slot.exit:                           ; preds = %if.then.i432, %restart.pcpu_size_to_slot.exit_crit_edge
  %retval.0.i434 = phi i32 [ %15, %if.then.i432 ], [ %13, %restart.pcpu_size_to_slot.exit_crit_edge ]
  %16 = load i32, ptr @pcpu_free_slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i434, i32 %16)
  %cmp101.not590 = icmp sgt i32 %retval.0.i434, %16
  br i1 %cmp101.not590, label %pcpu_size_to_slot.exit.for.end138_crit_edge, label %pcpu_size_to_slot.exit.for.body_crit_edge

pcpu_size_to_slot.exit.for.body_crit_edge:        ; preds = %pcpu_size_to_slot.exit
  br label %for.body

pcpu_size_to_slot.exit.for.end138_crit_edge:      ; preds = %pcpu_size_to_slot.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end138

for.body:                                         ; preds = %for.inc137.for.body_crit_edge, %pcpu_size_to_slot.exit.for.body_crit_edge
  %slot.0591 = phi i32 [ %inc, %for.inc137.for.body_crit_edge ], [ %retval.0.i434, %pcpu_size_to_slot.exit.for.body_crit_edge ]
  %17 = load ptr, ptr @pcpu_chunk_lists, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %17, i32 %slot.0591
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %cmp112.not585 = icmp eq ptr %19, %arrayidx
  br i1 %cmp112.not585, label %for.body.for.inc137_crit_edge, label %for.body116.lr.ph

for.body.for.inc137_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc137

for.body116.lr.ph:                                ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %slot.0591)
  %cmp122 = icmp slt i32 %slot.0591, 3
  br label %for.body116

for.body116:                                      ; preds = %for.inc.for.body116_crit_edge, %for.body116.lr.ph
  %.pn.in586 = phi ptr [ %19, %for.body116.lr.ph ], [ %.pn589, %for.inc.for.body116_crit_edge ]
  %chunk.0588 = getelementptr i8, ptr %.pn.in586, i32 -8
  %20 = ptrtoint ptr %.pn.in586 to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pn589 = load ptr, ptr %.pn.in586, align 4
  %call118 = tail call fastcc i32 @pcpu_find_block_fit(ptr noundef %chunk.0588, i32 noundef %shr, i32 noundef %shr10, i1 noundef zeroext %cmp)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118)
  %cmp119 = icmp slt i32 %call118, 0
  br i1 %cmp119, label %if.then121, label %if.end126

if.then121:                                       ; preds = %for.body116
  br i1 %cmp122, label %if.then124, label %if.then121.for.inc_crit_edge

if.then121.for.inc_crit_edge:                     ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then124:                                       ; preds = %if.then121
  %21 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %cmp.not.i.i = icmp eq ptr %21, %chunk.0588
  br i1 %cmp.not.i.i, label %if.then124.for.inc_crit_edge, label %if.then.i.i

if.then124.for.inc_crit_edge:                     ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then.i.i:                                      ; preds = %if.then124
  %22 = load ptr, ptr @pcpu_chunk_lists, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in586) #22
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i435, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i435:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i.i.i = getelementptr i8, ptr %.pn.in586, i32 4
  %23 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i.i, align 4
  %25 = ptrtoint ptr %.pn.in586 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %.pn.in586, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i435, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %29 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %22, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in586, ptr noundef %22, ptr noundef %30) #22
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.for.inc_crit_edge

__list_del_entry.exit.i.i.i.for.inc_crit_edge:    ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev1.i.i2.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %.pn.in586, ptr %prev1.i.i2.i.i.i, align 4
  %32 = ptrtoint ptr %.pn.in586 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %.pn.in586, align 4
  %prev3.i.i.i14.i.i = getelementptr i8, ptr %.pn.in586, i32 4
  %33 = ptrtoint ptr %prev3.i.i.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %22, ptr %prev3.i.i.i14.i.i, align 4
  %34 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %.pn.in586, ptr %22, align 4
  br label %for.inc

if.end126:                                        ; preds = %for.body116
  %call127 = tail call fastcc i32 @pcpu_alloc_area(ptr noundef %chunk.0588, i32 noundef %shr, i32 noundef %shr10, i32 noundef %call118)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call127)
  %cmp128 = icmp sgt i32 %call127, -1
  br i1 %cmp128, label %if.then130, label %if.end126.for.inc_crit_edge

if.end126.for.inc_crit_edge:                      ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.then130:                                       ; preds = %if.end126
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %35 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i436 = icmp eq i32 %35, 0
  br i1 %tobool.not.i436, label %if.then130.if.end.i437_crit_edge, label %land.rhs.i

if.then130.if.end.i437_crit_edge:                 ; preds = %if.then130
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i437

land.rhs.i:                                       ; preds = %if.then130
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i437_crit_edge, !prof !387

land.rhs.i.if.end.i437_crit_edge:                 ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i437

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 584, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i437

if.end.i437:                                      ; preds = %do.end.i, %land.rhs.i.if.end.i437_crit_edge, %if.then130.if.end.i437_crit_edge
  %isolated.i = getelementptr i8, ptr %.pn.in586, i32 65
  %36 = ptrtoint ptr %isolated.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %isolated.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool24.not.i = icmp eq i8 %37, 0
  br i1 %tobool24.not.i, label %if.end.i437.area_found_crit_edge, label %if.then25.i

if.end.i437.area_found_crit_edge:                 ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #24
  br label %area_found

if.then25.i:                                      ; preds = %if.end.i437
  call void @__sanitizer_cov_trace_pc() #24
  %38 = ptrtoint ptr %isolated.i to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 0, ptr %isolated.i, align 1
  %nr_empty_pop_pages.i = getelementptr i8, ptr %.pn.in586, i32 88
  %39 = ptrtoint ptr %nr_empty_pop_pages.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_empty_pop_pages.i, align 4
  %41 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %add.i = add i32 %41, %40
  store i32 %add.i, ptr @pcpu_nr_empty_pop_pages, align 4
  tail call fastcc void @pcpu_chunk_relocate(ptr noundef %chunk.0588, i32 noundef -1) #22
  br label %area_found

for.inc:                                          ; preds = %if.end126.for.inc_crit_edge, %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.for.inc_crit_edge, %if.then124.for.inc_crit_edge, %if.then121.for.inc_crit_edge
  %42 = load ptr, ptr @pcpu_chunk_lists, align 4
  %arrayidx111 = getelementptr %struct.list_head, ptr %42, i32 %slot.0591
  %cmp112.not = icmp eq ptr %.pn589, %arrayidx111
  br i1 %cmp112.not, label %for.inc.for.inc137_crit_edge, label %for.inc.for.body116_crit_edge

for.inc.for.body116_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body116

for.inc.for.inc137_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc137

for.inc137:                                       ; preds = %for.inc.for.inc137_crit_edge, %for.body.for.inc137_crit_edge
  %inc = add i32 %slot.0591, 1
  %43 = load i32, ptr @pcpu_free_slot, align 4
  %cmp101.not = icmp sgt i32 %inc, %43
  br i1 %cmp101.not, label %for.inc137.for.end138_crit_edge, label %for.inc137.for.body_crit_edge

for.inc137.for.body_crit_edge:                    ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc137.for.end138_crit_edge:                  ; preds = %for.inc137
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end138

for.end138:                                       ; preds = %for.inc137.for.end138_crit_edge, %pcpu_size_to_slot.exit.for.end138_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %flags.0) #22
  br i1 %cmp, label %if.end297.thread, label %if.end141

if.end297.thread:                                 ; preds = %for.end138
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @trace_percpu_alloc_percpu_fail(i1 noundef zeroext %reserved, i1 noundef zeroext true, i32 noundef %and9, i32 noundef %align.addr.0)
  br label %if.then299

if.end141:                                        ; preds = %for.end138
  %44 = load ptr, ptr @pcpu_chunk_lists, align 4
  %45 = load i32, ptr @pcpu_free_slot, align 4
  %arrayidx142 = getelementptr %struct.list_head, ptr %44, i32 %45
  %46 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %arrayidx142, align 4
  %cmp.i438.not = icmp eq ptr %47, %arrayidx142
  br i1 %cmp.i438.not, label %if.then145, label %do.body165

if.then145:                                       ; preds = %if.end141
  %call146 = tail call fastcc ptr @pcpu_create_chunk(i32 noundef %and)
  %tobool147.not = icmp eq ptr %call146, null
  br i1 %tobool147.not, label %if.then145.fail_crit_edge, label %do.body151

if.then145.fail_crit_edge:                        ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #24
  br label %fail

do.body151:                                       ; preds = %if.then145
  call void @__sanitizer_cov_trace_pc() #24
  %call158 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  tail call fastcc void @pcpu_chunk_relocate(ptr noundef nonnull %call146, i32 noundef -1)
  br label %restart.backedge

do.body165:                                       ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #24
  %call172 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  br label %restart.backedge

restart.backedge:                                 ; preds = %do.body165, %do.body151
  %flags.0.be = phi i32 [ %call158, %do.body151 ], [ %call172, %do.body165 ]
  br label %restart

area_found:                                       ; preds = %if.then25.i, %if.end.i437.area_found_crit_edge, %if.end93.area_found_crit_edge
  %flags.2 = phi i32 [ %call79, %if.end93.area_found_crit_edge ], [ %flags.0, %if.end.i437.area_found_crit_edge ], [ %flags.0, %if.then25.i ]
  %off.0 = phi i32 [ %call94, %if.end93.area_found_crit_edge ], [ %call127, %if.end.i437.area_found_crit_edge ], [ %call127, %if.then25.i ]
  %chunk.1 = phi ptr [ %11, %if.end93.area_found_crit_edge ], [ %chunk.0588, %if.end.i437.area_found_crit_edge ], [ %chunk.0588, %if.then25.i ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %48 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i439 = icmp eq i32 %48, 0
  br i1 %tobool.not.i439, label %area_found.pcpu_stats_area_alloc.exit_crit_edge, label %land.rhs.i442

area_found.pcpu_stats_area_alloc.exit_crit_edge:  ; preds = %area_found
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_stats_area_alloc.exit

land.rhs.i442:                                    ; preds = %area_found
  %call.i.i440 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i440)
  %cmp.not.i441 = icmp eq i32 %call.i.i440, 0
  br i1 %cmp.not.i441, label %do.end.i443, label %land.rhs.i442.pcpu_stats_area_alloc.exit_crit_edge, !prof !387

land.rhs.i442.pcpu_stats_area_alloc.exit_crit_edge: ; preds = %land.rhs.i442
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_stats_area_alloc.exit

do.end.i443:                                      ; preds = %land.rhs.i442
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.130, i32 noundef 173, i32 noundef 9, ptr noundef null) #22
  br label %pcpu_stats_area_alloc.exit

pcpu_stats_area_alloc.exit:                       ; preds = %do.end.i443, %land.rhs.i442.pcpu_stats_area_alloc.exit_crit_edge, %area_found.pcpu_stats_area_alloc.exit_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr @pcpu_stats to i32))
  %49 = load i64, ptr @pcpu_stats, align 8
  %inc.i = add i64 %49, 1
  store i64 %inc.i, ptr @pcpu_stats, align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 2) to i32))
  %50 = load i64, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 2), align 8
  %inc24.i = add i64 %50, 1
  store i64 %inc24.i, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 2), align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 3) to i32))
  %51 = load i64, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 3), align 8
  %52 = tail call i64 @llvm.umax.i64(i64 %51, i64 %inc24.i) #22
  call void @__asan_store8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 3) to i32))
  store i64 %52, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 3), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 6) to i32))
  %53 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 6), align 8
  %54 = tail call i32 @llvm.umin.i32(i32 %53, i32 %and9) #22
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 6) to i32))
  store i32 %54, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 6), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 7) to i32))
  %55 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 7), align 4
  %56 = tail call i32 @llvm.umax.i32(i32 %55, i32 %and9) #22
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 7) to i32))
  store i32 %56, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 7), align 4
  %57 = ptrtoint ptr %chunk.1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %chunk.1, align 4
  %inc39.i = add i32 %58, 1
  store i32 %inc39.i, ptr %chunk.1, align 4
  %max_alloc_size.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk.1, i32 0, i32 1
  %59 = ptrtoint ptr %max_alloc_size.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %max_alloc_size.i, align 4
  %61 = tail call i32 @llvm.umax.i32(i32 %60, i32 %and9) #22
  %62 = ptrtoint ptr %max_alloc_size.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %max_alloc_size.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %flags.2) #22
  br i1 %cmp, label %pcpu_stats_area_alloc.exit.if.end254_crit_edge, label %if.then179

pcpu_stats_area_alloc.exit.if.end254_crit_edge:   ; preds = %pcpu_stats_area_alloc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end254

if.then179:                                       ; preds = %pcpu_stats_area_alloc.exit
  %shr180577 = lshr i32 %off.0, 12
  %add181 = add i32 %and9, 4095
  %sub = add i32 %add181, %off.0
  %shr183 = lshr i32 %sub, 12
  %populated = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk.1, i32 0, i32 18
  %call184 = tail call i32 @_find_next_zero_bit_be(ptr noundef %populated, i32 noundef %shr183, i32 noundef %shr180577) #22
  %add187 = add i32 %call184, 1
  %call188 = tail call i32 @_find_next_bit_be(ptr noundef %populated, i32 noundef %shr183, i32 noundef %add187) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call184, i32 %shr183)
  %cmp190593 = icmp ult i32 %call184, %shr183
  br i1 %cmp190593, label %for.body192.lr.ph, label %if.then179.cleanup.thread_crit_edge

if.then179.cleanup.thread_crit_edge:              ; preds = %if.then179
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.thread

for.body192.lr.ph:                                ; preds = %if.then179
  %immutable = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk.1, i32 0, i32 10
  br label %for.body192

for.body192:                                      ; preds = %if.end241.for.body192_crit_edge, %for.body192.lr.ph
  %re.0595 = phi i32 [ %call188, %for.body192.lr.ph ], [ %call250, %if.end241.for.body192_crit_edge ]
  %rs.0594 = phi i32 [ %call184, %for.body192.lr.ph ], [ %call246, %if.end241.for.body192_crit_edge ]
  %63 = ptrtoint ptr %immutable to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %immutable, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool194.not = icmp eq i8 %64, 0
  br i1 %tobool194.not, label %for.body192.if.end216_crit_edge, label %do.end210, !prof !386

for.body192.if.end216_crit_edge:                  ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end216

do.end210:                                        ; preds = %for.body192
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1860, i32 noundef 9, ptr noundef null) #22
  br label %if.end216

if.end216:                                        ; preds = %do.end210, %for.body192.if.end216_crit_edge
  %call224 = tail call fastcc i32 @pcpu_populate_chunk(ptr noundef %chunk.1, i32 noundef %rs.0594, i32 noundef %re.0595, i32 noundef %and)
  %call233 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool238.not = icmp eq i32 %call224, 0
  br i1 %tobool238.not, label %if.end241, label %cleanup

if.end241:                                        ; preds = %if.end216
  tail call fastcc void @pcpu_chunk_populated(ptr noundef %chunk.1, i32 noundef %rs.0594, i32 noundef %re.0595)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %call233) #22
  %add245 = add i32 %re.0595, 1
  %call246 = tail call i32 @_find_next_zero_bit_be(ptr noundef %populated, i32 noundef %shr183, i32 noundef %add245) #22
  %add249 = add i32 %call246, 1
  %call250 = tail call i32 @_find_next_bit_be(ptr noundef %populated, i32 noundef %shr183, i32 noundef %add249) #22
  %cmp190 = icmp ult i32 %call246, %shr183
  br i1 %cmp190, label %if.end241.for.body192_crit_edge, label %if.end241.cleanup.thread_crit_edge

if.end241.cleanup.thread_crit_edge:               ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup.thread

if.end241.for.body192_crit_edge:                  ; preds = %if.end241
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body192

cleanup.thread:                                   ; preds = %if.end241.cleanup.thread_crit_edge, %if.then179.cleanup.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @pcpu_alloc_mutex) #22
  br label %if.end254

cleanup:                                          ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #24
  %call240 = tail call fastcc i32 @pcpu_free_area(ptr noundef %chunk.1, i32 noundef %off.0)
  br label %fail_unlock

if.end254:                                        ; preds = %cleanup.thread, %pcpu_stats_area_alloc.exit.if.end254_crit_edge
  %65 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp255 = icmp slt i32 %65, 2
  br i1 %cmp255, label %if.then257, label %if.end254.if.end258_crit_edge

if.end254.if.end258_crit_edge:                    ; preds = %if.end254
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end258

if.then257:                                       ; preds = %if.end254
  %.b1.i = load i1, ptr @pcpu_async_enabled, align 1
  br i1 %.b1.i, label %if.then.i445, label %if.then257.if.end258_crit_edge

if.then257.if.end258_crit_edge:                   ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end258

if.then.i445:                                     ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %66 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %66, ptr noundef nonnull @pcpu_balance_work) #22
  br label %if.end258

if.end258:                                        ; preds = %if.then.i445, %if.then257.if.end258_crit_edge, %if.end254.if.end258_crit_edge
  %call260596 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %67 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call260596, i32 %67)
  %cmp261597 = icmp ult i32 %call260596, %67
  br i1 %cmp261597, label %for.body263.lr.ph, label %if.end258.for.end266_crit_edge

if.end258.for.end266_crit_edge:                   ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end266

for.body263.lr.ph:                                ; preds = %if.end258
  %base_addr.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk.1, i32 0, i32 5
  br label %for.body263

for.body263:                                      ; preds = %for.body263.for.body263_crit_edge, %for.body263.lr.ph
  %call260598 = phi i32 [ %call260596, %for.body263.lr.ph ], [ %call260, %for.body263.for.body263_crit_edge ]
  %68 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %base_addr.i, align 4
  %70 = ptrtoint ptr %69 to i32
  %71 = load ptr, ptr @pcpu_unit_offsets, align 4
  %arrayidx.i.i = getelementptr i32, ptr %71, i32 %call260598
  %72 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx.i.i, align 4
  %add.i447 = add i32 %73, %70
  %74 = inttoptr i32 %add.i447 to ptr
  %add.ptr265 = getelementptr i8, ptr %74, i32 %off.0
  %75 = call ptr @memset(ptr %add.ptr265, i32 0, i32 %and9)
  %call260 = tail call i32 @cpumask_next(i32 noundef %call260598, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %76 = load i32, ptr @nr_cpu_ids, align 4
  %cmp261 = icmp ult i32 %call260, %76
  br i1 %cmp261, label %for.body263.for.body263_crit_edge, label %for.body263.for.end266_crit_edge

for.body263.for.end266_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end266

for.body263.for.body263_crit_edge:                ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body263

for.end266:                                       ; preds = %for.body263.for.end266_crit_edge, %if.end258.for.end266_crit_edge
  %base_addr = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk.1, i32 0, i32 5
  %77 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base_addr, align 4
  %add.ptr267 = getelementptr i8, ptr %78, i32 %off.0
  %79 = ptrtoint ptr %add.ptr267 to i32
  %80 = load ptr, ptr @pcpu_base_addr, align 4
  %81 = ptrtoint ptr %80 to i32
  %sub268 = sub i32 ptrtoint (ptr @__per_cpu_start to i32), %81
  %add269 = add i32 %sub268, %79
  %82 = inttoptr i32 %add269 to ptr
  tail call void @kmemleak_alloc_percpu(ptr noundef %82, i32 noundef %and9, i32 noundef %flags.addr.1.i) #22
  %83 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base_addr, align 4
  tail call fastcc void @trace_percpu_alloc_percpu(i1 noundef zeroext %reserved, i1 noundef zeroext %cmp, i32 noundef %and9, i32 noundef %align.addr.0, ptr noundef %84, i32 noundef %off.0, ptr noundef %82)
  tail call fastcc void @pcpu_memcg_post_alloc_hook(ptr noundef %objcg.0566, ptr noundef %chunk.1, i32 noundef %off.0, i32 noundef %and9)
  br label %cleanup302

fail_unlock:                                      ; preds = %cleanup, %if.end93.fail_unlock_crit_edge, %if.then87.fail_unlock_crit_edge
  %flags.5 = phi i32 [ %call233, %cleanup ], [ %call79, %if.then87.fail_unlock_crit_edge ], [ %call79, %if.end93.fail_unlock_crit_edge ]
  %err.1 = phi ptr [ @.str.119, %cleanup ], [ @.str.116, %if.then87.fail_unlock_crit_edge ], [ @.str.116, %if.end93.fail_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %flags.5) #22
  br label %fail

fail:                                             ; preds = %fail_unlock, %if.then145.fail_crit_edge
  %err.2 = phi ptr [ %err.1, %fail_unlock ], [ @.str.118, %if.then145.fail_crit_edge ]
  tail call fastcc void @trace_percpu_alloc_percpu_fail(i1 noundef zeroext %reserved, i1 noundef zeroext %cmp, i32 noundef %and9, i32 noundef %align.addr.0)
  %tobool.not.not = xor i1 %tobool.not, true
  %brmerge = select i1 %cmp, i1 true, i1 %tobool.not.not
  br i1 %brmerge, label %fail.if.end297_crit_edge, label %land.lhs.true279

fail.if.end297_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end297

land.lhs.true279:                                 ; preds = %fail
  %85 = load i32, ptr @pcpu_alloc.warn_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool280.not = icmp eq i32 %85, 0
  br i1 %tobool280.not, label %land.lhs.true279.if.end297_crit_edge, label %do.end284

land.lhs.true279.if.end297_crit_edge:             ; preds = %land.lhs.true279
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end297

do.end284:                                        ; preds = %land.lhs.true279
  %call288 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.120, i32 noundef %and9, i32 noundef %align.addr.0, i32 noundef 0, ptr noundef nonnull %err.2) #26
  tail call void @dump_stack() #26
  %86 = load i32, ptr @pcpu_alloc.warn_limit, align 4
  %dec = add i32 %86, -1
  store i32 %dec, ptr @pcpu_alloc.warn_limit, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool289.not = icmp eq i32 %dec, 0
  br i1 %tobool289.not, label %do.end293, label %do.end284.if.end297_crit_edge

do.end284.if.end297_crit_edge:                    ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end297

do.end293:                                        ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #24
  %call295 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.123) #26
  br label %if.end297

if.end297:                                        ; preds = %do.end293, %do.end284.if.end297_crit_edge, %land.lhs.true279.if.end297_crit_edge, %fail.if.end297_crit_edge
  br i1 %cmp, label %if.end297.if.then299_crit_edge, label %if.else300

if.end297.if.then299_crit_edge:                   ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then299

if.then299:                                       ; preds = %if.end297.if.then299_crit_edge, %if.end297.thread
  store i1 true, ptr @pcpu_atomic_alloc_failed, align 1
  %.b1.i448 = load i1, ptr @pcpu_async_enabled, align 1
  br i1 %.b1.i448, label %if.then.i450, label %if.then299.if.end301_crit_edge

if.then299.if.end301_crit_edge:                   ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end301

if.then.i450:                                     ; preds = %if.then299
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %87 = load ptr, ptr @system_wq, align 4
  %call.i.i.i449 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %87, ptr noundef nonnull @pcpu_balance_work) #22
  br label %if.end301

if.else300:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @mutex_unlock(ptr noundef nonnull @pcpu_alloc_mutex) #22
  br label %if.end301

if.end301:                                        ; preds = %if.else300, %if.then.i450, %if.then299.if.end301_crit_edge
  %tobool.not.i453 = icmp eq ptr %objcg.0566, null
  br i1 %tobool.not.i453, label %if.end301.cleanup302_crit_edge, label %if.end.i.i.i128.i555

if.end301.cleanup302_crit_edge:                   ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup302

if.end.i.i.i128.i555:                             ; preds = %if.end301
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %88 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i127.i554 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %88) #22
  %mul1.i131.i557 = mul i32 %call4.i.i.i127.i554, %and9
  %add.i132.i558 = add i32 %mul1.i131.i557, %and9
  tail call void @obj_cgroup_uncharge(ptr noundef nonnull %objcg.0566, i32 noundef %add.i132.i558) #22
  tail call fastcc void @obj_cgroup_put(ptr noundef nonnull %objcg.0566) #22
  br label %cleanup302

cleanup302:                                       ; preds = %if.end.i.i.i128.i555, %if.end301.cleanup302_crit_edge, %for.end266, %if.end.i.i.i128.i, %if.then70.cleanup302_crit_edge, %pcpu_memcg_pre_alloc_hook.exit.thread568, %do.end, %if.then24.cleanup302_crit_edge
  %retval.0 = phi ptr [ %82, %for.end266 ], [ null, %do.end ], [ null, %if.then24.cleanup302_crit_edge ], [ null, %pcpu_memcg_pre_alloc_hook.exit.thread568 ], [ null, %if.then70.cleanup302_crit_edge ], [ null, %if.end.i.i.i128.i ], [ null, %if.end301.cleanup302_crit_edge ], [ null, %if.end.i.i.i128.i555 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__alloc_percpu(i32 noundef %size, i32 noundef %align) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pcpu_alloc(i32 noundef %size, i32 noundef %align, i1 noundef zeroext false, i32 noundef 3264)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync)
define dso_local noalias ptr @__alloc_reserved_percpu(i32 noundef %size, i32 noundef %align) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pcpu_alloc(i32 noundef %size, i32 noundef %align, i1 noundef zeroext true, i32 noundef 3264)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_percpu(ptr noundef %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ptr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @kmemleak_free_percpu(ptr noundef nonnull %ptr) #22
  %0 = ptrtoint ptr %ptr to i32
  %1 = load ptr, ptr @pcpu_base_addr, align 4
  %2 = ptrtoint ptr %1 to i32
  %add = sub i32 %0, ptrtoint (ptr @__per_cpu_start to i32)
  %sub = add i32 %add, %2
  %3 = inttoptr i32 %sub to ptr
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  %4 = load ptr, ptr @pcpu_first_chunk, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.end.if.end.i_crit_edge, label %if.end.i.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

if.end.i.i:                                       ; preds = %if.end
  %base_addr.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i.i, align 4
  %start_offset.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %4, i32 0, i32 12
  %7 = ptrtoint ptr %start_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %start_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 %8
  %cmp.not.i.i = icmp ugt ptr %add.ptr.i.i, %3
  br i1 %cmp.not.i.i, label %if.end.i.i.if.end.i_crit_edge, label %pcpu_addr_in_chunk.exit.i

if.end.i.i.if.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

pcpu_addr_in_chunk.exit.i:                        ; preds = %if.end.i.i
  %nr_pages.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %4, i32 0, i32 15
  %9 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_pages.i.i, align 4
  %mul.i.i = shl i32 %10, 12
  %add.ptr2.i.i = getelementptr i8, ptr %6, i32 %mul.i.i
  %end_offset.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %4, i32 0, i32 13
  %11 = ptrtoint ptr %end_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %end_offset.i.i, align 4
  %idx.neg.i.i = sub i32 0, %12
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 %idx.neg.i.i
  %cmp4.i.i = icmp ugt ptr %add.ptr3.i.i, %3
  br i1 %cmp4.i.i, label %pcpu_addr_in_chunk.exit.i.pcpu_chunk_addr_search.exit_crit_edge, label %pcpu_addr_in_chunk.exit.i.if.end.i_crit_edge

pcpu_addr_in_chunk.exit.i.if.end.i_crit_edge:     ; preds = %pcpu_addr_in_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

pcpu_addr_in_chunk.exit.i.pcpu_chunk_addr_search.exit_crit_edge: ; preds = %pcpu_addr_in_chunk.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_chunk_addr_search.exit

if.end.i:                                         ; preds = %pcpu_addr_in_chunk.exit.i.if.end.i_crit_edge, %if.end.i.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %13 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %tobool.not.i10.i = icmp eq ptr %13, null
  br i1 %tobool.not.i10.i, label %if.end.i.if.end3.i_crit_edge, label %if.end.i15.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end3.i

if.end.i15.i:                                     ; preds = %if.end.i
  %base_addr.i11.i = getelementptr inbounds %struct.pcpu_chunk, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %base_addr.i11.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base_addr.i11.i, align 4
  %start_offset.i12.i = getelementptr inbounds %struct.pcpu_chunk, ptr %13, i32 0, i32 12
  %16 = ptrtoint ptr %start_offset.i12.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %start_offset.i12.i, align 4
  %add.ptr.i13.i = getelementptr i8, ptr %15, i32 %17
  %cmp.not.i14.i = icmp ugt ptr %add.ptr.i13.i, %3
  br i1 %cmp.not.i14.i, label %if.end.i15.i.if.end3.i_crit_edge, label %pcpu_addr_in_chunk.exit25.i

if.end.i15.i.if.end3.i_crit_edge:                 ; preds = %if.end.i15.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end3.i

pcpu_addr_in_chunk.exit25.i:                      ; preds = %if.end.i15.i
  %nr_pages.i16.i = getelementptr inbounds %struct.pcpu_chunk, ptr %13, i32 0, i32 15
  %18 = ptrtoint ptr %nr_pages.i16.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_pages.i16.i, align 4
  %mul.i17.i = shl i32 %19, 12
  %add.ptr2.i18.i = getelementptr i8, ptr %15, i32 %mul.i17.i
  %end_offset.i19.i = getelementptr inbounds %struct.pcpu_chunk, ptr %13, i32 0, i32 13
  %20 = ptrtoint ptr %end_offset.i19.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %end_offset.i19.i, align 4
  %idx.neg.i20.i = sub i32 0, %21
  %add.ptr3.i21.i = getelementptr i8, ptr %add.ptr2.i18.i, i32 %idx.neg.i20.i
  %cmp4.i22.i = icmp ugt ptr %add.ptr3.i21.i, %3
  br i1 %cmp4.i22.i, label %pcpu_addr_in_chunk.exit25.i.pcpu_chunk_addr_search.exit_crit_edge, label %pcpu_addr_in_chunk.exit25.i.if.end3.i_crit_edge

pcpu_addr_in_chunk.exit25.i.if.end3.i_crit_edge:  ; preds = %pcpu_addr_in_chunk.exit25.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end3.i

pcpu_addr_in_chunk.exit25.i.pcpu_chunk_addr_search.exit_crit_edge: ; preds = %pcpu_addr_in_chunk.exit25.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_chunk_addr_search.exit

if.end3.i:                                        ; preds = %pcpu_addr_in_chunk.exit25.i.if.end3.i_crit_edge, %if.end.i15.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge
  %22 = load ptr, ptr @pcpu_unit_offsets, align 4
  %23 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr i32, ptr %22, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %28
  %call.i.i = tail call ptr @vmalloc_to_page(ptr noundef %add.ptr.i) #22
  %index.i.i = getelementptr inbounds %struct.page, ptr %call.i.i, i32 0, i32 1, i32 0, i32 2
  %29 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %index.i.i, align 4
  %31 = inttoptr i32 %30 to ptr
  br label %pcpu_chunk_addr_search.exit

pcpu_chunk_addr_search.exit:                      ; preds = %if.end3.i, %pcpu_addr_in_chunk.exit25.i.pcpu_chunk_addr_search.exit_crit_edge, %pcpu_addr_in_chunk.exit.i.pcpu_chunk_addr_search.exit_crit_edge
  %retval.0.i = phi ptr [ %31, %if.end3.i ], [ %4, %pcpu_addr_in_chunk.exit.i.pcpu_chunk_addr_search.exit_crit_edge ], [ %13, %pcpu_addr_in_chunk.exit25.i.pcpu_chunk_addr_search.exit_crit_edge ]
  %base_addr = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 5
  %32 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base_addr, align 4
  %sub.ptr.rhs.cast = ptrtoint ptr %33 to i32
  %sub.ptr.sub = sub i32 %sub, %sub.ptr.rhs.cast
  %call6 = tail call fastcc i32 @pcpu_free_area(ptr noundef %retval.0.i, i32 noundef %sub.ptr.sub)
  %obj_cgroups.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 14
  %34 = ptrtoint ptr %obj_cgroups.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %obj_cgroups.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %pcpu_chunk_addr_search.exit.pcpu_memcg_free_hook.exit_crit_edge, label %if.end.i56, !prof !387

pcpu_chunk_addr_search.exit.pcpu_memcg_free_hook.exit_crit_edge: ; preds = %pcpu_chunk_addr_search.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_memcg_free_hook.exit

if.end.i56:                                       ; preds = %pcpu_chunk_addr_search.exit
  %shr.i = ashr i32 %sub.ptr.sub, 2
  %arrayidx.i55 = getelementptr ptr, ptr %35, i32 %shr.i
  %36 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.i55, align 4
  %tobool5.not.i = icmp eq ptr %37, null
  br i1 %tobool5.not.i, label %if.end.i56.pcpu_memcg_free_hook.exit_crit_edge, label %if.end7.i

if.end.i56.pcpu_memcg_free_hook.exit_crit_edge:   ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_memcg_free_hook.exit

if.end7.i:                                        ; preds = %if.end.i56
  %38 = ptrtoint ptr %arrayidx.i55 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx.i55, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %39) #22
  %div3.i.i = and i32 %call6, -4
  %mul1.i.i = mul i32 %call4.i.i.i.i, %call6
  %add.i.i = add i32 %mul1.i.i, %div3.i.i
  tail call void @obj_cgroup_uncharge(ptr noundef nonnull %37, i32 noundef %add.i.i) #22
  %40 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i.i.i = and i32 %40, -16384
  %41 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %43, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !394
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i.i57 = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i.i57, label %if.end7.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end7.i.rcu_read_lock.exit.i_crit_edge:         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end7.i
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i58 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i58, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 696, ptr noundef nonnull @.str.126) #22
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end7.i.rcu_read_lock.exit.i_crit_edge
  %memcg.i.i = getelementptr inbounds %struct.obj_cgroup, ptr %37, i32 0, i32 1
  %44 = ptrtoint ptr %memcg.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %memcg.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i118.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %46) #22
  %mul1.i122.i = mul i32 %call4.i.i.i118.i, %call6
  %add.i123.i = add i32 %div3.i.i, %mul1.i122.i
  %sub.i = sub i32 0, %add.i123.i
  %47 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !395
  %and.i.i.i = and i32 %47, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i125.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i125.i, label %if.then21.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__mod_memcg_state(ptr noundef %45, i32 noundef 42, i32 noundef %sub.i) #22
  br label %do.body23.i.i

if.then21.i.i:                                    ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @trace_hardirqs_off() #22
  tail call void @__mod_memcg_state(ptr noundef %45, i32 noundef 42, i32 noundef %sub.i) #22
  tail call void @trace_hardirqs_on() #22
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.then21.i.i, %do.end11.i.i
  %48 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !srcloc !396
  %and.i.i.i126.i = and i32 %48, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i126.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i126.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body23.i.i.mod_memcg_state.exit.i_crit_edge, !prof !387

do.body23.i.i.mod_memcg_state.exit.i_crit_edge:   ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %mod_memcg_state.exit.i

if.then36.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @warn_bogus_irq_restore() #22
  br label %mod_memcg_state.exit.i

mod_memcg_state.exit.i:                           ; preds = %if.then36.i.i, %do.body23.i.i.mod_memcg_state.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %47) #22, !srcloc !397
  %call.i127.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i127.i, label %mod_memcg_state.exit.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i130.i

mod_memcg_state.exit.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %mod_memcg_state.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit.i

land.lhs.true.i130.i:                             ; preds = %mod_memcg_state.exit.i
  %call1.i128.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i128.i)
  %tobool.not.i129.i = icmp eq i32 %call1.i128.i, 0
  br i1 %tobool.not.i129.i, label %land.lhs.true.i130.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i132.i

land.lhs.true.i130.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i130.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i132.i:                            ; preds = %land.lhs.true.i130.i
  %.b4.i131.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i131.i, label %land.lhs.true2.i132.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i133.i

land.lhs.true2.i132.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i132.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit.i

if.then.i133.i:                                   ; preds = %land.lhs.true2.i132.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 724, ptr noundef nonnull @.str.127) #22
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i133.i, %land.lhs.true2.i132.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i130.i.rcu_read_unlock.exit.i_crit_edge, %mod_memcg_state.exit.i.rcu_read_unlock.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !398
  %49 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i.i134.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i134.i to ptr
  %preempt_count.i.i.i.i135.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %preempt_count.i.i.i.i135.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile i32, ptr %preempt_count.i.i.i.i135.i, align 4
  %sub.i.i.i136.i = add i32 %52, -1
  store volatile i32 %sub.i.i.i136.i, ptr %preempt_count.i.i.i.i135.i, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  tail call fastcc void @obj_cgroup_put(ptr noundef nonnull %37) #22
  br label %pcpu_memcg_free_hook.exit

pcpu_memcg_free_hook.exit:                        ; preds = %rcu_read_unlock.exit.i, %if.end.i56.pcpu_memcg_free_hook.exit_crit_edge, %pcpu_chunk_addr_search.exit.pcpu_memcg_free_hook.exit_crit_edge
  %isolated = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 11
  %53 = ptrtoint ptr %isolated to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %isolated, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool7.not = icmp eq i8 %54, 0
  br i1 %tobool7.not, label %land.lhs.true, label %pcpu_memcg_free_hook.exit.if.else_crit_edge

pcpu_memcg_free_hook.exit.if.else_crit_edge:      ; preds = %pcpu_memcg_free_hook.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

land.lhs.true:                                    ; preds = %pcpu_memcg_free_hook.exit
  %free_bytes = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 3
  %55 = ptrtoint ptr %free_bytes to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %free_bytes, align 4
  %57 = load i32, ptr @pcpu_unit_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %57)
  %cmp8 = icmp eq i32 %56, %57
  br i1 %cmp8, label %if.then10, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

if.then10:                                        ; preds = %land.lhs.true
  %58 = load ptr, ptr @pcpu_chunk_lists, align 4
  %59 = load i32, ptr @pcpu_free_slot, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %58, i32 %59
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then10
  %.pn.in = phi ptr [ %arrayidx, %if.then10 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %60 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp13.not = icmp eq ptr %.pn, %arrayidx
  br i1 %cmp13.not, label %if.end31.critedge53, label %for.body

for.body:                                         ; preds = %for.cond
  %pos.0 = getelementptr i8, ptr %.pn, i32 -8
  %cmp15.not = icmp eq ptr %pos.0, %retval.0.i
  br i1 %cmp15.not, label %for.body.for.cond_crit_edge, label %for.body.if.then30_crit_edge

for.body.if.then30_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then30

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %pcpu_memcg_free_hook.exit.if.else_crit_edge
  %61 = load ptr, ptr @pcpu_first_chunk, align 4
  %cmp.i = icmp eq ptr %61, %retval.0.i
  br i1 %cmp.i, label %if.else.if.end31.critedge_crit_edge, label %lor.lhs.false.i

if.else.if.end31.critedge_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31.critedge

lor.lhs.false.i:                                  ; preds = %if.else
  %62 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %cmp1.i = icmp eq ptr %62, %retval.0.i
  br i1 %cmp1.i, label %lor.lhs.false.i.if.end31.critedge_crit_edge, label %if.end.i60

lor.lhs.false.i.if.end31.critedge_crit_edge:      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31.critedge

if.end.i60:                                       ; preds = %lor.lhs.false.i
  br i1 %tobool7.not, label %if.end.i60.lor.rhs.i_crit_edge, label %land.lhs.true.i

if.end.i60.lor.rhs.i_crit_edge:                   ; preds = %if.end.i60
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.rhs.i

land.lhs.true.i:                                  ; preds = %if.end.i60
  %nr_empty_pop_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 17
  %63 = ptrtoint ptr %nr_empty_pop_pages.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_empty_pop_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool2.not.i = icmp eq i32 %64, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.lor.rhs.i_crit_edge, label %land.lhs.true.i.if.then25_crit_edge

land.lhs.true.i.if.then25_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then25

land.lhs.true.i.lor.rhs.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.rhs.i

lor.rhs.i:                                        ; preds = %land.lhs.true.i.lor.rhs.i_crit_edge, %if.end.i60.lor.rhs.i_crit_edge
  %65 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %nr_empty_pop_pages3.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 17
  %66 = ptrtoint ptr %nr_empty_pop_pages3.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %nr_empty_pop_pages3.i, align 4
  %add.i = add i32 %67, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %add.i)
  %cmp4.i = icmp sgt i32 %65, %add.i
  br i1 %cmp4.i, label %pcpu_should_reclaim_chunk.exit, label %lor.rhs.i.if.end31.critedge_crit_edge

lor.rhs.i.if.end31.critedge_crit_edge:            ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31.critedge

pcpu_should_reclaim_chunk.exit:                   ; preds = %lor.rhs.i
  %nr_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 15
  %68 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr_pages.i, align 4
  %div.i = sdiv i32 %69, 4
  call void @__sanitizer_cov_trace_cmp4(i32 %67, i32 %div.i)
  %cmp6.i.not = icmp slt i32 %67, %div.i
  br i1 %cmp6.i.not, label %pcpu_should_reclaim_chunk.exit.if.end31.critedge_crit_edge, label %pcpu_should_reclaim_chunk.exit.if.then25_crit_edge

pcpu_should_reclaim_chunk.exit.if.then25_crit_edge: ; preds = %pcpu_should_reclaim_chunk.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then25

pcpu_should_reclaim_chunk.exit.if.end31.critedge_crit_edge: ; preds = %pcpu_should_reclaim_chunk.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31.critedge

if.then25:                                        ; preds = %pcpu_should_reclaim_chunk.exit.if.then25_crit_edge, %land.lhs.true.i.if.then25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %70 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i62 = icmp eq i32 %70, 0
  br i1 %tobool.not.i62, label %if.then25.if.end.i66_crit_edge, label %land.rhs.i64

if.then25.if.end.i66_crit_edge:                   ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i66

land.rhs.i64:                                     ; preds = %if.then25
  %call.i.i63 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63)
  %cmp.not.i = icmp eq i32 %call.i.i63, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i64.if.end.i66_crit_edge, !prof !387

land.rhs.i64.if.end.i66_crit_edge:                ; preds = %land.rhs.i64
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i66

do.end.i:                                         ; preds = %land.rhs.i64
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 573, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i66

if.end.i66:                                       ; preds = %do.end.i, %land.rhs.i64.if.end.i66_crit_edge, %if.then25.if.end.i66_crit_edge
  %71 = ptrtoint ptr %isolated to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %isolated, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool24.not.i = icmp eq i8 %72, 0
  br i1 %tobool24.not.i, label %if.then25.i, label %if.end.i66.if.end27.i_crit_edge

if.end.i66.if.end27.i_crit_edge:                  ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #24
  %73 = ptrtoint ptr %isolated to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 1, ptr %isolated, align 1
  %nr_empty_pop_pages.i67 = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 17
  %74 = ptrtoint ptr %nr_empty_pop_pages.i67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_empty_pop_pages.i67, align 4
  %76 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %sub.i68 = sub i32 %76, %75
  store i32 %sub.i68, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end.i66.if.end27.i_crit_edge
  %list.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 2
  %77 = load ptr, ptr @pcpu_chunk_lists, align 4
  %78 = load i32, ptr @pcpu_to_depopulate_slot, align 4
  %arrayidx.i69 = getelementptr %struct.list_head, ptr %77, i32 %78
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #22
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end27.i.__list_del_entry.exit.i.i_crit_edge

if.end27.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 2, i32 1
  %79 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i.i.i, align 4
  %81 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev1.i.i.i.i, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %82, ptr %80, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end27.i.__list_del_entry.exit.i.i_crit_edge
  %85 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.i69, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %arrayidx.i69, ptr noundef %86) #22
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i70, label %__list_del_entry.exit.i.i.if.then30_crit_edge

__list_del_entry.exit.i.i.if.then30_crit_edge:    ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then30

if.end.i.i.i.i70:                                 ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %86, i32 0, i32 1
  %87 = ptrtoint ptr %prev1.i.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %list.i, ptr %prev1.i.i2.i.i, align 4
  %88 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %86, ptr %list.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %arrayidx.i69, ptr %prev3.i.i.i.i, align 4
  %90 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile ptr %list.i, ptr %arrayidx.i69, align 4
  br label %if.then30

if.then30:                                        ; preds = %if.end.i.i.i.i70, %__list_del_entry.exit.i.i.if.then30_crit_edge, %for.body.if.then30_crit_edge
  %91 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %base_addr, align 4
  tail call fastcc void @trace_percpu_free_percpu(ptr noundef %92, i32 noundef %sub.ptr.sub, ptr noundef nonnull %ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %call2) #22
  %.b1.i = load i1, ptr @pcpu_async_enabled, align 1
  br i1 %.b1.i, label %if.then.i, label %if.then30.cleanup_crit_edge

if.then30.cleanup_crit_edge:                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then.i:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %93 = load ptr, ptr @system_wq, align 4
  %call.i.i.i71 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %93, ptr noundef nonnull @pcpu_balance_work) #22
  br label %cleanup

if.end31.critedge:                                ; preds = %pcpu_should_reclaim_chunk.exit.if.end31.critedge_crit_edge, %lor.rhs.i.if.end31.critedge_crit_edge, %lor.lhs.false.i.if.end31.critedge_crit_edge, %if.else.if.end31.critedge_crit_edge
  %94 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base_addr, align 4
  tail call fastcc void @trace_percpu_free_percpu(ptr noundef %95, i32 noundef %sub.ptr.sub, ptr noundef nonnull %ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %call2) #22
  br label %cleanup

if.end31.critedge53:                              ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  %96 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %base_addr, align 4
  tail call fastcc void @trace_percpu_free_percpu(ptr noundef %97, i32 noundef %sub.ptr.sub, ptr noundef nonnull %ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %call2) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end31.critedge53, %if.end31.critedge, %if.then.i, %if.then30.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_free_percpu(ptr noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcpu_free_area(ptr noundef %chunk, i32 noundef %off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.pcpu_stats_area_dealloc.exit_crit_edge, label %land.rhs

entry.pcpu_stats_area_dealloc.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_stats_area_dealloc.exit

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !387

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1277, i32 noundef 9, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i, label %if.end.pcpu_stats_area_dealloc.exit_crit_edge, label %land.rhs.i

if.end.pcpu_stats_area_dealloc.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_stats_area_dealloc.exit

land.rhs.i:                                       ; preds = %if.end
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.pcpu_stats_area_dealloc.exit_crit_edge, !prof !387

land.rhs.i.pcpu_stats_area_dealloc.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_stats_area_dealloc.exit

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.130, i32 noundef 197, i32 noundef 9, ptr noundef null) #22
  br label %pcpu_stats_area_dealloc.exit

pcpu_stats_area_dealloc.exit:                     ; preds = %do.end.i, %land.rhs.i.pcpu_stats_area_dealloc.exit_crit_edge, %if.end.pcpu_stats_area_dealloc.exit_crit_edge, %entry.pcpu_stats_area_dealloc.exit_crit_edge
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 1) to i32))
  %1 = load i64, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 1), align 8
  %inc.i = add i64 %1, 1
  store i64 %inc.i, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 1), align 8
  call void @__asan_load8_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 2) to i32))
  %2 = load i64, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 2), align 8
  %dec.i = add i64 %2, -1
  store i64 %dec.i, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 2), align 8
  %3 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %chunk, align 4
  %dec24.i = add i32 %4, -1
  store i32 %dec24.i, ptr %chunk, align 4
  %free_bytes.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 3
  %5 = ptrtoint ptr %free_bytes.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %free_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp.i51 = icmp slt i32 %6, 4
  br i1 %cmp.i51, label %pcpu_stats_area_dealloc.exit.pcpu_chunk_slot.exit_crit_edge, label %lor.lhs.false.i

pcpu_stats_area_dealloc.exit.pcpu_chunk_slot.exit_crit_edge: ; preds = %pcpu_stats_area_dealloc.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_chunk_slot.exit

lor.lhs.false.i:                                  ; preds = %pcpu_stats_area_dealloc.exit
  %contig_hint.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 2
  %7 = ptrtoint ptr %contig_hint.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %contig_hint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2.i = icmp eq i32 %8, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge, label %if.end.i

lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_chunk_slot.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mul.i = shl i32 %8, 2
  %9 = load i32, ptr @pcpu_unit_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %mul.i)
  %cmp.i.i = icmp eq i32 %9, %mul.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %10 = load i32, ptr @pcpu_free_slot, align 4
  br label %pcpu_chunk_slot.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i.i.i.i = icmp eq i32 %mul.i, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %mul.i, i1 true) #22, !range !389
  %sub.i.op.i.i.i = sub nsw i32 29, %11
  %12 = tail call i32 @llvm.smax.i32(i32 %sub.i.op.i.i.i, i32 1) #22
  %13 = select i1 %tobool.not.i.i.i.i, i32 1, i32 %12
  br label %pcpu_chunk_slot.exit

pcpu_chunk_slot.exit:                             ; preds = %if.end.i.i, %if.then.i.i, %lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge, %pcpu_stats_area_dealloc.exit.pcpu_chunk_slot.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge ], [ 0, %pcpu_stats_area_dealloc.exit.pcpu_chunk_slot.exit_crit_edge ], [ %10, %if.then.i.i ], [ %13, %if.end.i.i ]
  %div = sdiv i32 %off, 4
  %bound_map = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 7
  %14 = ptrtoint ptr %bound_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %bound_map, align 4
  %nr_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 15
  %16 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %nr_pages.i, align 4
  %18 = shl i32 %17, 10
  %div1.i.i = and i32 %18, 1073740800
  %add = add nsw i32 %div, 1
  %call27 = tail call i32 @_find_next_bit_be(ptr noundef %15, i32 noundef %div1.i.i, i32 noundef %add) #22
  %sub = sub i32 %call27, %div
  %alloc_map = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 6
  %19 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %alloc_map, align 4
  tail call void @__bitmap_clear(ptr noundef %20, i32 noundef %div, i32 noundef %sub) #22
  %mul = shl i32 %sub, 2
  %21 = ptrtoint ptr %free_bytes.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %free_bytes.i, align 4
  %add28 = add i32 %22, %mul
  store i32 %add28, ptr %free_bytes.i, align 4
  %first_free = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 6
  %23 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %first_free, align 4
  %25 = tail call i32 @llvm.smin.i32(i32 %24, i32 %div)
  %26 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %first_free, align 4
  %div1.i.i52 = lshr i32 %div, 10
  %sub.i = add i32 %call27, -1
  %div1.i114.i = lshr i32 %sub.i, 10
  %and.i.i53 = and i32 %div, 1023
  %and.i115.i = and i32 %sub.i, 1023
  %add6.i = add nuw nsw i32 %and.i115.i, 1
  %md_blocks.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 8
  %27 = ptrtoint ptr %md_blocks.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %md_blocks.i, align 4
  %add.ptr.i54 = getelementptr %struct.pcpu_block_md, ptr %28, i32 %div1.i.i52
  %add.ptr8.i = getelementptr %struct.pcpu_block_md, ptr %28, i32 %div1.i114.i
  %contig_hint.i55 = getelementptr %struct.pcpu_block_md, ptr %28, i32 %div1.i.i52, i32 2
  %29 = ptrtoint ptr %contig_hint.i55 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %contig_hint.i55, align 4
  %contig_hint_start.i = getelementptr %struct.pcpu_block_md, ptr %28, i32 %div1.i.i52, i32 3
  %31 = ptrtoint ptr %contig_hint_start.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %contig_hint_start.i, align 4
  %add9.i = add i32 %32, %30
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i53, i32 %add9.i)
  %cmp.i56 = icmp eq i32 %and.i.i53, %add9.i
  br i1 %cmp.i56, label %pcpu_chunk_slot.exit.if.end.i61_crit_edge, label %if.end.i.i60

pcpu_chunk_slot.exit.if.end.i61_crit_edge:        ; preds = %pcpu_chunk_slot.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i61

if.end.i.i60:                                     ; preds = %pcpu_chunk_slot.exit
  call void @__sanitizer_cov_trace_pc() #24
  %33 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %alloc_map, align 4
  %35 = shl nuw nsw i32 %div1.i.i52, 5
  %add.ptr.i.i57 = getelementptr i32, ptr %34, i32 %35
  %call5.i.i = tail call i32 @_find_last_bit(ptr noundef %add.ptr.i.i57, i32 noundef %and.i.i53) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i53, i32 %call5.i.i)
  %cmp13.i = icmp eq i32 %and.i.i53, %call5.i.i
  %add14.i = add i32 %call5.i.i, 1
  %spec.select.i = select i1 %cmp13.i, i32 0, i32 %add14.i
  br label %if.end.i61

if.end.i61:                                       ; preds = %if.end.i.i60, %pcpu_chunk_slot.exit.if.end.i61_crit_edge
  %start.0.i = phi i32 [ %spec.select.i, %if.end.i.i60 ], [ %32, %pcpu_chunk_slot.exit.if.end.i61_crit_edge ]
  %contig_hint_start15.i = getelementptr %struct.pcpu_block_md, ptr %28, i32 %div1.i114.i, i32 3
  %36 = ptrtoint ptr %contig_hint_start15.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %contig_hint_start15.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add6.i, i32 %37)
  %cmp16.i = icmp eq i32 %add6.i, %37
  br i1 %cmp16.i, label %if.then17.i, label %if.else21.i

if.then17.i:                                      ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #24
  %contig_hint19.i = getelementptr %struct.pcpu_block_md, ptr %28, i32 %div1.i114.i, i32 2
  %38 = ptrtoint ptr %contig_hint19.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %contig_hint19.i, align 4
  %add20.i = add i32 %39, %add6.i
  br label %if.end24.i

if.else21.i:                                      ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #24
  %40 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %alloc_map, align 4
  %42 = shl nuw nsw i32 %div1.i114.i, 5
  %add.ptr.i119.i = getelementptr i32, ptr %41, i32 %42
  %call23.i = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i119.i, i32 noundef 1024, i32 noundef %add6.i) #22
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else21.i, %if.then17.i
  %end.0.i = phi i32 [ %add20.i, %if.then17.i ], [ %call23.i, %if.else21.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i114.i, i32 %div1.i.i52)
  %cmp25.i = icmp eq i32 %div1.i114.i, %div1.i.i52
  %spec.select112.i = select i1 %cmp25.i, i32 %end.0.i, i32 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start.0.i)
  %tobool.not.i62 = icmp eq i32 %start.0.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %spec.select112.i)
  %cmp30.i = icmp eq i32 %spec.select112.i, 1024
  %or.cond.i63 = and i1 %tobool.not.i62, %cmp30.i
  %nr_empty_pages.0.i = zext i1 %or.cond.i63 to i32
  tail call fastcc void @pcpu_block_update(ptr noundef %add.ptr.i54, i32 noundef %start.0.i, i32 noundef %spec.select112.i) #22
  br i1 %cmp25.i, label %if.end24.i.if.end46.i_crit_edge, label %if.then34.i

if.end24.i.if.end46.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end46.i

if.then34.i:                                      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %end.0.i)
  %cmp35.i = icmp eq i32 %end.0.i, 1024
  %inc37.i = select i1 %or.cond.i63, i32 2, i32 1
  %spec.select113.i = select i1 %cmp35.i, i32 %inc37.i, i32 %nr_empty_pages.0.i
  tail call fastcc void @pcpu_block_update(ptr noundef %add.ptr8.i, i32 noundef 0, i32 noundef %end.0.i) #22
  %43 = xor i32 %div1.i.i52, -1
  %sub40.i = add nsw i32 %div1.i114.i, %43
  %add41.i = add nsw i32 %sub40.i, %spec.select113.i
  %block.0124.i = getelementptr %struct.pcpu_block_md, ptr %add.ptr.i54, i32 1
  %cmp43125.i = icmp ult ptr %block.0124.i, %add.ptr8.i
  br i1 %cmp43125.i, label %if.then34.i.for.body.i_crit_edge, label %if.then34.i.if.end46.i_crit_edge

if.then34.i.if.end46.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end46.i

if.then34.i.for.body.i_crit_edge:                 ; preds = %if.then34.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then34.i.for.body.i_crit_edge
  %block.0127.i = phi ptr [ %block.0.i, %for.body.i.for.body.i_crit_edge ], [ %block.0124.i, %if.then34.i.for.body.i_crit_edge ]
  %add.ptr.pn126.i = phi ptr [ %block.0127.i, %for.body.i.for.body.i_crit_edge ], [ %add.ptr.i54, %if.then34.i.for.body.i_crit_edge ]
  %first_free.i = getelementptr %struct.pcpu_block_md, ptr %add.ptr.pn126.i, i32 1, i32 6
  %44 = ptrtoint ptr %first_free.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %first_free.i, align 4
  %45 = ptrtoint ptr %block.0127.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %block.0127.i, align 4
  %contig_hint_start44.i = getelementptr %struct.pcpu_block_md, ptr %add.ptr.pn126.i, i32 1, i32 3
  %46 = ptrtoint ptr %contig_hint_start44.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %contig_hint_start44.i, align 4
  %contig_hint45.i = getelementptr %struct.pcpu_block_md, ptr %add.ptr.pn126.i, i32 1, i32 2
  %47 = ptrtoint ptr %contig_hint45.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 1024, ptr %contig_hint45.i, align 4
  %left_free.i = getelementptr %struct.pcpu_block_md, ptr %add.ptr.pn126.i, i32 1, i32 4
  %48 = ptrtoint ptr %left_free.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 1024, ptr %left_free.i, align 4
  %right_free.i = getelementptr %struct.pcpu_block_md, ptr %add.ptr.pn126.i, i32 1, i32 5
  %49 = ptrtoint ptr %right_free.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 1024, ptr %right_free.i, align 4
  %block.0.i = getelementptr %struct.pcpu_block_md, ptr %block.0127.i, i32 1
  %cmp43.i = icmp ult ptr %block.0.i, %add.ptr8.i
  br i1 %cmp43.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end46.i_crit_edge

for.body.i.if.end46.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end46.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

if.end46.i:                                       ; preds = %for.body.i.if.end46.i_crit_edge, %if.then34.i.if.end46.i_crit_edge, %if.end24.i.if.end46.i_crit_edge
  %nr_empty_pages.2.i = phi i32 [ %nr_empty_pages.0.i, %if.end24.i.if.end46.i_crit_edge ], [ %add41.i, %if.then34.i.if.end46.i_crit_edge ], [ %add41.i, %for.body.i.if.end46.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_empty_pages.2.i)
  %tobool47.not.i = icmp eq i32 %nr_empty_pages.2.i, 0
  br i1 %tobool47.not.i, label %if.end46.i.if.end49.i_crit_edge, label %if.then48.i

if.end46.i.if.end49.i_crit_edge:                  ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end49.i

if.then48.i:                                      ; preds = %if.end46.i
  %nr_empty_pop_pages.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 17
  %50 = ptrtoint ptr %nr_empty_pop_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_empty_pop_pages.i.i, align 4
  %add.i.i = add i32 %51, %nr_empty_pages.2.i
  store i32 %add.i.i, ptr %nr_empty_pop_pages.i.i, align 4
  %52 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %cmp.not.i.i = icmp eq ptr %52, %chunk
  br i1 %cmp.not.i.i, label %if.then48.i.if.end49.i_crit_edge, label %land.lhs.true.i.i

if.then48.i.if.end49.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end49.i

land.lhs.true.i.i:                                ; preds = %if.then48.i
  %isolated.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 11
  %53 = ptrtoint ptr %isolated.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %isolated.i.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i120.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i120.i, label %if.then.i121.i, label %land.lhs.true.i.i.if.end49.i_crit_edge

land.lhs.true.i.i.if.end49.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end49.i

if.then.i121.i:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %55 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %add1.i.i = add i32 %55, %nr_empty_pages.2.i
  store i32 %add1.i.i, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then.i121.i, %land.lhs.true.i.i.if.end49.i_crit_edge, %if.then48.i.if.end49.i_crit_edge, %if.end46.i.if.end49.i_crit_edge
  %sub50.i = sub i32 %end.0.i, %start.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %sub50.i)
  %cmp51.i = icmp ult i32 %sub50.i, 1024
  %56 = and i1 %cmp25.i, %cmp51.i
  br i1 %56, label %if.else54.i, label %if.then53.i

if.then53.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @pcpu_chunk_refresh_hint(ptr noundef %chunk, i1 noundef zeroext true) #22
  br label %pcpu_block_update_hint_free.exit

if.else54.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #24
  %chunk_md.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4
  %mul.i.i = and i32 %div, -1024
  %add.i123.i = add i32 %start.0.i, %mul.i.i
  tail call fastcc void @pcpu_block_update(ptr noundef %chunk_md.i, i32 noundef %add.i123.i, i32 noundef %end.0.i) #22
  br label %pcpu_block_update_hint_free.exit

pcpu_block_update_hint_free.exit:                 ; preds = %if.else54.i, %if.then53.i
  tail call fastcc void @pcpu_chunk_relocate(ptr noundef %chunk, i32 noundef %retval.0.i)
  ret i32 %mul
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_percpu_free_percpu(ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_percpu_free_percpu, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !399

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !386

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !400
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #22
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !401
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !401
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !386

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !402
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_free_percpu, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_percpu_free_percpu.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_percpu_free_percpu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.133, i32 noundef 63, ptr noundef nonnull @.str.134) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !403
  %38 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @__is_kernel_percpu_address(i32 noundef %addr, ptr noundef %can_addr) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %1 = inttoptr i32 %addr to ptr
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %cpu.0 = phi i32 [ -1, %entry ], [ %call, %for.body.for.cond_crit_edge ]
  %call = tail call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %0)
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %for.body, label %for.cond.cleanup19_crit_edge

for.cond.cleanup19_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup19

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %add2 = add i32 %3, ptrtoint (ptr @__per_cpu_start to i32)
  %4 = inttoptr i32 %add2 to ptr
  %cmp3.not = icmp uge ptr %1, %4
  %add.ptr = getelementptr i8, ptr %4, i32 sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32))
  %cmp4 = icmp ugt ptr %add.ptr, %1
  %or.cond = and i1 %cmp3.not, %cmp4
  br i1 %or.cond, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond

if.then:                                          ; preds = %for.body
  %tobool.not = icmp eq ptr %can_addr, null
  br i1 %tobool.not, label %if.then.cleanup19_crit_edge, label %if.then5

if.then.cleanup19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup19

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  %sub.ptr.sub = sub i32 %addr, %add2
  %5 = ptrtoint ptr %can_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub.ptr.sub, ptr %can_addr, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__boot_cpu_id to i32))
  %6 = load i32, ptr @__boot_cpu_id, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx14, align 4
  %add15 = add i32 %sub.ptr.sub, ptrtoint (ptr @__per_cpu_start to i32)
  %add16 = add i32 %add15, %8
  store i32 %add16, ptr %can_addr, align 4
  br label %cleanup19

cleanup19:                                        ; preds = %if.then5, %if.then.cleanup19_crit_edge, %for.cond.cleanup19_crit_edge
  ret i1 %cmp
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @is_kernel_percpu_address(i32 noundef %addr) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %1 = inttoptr i32 %addr to ptr
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %entry
  %cpu.0.i = phi i32 [ -1, %entry ], [ %call.i, %for.body.i.for.cond.i_crit_edge ]
  %call.i = tail call i32 @cpumask_next(i32 noundef %cpu.0.i, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %0)
  %cmp.i = icmp ult i32 %call.i, %0
  br i1 %cmp.i, label %for.body.i, label %for.cond.i.__is_kernel_percpu_address.exit_crit_edge

for.cond.i.__is_kernel_percpu_address.exit_crit_edge: ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__is_kernel_percpu_address.exit

for.body.i:                                       ; preds = %for.cond.i
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add2.i = add i32 %3, ptrtoint (ptr @__per_cpu_start to i32)
  %4 = inttoptr i32 %add2.i to ptr
  %cmp3.not.i = icmp uge ptr %1, %4
  %add.ptr.i = getelementptr i8, ptr %4, i32 sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32))
  %cmp4.i = icmp ugt ptr %add.ptr.i, %1
  %or.cond.i = and i1 %cmp3.not.i, %cmp4.i
  br i1 %or.cond.i, label %for.body.i.__is_kernel_percpu_address.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.i

for.body.i.__is_kernel_percpu_address.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__is_kernel_percpu_address.exit

__is_kernel_percpu_address.exit:                  ; preds = %for.body.i.__is_kernel_percpu_address.exit_crit_edge, %for.cond.i.__is_kernel_percpu_address.exit_crit_edge
  ret i1 %cmp.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @per_cpu_ptr_to_phys(ptr noundef %addr) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @pcpu_base_addr, align 4
  %1 = ptrtoint ptr %0 to i32
  %2 = load i32, ptr @pcpu_low_unit_cpu, align 4
  %3 = load ptr, ptr @pcpu_unit_offsets, align 4
  %arrayidx.i = getelementptr i32, ptr %3, i32 %2
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %add1 = add i32 %5, %1
  %6 = load i32, ptr @pcpu_high_unit_cpu, align 4
  %7 = load i32, ptr @pcpu_unit_pages, align 4
  %arrayidx.i50 = getelementptr i32, ptr %3, i32 %6
  %8 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i50, align 4
  %shl.i = shl i32 %7, 12
  %10 = ptrtoint ptr %addr to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %10)
  %cmp.not = icmp ule i32 %add1, %10
  %add.i = add i32 %shl.i, %1
  %add3 = add i32 %add.i, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add3, i32 %10)
  %cmp4 = icmp ugt i32 %add3, %10
  %or.cond = select i1 %cmp.not, i1 %cmp4, i1 false
  br i1 %or.cond, label %for.cond.preheader, label %entry.if.else21_crit_edge

entry.if.else21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else21

for.cond.preheader:                               ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call556 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %call556, i32 %11)
  %cmp657 = icmp ult i32 %call556, %11
  br i1 %cmp657, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.if.else21_crit_edge

for.cond.preheader.if.else21_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else21

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call558 = phi i32 [ %call5, %cleanup.for.body_crit_edge ], [ %call556, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call558
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add8 = add i32 %13, ptrtoint (ptr @__per_cpu_start to i32)
  %14 = inttoptr i32 %add8 to ptr
  %cmp9.not = icmp ugt ptr %14, %addr
  br i1 %cmp9.not, label %for.body.cleanup_crit_edge, label %land.lhs.true10

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

land.lhs.true10:                                  ; preds = %for.body
  %15 = load i32, ptr @pcpu_unit_size, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 %15
  %cmp11 = icmp ugt ptr %add.ptr, %addr
  br i1 %cmp11, label %if.then14, label %land.lhs.true10.cleanup_crit_edge

land.lhs.true10.cleanup_crit_edge:                ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true10.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call5 = tail call i32 @cpumask_next(i32 noundef %call558, ptr noundef nonnull @__cpu_possible_mask) #25
  %cmp6 = icmp ult i32 %call5, %11
  br i1 %cmp6, label %cleanup.for.body_crit_edge, label %cleanup.if.else21_crit_edge

cleanup.if.else21_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else21

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

if.then14:                                        ; preds = %land.lhs.true10
  %call15 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %addr) #22
  br i1 %call15, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #24
  %call17 = tail call i32 @__virt_to_phys(i32 noundef %10) #22
  br label %cleanup31

if.else:                                          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #24
  %call18 = tail call ptr @vmalloc_to_page(ptr noundef %addr) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %16 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call18 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %16 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %17 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add19 = add i32 %sub.ptr.div, %17
  %shl = shl i32 %add19, 12
  %and = and i32 %10, 4095
  %add20 = or i32 %shl, %and
  br label %cleanup31

if.else21:                                        ; preds = %cleanup.if.else21_crit_edge, %for.cond.preheader.if.else21_crit_edge, %entry.if.else21_crit_edge
  %call.i = tail call ptr @vmalloc_to_page(ptr noundef %addr) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %18 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast23 = ptrtoint ptr %call.i to i32
  %sub.ptr.rhs.cast24 = ptrtoint ptr %18 to i32
  %sub.ptr.sub25 = sub i32 %sub.ptr.lhs.cast23, %sub.ptr.rhs.cast24
  %sub.ptr.div26 = sdiv exact i32 %sub.ptr.sub25, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %19 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add27 = add i32 %sub.ptr.div26, %19
  %shl28 = shl i32 %add27, 12
  %and29 = and i32 %10, 4095
  %add30 = or i32 %shl28, %and29
  br label %cleanup31

cleanup31:                                        ; preds = %if.else21, %if.else, %if.then16
  %retval.0 = phi i32 [ %add20, %if.else ], [ %call17, %if.then16 ], [ %add30, %if.else21 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vmalloc_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @pcpu_alloc_alloc_info(i32 noundef %nr_groups, i32 noundef %nr_units) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nr_groups, i32 12) #22
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 32) #22
  %spec.select.i.op = add i32 %spec.select.i, 3
  %spec.select.i.op.op = and i32 %spec.select.i.op, -4
  %and = select i1 %1, i32 0, i32 %spec.select.i.op.op
  %mul = shl i32 %nr_units, 2
  %add1 = add i32 %mul, 4095
  %add2 = add i32 %add1, %and
  %and3 = and i32 %add2, -4096
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %and3, i32 noundef 4096, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %call.i, i32 %and
  %cpu_map = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i, i32 1, i32 2
  %3 = ptrtoint ptr %cpu_map to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %add.ptr, ptr %cpu_map, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_units)
  %cmp29 = icmp sgt i32 %nr_units, 0
  br i1 %cmp29, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %unit.030 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %cpu_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpu_map, align 4
  %arrayidx8 = getelementptr i32, ptr %5, i32 %unit.030
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 4, ptr %arrayidx8, align 4
  %inc = add nuw nsw i32 %unit.030, 1
  %exitcond.not = icmp eq i32 %inc, %nr_units
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %nr_groups9 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i, i32 0, i32 7
  %7 = ptrtoint ptr %nr_groups9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %nr_groups, ptr %nr_groups9, align 4
  %__ai_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i, i32 0, i32 6
  %8 = ptrtoint ptr %__ai_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and3, ptr %__ai_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @pcpu_free_alloc_info(ptr noundef %ai) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %__ai_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 6
  %0 = ptrtoint ptr %__ai_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %__ai_size, align 4
  tail call void @memblock_free(ptr noundef %ai, i32 noundef %1) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @memblock_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @pcpu_setup_first_chunk(ptr noundef readonly %ai, ptr noundef %base_addr) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ai, align 4
  %reserved_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 1
  %2 = ptrtoint ptr %reserved_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reserved_size, align 4
  %add = add i32 %3, %1
  %dyn_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 2
  %4 = ptrtoint ptr %dyn_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dyn_size, align 4
  %add1 = add i32 %add, %5
  %nr_groups = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 7
  %6 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp slt i32 %7, 1
  br i1 %cmp, label %do.end, label %do.body19, !prof !387

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %8, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2613, 0\0A.popsection", ""() #22, !srcloc !404
  unreachable

do.body19:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool21.not = icmp eq i32 %1, 0
  br i1 %tobool21.not, label %do.end33, label %do.body50, !prof !387

do.end33:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #24
  %call35 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %9, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2615, 0\0A.popsection", ""() #22, !srcloc !405
  unreachable

do.body50:                                        ; preds = %do.body19
  br i1 icmp ne (i32 and (i32 ptrtoint (ptr @__per_cpu_start to i32), i32 4095), i32 0), label %do.end56, label %do.body73, !prof !387

do.end56:                                         ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #24
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %10, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2616, 0\0A.popsection", ""() #22, !srcloc !406
  unreachable

do.body73:                                        ; preds = %do.body50
  %tobool74.not = icmp eq ptr %base_addr, null
  br i1 %tobool74.not, label %do.end86, label %do.body103, !prof !387

do.end86:                                         ; preds = %do.body73
  call void @__sanitizer_cov_trace_pc() #24
  %call88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %11, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2618, 0\0A.popsection", ""() #22, !srcloc !407
  unreachable

do.body103:                                       ; preds = %do.body73
  %12 = ptrtoint ptr %base_addr to i32
  %and = and i32 %12, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool104.not = icmp eq i32 %and, 0
  br i1 %tobool104.not, label %do.body131, label %do.end114, !prof !386

do.end114:                                        ; preds = %do.body103
  call void @__sanitizer_cov_trace_pc() #24
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %call121 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %13, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2619, 0\0A.popsection", ""() #22, !srcloc !408
  unreachable

do.body131:                                       ; preds = %do.body103
  %unit_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 3
  %14 = ptrtoint ptr %unit_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %unit_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %add1)
  %cmp132 = icmp ult i32 %15, %add1
  br i1 %cmp132, label %do.end142, label %do.body159, !prof !387

do.end142:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #24
  %call144 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.31) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call149 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %16, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2620, 0\0A.popsection", ""() #22, !srcloc !409
  unreachable

do.body159:                                       ; preds = %do.body131
  %and161 = and i32 %15, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %do.body189, label %do.end172, !prof !386

do.end172:                                        ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #24
  %call174 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.36) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %call179 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %17, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2621, 0\0A.popsection", ""() #22, !srcloc !410
  unreachable

do.body189:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_const_cmp4(i32 32768, i32 %15)
  %cmp191 = icmp ult i32 %15, 32768
  br i1 %cmp191, label %do.end201, label %do.body250, !prof !387

do.end201:                                        ; preds = %do.body189
  call void @__sanitizer_cov_trace_pc() #24
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.41) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %call208 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %18, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2622, 0\0A.popsection", ""() #22, !srcloc !411
  unreachable

do.body250:                                       ; preds = %do.body189
  call void @__sanitizer_cov_trace_const_cmp4(i32 12288, i32 %5)
  %cmp252 = icmp ult i32 %5, 12288
  br i1 %cmp252, label %do.end262, label %do.body310, !prof !387

do.end262:                                        ; preds = %do.body250
  call void @__sanitizer_cov_trace_pc() #24
  %call264 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.51) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  %call269 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %19, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2624, 0\0A.popsection", ""() #22, !srcloc !412
  unreachable

do.body310:                                       ; preds = %do.body250
  %and312 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and312)
  %cmp313.not = icmp eq i32 %and312, 0
  br i1 %cmp313.not, label %do.body345, label %do.end325, !prof !386

do.end325:                                        ; preds = %do.body310
  call void @__sanitizer_cov_trace_pc() #24
  %call327 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.61) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %call332 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %20, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2626, 0\0A.popsection", ""() #22, !srcloc !413
  unreachable

do.body345:                                       ; preds = %do.body310
  %mul = shl i32 %7, 2
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %tobool376.not = icmp eq ptr %call.i, null
  br i1 %tobool376.not, label %if.then377, label %if.end378

if.then377:                                       ; preds = %do.body345
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef %mul) #27
  unreachable

if.end378:                                        ; preds = %do.body345
  %21 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_groups, align 4
  %mul380 = shl i32 %22, 2
  %call.i722 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul380, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %tobool382.not = icmp eq ptr %call.i722, null
  br i1 %tobool382.not, label %if.then383, label %if.end384

if.then383:                                       ; preds = %if.end378
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef %mul380) #27
  unreachable

if.end384:                                        ; preds = %if.end378
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %mul385 = shl i32 %23, 2
  %call.i723 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul385, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %tobool387.not = icmp eq ptr %call.i723, null
  br i1 %tobool387.not, label %if.then388, label %if.end389

if.then388:                                       ; preds = %if.end384
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef %mul385) #27
  unreachable

if.end389:                                        ; preds = %if.end384
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %mul390 = shl i32 %24, 2
  %call.i724 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul390, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %tobool392.not = icmp eq ptr %call.i724, null
  br i1 %tobool392.not, label %if.then393, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end389
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp395733.not = icmp eq i32 %25, 0
  br i1 %cmp395733.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.then393:                                       ; preds = %if.end389
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef %mul390) #27
  unreachable

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %cpu.0734 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call.i723, i32 %cpu.0734
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %arrayidx, align 4
  %inc = add nuw i32 %cpu.0734, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp395 = icmp ult i32 %inc, %27
  br i1 %cmp395, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  store i32 4, ptr @pcpu_low_unit_cpu, align 4
  store i32 4, ptr @pcpu_high_unit_cpu, align 4
  %28 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nr_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp398748 = icmp sgt i32 %29, 0
  br i1 %cmp398748, label %for.end.for.body399_crit_edge, label %for.end.for.end526_crit_edge

for.end.for.end526_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end526

for.end.for.body399_crit_edge:                    ; preds = %for.end
  br label %for.body399

for.body399:                                      ; preds = %for.end522.for.body399_crit_edge, %for.end.for.body399_crit_edge
  %group.0752 = phi i32 [ %inc524, %for.end522.for.body399_crit_edge ], [ 0, %for.end.for.body399_crit_edge ]
  %unit.0751 = phi i32 [ %add525, %for.end522.for.body399_crit_edge ], [ 0, %for.end.for.body399_crit_edge ]
  %pcpu_low_unit_cpu.promoted742750 = phi i32 [ %pcpu_low_unit_cpu.promoted738, %for.end522.for.body399_crit_edge ], [ 4, %for.end.for.body399_crit_edge ]
  %pcpu_high_unit_cpu.promoted747749 = phi i32 [ %pcpu_high_unit_cpu.promoted744, %for.end522.for.body399_crit_edge ], [ 4, %for.end.for.body399_crit_edge ]
  %arrayidx400 = getelementptr %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 8, i32 %group.0752
  %base_offset = getelementptr %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 8, i32 %group.0752, i32 1
  %30 = ptrtoint ptr %base_offset to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base_offset, align 4
  %arrayidx401 = getelementptr i32, ptr %call.i, i32 %group.0752
  %32 = ptrtoint ptr %arrayidx401 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx401, align 4
  %33 = ptrtoint ptr %arrayidx400 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx400, align 4
  %35 = ptrtoint ptr %unit_size to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %unit_size, align 4
  %mul403 = mul i32 %36, %34
  %arrayidx404 = getelementptr i32, ptr %call.i722, i32 %group.0752
  %37 = ptrtoint ptr %arrayidx404 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %mul403, ptr %arrayidx404, align 4
  %38 = load i32, ptr %arrayidx400, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp407735 = icmp sgt i32 %38, 0
  br i1 %cmp407735, label %for.body408.lr.ph, label %for.body399.for.end522_crit_edge

for.body399.for.end522_crit_edge:                 ; preds = %for.body399
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end522

for.body408.lr.ph:                                ; preds = %for.body399
  %cpu_map = getelementptr %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 8, i32 %group.0752, i32 2
  br label %for.body408

for.body408:                                      ; preds = %for.inc520.for.body408_crit_edge, %for.body408.lr.ph
  %pcpu_high_unit_cpu.promoted746 = phi i32 [ %pcpu_high_unit_cpu.promoted747749, %for.body408.lr.ph ], [ %pcpu_high_unit_cpu.promoted745, %for.inc520.for.body408_crit_edge ]
  %pcpu_low_unit_cpu.promoted741 = phi i32 [ %pcpu_low_unit_cpu.promoted742750, %for.body408.lr.ph ], [ %pcpu_low_unit_cpu.promoted740, %for.inc520.for.body408_crit_edge ]
  %i.0736 = phi i32 [ 0, %for.body408.lr.ph ], [ %inc521, %for.inc520.for.body408_crit_edge ]
  %39 = phi i32 [ %pcpu_low_unit_cpu.promoted742750, %for.body408.lr.ph ], [ %67, %for.inc520.for.body408_crit_edge ]
  %40 = phi i32 [ %pcpu_high_unit_cpu.promoted747749, %for.body408.lr.ph ], [ %66, %for.inc520.for.body408_crit_edge ]
  %41 = ptrtoint ptr %cpu_map to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cpu_map, align 4
  %arrayidx409 = getelementptr i32, ptr %42, i32 %i.0736
  %43 = ptrtoint ptr %arrayidx409 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx409, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %44)
  %cmp410 = icmp eq i32 %44, 4
  br i1 %cmp410, label %for.body408.for.inc520_crit_edge, label %do.body413

for.body408.for.inc520_crit_edge:                 ; preds = %for.body408
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc520

do.body413:                                       ; preds = %for.body408
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %45)
  %cmp414.not = icmp ult i32 %44, %45
  br i1 %cmp414.not, label %cpu_possible.exit, label %do.end424, !prof !386

do.end424:                                        ; preds = %do.body413
  call void @__sanitizer_cov_trace_pc() #24
  %call426 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.72) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %46 = load i32, ptr @nr_cpu_ids, align 4
  %call431 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %46, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2673, 0\0A.popsection", ""() #22, !srcloc !414
  unreachable

cpu_possible.exit:                                ; preds = %do.body413
  %div3.i.i.i = lshr i32 %44, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_possible_mask, i32 %div3.i.i.i
  %47 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i = and i32 %44, 31
  %49 = shl nuw i32 1, %and.i.i.i
  %50 = and i32 %48, %49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.i.not = icmp eq i32 %50, 0
  br i1 %tobool.i.not, label %do.end454, label %do.body471, !prof !387

do.end454:                                        ; preds = %cpu_possible.exit
  call void @__sanitizer_cov_trace_pc() #24
  %call456 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.77) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  %call461 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %51, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2674, 0\0A.popsection", ""() #22, !srcloc !415
  unreachable

do.body471:                                       ; preds = %cpu_possible.exit
  %arrayidx472 = getelementptr i32, ptr %call.i723, i32 %44
  %52 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx472, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %cmp473.not = icmp eq i32 %53, -1
  br i1 %cmp473.not, label %do.end499, label %do.end483, !prof !386

do.end483:                                        ; preds = %do.body471
  call void @__sanitizer_cov_trace_pc() #24
  %call485 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.82) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %54 = load i32, ptr @nr_cpu_ids, align 4
  %call490 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %54, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2675, 0\0A.popsection", ""() #22, !srcloc !416
  unreachable

do.end499:                                        ; preds = %do.body471
  %add500 = add i32 %i.0736, %unit.0751
  %55 = ptrtoint ptr %arrayidx472 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add500, ptr %arrayidx472, align 4
  %56 = ptrtoint ptr %base_offset to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %base_offset, align 4
  %58 = ptrtoint ptr %unit_size to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %unit_size, align 4
  %mul504 = mul i32 %59, %i.0736
  %add505 = add i32 %mul504, %57
  %arrayidx506 = getelementptr i32, ptr %call.i724, i32 %44
  %60 = ptrtoint ptr %arrayidx506 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %add505, ptr %arrayidx506, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %39)
  %cmp507 = icmp eq i32 %39, 4
  br i1 %cmp507, label %do.end499.if.then511_crit_edge, label %lor.lhs.false

do.end499.if.then511_crit_edge:                   ; preds = %do.end499
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then511

lor.lhs.false:                                    ; preds = %do.end499
  %arrayidx509 = getelementptr i32, ptr %call.i724, i32 %39
  %61 = ptrtoint ptr %arrayidx509 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx509, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add505, i32 %62)
  %cmp510 = icmp ult i32 %add505, %62
  br i1 %cmp510, label %lor.lhs.false.if.then511_crit_edge, label %lor.lhs.false.if.end512_crit_edge

lor.lhs.false.if.end512_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end512

lor.lhs.false.if.then511_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then511

if.then511:                                       ; preds = %lor.lhs.false.if.then511_crit_edge, %do.end499.if.then511_crit_edge
  store i32 %44, ptr @pcpu_low_unit_cpu, align 4
  br label %if.end512

if.end512:                                        ; preds = %if.then511, %lor.lhs.false.if.end512_crit_edge
  %pcpu_low_unit_cpu.promoted739 = phi i32 [ %44, %if.then511 ], [ %pcpu_low_unit_cpu.promoted741, %lor.lhs.false.if.end512_crit_edge ]
  %63 = phi i32 [ %44, %if.then511 ], [ %39, %lor.lhs.false.if.end512_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp513 = icmp eq i32 %40, 4
  br i1 %cmp513, label %if.end512.if.then518_crit_edge, label %lor.lhs.false514

if.end512.if.then518_crit_edge:                   ; preds = %if.end512
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then518

lor.lhs.false514:                                 ; preds = %if.end512
  %arrayidx516 = getelementptr i32, ptr %call.i724, i32 %40
  %64 = ptrtoint ptr %arrayidx516 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx516, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add505, i32 %65)
  %cmp517 = icmp ugt i32 %add505, %65
  br i1 %cmp517, label %lor.lhs.false514.if.then518_crit_edge, label %lor.lhs.false514.for.inc520_crit_edge

lor.lhs.false514.for.inc520_crit_edge:            ; preds = %lor.lhs.false514
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc520

lor.lhs.false514.if.then518_crit_edge:            ; preds = %lor.lhs.false514
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then518

if.then518:                                       ; preds = %lor.lhs.false514.if.then518_crit_edge, %if.end512.if.then518_crit_edge
  store i32 %44, ptr @pcpu_high_unit_cpu, align 4
  br label %for.inc520

for.inc520:                                       ; preds = %if.then518, %lor.lhs.false514.for.inc520_crit_edge, %for.body408.for.inc520_crit_edge
  %pcpu_high_unit_cpu.promoted745 = phi i32 [ %pcpu_high_unit_cpu.promoted746, %lor.lhs.false514.for.inc520_crit_edge ], [ %44, %if.then518 ], [ %pcpu_high_unit_cpu.promoted746, %for.body408.for.inc520_crit_edge ]
  %pcpu_low_unit_cpu.promoted740 = phi i32 [ %pcpu_low_unit_cpu.promoted739, %lor.lhs.false514.for.inc520_crit_edge ], [ %pcpu_low_unit_cpu.promoted739, %if.then518 ], [ %pcpu_low_unit_cpu.promoted741, %for.body408.for.inc520_crit_edge ]
  %66 = phi i32 [ %40, %lor.lhs.false514.for.inc520_crit_edge ], [ %44, %if.then518 ], [ %40, %for.body408.for.inc520_crit_edge ]
  %67 = phi i32 [ %63, %lor.lhs.false514.for.inc520_crit_edge ], [ %63, %if.then518 ], [ %39, %for.body408.for.inc520_crit_edge ]
  %inc521 = add nuw nsw i32 %i.0736, 1
  %68 = ptrtoint ptr %arrayidx400 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx400, align 4
  %cmp407 = icmp slt i32 %inc521, %69
  br i1 %cmp407, label %for.inc520.for.body408_crit_edge, label %for.inc520.for.end522_crit_edge

for.inc520.for.end522_crit_edge:                  ; preds = %for.inc520
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end522

for.inc520.for.body408_crit_edge:                 ; preds = %for.inc520
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body408

for.end522:                                       ; preds = %for.inc520.for.end522_crit_edge, %for.body399.for.end522_crit_edge
  %pcpu_high_unit_cpu.promoted744 = phi i32 [ %pcpu_high_unit_cpu.promoted747749, %for.body399.for.end522_crit_edge ], [ %pcpu_high_unit_cpu.promoted745, %for.inc520.for.end522_crit_edge ]
  %pcpu_low_unit_cpu.promoted738 = phi i32 [ %pcpu_low_unit_cpu.promoted742750, %for.body399.for.end522_crit_edge ], [ %pcpu_low_unit_cpu.promoted740, %for.inc520.for.end522_crit_edge ]
  %i.0.lcssa = phi i32 [ 0, %for.body399.for.end522_crit_edge ], [ %inc521, %for.inc520.for.end522_crit_edge ]
  %inc524 = add nuw nsw i32 %group.0752, 1
  %add525 = add i32 %i.0.lcssa, %unit.0751
  %70 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_groups, align 4
  %cmp398 = icmp slt i32 %inc524, %71
  br i1 %cmp398, label %for.end522.for.body399_crit_edge, label %for.end522.for.end526_crit_edge

for.end522.for.end526_crit_edge:                  ; preds = %for.end522
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end526

for.end522.for.body399_crit_edge:                 ; preds = %for.end522
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body399

for.end526:                                       ; preds = %for.end522.for.end526_crit_edge, %for.end.for.end526_crit_edge
  %unit.0.lcssa = phi i32 [ 0, %for.end.for.end526_crit_edge ], [ %add525, %for.end522.for.end526_crit_edge ]
  store i32 %unit.0.lcssa, ptr @pcpu_nr_units, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %72 = load i32, ptr @nr_cpu_ids, align 4
  br label %for.cond527

for.cond527:                                      ; preds = %do.body531.for.cond527_crit_edge, %for.end526
  %cpu.1 = phi i32 [ -1, %for.end526 ], [ %call528, %do.body531.for.cond527_crit_edge ]
  %call528 = tail call i32 @cpumask_next(i32 noundef %cpu.1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %call528, i32 %72)
  %cmp529 = icmp ult i32 %call528, %72
  br i1 %cmp529, label %do.body531, label %for.end560

do.body531:                                       ; preds = %for.cond527
  %arrayidx532 = getelementptr i32, ptr %call.i723, i32 %call528
  %73 = ptrtoint ptr %arrayidx532 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx532, align 4
  %cmp533 = icmp eq i32 %74, -1
  br i1 %cmp533, label %do.end543, label %do.body531.for.cond527_crit_edge, !prof !387

do.body531.for.cond527_crit_edge:                 ; preds = %do.body531
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond527

do.end543:                                        ; preds = %do.body531
  call void @__sanitizer_cov_trace_pc() #24
  %call545 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.87) #26
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %75 = load i32, ptr @nr_cpu_ids, align 4
  %call550 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %75, ptr noundef nonnull @__cpu_possible_mask) #26
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.8, ptr noundef %ai)
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2692, 0\0A.popsection", ""() #22, !srcloc !417
  unreachable

for.end560:                                       ; preds = %for.cond527
  tail call fastcc void @pcpu_dump_alloc_info(ptr noundef nonnull @.str.90, ptr noundef %ai)
  %76 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr_groups, align 4
  store i32 %77, ptr @pcpu_nr_groups, align 4
  store ptr %call.i, ptr @pcpu_group_offsets, align 4
  store ptr %call.i722, ptr @pcpu_group_sizes, align 4
  store ptr %call.i723, ptr @pcpu_unit_map, align 4
  store ptr %call.i724, ptr @pcpu_unit_offsets, align 4
  %78 = ptrtoint ptr %unit_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %unit_size, align 4
  %shr = lshr i32 %79, 12
  store i32 %shr, ptr @pcpu_unit_pages, align 4
  %shl = and i32 %79, -4096
  store i32 %shl, ptr @pcpu_unit_size, align 4
  %atom_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 4
  %80 = ptrtoint ptr %atom_size to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %atom_size, align 4
  store i32 %81, ptr @pcpu_atom_size, align 4
  %sub = add nuw nsw i32 %shr, 31
  %82 = lshr i32 %sub, 3
  %83 = and i32 %82, 262140
  %spec.select.i726 = add nuw nsw i32 %83, 100
  store i32 %spec.select.i726, ptr @pcpu_chunk_struct_size, align 4
  %84 = call ptr @memcpy(ptr @pcpu_stats_ai, ptr %ai, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.pcpu_alloc_info, ptr @pcpu_stats_ai, i32 0, i32 3) to i32))
  %85 = load i32, ptr getelementptr inbounds (%struct.pcpu_alloc_info, ptr @pcpu_stats_ai, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 6) to i32))
  store i32 %85, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 6), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %tobool.not.i.i = icmp eq i32 %shl, 0
  %86 = tail call i32 @llvm.ctlz.i32(i32 %shl, i1 true) #22, !range !389
  %sub.i.op.i = sub nsw i32 29, %86
  %87 = tail call i32 @llvm.smax.i32(i32 %sub.i.op.i, i32 1) #22
  %88 = select i1 %tobool.not.i.i, i32 1, i32 %87
  %add566 = add nuw nsw i32 %88, 1
  store i32 %add566, ptr @pcpu_sidelined_slot, align 4
  %add567 = add nuw nsw i32 %88, 2
  store i32 %add567, ptr @pcpu_free_slot, align 4
  %add568 = add nuw nsw i32 %88, 3
  store i32 %add568, ptr @pcpu_to_depopulate_slot, align 4
  %add569 = add nuw nsw i32 %88, 4
  store i32 %add569, ptr @pcpu_nr_slots, align 4
  %mul570 = shl nuw nsw i32 %add569, 3
  %call.i725 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul570, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  store ptr %call.i725, ptr @pcpu_chunk_lists, align 4
  %tobool572.not = icmp eq ptr %call.i725, null
  %89 = load i32, ptr @pcpu_nr_slots, align 4
  br i1 %tobool572.not, label %if.then573, label %for.cond576.preheader

for.cond576.preheader:                            ; preds = %for.end560
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp577755 = icmp sgt i32 %89, 0
  br i1 %cmp577755, label %for.cond576.preheader.for.body578_crit_edge, label %for.cond576.preheader.for.end582_crit_edge

for.cond576.preheader.for.end582_crit_edge:       ; preds = %for.cond576.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end582

for.cond576.preheader.for.body578_crit_edge:      ; preds = %for.cond576.preheader
  br label %for.body578

if.then573:                                       ; preds = %for.end560
  call void @__sanitizer_cov_trace_pc() #24
  %mul574 = shl i32 %89, 3
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.2, i32 noundef %mul574) #27
  unreachable

for.body578:                                      ; preds = %for.body578.for.body578_crit_edge, %for.cond576.preheader.for.body578_crit_edge
  %i.1756 = phi i32 [ %inc581, %for.body578.for.body578_crit_edge ], [ 0, %for.cond576.preheader.for.body578_crit_edge ]
  %90 = load ptr, ptr @pcpu_chunk_lists, align 4
  %arrayidx579 = getelementptr %struct.list_head, ptr %90, i32 %i.1756
  %91 = ptrtoint ptr %arrayidx579 to i32
  call void @__asan_store4_noabort(i32 %91)
  store volatile ptr %arrayidx579, ptr %arrayidx579, align 4
  %prev.i = getelementptr %struct.list_head, ptr %90, i32 %i.1756, i32 1
  %92 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %arrayidx579, ptr %prev.i, align 4
  %inc581 = add nuw nsw i32 %i.1756, 1
  %93 = load i32, ptr @pcpu_nr_slots, align 4
  %cmp577 = icmp slt i32 %inc581, %93
  br i1 %cmp577, label %for.body578.for.body578_crit_edge, label %for.body578.for.end582_crit_edge

for.body578.for.end582_crit_edge:                 ; preds = %for.body578
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end582

for.body578.for.body578_crit_edge:                ; preds = %for.body578
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body578

for.end582:                                       ; preds = %for.body578.for.end582_crit_edge, %for.cond576.preheader.for.end582_crit_edge
  %94 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ai, align 4
  %add584 = add i32 %95, 3
  %and585 = and i32 %add584, -4
  %96 = ptrtoint ptr %dyn_size to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dyn_size, align 4
  %sub588.neg = sub i32 %95, %and585
  %sub589 = add i32 %sub588.neg, %97
  %add590 = add i32 %and585, %12
  %98 = ptrtoint ptr %reserved_size to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %reserved_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool592.not = icmp eq i32 %99, 0
  %spec.select = select i1 %tobool592.not, i32 %sub589, i32 %99
  %call593 = tail call fastcc ptr @pcpu_alloc_first_chunk(i32 noundef %add590, i32 noundef %spec.select) #28
  %100 = ptrtoint ptr %reserved_size to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %reserved_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool595.not = icmp eq i32 %101, 0
  br i1 %tobool595.not, label %for.end582.if.end601_crit_edge, label %if.then596

for.end582.if.end601_crit_edge:                   ; preds = %for.end582
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end601

if.then596:                                       ; preds = %for.end582
  call void @__sanitizer_cov_trace_pc() #24
  store ptr %call593, ptr @pcpu_reserved_chunk, align 4
  %add599 = add i32 %101, %add590
  %call600 = tail call fastcc ptr @pcpu_alloc_first_chunk(i32 noundef %add599, i32 noundef %sub589) #28
  br label %if.end601

if.end601:                                        ; preds = %if.then596, %for.end582.if.end601_crit_edge
  %chunk.0 = phi ptr [ %call600, %if.then596 ], [ %call593, %for.end582.if.end601_crit_edge ]
  store ptr %chunk.0, ptr @pcpu_first_chunk, align 4
  %nr_empty_pop_pages = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk.0, i32 0, i32 17
  %102 = ptrtoint ptr %nr_empty_pop_pages to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nr_empty_pop_pages, align 4
  store i32 %103, ptr @pcpu_nr_empty_pop_pages, align 4
  tail call fastcc void @pcpu_chunk_relocate(ptr noundef %chunk.0, i32 noundef -1)
  %shr602 = lshr i32 %add1, 12
  %104 = load i32, ptr @pcpu_nr_populated, align 4
  %add603 = add i32 %104, %shr602
  store i32 %add603, ptr @pcpu_nr_populated, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4) to i32))
  %105 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4), align 8
  %inc.i = add i32 %105, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 5) to i32))
  %106 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 5), align 4
  %107 = tail call i32 @llvm.umax.i32(i32 %106, i32 %inc.i) #22
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 5) to i32))
  store i32 %107, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 5), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %call2.i) #22
  tail call fastcc void @trace_percpu_create_chunk(ptr noundef nonnull %base_addr)
  store ptr %base_addr, ptr @pcpu_base_addr, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_dump_alloc_info(ptr noundef %lvl, ptr nocapture noundef readonly %ai) unnamed_addr #0 align 64 {
entry:
  %empty_str = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %empty_str) #22
  %0 = call ptr @memcpy(ptr %empty_str, ptr @__const.pcpu_dump_alloc_info.empty_str, i32 9)
  %nr_groups = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 7
  %1 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_groups, align 4
  %v.0.off217 = add i32 %2, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %v.0.off217)
  %3 = icmp ult i32 %v.0.off217, 19
  br i1 %3, label %entry.if.end.i.i_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.if.end.i.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  %group_width.0219 = phi i32 [ %inc, %while.body.while.body_crit_edge ], [ 1, %entry.while.body_crit_edge ]
  %v.0218 = phi i32 [ %div, %while.body.while.body_crit_edge ], [ %2, %entry.while.body_crit_edge ]
  %div = sdiv i32 %v.0218, 10
  %inc = add i32 %group_width.0219, 1
  %v.0.off = add nsw i32 %div, 9
  %4 = icmp ult i32 %v.0.off, 19
  br i1 %4, label %while.body.if.end.i.i_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body

while.body.if.end.i.i_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %while.body.if.end.i.i_crit_edge, %entry.if.end.i.i_crit_edge
  %group_width.0.lcssa = phi i32 [ 1, %entry.if.end.i.i_crit_edge ], [ %inc, %while.body.if.end.i.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %5) #22
  %v.1.off220 = add i32 %call4.i.i, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %v.1.off220)
  %6 = icmp ult i32 %v.1.off220, 19
  br i1 %6, label %if.end.i.i.while.end6_crit_edge, label %if.end.i.i.while.body4_crit_edge

if.end.i.i.while.body4_crit_edge:                 ; preds = %if.end.i.i
  br label %while.body4

if.end.i.i.while.end6_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end6

while.body4:                                      ; preds = %while.body4.while.body4_crit_edge, %if.end.i.i.while.body4_crit_edge
  %cpu_width.0222 = phi i32 [ %inc5, %while.body4.while.body4_crit_edge ], [ 1, %if.end.i.i.while.body4_crit_edge ]
  %v.1221 = phi i32 [ %div2, %while.body4.while.body4_crit_edge ], [ %call4.i.i, %if.end.i.i.while.body4_crit_edge ]
  %div2 = sdiv i32 %v.1221, 10
  %inc5 = add i32 %cpu_width.0222, 1
  %v.1.off = add nsw i32 %div2, 9
  %7 = icmp ult i32 %v.1.off, 19
  br i1 %7, label %while.body4.while.end6_crit_edge, label %while.body4.while.body4_crit_edge

while.body4.while.body4_crit_edge:                ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body4

while.body4.while.end6_crit_edge:                 ; preds = %while.body4
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.end6

while.end6:                                       ; preds = %while.body4.while.end6_crit_edge, %if.end.i.i.while.end6_crit_edge
  %cpu_width.0.lcssa = phi i32 [ 1, %if.end.i.i.while.end6_crit_edge ], [ %inc5, %while.body4.while.end6_crit_edge ]
  %8 = tail call i32 @llvm.smin.i32(i32 %cpu_width.0.lcssa, i32 8)
  %arrayidx = getelementptr [9 x i8], ptr %empty_str, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %arrayidx, align 1
  %alloc_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 5
  %10 = ptrtoint ptr %alloc_size to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_size, align 4
  %unit_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 3
  %12 = ptrtoint ptr %unit_size to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %unit_size, align 4
  %div7 = udiv i32 %11, %13
  %14 = ptrtoint ptr %ai to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ai, align 4
  %reserved_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 1
  %16 = ptrtoint ptr %reserved_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %reserved_size, align 4
  %dyn_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 2
  %18 = ptrtoint ptr %dyn_size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dyn_size, align 4
  %atom_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 4
  %20 = ptrtoint ptr %atom_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %atom_size, align 4
  %div82 = udiv i32 %11, %21
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.137, ptr noundef %lvl, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %13, i32 noundef %div82, i32 noundef %21) #26
  %22 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp86232 = icmp sgt i32 %23, 0
  br i1 %cmp86232, label %for.body.lr.ph, label %while.end6.do.end158_crit_edge

while.end6.do.end158_crit_edge:                   ; preds = %while.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end158

for.body.lr.ph:                                   ; preds = %while.end6
  %add8 = add i32 %group_width.0.lcssa, 3
  %add = add i32 %cpu_width.0.lcssa, 1
  %mul = mul i32 %div7, %add
  %add9 = add i32 %add8, %mul
  %div10 = sdiv i32 60, %add9
  %24 = tail call i32 @llvm.smax.i32(i32 %div10, i32 1)
  %25 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 true) #22, !range !389
  %sub.i.i.op.i = xor i32 %25, 31
  %notmask = shl nsw i32 -1, %sub.i.i.op.i
  %26 = xor i32 %notmask, -1
  br label %for.body

for.body:                                         ; preds = %for.end152.for.body_crit_edge, %for.body.lr.ph
  %alloc.0236 = phi i32 [ 0, %for.body.lr.ph ], [ %alloc.1.lcssa, %for.end152.for.body_crit_edge ]
  %alloc_end.0235 = phi i32 [ 0, %for.body.lr.ph ], [ %add103, %for.end152.for.body_crit_edge ]
  %group.0233 = phi i32 [ 0, %for.body.lr.ph ], [ %inc154, %for.end152.for.body_crit_edge ]
  %arrayidx88 = getelementptr %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 8, i32 %group.0233
  %27 = ptrtoint ptr %arrayidx88 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx88, align 4
  %.frozen = freeze i32 %28
  %div7.frozen = freeze i32 %div7
  %div102 = sdiv i32 %.frozen, %div7.frozen
  %29 = mul i32 %div102, %div7.frozen
  %rem.decomposed = sub i32 %.frozen, %29
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool90.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool90.not, label %do.end100, label %do.body93, !prof !386

do.body93:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2512, 0\0A.popsection", ""() #22, !srcloc !418
  unreachable

do.end100:                                        ; preds = %for.body
  %add103 = add i32 %div102, %alloc_end.0235
  call void @__sanitizer_cov_trace_cmp4(i32 %alloc.0236, i32 %add103)
  %cmp105227 = icmp slt i32 %alloc.0236, %add103
  br i1 %cmp105227, label %for.body107.lr.ph, label %do.end100.for.end152_crit_edge

do.end100.for.end152_crit_edge:                   ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end152

for.body107.lr.ph:                                ; preds = %do.end100
  %cpu_map = getelementptr %struct.pcpu_alloc_info, ptr %ai, i32 0, i32 8, i32 %group.0233, i32 2
  br label %for.body107

for.body107:                                      ; preds = %for.inc150.for.body107_crit_edge, %for.body107.lr.ph
  %alloc.1230 = phi i32 [ %alloc.0236, %for.body107.lr.ph ], [ %inc151, %for.inc150.for.body107_crit_edge ]
  %unit_end.0229 = phi i32 [ 0, %for.body107.lr.ph ], [ %add127, %for.inc150.for.body107_crit_edge ]
  %unit.0228 = phi i32 [ 0, %for.body107.lr.ph ], [ %unit.1.lcssa, %for.inc150.for.body107_crit_edge ]
  %30 = and i32 %alloc.1230, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool109.not = icmp eq i32 %30, 0
  br i1 %tobool109.not, label %do.end113, label %for.body107.do.end124_crit_edge

for.body107.do.end124_crit_edge:                  ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end124

do.end113:                                        ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #24
  %call115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #26
  %call120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.143, ptr noundef %lvl) #26
  br label %do.end124

do.end124:                                        ; preds = %do.end113, %for.body107.do.end124_crit_edge
  %call126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.146, i32 noundef %group_width.0.lcssa, i32 noundef %group.0233) #26
  %add127 = add i32 %unit_end.0229, %div7
  call void @__sanitizer_cov_trace_cmp4(i32 %unit.0228, i32 %add127)
  %cmp129224 = icmp slt i32 %unit.0228, %add127
  br i1 %cmp129224, label %do.end124.for.body131_crit_edge, label %do.end124.for.inc150_crit_edge

do.end124.for.inc150_crit_edge:                   ; preds = %do.end124
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc150

do.end124.for.body131_crit_edge:                  ; preds = %do.end124
  br label %for.body131

for.body131:                                      ; preds = %for.inc.for.body131_crit_edge, %do.end124.for.body131_crit_edge
  %unit.1225 = phi i32 [ %inc149, %for.inc.for.body131_crit_edge ], [ %unit.0228, %do.end124.for.body131_crit_edge ]
  %31 = ptrtoint ptr %cpu_map to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cpu_map, align 4
  %arrayidx132 = getelementptr i32, ptr %32, i32 %unit.1225
  %33 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx132, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %34)
  %cmp133.not = icmp eq i32 %34, 4
  br i1 %cmp133.not, label %do.end145, label %do.end138

do.end138:                                        ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #24
  %call142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.149, i32 noundef %cpu_width.0.lcssa, i32 noundef %34) #26
  br label %for.inc

do.end145:                                        ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #24
  %call147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.152, ptr noundef nonnull %empty_str) #26
  br label %for.inc

for.inc:                                          ; preds = %do.end145, %do.end138
  %inc149 = add nsw i32 %unit.1225, 1
  %cmp129 = icmp slt i32 %inc149, %add127
  br i1 %cmp129, label %for.inc.for.body131_crit_edge, label %for.inc.for.inc150_crit_edge

for.inc.for.inc150_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc150

for.inc.for.body131_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body131

for.inc150:                                       ; preds = %for.inc.for.inc150_crit_edge, %do.end124.for.inc150_crit_edge
  %unit.1.lcssa = phi i32 [ %unit.0228, %do.end124.for.inc150_crit_edge ], [ %inc149, %for.inc.for.inc150_crit_edge ]
  %inc151 = add nsw i32 %alloc.1230, 1
  %exitcond.not = icmp eq i32 %inc151, %add103
  br i1 %exitcond.not, label %for.inc150.for.end152_crit_edge, label %for.inc150.for.body107_crit_edge

for.inc150.for.body107_crit_edge:                 ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body107

for.inc150.for.end152_crit_edge:                  ; preds = %for.inc150
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end152

for.end152:                                       ; preds = %for.inc150.for.end152_crit_edge, %do.end100.for.end152_crit_edge
  %alloc.1.lcssa = phi i32 [ %alloc.0236, %do.end100.for.end152_crit_edge ], [ %add103, %for.inc150.for.end152_crit_edge ]
  %inc154 = add nuw nsw i32 %group.0233, 1
  %35 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_groups, align 4
  %cmp86 = icmp slt i32 %inc154, %36
  br i1 %cmp86, label %for.end152.for.body_crit_edge, label %for.end152.do.end158_crit_edge

for.end152.do.end158_crit_edge:                   ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end158

for.end152.for.body_crit_edge:                    ; preds = %for.end152
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

do.end158:                                        ; preds = %for.end152.do.end158_crit_edge, %while.end6.do.end158_crit_edge
  %call160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140) #26
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %empty_str) #22
  ret void
}

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_alloc_first_chunk(i32 noundef %tmp_addr, i32 noundef %map_size) unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = and i32 %tmp_addr, 4095
  %call = tail call i32 @lcm(i32 noundef 4096, i32 noundef 4096) #29
  %add = add i32 %sub, %map_size
  %sub1 = add i32 %add, -1
  %add2 = add i32 %sub1, %call
  %neg = sub i32 0, %call
  %and4 = and i32 %add2, %neg
  %shr = ashr i32 %and4, 12
  %sub6 = add nsw i32 %shr, 31
  %0 = lshr i32 %sub6, 3
  %1 = and i32 %0, 536870908
  %spec.select.i159 = add nuw nsw i32 %1, 100
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %spec.select.i159, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk, i32 noundef %spec.select.i159) #27
  unreachable

if.end:                                           ; preds = %entry
  %and = and i32 %tmp_addr, -4096
  %list = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 2, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %4 = inttoptr i32 %and to ptr
  %base_addr = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 5
  %5 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %base_addr, align 4
  %start_offset9 = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 12
  %6 = ptrtoint ptr %start_offset9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %sub, ptr %start_offset9, align 4
  %sub12 = sub i32 %and4, %add
  %end_offset = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 13
  %7 = ptrtoint ptr %end_offset to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub12, ptr %end_offset, align 4
  %nr_pages = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 15
  %8 = ptrtoint ptr %nr_pages to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %shr, ptr %nr_pages, align 4
  %9 = shl nsw i32 %shr, 10
  %div1.i.i = and i32 %9, 1073740800
  %sub16 = lshr exact i32 %div1.i.i, 3
  %call.i137 = tail call ptr @memblock_alloc_try_nid(i32 noundef %sub16, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %alloc_map = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 6
  %10 = ptrtoint ptr %alloc_map to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i137, ptr %alloc_map, align 4
  %tobool20.not = icmp eq ptr %call.i137, null
  br i1 %tobool20.not, label %if.then21, label %if.end22

if.then21:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk, i32 noundef %sub16) #27
  unreachable

if.end22:                                         ; preds = %if.end
  %11 = or i32 %sub16, 4
  %call.i138 = tail call ptr @memblock_alloc_try_nid(i32 noundef %11, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %bound_map = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 7
  %12 = ptrtoint ptr %bound_map to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i138, ptr %bound_map, align 4
  %tobool30.not = icmp eq ptr %call.i138, null
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk, i32 noundef %11) #27
  unreachable

if.end32:                                         ; preds = %if.end22
  %13 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_pages, align 4
  %mul.i = shl i32 %14, 5
  %mul34 = and i32 %mul.i, 33554400
  %call.i139 = tail call ptr @memblock_alloc_try_nid(i32 noundef %mul34, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %md_blocks to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i139, ptr %md_blocks, align 4
  %tobool37.not = icmp eq ptr %call.i139, null
  br i1 %tobool37.not, label %if.then38, label %if.end39

if.then38:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.69, ptr noundef nonnull @__func__.pcpu_alloc_first_chunk, i32 noundef %mul34) #27
  unreachable

if.end39:                                         ; preds = %if.end32
  %obj_cgroups = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 14
  %16 = ptrtoint ptr %obj_cgroups to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %obj_cgroups, align 4
  %chunk_md.i = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 4
  %17 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_pages, align 4
  %19 = shl i32 %18, 10
  %div1.i.i.i = and i32 %19, 1073740800
  %20 = ptrtoint ptr %chunk_md.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %chunk_md.i, align 4
  %contig_hint.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 4, i32 2
  %21 = ptrtoint ptr %contig_hint.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div1.i.i.i, ptr %contig_hint.i.i, align 4
  %left_free.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 4, i32 4
  %22 = ptrtoint ptr %left_free.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div1.i.i.i, ptr %left_free.i.i, align 4
  %right_free.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 4, i32 5
  %23 = ptrtoint ptr %right_free.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %div1.i.i.i, ptr %right_free.i.i, align 4
  %first_free.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 4, i32 6
  %24 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %first_free.i.i, align 4
  %nr_bits1.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 4, i32 7
  %25 = ptrtoint ptr %nr_bits1.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div1.i.i.i, ptr %nr_bits1.i.i, align 4
  %mul.i15.i = and i32 %18, 1048575
  %add.ptr16.i = getelementptr %struct.pcpu_block_md, ptr %call.i139, i32 %mul.i15.i
  %cmp.not17.i = icmp eq ptr %call.i139, %add.ptr16.i
  br i1 %cmp.not17.i, label %if.end39.pcpu_init_md_blocks.exit_crit_edge, label %if.end39.for.body.i_crit_edge

if.end39.for.body.i_crit_edge:                    ; preds = %if.end39
  br label %for.body.i

if.end39.pcpu_init_md_blocks.exit_crit_edge:      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_init_md_blocks.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end39.for.body.i_crit_edge
  %md_block.018.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %call.i139, %if.end39.for.body.i_crit_edge ]
  %26 = ptrtoint ptr %md_block.018.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %md_block.018.i, align 4
  %contig_hint.i10.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i, i32 0, i32 2
  %27 = ptrtoint ptr %contig_hint.i10.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1024, ptr %contig_hint.i10.i, align 4
  %left_free.i11.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i, i32 0, i32 4
  %28 = ptrtoint ptr %left_free.i11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1024, ptr %left_free.i11.i, align 4
  %right_free.i12.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i, i32 0, i32 5
  %29 = ptrtoint ptr %right_free.i12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1024, ptr %right_free.i12.i, align 4
  %first_free.i13.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i, i32 0, i32 6
  %30 = ptrtoint ptr %first_free.i13.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %first_free.i13.i, align 4
  %nr_bits1.i14.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i, i32 0, i32 7
  %31 = ptrtoint ptr %nr_bits1.i14.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1024, ptr %nr_bits1.i14.i, align 4
  %incdec.ptr.i = getelementptr %struct.pcpu_block_md, ptr %md_block.018.i, i32 1
  %32 = ptrtoint ptr %md_blocks to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %md_blocks, align 4
  %34 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_pages, align 4
  %mul.i.i = and i32 %35, 1048575
  %add.ptr.i153 = getelementptr %struct.pcpu_block_md, ptr %33, i32 %mul.i.i
  %cmp.not.i = icmp eq ptr %incdec.ptr.i, %add.ptr.i153
  br i1 %cmp.not.i, label %for.body.i.pcpu_init_md_blocks.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.body.i.pcpu_init_md_blocks.exit_crit_edge:    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_init_md_blocks.exit

pcpu_init_md_blocks.exit:                         ; preds = %for.body.i.pcpu_init_md_blocks.exit_crit_edge, %if.end39.pcpu_init_md_blocks.exit_crit_edge
  %immutable = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 10
  %36 = ptrtoint ptr %immutable to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %immutable, align 4
  %populated = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 18
  %37 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_pages, align 4
  %sub.i = add i32 %38, 31
  %39 = lshr i32 %sub.i, 3
  %mul.i154 = and i32 %39, 536870908
  %40 = call ptr @memset(ptr %populated, i32 255, i32 %mul.i154)
  %nr_populated = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 16
  %41 = ptrtoint ptr %nr_populated to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %38, ptr %nr_populated, align 4
  %nr_empty_pop_pages = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 17
  %42 = ptrtoint ptr %nr_empty_pop_pages to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %38, ptr %nr_empty_pop_pages, align 4
  %free_bytes = getelementptr inbounds %struct.pcpu_chunk, ptr %call.i, i32 0, i32 3
  %43 = ptrtoint ptr %free_bytes to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %map_size, ptr %free_bytes, align 4
  %44 = ptrtoint ptr %start_offset9 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %start_offset9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool44.not = icmp eq i32 %45, 0
  br i1 %tobool44.not, label %pcpu_init_md_blocks.exit.if.end51_crit_edge, label %if.then45

pcpu_init_md_blocks.exit.if.end51_crit_edge:      ; preds = %pcpu_init_md_blocks.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end51

if.then45:                                        ; preds = %pcpu_init_md_blocks.exit
  call void @__sanitizer_cov_trace_pc() #24
  %div47 = sdiv i32 %45, 4
  %46 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %alloc_map, align 4
  tail call void @__bitmap_set(ptr noundef %47, i32 noundef 0, i32 noundef %div47) #22
  %48 = ptrtoint ptr %bound_map to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %bound_map, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %49) #22
  %50 = ptrtoint ptr %bound_map to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %bound_map, align 4
  tail call void @_set_bit(i32 noundef %div47, ptr noundef %51) #22
  %52 = ptrtoint ptr %first_free.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div47, ptr %first_free.i.i, align 4
  tail call fastcc void @pcpu_block_update_hint_alloc(ptr noundef nonnull %call.i, i32 noundef 0, i32 noundef %div47)
  br label %if.end51

if.end51:                                         ; preds = %if.then45, %pcpu_init_md_blocks.exit.if.end51_crit_edge
  %53 = ptrtoint ptr %end_offset to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %end_offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool53.not = icmp eq i32 %54, 0
  br i1 %tobool53.not, label %if.end51.if.end66_crit_edge, label %if.then54

if.end51.if.end66_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end66

if.then54:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #24
  %div56 = sdiv i32 %54, 4
  %55 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %alloc_map, align 4
  %57 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_pages, align 4
  %59 = shl i32 %58, 10
  %div1.i.i156 = and i32 %59, 1073740800
  %sub59 = sub nsw i32 %div1.i.i156, %div56
  tail call void @__bitmap_set(ptr noundef %56, i32 noundef %sub59, i32 noundef %div56) #22
  %div61 = sdiv i32 %add, 4
  %60 = ptrtoint ptr %bound_map to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %bound_map, align 4
  tail call void @_set_bit(i32 noundef %div61, ptr noundef %61) #22
  %62 = ptrtoint ptr %bound_map to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %bound_map, align 4
  tail call void @_set_bit(i32 noundef %div1.i.i, ptr noundef %63) #22
  %64 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_pages, align 4
  %66 = shl i32 %65, 10
  %div1.i.i158 = and i32 %66, 1073740800
  %sub65 = sub nsw i32 %div1.i.i158, %div56
  tail call fastcc void @pcpu_block_update_hint_alloc(ptr noundef nonnull %call.i, i32 noundef %sub65, i32 noundef %div56)
  br label %if.end66

if.end66:                                         ; preds = %if.then54, %if.end51.if.end66_crit_edge
  ret ptr %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_chunk_relocate(ptr noundef %chunk, i32 noundef %oslot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %free_bytes.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 3
  %0 = ptrtoint ptr %free_bytes.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %free_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %cmp.i = icmp slt i32 %1, 4
  br i1 %cmp.i, label %entry.pcpu_chunk_slot.exit_crit_edge, label %lor.lhs.false.i

entry.pcpu_chunk_slot.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_chunk_slot.exit

lor.lhs.false.i:                                  ; preds = %entry
  %contig_hint.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %contig_hint.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %contig_hint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp2.i = icmp eq i32 %3, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge, label %if.end.i

lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_chunk_slot.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mul.i = shl i32 %3, 2
  %4 = load i32, ptr @pcpu_unit_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %mul.i)
  %cmp.i.i = icmp eq i32 %4, %mul.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %5 = load i32, ptr @pcpu_free_slot, align 4
  br label %pcpu_chunk_slot.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i.i.i.i = icmp eq i32 %mul.i, 0
  %6 = tail call i32 @llvm.ctlz.i32(i32 %mul.i, i1 true) #22, !range !389
  %sub.i.op.i.i.i = sub nsw i32 29, %6
  %7 = tail call i32 @llvm.smax.i32(i32 %sub.i.op.i.i.i, i32 1) #22
  %8 = select i1 %tobool.not.i.i.i.i, i32 1, i32 %7
  br label %pcpu_chunk_slot.exit

pcpu_chunk_slot.exit:                             ; preds = %if.end.i.i, %if.then.i.i, %lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge, %entry.pcpu_chunk_slot.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge ], [ 0, %entry.pcpu_chunk_slot.exit_crit_edge ], [ %5, %if.then.i.i ], [ %8, %if.end.i.i ]
  %isolated = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 11
  %9 = ptrtoint ptr %isolated to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %isolated, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp ne i8 %10, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %oslot)
  %cmp.not = icmp eq i32 %retval.0.i, %oslot
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %pcpu_chunk_slot.exit.cleanup_crit_edge, label %if.then1

pcpu_chunk_slot.exit.cleanup_crit_edge:           ; preds = %pcpu_chunk_slot.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then1:                                         ; preds = %pcpu_chunk_slot.exit
  %11 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %cmp.not.i = icmp eq ptr %11, %chunk
  br i1 %cmp.not.i, label %if.then1.cleanup_crit_edge, label %if.then.i

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %oslot)
  %cmp2 = icmp sgt i32 %retval.0.i, %oslot
  %list.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 2
  %12 = load ptr, ptr @pcpu_chunk_lists, align 4
  %arrayidx.i = getelementptr %struct.list_head, ptr %12, i32 %retval.0.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %list.i) #22
  br i1 %cmp2, label %if.then1.i, label %if.else.i

if.then1.i:                                       ; preds = %if.then.i
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then1.i.__list_del_entry.exit.i.i_crit_edge

if.then1.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.then1.i.__list_del_entry.exit.i.i_crit_edge
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %arrayidx.i, ptr noundef %20) #22
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.cleanup_crit_edge

__list_del_entry.exit.i.i.cleanup_crit_edge:      ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev1.i.i2.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  br label %if.end4.sink.split.i

if.else.i:                                        ; preds = %if.then.i
  br i1 %call.i.i.i, label %if.end.i.i11.i, label %if.else.i.__list_del_entry.exit.i13.i_crit_edge

if.else.i.__list_del_entry.exit.i13.i_crit_edge:  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__list_del_entry.exit.i13.i

if.end.i.i11.i:                                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i9.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 2, i32 1
  %21 = ptrtoint ptr %prev.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i9.i, align 4
  %23 = ptrtoint ptr %list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %list.i, align 4
  %prev1.i.i.i10.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i10.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %__list_del_entry.exit.i13.i

__list_del_entry.exit.i13.i:                      ; preds = %if.end.i.i11.i, %if.else.i.__list_del_entry.exit.i13.i_crit_edge
  %prev.i2.i.i = getelementptr %struct.list_head, ptr %12, i32 %retval.0.i, i32 1
  %27 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i12.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %28, ptr noundef %arrayidx.i) #22
  br i1 %call.i.i.i12.i, label %__list_del_entry.exit.i13.i.if.end4.sink.split.i_crit_edge, label %__list_del_entry.exit.i13.i.cleanup_crit_edge

__list_del_entry.exit.i13.i.cleanup_crit_edge:    ; preds = %__list_del_entry.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

__list_del_entry.exit.i13.i.if.end4.sink.split.i_crit_edge: ; preds = %__list_del_entry.exit.i13.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4.sink.split.i

if.end4.sink.split.i:                             ; preds = %__list_del_entry.exit.i13.i.if.end4.sink.split.i_crit_edge, %if.end.i.i.i.i
  %prev.i2.i.sink.i = phi ptr [ %prev1.i.i2.i.i, %if.end.i.i.i.i ], [ %prev.i2.i.i, %__list_del_entry.exit.i13.i.if.end4.sink.split.i_crit_edge ]
  %arrayidx.sink.i = phi ptr [ %20, %if.end.i.i.i.i ], [ %arrayidx.i, %__list_del_entry.exit.i13.i.if.end4.sink.split.i_crit_edge ]
  %.sink16.i = phi ptr [ %arrayidx.i, %if.end.i.i.i.i ], [ %28, %__list_del_entry.exit.i13.i.if.end4.sink.split.i_crit_edge ]
  %29 = ptrtoint ptr %prev.i2.i.sink.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %list.i, ptr %prev.i2.i.sink.i, align 4
  %30 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %arrayidx.sink.i, ptr %list.i, align 4
  %prev3.i.i.i14.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 2, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i14.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %.sink16.i, ptr %prev3.i.i.i14.i, align 4
  %32 = ptrtoint ptr %.sink16.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %list.i, ptr %.sink16.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4.sink.split.i, %__list_del_entry.exit.i13.i.cleanup_crit_edge, %__list_del_entry.exit.i.i.cleanup_crit_edge, %if.then1.cleanup_crit_edge, %pcpu_chunk_slot.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_percpu_create_chunk(ptr noundef %base_addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_create_chunk, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_percpu_create_chunk, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !399

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !386

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !419
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_create_chunk, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %base_addr) #22
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !420
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !420
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !386

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !402
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_create_chunk, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_percpu_create_chunk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_percpu_create_chunk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.133, i32 noundef 105, ptr noundef nonnull @.str.134) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !403
  %38 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @percpu_alloc_setup(ptr noundef %str) #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %str, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.156, ptr noundef nonnull %str) #26
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcpu_embed_first_chunk(i32 noundef %reserved_size, i32 noundef %dyn_size, i32 noundef %atom_size, ptr noundef %cpu_distance_fn, ptr nocapture readnone %cpu_to_nd_fn) local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pcpu_build_alloc_info(i32 noundef %reserved_size, i32 noundef %dyn_size, i32 noundef %atom_size, ptr noundef %cpu_distance_fn) #28
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %0 = ptrtoint ptr %call to i32
  br label %cleanup137

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call, align 4
  %reserved_size3 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %reserved_size3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reserved_size3, align 4
  %add = add i32 %4, %2
  %dyn_size4 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %dyn_size4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dyn_size4, align 4
  %add5 = add i32 %add, %6
  %nr_groups = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_groups, align 4
  %mul = shl i32 %8, 2
  %add6 = add i32 %mul, 4095
  %and = and i32 %add6, -4096
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %and, i32 noundef 128, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %out_free.thread, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %9 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp248 = icmp sgt i32 %10, 0
  br i1 %cmp248, label %for.body.lr.ph, label %for.cond.preheader.for.end43_crit_edge

for.cond.preheader.for.end43_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end43

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %unit_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call, i32 0, i32 3
  br label %for.body

out_free.thread:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %__ai_size.i239 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call, i32 0, i32 6
  %11 = ptrtoint ptr %__ai_size.i239 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %__ai_size.i239, align 4
  tail call void @memblock_free(ptr noundef %call, i32 noundef %12) #22
  br label %cleanup137

for.body:                                         ; preds = %for.inc41.for.body_crit_edge, %for.body.lr.ph
  %base.0251 = phi ptr [ inttoptr (i32 -1 to ptr), %for.body.lr.ph ], [ %call29.base.0, %for.inc41.for.body_crit_edge ]
  %highest_group.0250 = phi i32 [ 0, %for.body.lr.ph ], [ %highest_group.1, %for.inc41.for.body_crit_edge ]
  %group.0249 = phi i32 [ 0, %for.body.lr.ph ], [ %inc42, %for.inc41.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pcpu_alloc_info, ptr %call, i32 0, i32 8, i32 %group.0249
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp12244 = icmp sgt i32 %14, 0
  br i1 %cmp12244, label %for.body14.lr.ph, label %for.body.do.body20_crit_edge

for.body.do.body20_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body20

for.body14.lr.ph:                                 ; preds = %for.body
  %cpu_map = getelementptr %struct.pcpu_alloc_info, ptr %call, i32 0, i32 8, i32 %group.0249, i32 2
  %15 = ptrtoint ptr %cpu_map to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cpu_map, align 4
  br label %for.body14

for.body14:                                       ; preds = %for.body14.for.body14_crit_edge, %for.body14.lr.ph
  %i.0246 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc, %for.body14.for.body14_crit_edge ]
  %arrayidx15 = getelementptr i32, ptr %16, i32 %i.0246
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15, align 4
  %inc = add nuw nsw i32 %i.0246, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %14)
  %cmp12 = icmp slt i32 %inc, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp13 = icmp eq i32 %18, 4
  %or.cond = select i1 %cmp12, i1 %cmp13, i1 false
  br i1 %or.cond, label %for.body14.for.body14_crit_edge, label %do.body

for.body14.for.body14_crit_edge:                  ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body14

do.body:                                          ; preds = %for.body14
  br i1 %cmp13, label %do.body.do.body20_crit_edge, label %do.end26, !prof !387

do.body.do.body20_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body20

do.body20:                                        ; preds = %do.body.do.body20_crit_edge, %for.body.do.body20_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 3097, 0\0A.popsection", ""() #22, !srcloc !421
  unreachable

do.end26:                                         ; preds = %do.body
  %19 = ptrtoint ptr %unit_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %unit_size, align 4
  %mul28 = mul i32 %20, %14
  %call29 = tail call fastcc ptr @pcpu_fc_alloc(i32 noundef %mul28, i32 noundef %atom_size) #28
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %for.cond117.preheader, label %for.inc41

for.cond117.preheader:                            ; preds = %do.end26
  %21 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp119262 = icmp sgt i32 %22, 0
  br i1 %cmp119262, label %for.cond117.preheader.for.body120_crit_edge, label %for.cond117.preheader.if.then135_crit_edge

for.cond117.preheader.if.then135_crit_edge:       ; preds = %for.cond117.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then135

for.cond117.preheader.for.body120_crit_edge:      ; preds = %for.cond117.preheader
  br label %for.body120

for.inc41:                                        ; preds = %do.end26
  tail call void @kmemleak_free(ptr noundef nonnull %call29) #22
  %arrayidx33 = getelementptr ptr, ptr %call.i, i32 %group.0249
  %23 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call29, ptr %arrayidx33, align 4
  %cmp34 = icmp ult ptr %call29, %base.0251
  %call29.base.0 = select i1 %cmp34, ptr %call29, ptr %base.0251
  %arrayidx35 = getelementptr ptr, ptr %call.i, i32 %highest_group.0250
  %24 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx35, align 4
  %cmp36 = icmp ugt ptr %call29, %25
  %highest_group.1 = select i1 %cmp36, i32 %group.0249, i32 %highest_group.0250
  %inc42 = add nuw nsw i32 %group.0249, 1
  %26 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_groups, align 4
  %cmp = icmp slt i32 %inc42, %27
  br i1 %cmp, label %for.inc41.for.body_crit_edge, label %for.inc41.for.end43_crit_edge

for.inc41.for.end43_crit_edge:                    ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end43

for.inc41.for.body_crit_edge:                     ; preds = %for.inc41
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end43:                                        ; preds = %for.inc41.for.end43_crit_edge, %for.cond.preheader.for.end43_crit_edge
  %highest_group.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end43_crit_edge ], [ %highest_group.1, %for.inc41.for.end43_crit_edge ]
  %base.0.lcssa = phi ptr [ inttoptr (i32 -1 to ptr), %for.cond.preheader.for.end43_crit_edge ], [ %call29.base.0, %for.inc41.for.end43_crit_edge ]
  %arrayidx44 = getelementptr ptr, ptr %call.i, i32 %highest_group.0.lcssa
  %28 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx44, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %29 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %base.0.lcssa to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %unit_size45 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call, i32 0, i32 3
  %30 = ptrtoint ptr %unit_size45 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %unit_size45, align 4
  %arrayidx47 = getelementptr %struct.pcpu_alloc_info, ptr %call, i32 0, i32 8, i32 %highest_group.0.lcssa
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx47, align 4
  %mul49 = mul i32 %33, %31
  %add50 = add i32 %mul49, %sub.ptr.sub
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @high_memory to i32))
  %34 = load ptr, ptr @high_memory, align 4
  %35 = ptrtoint ptr %34 to i32
  %add51.not = sub i32 -8388609, %35
  %sub = and i32 %add51.not, -8388608
  %mul53 = mul i32 %sub, 3
  %div230 = lshr exact i32 %mul53, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add50, i32 %div230)
  %cmp54 = icmp ugt i32 %add50, %div230
  br i1 %cmp54, label %do.end58, label %for.end43.if.end64_crit_edge

for.end43.if.end64_crit_edge:                     ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end64

do.end58:                                         ; preds = %for.end43
  call void @__sanitizer_cov_trace_pc() #24
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94, i32 noundef %add50, i32 noundef %sub) #26
  br label %if.end64

if.end64:                                         ; preds = %do.end58, %for.end43.if.end64_crit_edge
  %36 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_groups, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp67257 = icmp sgt i32 %37, 0
  br i1 %cmp67257, label %if.end64.for.body68_crit_edge, label %if.end64.do.end110_crit_edge

if.end64.do.end110_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end110

if.end64.for.body68_crit_edge:                    ; preds = %if.end64
  br label %for.body68

for.cond95.preheader:                             ; preds = %for.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp97260 = icmp sgt i32 %58, 0
  br i1 %cmp97260, label %for.cond95.preheader.for.body98_crit_edge, label %for.cond95.preheader.do.end110_crit_edge

for.cond95.preheader.do.end110_crit_edge:         ; preds = %for.cond95.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end110

for.cond95.preheader.for.body98_crit_edge:        ; preds = %for.cond95.preheader
  br label %for.body98

for.body68:                                       ; preds = %for.end91.for.body68_crit_edge, %if.end64.for.body68_crit_edge
  %group.1258 = phi i32 [ %inc93, %for.end91.for.body68_crit_edge ], [ 0, %if.end64.for.body68_crit_edge ]
  %arrayidx71 = getelementptr %struct.pcpu_alloc_info, ptr %call, i32 0, i32 8, i32 %group.1258
  %38 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp76253 = icmp sgt i32 %39, 0
  br i1 %cmp76253, label %for.body77.lr.ph, label %for.body68.for.end91_crit_edge

for.body68.for.end91_crit_edge:                   ; preds = %for.body68
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end91

for.body77.lr.ph:                                 ; preds = %for.body68
  %arrayidx73 = getelementptr ptr, ptr %call.i, i32 %group.1258
  %40 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx73, align 4
  %cpu_map78 = getelementptr %struct.pcpu_alloc_info, ptr %call, i32 0, i32 8, i32 %group.1258, i32 2
  br label %for.body77

for.body77:                                       ; preds = %for.inc87.for.body77_crit_edge, %for.body77.lr.ph
  %ptr72.0255 = phi ptr [ %41, %for.body77.lr.ph ], [ %add.ptr90, %for.inc87.for.body77_crit_edge ]
  %i.1254 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc88, %for.inc87.for.body77_crit_edge ]
  %42 = ptrtoint ptr %cpu_map78 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cpu_map78, align 4
  %arrayidx79 = getelementptr i32, ptr %43, i32 %i.1254
  %44 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx79, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp80 = icmp eq i32 %45, 4
  br i1 %cmp80, label %if.then81, label %if.end83

if.then81:                                        ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #24
  %46 = ptrtoint ptr %unit_size45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %unit_size45, align 4
  tail call void @memblock_free(ptr noundef %ptr72.0255, i32 noundef %47) #22
  br label %for.inc87

if.end83:                                         ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #24
  %48 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %call, align 4
  %50 = call ptr @memcpy(ptr %ptr72.0255, ptr @__per_cpu_load, i32 %49)
  %add.ptr = getelementptr i8, ptr %ptr72.0255, i32 %add5
  %51 = ptrtoint ptr %unit_size45 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %unit_size45, align 4
  %sub86 = sub i32 %52, %add5
  tail call void @memblock_free(ptr noundef %add.ptr, i32 noundef %sub86) #22
  br label %for.inc87

for.inc87:                                        ; preds = %if.end83, %if.then81
  %inc88 = add nuw nsw i32 %i.1254, 1
  %53 = ptrtoint ptr %unit_size45 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %unit_size45, align 4
  %add.ptr90 = getelementptr i8, ptr %ptr72.0255, i32 %54
  %55 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx71, align 4
  %cmp76 = icmp slt i32 %inc88, %56
  br i1 %cmp76, label %for.inc87.for.body77_crit_edge, label %for.inc87.for.end91_crit_edge

for.inc87.for.end91_crit_edge:                    ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end91

for.inc87.for.body77_crit_edge:                   ; preds = %for.inc87
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body77

for.end91:                                        ; preds = %for.inc87.for.end91_crit_edge, %for.body68.for.end91_crit_edge
  %inc93 = add nuw nsw i32 %group.1258, 1
  %57 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_groups, align 4
  %cmp67 = icmp slt i32 %inc93, %58
  br i1 %cmp67, label %for.end91.for.body68_crit_edge, label %for.cond95.preheader

for.end91.for.body68_crit_edge:                   ; preds = %for.end91
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body68

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %for.cond95.preheader.for.body98_crit_edge
  %group.2261 = phi i32 [ %inc106, %for.body98.for.body98_crit_edge ], [ 0, %for.cond95.preheader.for.body98_crit_edge ]
  %arrayidx99 = getelementptr ptr, ptr %call.i, i32 %group.2261
  %59 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx99, align 4
  %sub.ptr.lhs.cast100 = ptrtoint ptr %60 to i32
  %sub.ptr.sub102 = sub i32 %sub.ptr.lhs.cast100, %sub.ptr.rhs.cast
  %base_offset = getelementptr %struct.pcpu_alloc_info, ptr %call, i32 0, i32 8, i32 %group.2261, i32 1
  %61 = ptrtoint ptr %base_offset to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %sub.ptr.sub102, ptr %base_offset, align 4
  %inc106 = add nuw nsw i32 %group.2261, 1
  %62 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %nr_groups, align 4
  %cmp97 = icmp slt i32 %inc106, %63
  br i1 %cmp97, label %for.body98.for.body98_crit_edge, label %for.body98.do.end110_crit_edge

for.body98.do.end110_crit_edge:                   ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end110

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body98

do.end110:                                        ; preds = %for.body98.do.end110_crit_edge, %for.cond95.preheader.do.end110_crit_edge, %if.end64.do.end110_crit_edge
  %shr = lshr i32 %add5, 12
  %64 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %call, align 4
  %66 = ptrtoint ptr %reserved_size3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %reserved_size3, align 4
  %68 = ptrtoint ptr %dyn_size4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %dyn_size4, align 4
  %70 = ptrtoint ptr %unit_size45 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %unit_size45, align 4
  %call116 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.97, i32 noundef %shr, i32 noundef %65, i32 noundef %67, i32 noundef %69, i32 noundef %71) #26
  tail call void @pcpu_setup_first_chunk(ptr noundef %call, ptr noundef %base.0.lcssa) #28
  br label %if.then135

for.body120:                                      ; preds = %for.inc131.for.body120_crit_edge, %for.cond117.preheader.for.body120_crit_edge
  %group.3263 = phi i32 [ %inc132, %for.inc131.for.body120_crit_edge ], [ 0, %for.cond117.preheader.for.body120_crit_edge ]
  %arrayidx121 = getelementptr ptr, ptr %call.i, i32 %group.3263
  %72 = ptrtoint ptr %arrayidx121 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx121, align 4
  %tobool122.not = icmp eq ptr %73, null
  br i1 %tobool122.not, label %for.body120.for.inc131_crit_edge, label %if.then123

for.body120.for.inc131_crit_edge:                 ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc131

if.then123:                                       ; preds = %for.body120
  call void @__sanitizer_cov_trace_pc() #24
  %arrayidx126 = getelementptr %struct.pcpu_alloc_info, ptr %call, i32 0, i32 8, i32 %group.3263
  %74 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx126, align 4
  %76 = ptrtoint ptr %unit_size to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %unit_size, align 4
  %mul129 = mul i32 %77, %75
  tail call void @memblock_free(ptr noundef nonnull %73, i32 noundef %mul129) #22
  br label %for.inc131

for.inc131:                                       ; preds = %if.then123, %for.body120.for.inc131_crit_edge
  %inc132 = add nuw nsw i32 %group.3263, 1
  %78 = ptrtoint ptr %nr_groups to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_groups, align 4
  %cmp119 = icmp slt i32 %inc132, %79
  br i1 %cmp119, label %for.inc131.for.body120_crit_edge, label %for.inc131.if.then135_crit_edge

for.inc131.if.then135_crit_edge:                  ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then135

for.inc131.for.body120_crit_edge:                 ; preds = %for.inc131
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body120

if.then135:                                       ; preds = %for.inc131.if.then135_crit_edge, %do.end110, %for.cond117.preheader.if.then135_crit_edge
  %rc.2 = phi i32 [ 0, %do.end110 ], [ -12, %for.cond117.preheader.if.then135_crit_edge ], [ -12, %for.inc131.if.then135_crit_edge ]
  %__ai_size.i = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call, i32 0, i32 6
  %80 = ptrtoint ptr %__ai_size.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %__ai_size.i, align 4
  tail call void @memblock_free(ptr noundef %call, i32 noundef %81) #22
  tail call void @memblock_free(ptr noundef nonnull %call.i, i32 noundef %and) #22
  br label %cleanup137

cleanup137:                                       ; preds = %if.then135, %out_free.thread, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %rc.2, %if.then135 ], [ -12, %out_free.thread ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_build_alloc_info(i32 noundef %reserved_size, i32 noundef %dyn_size, i32 noundef %atom_size, ptr noundef readonly %cpu_distance_fn) unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr @pcpu_build_alloc_info.group_map, i32 0, i32 16)
  %1 = call ptr @memset(ptr @pcpu_build_alloc_info.group_cnt, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i = add i32 %2, 31
  %3 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %3, 536870908
  %4 = tail call i32 @llvm.umax.i32(i32 %dyn_size, i32 12288)
  %add1 = add i32 %reserved_size, add (i32 sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32)), i32 4095)
  %add2 = add i32 %add1, %4
  %and = and i32 %add2, -4096
  %5 = tail call i32 @llvm.umax.i32(i32 %and, i32 32768)
  %sub11 = add i32 %atom_size, -1
  %add12 = add i32 %sub11, %5
  %6 = urem i32 %add12, %atom_size
  %mul = sub i32 %add12, %6
  %div13 = udiv i32 %mul, %5
  br label %while.cond

while.cond:                                       ; preds = %while.body, %entry
  %upa.0 = phi i32 [ %div13, %entry ], [ %dec, %while.body ]
  %mul.frozen = freeze i32 %mul
  %upa.0.frozen = freeze i32 %upa.0
  %div14 = udiv i32 %mul.frozen, %upa.0.frozen
  %7 = mul i32 %div14, %upa.0.frozen
  %rem.decomposed = sub i32 %mul.frozen, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp eq i32 %rem.decomposed, 0
  %and15 = and i32 %div14, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = and i1 %tobool.not, %tobool16.not
  br i1 %or.cond, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #24
  %dec = add i32 %upa.0, -1
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %add = add i32 %reserved_size, sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32))
  %sub3 = sub i32 %and, %add
  %8 = call ptr @memcpy(ptr @pcpu_build_alloc_info.mask, ptr @__cpu_possible_mask, i32 %mul.i.i)
  %tobool23.not = icmp eq ptr %cpu_distance_fn, null
  br label %cpumask_empty.exit

for.cond33.preheader:                             ; preds = %cpumask_empty.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %upa.0)
  %tobool34.not334 = icmp eq i32 %upa.0, 0
  br i1 %tobool34.not334, label %for.cond33.preheader.do.body77_crit_edge, label %for.body35.lr.ph

for.cond33.preheader.do.body77_crit_edge:         ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body77

for.body35.lr.ph:                                 ; preds = %for.cond33.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group.0)
  %cmp45329 = icmp sgt i32 %group.0, 0
  br label %for.body35

cpumask_empty.exit:                               ; preds = %for.inc, %while.end
  %group.0 = phi i32 [ 0, %while.end ], [ %inc31, %for.inc ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call.i.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @pcpu_build_alloc_info.mask, i32 noundef %9) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %9)
  %cmp4.i.i = icmp eq i32 %call.i.i, %9
  br i1 %cmp4.i.i, label %for.cond33.preheader, label %for.body

for.body:                                         ; preds = %cpumask_empty.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %10 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef nonnull @pcpu_build_alloc_info.mask, i32 noundef %10) #22
  %arrayidx = getelementptr [4 x i32], ptr @pcpu_build_alloc_info.group_map, i32 0, i32 %call.i
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %group.0, ptr %arrayidx, align 4
  %arrayidx18 = getelementptr [4 x i32], ptr @pcpu_build_alloc_info.group_cnt, i32 0, i32 %group.0
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx18, align 4
  %inc = add i32 %13, 1
  store i32 %inc, ptr %arrayidx18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %call.i)
  %cmp.not.i.i.i = icmp ugt i32 %14, %call.i
  br i1 %cmp.not.i.i.i, label %for.body.cpumask_clear_cpu.exit_crit_edge, label %land.rhs.i.i.i

for.body.cpumask_clear_cpu.exit_crit_edge:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpumask_clear_cpu.exit

land.rhs.i.i.i:                                   ; preds = %for.body
  %.b37.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i, label %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, label %if.then.i.i.i, !prof !386

land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge:  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpumask_clear_cpu.exit

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpumask_clear_cpu.exit

cpumask_clear_cpu.exit:                           ; preds = %if.then.i.i.i, %land.rhs.i.i.i.cpumask_clear_cpu.exit_crit_edge, %for.body.cpumask_clear_cpu.exit_crit_edge
  tail call void @_clear_bit(i32 noundef %call.i, ptr noundef nonnull @pcpu_build_alloc_info.mask) #22
  %call20326 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @pcpu_build_alloc_info.mask) #30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call20326, i32 %15)
  %cmp21327 = icmp ult i32 %call20326, %15
  br i1 %cmp21327, label %cpumask_clear_cpu.exit.for.body22_crit_edge, label %cpumask_clear_cpu.exit.for.inc_crit_edge

cpumask_clear_cpu.exit.for.inc_crit_edge:         ; preds = %cpumask_clear_cpu.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

cpumask_clear_cpu.exit.for.body22_crit_edge:      ; preds = %cpumask_clear_cpu.exit
  br label %for.body22

for.body22:                                       ; preds = %if.end.for.body22_crit_edge, %cpumask_clear_cpu.exit.for.body22_crit_edge
  %call20328 = phi i32 [ %call20, %if.end.for.body22_crit_edge ], [ %call20326, %cpumask_clear_cpu.exit.for.body22_crit_edge ]
  br i1 %tobool23.not, label %for.body22.if.then_crit_edge, label %lor.lhs.false

for.body22.if.then_crit_edge:                     ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body22
  %call24 = tail call i32 %cpu_distance_fn(i32 noundef %call.i, i32 noundef %call20328) #31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call24)
  %cmp25 = icmp eq i32 %call24, 10
  br i1 %cmp25, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call26 = tail call i32 %cpu_distance_fn(i32 noundef %call20328, i32 noundef %call.i) #31
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %call26)
  %cmp27 = icmp eq i32 %call26, 10
  br i1 %cmp27, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %for.body22.if.then_crit_edge
  %arrayidx28 = getelementptr [4 x i32], ptr @pcpu_build_alloc_info.group_map, i32 0, i32 %call20328
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %group.0, ptr %arrayidx28, align 4
  %17 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx18, align 4
  %inc30 = add i32 %18, 1
  store i32 %inc30, ptr %arrayidx18, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %19 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %call20328)
  %cmp.not.i.i.i302 = icmp ugt i32 %19, %call20328
  br i1 %cmp.not.i.i.i302, label %if.then.cpumask_clear_cpu.exit306_crit_edge, label %land.rhs.i.i.i304

if.then.cpumask_clear_cpu.exit306_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpumask_clear_cpu.exit306

land.rhs.i.i.i304:                                ; preds = %if.then
  %.b37.i.i.i303 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i303, label %land.rhs.i.i.i304.cpumask_clear_cpu.exit306_crit_edge, label %if.then.i.i.i305, !prof !386

land.rhs.i.i.i304.cpumask_clear_cpu.exit306_crit_edge: ; preds = %land.rhs.i.i.i304
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpumask_clear_cpu.exit306

if.then.i.i.i305:                                 ; preds = %land.rhs.i.i.i304
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpumask_clear_cpu.exit306

cpumask_clear_cpu.exit306:                        ; preds = %if.then.i.i.i305, %land.rhs.i.i.i304.cpumask_clear_cpu.exit306_crit_edge, %if.then.cpumask_clear_cpu.exit306_crit_edge
  tail call void @_clear_bit(i32 noundef %call20328, ptr noundef nonnull @pcpu_build_alloc_info.mask) #22
  br label %if.end

if.end:                                           ; preds = %cpumask_clear_cpu.exit306, %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %call20 = tail call i32 @cpumask_next(i32 noundef %call20328, ptr noundef nonnull @pcpu_build_alloc_info.mask) #30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp21 = icmp ult i32 %call20, %20
  br i1 %cmp21, label %if.end.for.body22_crit_edge, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.end.for.body22_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body22

for.inc:                                          ; preds = %if.end.for.inc_crit_edge, %cpumask_clear_cpu.exit.for.inc_crit_edge
  %inc31 = add i32 %group.0, 1
  br label %cpumask_empty.exit

for.body35:                                       ; preds = %for.inc68.for.body35_crit_edge, %for.body35.lr.ph
  %upa.1337 = phi i32 [ %upa.0, %for.body35.lr.ph ], [ %dec69, %for.inc68.for.body35_crit_edge ]
  %best_upa.0336 = phi i32 [ 0, %for.body35.lr.ph ], [ %best_upa.1321, %for.inc68.for.body35_crit_edge ]
  %last_allocs.0335 = phi i32 [ 2147483647, %for.body35.lr.ph ], [ %last_allocs.1320, %for.inc68.for.body35_crit_edge ]
  %mul.frozen361 = freeze i32 %mul
  %upa.1337.frozen = freeze i32 %upa.1337
  %div39 = udiv i32 %mul.frozen361, %upa.1337.frozen
  %21 = mul i32 %div39, %upa.1337.frozen
  %rem36.decomposed = sub i32 %mul.frozen361, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem36.decomposed)
  %tobool37.not = icmp eq i32 %rem36.decomposed, 0
  %and40 = and i32 %div39, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  %or.cond362 = and i1 %tobool37.not, %tobool41.not
  br i1 %or.cond362, label %for.cond44.preheader, label %for.body35.for.inc68_crit_edge

for.body35.for.inc68_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc68

for.cond44.preheader:                             ; preds = %for.body35
  br i1 %cmp45329, label %for.body46.lr.ph, label %for.cond44.preheader.if.end.i.i312_crit_edge

for.cond44.preheader.if.end.i.i312_crit_edge:     ; preds = %for.cond44.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i312

for.body46.lr.ph:                                 ; preds = %for.cond44.preheader
  %add48 = add i32 %upa.1337, -1
  br label %for.body46

for.body46:                                       ; preds = %for.body46.for.body46_crit_edge, %for.body46.lr.ph
  %wasted.0332 = phi i32 [ 0, %for.body46.lr.ph ], [ %add55, %for.body46.for.body46_crit_edge ]
  %allocs.0331 = phi i32 [ 0, %for.body46.lr.ph ], [ %add51, %for.body46.for.body46_crit_edge ]
  %group.1330 = phi i32 [ 0, %for.body46.lr.ph ], [ %inc57, %for.body46.for.body46_crit_edge ]
  %arrayidx47 = getelementptr [4 x i32], ptr @pcpu_build_alloc_info.group_cnt, i32 0, i32 %group.1330
  %22 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx47, align 4
  %sub49 = add i32 %add48, %23
  %div50 = sdiv i32 %sub49, %upa.1337
  %add51 = add i32 %div50, %allocs.0331
  %mul52 = mul i32 %div50, %upa.1337
  %sub54 = sub i32 %wasted.0332, %23
  %add55 = add i32 %sub54, %mul52
  %inc57 = add nuw nsw i32 %group.1330, 1
  %exitcond.not = icmp eq i32 %inc57, %group.0
  br i1 %exitcond.not, label %for.body46.if.end.i.i312_crit_edge, label %for.body46.for.body46_crit_edge

for.body46.for.body46_crit_edge:                  ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body46

for.body46.if.end.i.i312_crit_edge:               ; preds = %for.body46
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i312

if.end.i.i312:                                    ; preds = %for.body46.if.end.i.i312_crit_edge, %for.cond44.preheader.if.end.i.i312_crit_edge
  %allocs.0.lcssa = phi i32 [ 0, %for.cond44.preheader.if.end.i.i312_crit_edge ], [ %add51, %for.body46.if.end.i.i312_crit_edge ]
  %wasted.0.lcssa = phi i32 [ 0, %for.cond44.preheader.if.end.i.i312_crit_edge ], [ %add55, %for.body46.if.end.i.i312_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %24) #22
  %div60 = udiv i32 %call4.i.i, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %wasted.0.lcssa, i32 %div60)
  %cmp61 = icmp ugt i32 %wasted.0.lcssa, %div60
  br i1 %cmp61, label %if.end.i.i312.for.inc68_crit_edge, label %cleanup

if.end.i.i312.for.inc68_crit_edge:                ; preds = %if.end.i.i312
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc68

cleanup:                                          ; preds = %if.end.i.i312
  call void @__sanitizer_cov_trace_cmp4(i32 %allocs.0.lcssa, i32 %last_allocs.0335)
  %cmp64 = icmp sgt i32 %allocs.0.lcssa, %last_allocs.0335
  %25 = tail call i32 @llvm.smin.i32(i32 %allocs.0.lcssa, i32 %last_allocs.0335)
  br i1 %cmp64, label %cleanup.do.body_crit_edge, label %cleanup.for.inc68_crit_edge

cleanup.for.inc68_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc68

cleanup.do.body_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

for.inc68:                                        ; preds = %cleanup.for.inc68_crit_edge, %if.end.i.i312.for.inc68_crit_edge, %for.body35.for.inc68_crit_edge
  %best_upa.1321 = phi i32 [ %upa.1337, %cleanup.for.inc68_crit_edge ], [ %best_upa.0336, %for.body35.for.inc68_crit_edge ], [ %best_upa.0336, %if.end.i.i312.for.inc68_crit_edge ]
  %last_allocs.1320 = phi i32 [ %25, %cleanup.for.inc68_crit_edge ], [ %last_allocs.0335, %for.body35.for.inc68_crit_edge ], [ %last_allocs.0335, %if.end.i.i312.for.inc68_crit_edge ]
  %dec69 = add i32 %upa.1337, -1
  %tobool34.not = icmp eq i32 %dec69, 0
  br i1 %tobool34.not, label %for.inc68.do.body_crit_edge, label %for.inc68.for.body35_crit_edge

for.inc68.for.body35_crit_edge:                   ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body35

for.inc68.do.body_crit_edge:                      ; preds = %for.inc68
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body

do.body:                                          ; preds = %for.inc68.do.body_crit_edge, %cleanup.do.body_crit_edge
  %best_upa.2 = phi i32 [ %best_upa.1321, %for.inc68.do.body_crit_edge ], [ %best_upa.0336, %cleanup.do.body_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_upa.2)
  %tobool71.not = icmp eq i32 %best_upa.2, 0
  br i1 %tobool71.not, label %do.body.do.body77_crit_edge, label %for.cond84.preheader, !prof !387

do.body.do.body77_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body77

for.cond84.preheader:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %group.0)
  %cmp85341 = icmp sgt i32 %group.0, 0
  br i1 %cmp85341, label %for.body86.lr.ph, label %for.cond84.preheader.for.end97_crit_edge

for.cond84.preheader.for.end97_crit_edge:         ; preds = %for.cond84.preheader
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end97

for.body86.lr.ph:                                 ; preds = %for.cond84.preheader
  %sub90 = add i32 %best_upa.2, -1
  br label %for.body86

do.body77:                                        ; preds = %do.body.do.body77_crit_edge, %for.cond33.preheader.do.body77_crit_edge
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2948, 0\0A.popsection", ""() #22, !srcloc !422
  unreachable

for.body86:                                       ; preds = %for.body86.for.body86_crit_edge, %for.body86.lr.ph
  %nr_units.0343 = phi i32 [ 0, %for.body86.lr.ph ], [ %add94, %for.body86.for.body86_crit_edge ]
  %group.2342 = phi i32 [ 0, %for.body86.lr.ph ], [ %inc96, %for.body86.for.body86_crit_edge ]
  %arrayidx89 = getelementptr [4 x i32], ptr @pcpu_build_alloc_info.group_cnt, i32 0, i32 %group.2342
  %26 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx89, align 4
  %add91 = add i32 %sub90, %27
  %28 = srem i32 %add91, %best_upa.2
  %mul93 = sub i32 %nr_units.0343, %28
  %add94 = add i32 %mul93, %add91
  %inc96 = add nuw nsw i32 %group.2342, 1
  %exitcond356.not = icmp eq i32 %inc96, %group.0
  br i1 %exitcond356.not, label %for.body86.for.end97_crit_edge, label %for.body86.for.body86_crit_edge

for.body86.for.body86_crit_edge:                  ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body86

for.body86.for.end97_crit_edge:                   ; preds = %for.body86
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end97

for.end97:                                        ; preds = %for.body86.for.end97_crit_edge, %for.cond84.preheader.for.end97_crit_edge
  %nr_units.0.lcssa = phi i32 [ 0, %for.cond84.preheader.for.end97_crit_edge ], [ %add94, %for.body86.for.end97_crit_edge ]
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %group.0, i32 12) #22
  %30 = extractvalue { i32, i1 } %29, 1
  %31 = extractvalue { i32, i1 } %29, 0
  %spec.select.i.i = tail call i32 @llvm.uadd.sat.i32(i32 %31, i32 32) #22
  %spec.select.i.op.i = add i32 %spec.select.i.i, 3
  %spec.select.i.op.op.i = and i32 %spec.select.i.op.i, -4
  %and.i = select i1 %30, i32 0, i32 %spec.select.i.op.op.i
  %mul.i = shl i32 %nr_units.0.lcssa, 2
  %add1.i = add i32 %and.i, 4095
  %add2.i = add i32 %add1.i, %mul.i
  %and3.i = and i32 %add2.i, -4096
  %call.i.i314 = tail call ptr @memblock_alloc_try_nid(i32 noundef %and3.i, i32 noundef 4096, i32 noundef 0, i32 noundef 0, i32 noundef -1) #22
  %tobool.not.i = icmp eq ptr %call.i.i314, null
  br i1 %tobool.not.i, label %for.end97.cleanup178_crit_edge, label %if.end.i

for.end97.cleanup178_crit_edge:                   ; preds = %for.end97
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup178

if.end.i:                                         ; preds = %for.end97
  %add.ptr.i = getelementptr i8, ptr %call.i.i314, i32 %and.i
  %cpu_map.i = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i.i314, i32 1, i32 2
  %32 = ptrtoint ptr %cpu_map.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %add.ptr.i, ptr %cpu_map.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_units.0.lcssa)
  %cmp29.i = icmp sgt i32 %nr_units.0.lcssa, 0
  br i1 %cmp29.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.if.end102_crit_edge

if.end.i.if.end102_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end102

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %unit.030.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.i.for.body.i_crit_edge ]
  %33 = ptrtoint ptr %cpu_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cpu_map.i, align 4
  %arrayidx8.i = getelementptr i32, ptr %34, i32 %unit.030.i
  %35 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 4, ptr %arrayidx8.i, align 4
  %inc.i = add nuw nsw i32 %unit.030.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %nr_units.0.lcssa
  br i1 %exitcond.not.i, label %for.body.i.if.end102_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.body.i.if.end102_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end102

if.end102:                                        ; preds = %for.body.i.if.end102_crit_edge, %if.end.i.if.end102_crit_edge
  %nr_groups9.i = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 7
  %36 = ptrtoint ptr %nr_groups9.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %group.0, ptr %nr_groups9.i, align 4
  %__ai_size.i = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 6
  %37 = ptrtoint ptr %__ai_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %and3.i, ptr %__ai_size.i, align 4
  br i1 %cmp85341, label %for.body107.lr.ph, label %if.end102.for.end120_crit_edge

if.end102.for.end120_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end120

for.body107.lr.ph:                                ; preds = %if.end102
  %38 = ptrtoint ptr %cpu_map.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cpu_map.i, align 4
  %sub114 = add i32 %best_upa.2, -1
  br label %for.body107

for.body107:                                      ; preds = %for.body107.for.body107_crit_edge, %for.body107.lr.ph
  %cpu_map.0347 = phi ptr [ %39, %for.body107.lr.ph ], [ %add.ptr, %for.body107.for.body107_crit_edge ]
  %group.3346 = phi i32 [ 0, %for.body107.lr.ph ], [ %inc119, %for.body107.for.body107_crit_edge ]
  %cpu_map110 = getelementptr %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 8, i32 %group.3346, i32 2
  %40 = ptrtoint ptr %cpu_map110 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %cpu_map.0347, ptr %cpu_map110, align 4
  %arrayidx113 = getelementptr [4 x i32], ptr @pcpu_build_alloc_info.group_cnt, i32 0, i32 %group.3346
  %41 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx113, align 4
  %add115 = add i32 %sub114, %42
  %43 = srem i32 %add115, %best_upa.2
  %mul117 = sub i32 %add115, %43
  %add.ptr = getelementptr i32, ptr %cpu_map.0347, i32 %mul117
  %inc119 = add nuw nsw i32 %group.3346, 1
  %exitcond357.not = icmp eq i32 %inc119, %group.0
  br i1 %exitcond357.not, label %for.body107.for.end120_crit_edge, label %for.body107.for.body107_crit_edge

for.body107.for.body107_crit_edge:                ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body107

for.body107.for.end120_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end120

for.end120:                                       ; preds = %for.body107.for.end120_crit_edge, %if.end102.for.end120_crit_edge
  %44 = ptrtoint ptr %call.i.i314 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 sub (i32 ptrtoint (ptr @__per_cpu_end to i32), i32 ptrtoint (ptr @__per_cpu_start to i32)), ptr %call.i.i314, align 4
  %reserved_size122 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 1
  %45 = ptrtoint ptr %reserved_size122 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %reserved_size, ptr %reserved_size122, align 4
  %dyn_size123 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 2
  %46 = ptrtoint ptr %dyn_size123 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %sub3, ptr %dyn_size123, align 4
  %div124 = udiv i32 %mul, %best_upa.2
  %unit_size = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 3
  %47 = ptrtoint ptr %unit_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %div124, ptr %unit_size, align 4
  %atom_size125 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 4
  %48 = ptrtoint ptr %atom_size125 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %atom_size, ptr %atom_size125, align 4
  %alloc_size126 = getelementptr inbounds %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 5
  %49 = ptrtoint ptr %alloc_size126 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul, ptr %alloc_size126, align 4
  br i1 %cmp85341, label %for.body129.lr.ph, label %for.end120.do.body160_crit_edge

for.end120.do.body160_crit_edge:                  ; preds = %for.end120
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body160

for.body129.lr.ph:                                ; preds = %for.end120
  %sub150 = add i32 %best_upa.2, -1
  br label %for.body129

for.body129:                                      ; preds = %for.end146.for.body129_crit_edge, %for.body129.lr.ph
  %unit.0354 = phi i32 [ 0, %for.body129.lr.ph ], [ %add156, %for.end146.for.body129_crit_edge ]
  %group.4352 = phi i32 [ 0, %for.body129.lr.ph ], [ %inc158, %for.end146.for.body129_crit_edge ]
  %arrayidx131 = getelementptr %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 8, i32 %group.4352
  %50 = ptrtoint ptr %unit_size to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %unit_size, align 4
  %mul133 = mul i32 %51, %unit.0354
  %base_offset = getelementptr %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 8, i32 %group.4352, i32 1
  %52 = ptrtoint ptr %base_offset to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %mul133, ptr %base_offset, align 4
  %call135348 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %53 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call135348, i32 %53)
  %cmp136349 = icmp ult i32 %call135348, %53
  br i1 %cmp136349, label %for.body137.lr.ph, label %for.body129.for.end146_crit_edge

for.body129.for.end146_crit_edge:                 ; preds = %for.body129
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end146

for.body137.lr.ph:                                ; preds = %for.body129
  %cpu_map141 = getelementptr %struct.pcpu_alloc_info, ptr %call.i.i314, i32 0, i32 8, i32 %group.4352, i32 2
  br label %for.body137

for.body137:                                      ; preds = %if.end145.for.body137_crit_edge, %for.body137.lr.ph
  %call135350 = phi i32 [ %call135348, %for.body137.lr.ph ], [ %call135, %if.end145.for.body137_crit_edge ]
  %arrayidx138 = getelementptr [4 x i32], ptr @pcpu_build_alloc_info.group_map, i32 0, i32 %call135350
  %54 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx138, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %group.4352)
  %cmp139 = icmp eq i32 %55, %group.4352
  br i1 %cmp139, label %if.then140, label %for.body137.if.end145_crit_edge

for.body137.if.end145_crit_edge:                  ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end145

if.then140:                                       ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #24
  %56 = ptrtoint ptr %cpu_map141 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cpu_map141, align 4
  %58 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx131, align 4
  %inc143 = add i32 %59, 1
  store i32 %inc143, ptr %arrayidx131, align 4
  %arrayidx144 = getelementptr i32, ptr %57, i32 %59
  %60 = ptrtoint ptr %arrayidx144 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call135350, ptr %arrayidx144, align 4
  br label %if.end145

if.end145:                                        ; preds = %if.then140, %for.body137.if.end145_crit_edge
  %call135 = tail call i32 @cpumask_next(i32 noundef %call135350, ptr noundef nonnull @__cpu_possible_mask) #30
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %cmp136 = icmp ult i32 %call135, %61
  br i1 %cmp136, label %if.end145.for.body137_crit_edge, label %if.end145.for.end146_crit_edge

if.end145.for.end146_crit_edge:                   ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end146

if.end145.for.body137_crit_edge:                  ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body137

for.end146:                                       ; preds = %if.end145.for.end146_crit_edge, %for.body129.for.end146_crit_edge
  %62 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx131, align 4
  %add151 = add i32 %sub150, %63
  %64 = srem i32 %add151, %best_upa.2
  %mul153 = sub i32 %add151, %64
  store i32 %mul153, ptr %arrayidx131, align 4
  %add156 = add i32 %mul153, %unit.0354
  %inc158 = add nuw nsw i32 %group.4352, 1
  %exitcond358.not = icmp eq i32 %inc158, %group.0
  br i1 %exitcond358.not, label %for.end146.do.body160_crit_edge, label %for.end146.for.body129_crit_edge

for.end146.for.body129_crit_edge:                 ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body129

for.end146.do.body160_crit_edge:                  ; preds = %for.end146
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body160

do.body160:                                       ; preds = %for.end146.do.body160_crit_edge, %for.end120.do.body160_crit_edge
  %unit.0.lcssa = phi i32 [ 0, %for.end120.do.body160_crit_edge ], [ %add156, %for.end146.do.body160_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %unit.0.lcssa, i32 %nr_units.0.lcssa)
  %cmp161.not = icmp eq i32 %unit.0.lcssa, %nr_units.0.lcssa
  br i1 %cmp161.not, label %do.body160.cleanup178_crit_edge, label %do.body169, !prof !386

do.body160.cleanup178_crit_edge:                  ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup178

do.body169:                                       ; preds = %do.body160
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2988, 0\0A.popsection", ""() #22, !srcloc !423
  unreachable

cleanup178:                                       ; preds = %do.body160.cleanup178_crit_edge, %for.end97.cleanup178_crit_edge
  %retval.0 = phi ptr [ %call.i.i314, %do.body160.cleanup178_crit_edge ], [ inttoptr (i32 -12 to ptr), %for.end97.cleanup178_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_fc_alloc(i32 noundef %size, i32 noundef %align) unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @arm_dma_zone_size to i32))
  %0 = load i32, ptr @arm_dma_zone_size, align 4
  %1 = add i32 %0, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1342177279, i32 %1)
  %2 = icmp ult i32 %1, 1342177279
  %add = add i32 %0, -1073741824
  %cond = select i1 %2, i32 %add, i32 -1
  %call = tail call i32 @__virt_to_phys(i32 noundef %cond) #22
  %call.i = tail call ptr @memblock_alloc_try_nid(i32 noundef %size, i32 noundef %align, i32 noundef %call, i32 noundef 0, i32 noundef -1) #22
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_free(ptr noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @setup_per_cpu_areas() local_unnamed_addr #8 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcpu_embed_first_chunk(i32 noundef 8192, i32 noundef 20480, i32 noundef 4096, ptr noundef null, ptr undef) #28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.99) #27
  unreachable

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @pcpu_base_addr, align 4
  %1 = ptrtoint ptr %0 to i32
  %sub = sub i32 %1, ptrtoint (ptr @__per_cpu_start to i32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call17 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %2)
  %cmp28 = icmp ult i32 %call17, %2
  br i1 %cmp28, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %3 = load ptr, ptr @pcpu_unit_offsets, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call19 = phi i32 [ %call17, %for.body.lr.ph ], [ %call1, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %3, i32 %call19
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %sub, %5
  %arrayidx3 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %arrayidx3, align 4
  %call1 = tail call i32 @cpumask_next(i32 noundef %call19, ptr noundef nonnull @__cpu_possible_mask) #25
  %cmp2 = icmp ult i32 %call1, %2
  br i1 %cmp2, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @pcpu_nr_pages() local_unnamed_addr #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pcpu_nr_populated, align 4
  %1 = load i32, ptr @pcpu_nr_units, align 4
  %mul = mul i32 %1, %0
  ret i32 %mul
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @percpu_enable_async() #12 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @pcpu_async_enabled, align 1
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_alloc_percpu(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %reserved = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reserved, align 4, !range !393
  %4 = zext i8 %3 to i32
  %is_atomic = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %is_atomic to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_atomic, align 1, !range !393
  %7 = zext i8 %6 to i32
  %size = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %align = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %align, align 4
  %base_addr = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base_addr, align 4
  %off = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %1, i32 0, i32 6
  %14 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %off, align 4
  %ptr = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ptr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.111, i32 noundef %4, i32 noundef %7, i32 noundef %9, i32 noundef %11, ptr noundef %13, i32 noundef %15, ptr noundef %17) #22
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_free_percpu(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %base_addr = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  %off = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %off, align 4
  %ptr = getelementptr inbounds %struct.trace_event_raw_percpu_free_percpu, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ptr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.112, ptr noundef %3, i32 noundef %5, ptr noundef %7) #22
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_alloc_percpu_fail(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %reserved = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %reserved to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %reserved, align 4, !range !393
  %4 = zext i8 %3 to i32
  %is_atomic = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %is_atomic to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %is_atomic, align 1, !range !393
  %7 = zext i8 %6 to i32
  %size = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size, align 4
  %align = getelementptr inbounds %struct.trace_event_raw_percpu_alloc_percpu_fail, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %align to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %align, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.113, i32 noundef %4, i32 noundef %7, i32 noundef %9, i32 noundef %11) #22
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_create_chunk(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %base_addr = getelementptr inbounds %struct.trace_event_raw_percpu_create_chunk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.114, ptr noundef %3) #22
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_percpu_destroy_chunk(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %base_addr = getelementptr inbounds %struct.trace_event_raw_percpu_destroy_chunk, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr, align 4
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.114, ptr noundef %3) #22
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #22
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #13

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #14

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run7(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run3(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run1(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_killable_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_memcg_post_alloc_hook(ptr noundef %objcg, ptr noundef readonly %chunk, i32 noundef %off, i32 noundef %size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %objcg, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.end

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.end:                                           ; preds = %entry
  %tobool1.not = icmp eq ptr %chunk, null
  br i1 %tobool1.not, label %if.end.if.end.i.i.i128_crit_edge, label %land.rhs, !prof !387

if.end.if.end.i.i.i128_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i.i128

land.rhs:                                         ; preds = %if.end
  %obj_cgroups = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 14
  %0 = ptrtoint ptr %obj_cgroups to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %obj_cgroups, align 4
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool2.not, label %land.rhs.if.end.i.i.i128_crit_edge, label %if.then5, !prof !387

land.rhs.if.end.i.i.i128_crit_edge:               ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i.i128

if.then5:                                         ; preds = %land.rhs
  %shr = ashr i32 %off, 2
  %arrayidx = getelementptr ptr, ptr %1, i32 %shr
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %objcg, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !394
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i, label %if.then5.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then5.rcu_read_lock.exit_crit_edge:            ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then5
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 696, ptr noundef nonnull @.str.126) #22
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then5.rcu_read_lock.exit_crit_edge
  %memcg.i = getelementptr inbounds %struct.obj_cgroup, ptr %objcg, i32 0, i32 1
  %7 = ptrtoint ptr %memcg.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %memcg.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %9) #22
  %div3.i = and i32 %size, -4
  %mul1.i = mul i32 %call4.i.i.i, %size
  %add.i = add i32 %mul1.i, %div3.i
  %10 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !395
  %and.i.i = and i32 %10, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i17 = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i17, label %if.then21.i, label %do.end11.i

do.end11.i:                                       ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__mod_memcg_state(ptr noundef %8, i32 noundef 42, i32 noundef %add.i) #22
  br label %do.body23.i

if.then21.i:                                      ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @trace_hardirqs_off() #22
  tail call void @__mod_memcg_state(ptr noundef %8, i32 noundef 42, i32 noundef %add.i) #22
  tail call void @trace_hardirqs_on() #22
  br label %do.body23.i

do.body23.i:                                      ; preds = %if.then21.i, %do.end11.i
  %11 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !srcloc !396
  %and.i.i.i18 = and i32 %11, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i18)
  %tobool32.not.i = icmp eq i32 %and.i.i.i18, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body23.i.mod_memcg_state.exit_crit_edge, !prof !387

do.body23.i.mod_memcg_state.exit_crit_edge:       ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %mod_memcg_state.exit

if.then36.i:                                      ; preds = %do.body23.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @warn_bogus_irq_restore() #22
  br label %mod_memcg_state.exit

mod_memcg_state.exit:                             ; preds = %if.then36.i, %do.body23.i.mod_memcg_state.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %10) #22, !srcloc !397
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i19, label %mod_memcg_state.exit.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

mod_memcg_state.exit.rcu_read_unlock.exit_crit_edge: ; preds = %mod_memcg_state.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %mod_memcg_state.exit
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 724, ptr noundef nonnull @.str.127) #22
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %mod_memcg_state.exit.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !398
  %12 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i.i26 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i28 = add i32 %15, -1
  store volatile i32 %sub.i.i.i28, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  br label %if.end9

if.end.i.i.i128:                                  ; preds = %land.rhs.if.end.i.i.i128_crit_edge, %if.end.if.end.i.i.i128_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i.i127 = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %16) #22
  %div3.i130 = and i32 %size, -4
  %mul1.i131 = mul i32 %call4.i.i.i127, %size
  %add.i132 = add i32 %mul1.i131, %div3.i130
  tail call void @obj_cgroup_uncharge(ptr noundef nonnull %objcg, i32 noundef %add.i132) #22
  tail call fastcc void @obj_cgroup_put(ptr noundef nonnull %objcg)
  br label %if.end9

if.end9:                                          ; preds = %if.end.i.i.i128, %rcu_read_unlock.exit, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcpu_find_block_fit(ptr noundef %chunk, i32 noundef %alloc_bits, i32 noundef %align, i1 noundef zeroext %pop_only) unnamed_addr #0 align 64 {
entry:
  %bit_off = alloca i32, align 4
  %bits = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bit_off) #22
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bits) #22
  %contig_hint_start.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %contig_hint_start.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %contig_hint_start.i, align 4
  %sub.i = add i32 %align, -1
  %add.i = add i32 %sub.i, %1
  %neg.i = sub i32 0, %align
  %and.i = and i32 %add.i, %neg.i
  %sub3.i = sub i32 %alloc_bits, %1
  %add4.i = add i32 %sub3.i, %and.i
  %contig_hint.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 2
  %2 = ptrtoint ptr %contig_hint.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %contig_hint.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add4.i, i32 %3)
  %cmp.i.not = icmp sgt i32 %add4.i, %3
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %chunk_md1 = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4
  %4 = ptrtoint ptr %chunk_md1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chunk_md1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %land.lhs.true.i

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.end
  %scan_hint_start.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %scan_hint_start.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %scan_hint_start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %7)
  %cmp.i26 = icmp sgt i32 %1, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %alloc_bits)
  %cmp3.i = icmp slt i32 %5, %alloc_bits
  %or.cond.i = select i1 %cmp.i26, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  %add.i27 = add i32 %7, %5
  br label %pcpu_next_hint.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.end.if.end.i_crit_edge
  %first_free.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 6
  %8 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %first_free.i, align 4
  br label %pcpu_next_hint.exit

pcpu_next_hint.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i27, %if.then.i ], [ %9, %if.end.i ]
  %10 = ptrtoint ptr %bit_off to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %bit_off, align 4
  %11 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %bits, align 4
  call fastcc void @pcpu_next_fit_region(ptr noundef %chunk, i32 noundef %alloc_bits, i32 noundef %align, ptr noundef nonnull %bit_off, ptr noundef nonnull %bits)
  %nr_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 15
  %12 = ptrtoint ptr %bit_off to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bit_off, align 4
  %14 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_pages.i, align 4
  %16 = shl i32 %15, 10
  %div1.i.i34 = and i32 %16, 1073740800
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div1.i.i34)
  %cmp35 = icmp slt i32 %13, %div1.i.i34
  %17 = and i1 %cmp35, %pop_only
  br i1 %17, label %lor.lhs.false.lr.ph, label %pcpu_next_hint.exit.for.end_crit_edge

pcpu_next_hint.exit.for.end_crit_edge:            ; preds = %pcpu_next_hint.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

lor.lhs.false.lr.ph:                              ; preds = %pcpu_next_hint.exit
  %populated.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 18
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end6.lor.lhs.false_crit_edge, %lor.lhs.false.lr.ph
  %18 = phi i32 [ %13, %lor.lhs.false.lr.ph ], [ %25, %if.end6.lor.lhs.false_crit_edge ]
  %19 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits, align 4
  %mul.i = shl i32 %18, 2
  %shr.i = ashr i32 %mul.i, 12
  %add.i28 = add i32 %20, %18
  %mul1.i = shl i32 %add.i28, 2
  %sub.i29 = add i32 %mul1.i, 4095
  %shr3.i = lshr i32 %sub.i29, 12
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %populated.i, i32 noundef %shr3.i, i32 noundef %shr.i) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %shr3.i)
  %cmp.not.i = icmp ult i32 %call.i, %shr3.i
  br i1 %cmp.not.i, label %if.end6, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.end6:                                          ; preds = %lor.lhs.false
  %add6.i = add nuw i32 %call.i, 1
  %call7.i = tail call i32 @_find_next_bit_be(ptr noundef %populated.i, i32 noundef %shr3.i, i32 noundef %add6.i) #22
  %21 = shl i32 %call7.i, 10
  %div17.i = and i32 %21, 1073740800
  %22 = ptrtoint ptr %bit_off to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %div17.i, ptr %bit_off, align 4
  %23 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %bits, align 4
  call fastcc void @pcpu_next_fit_region(ptr noundef %chunk, i32 noundef %alloc_bits, i32 noundef %align, ptr noundef nonnull %bit_off, ptr noundef nonnull %bits)
  %24 = ptrtoint ptr %bit_off to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bit_off, align 4
  %26 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr_pages.i, align 4
  %28 = shl i32 %27, 10
  %div1.i.i = and i32 %28, 1073740800
  %cmp = icmp slt i32 %25, %div1.i.i
  br i1 %cmp, label %if.end6.lor.lhs.false_crit_edge, label %if.end6.for.end_crit_edge

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.end6.lor.lhs.false_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #24
  br label %lor.lhs.false

for.end:                                          ; preds = %if.end6.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %pcpu_next_hint.exit.for.end_crit_edge
  %.lcssa = phi i32 [ %13, %pcpu_next_hint.exit.for.end_crit_edge ], [ %18, %lor.lhs.false.for.end_crit_edge ], [ %25, %if.end6.for.end_crit_edge ]
  %29 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr_pages.i, align 4
  %31 = shl i32 %30, 10
  %div1.i.i32 = and i32 %31, 1073740800
  call void @__sanitizer_cov_trace_cmp4(i32 %.lcssa, i32 %div1.i.i32)
  %cmp8 = icmp eq i32 %.lcssa, %div1.i.i32
  %spec.select = select i1 %cmp8, i32 -1, i32 %.lcssa
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ %spec.select, %for.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bits) #22
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bit_off) #22
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcpu_alloc_area(ptr noundef %chunk, i32 noundef %alloc_bits, i32 noundef %align, i32 noundef %start) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %align, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool2.not = icmp eq i32 %0, 0
  br i1 %tobool2.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !387

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1220, i32 noundef 9, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %free_bytes.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 3
  %1 = ptrtoint ptr %free_bytes.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %free_bytes.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %2)
  %cmp.i118 = icmp slt i32 %2, 4
  br i1 %cmp.i118, label %if.end.pcpu_chunk_slot.exit_crit_edge, label %lor.lhs.false.i

if.end.pcpu_chunk_slot.exit_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_chunk_slot.exit

lor.lhs.false.i:                                  ; preds = %if.end
  %contig_hint.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 2
  %3 = ptrtoint ptr %contig_hint.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %contig_hint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp2.i = icmp eq i32 %4, 0
  br i1 %cmp2.i, label %lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge, label %if.end.i

lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_chunk_slot.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %mul.i = shl i32 %4, 2
  %5 = load i32, ptr @pcpu_unit_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %mul.i)
  %cmp.i.i = icmp eq i32 %5, %mul.i
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %6 = load i32, ptr @pcpu_free_slot, align 4
  br label %pcpu_chunk_slot.exit

if.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool.not.i.i.i.i = icmp eq i32 %mul.i, 0
  %7 = tail call i32 @llvm.ctlz.i32(i32 %mul.i, i1 true) #22, !range !389
  %sub.i.op.i.i.i = sub nsw i32 29, %7
  %8 = tail call i32 @llvm.smax.i32(i32 %sub.i.op.i.i.i, i32 1) #22
  %9 = select i1 %tobool.not.i.i.i.i, i32 1, i32 %8
  br label %pcpu_chunk_slot.exit

pcpu_chunk_slot.exit:                             ; preds = %if.end.i.i, %if.then.i.i, %lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge, %if.end.pcpu_chunk_slot.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %lor.lhs.false.i.pcpu_chunk_slot.exit_crit_edge ], [ 0, %if.end.pcpu_chunk_slot.exit_crit_edge ], [ %6, %if.then.i.i ], [ %9, %if.end.i.i ]
  %add = add i32 %alloc_bits, 1024
  %add27 = add i32 %add, %start
  %nr_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 15
  %10 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_pages.i, align 4
  %12 = shl i32 %11, 10
  %div1.i.i = and i32 %12, 1073740800
  %13 = tail call i32 @llvm.smin.i32(i32 %add27, i32 %div1.i.i)
  %alloc_map = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 6
  %14 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %alloc_map, align 4
  %call42.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %15, i32 noundef %13, i32 noundef %start) #22
  %add43.i = add i32 %call42.i, %sub
  %neg.i = sub i32 0, %align
  %and44.i = and i32 %add43.i, %neg.i
  %add145.i = add i32 %and44.i, %alloc_bits
  call void @__sanitizer_cov_trace_cmp4(i32 %add145.i, i32 %13)
  %cmp46.i = icmp ugt i32 %add145.i, %13
  br i1 %cmp46.i, label %pcpu_find_zero_area.exit.thread, label %pcpu_chunk_slot.exit.if.end.i120_crit_edge

pcpu_chunk_slot.exit.if.end.i120_crit_edge:       ; preds = %pcpu_chunk_slot.exit
  br label %if.end.i120

if.end.i120:                                      ; preds = %if.end14.i.if.end.i120_crit_edge, %pcpu_chunk_slot.exit.if.end.i120_crit_edge
  %area_off.0 = phi i32 [ %area_off.1, %if.end14.i.if.end.i120_crit_edge ], [ 0, %pcpu_chunk_slot.exit.if.end.i120_crit_edge ]
  %area_bits.0 = phi i32 [ %area_bits.1, %if.end14.i.if.end.i120_crit_edge ], [ 0, %pcpu_chunk_slot.exit.if.end.i120_crit_edge ]
  %add149.i = phi i32 [ %add1.i, %if.end14.i.if.end.i120_crit_edge ], [ %add145.i, %pcpu_chunk_slot.exit.if.end.i120_crit_edge ]
  %and47.i = phi i32 [ %and.i, %if.end14.i.if.end.i120_crit_edge ], [ %and44.i, %pcpu_chunk_slot.exit.if.end.i120_crit_edge ]
  %call2.i = tail call i32 @_find_next_bit_be(ptr noundef %15, i32 noundef %add149.i, i32 noundef %and47.i) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %call2.i, i32 %add149.i)
  %cmp3.i119 = icmp ult i32 %call2.i, %add149.i
  br i1 %cmp3.i119, label %if.then4.i, label %if.end.i120.pcpu_find_zero_area.exit_crit_edge

if.end.i120.pcpu_find_zero_area.exit_crit_edge:   ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_find_zero_area.exit

if.then4.i:                                       ; preds = %if.end.i120
  %sub.i = sub i32 %call2.i, %and47.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %area_bits.0)
  %cmp5.i = icmp ugt i32 %sub.i, %area_bits.0
  br i1 %cmp5.i, label %if.then4.i.if.then13.i_crit_edge, label %lor.lhs.false.i121

if.then4.i.if.then13.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then13.i

lor.lhs.false.i121:                               ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %area_bits.0)
  %cmp6.i = icmp eq i32 %sub.i, %area_bits.0
  br i1 %cmp6.i, label %land.lhs.true.i, label %lor.lhs.false.i121.if.end14.i_crit_edge

lor.lhs.false.i121.if.end14.i_crit_edge:          ; preds = %lor.lhs.false.i121
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14.i

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i121
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %area_off.0)
  %tobool.not.i = icmp eq i32 %area_off.0, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.if.end14.i_crit_edge, label %land.lhs.true7.i

land.lhs.true.i.if.end14.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14.i

land.lhs.true7.i:                                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %tobool8.not.i = icmp eq i32 %and47.i, 0
  br i1 %tobool8.not.i, label %land.lhs.true7.i.if.then13.i_crit_edge, label %lor.lhs.false9.i

land.lhs.true7.i.if.then13.i_crit_edge:           ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then13.i

lor.lhs.false9.i:                                 ; preds = %land.lhs.true7.i
  %16 = tail call i32 @llvm.cttz.i32(i32 %and47.i, i1 true) #22, !range !389
  %17 = tail call i32 @llvm.cttz.i32(i32 %area_off.0, i1 true) #22, !range !389
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %17)
  %cmp12.i = icmp ugt i32 %16, %17
  br i1 %cmp12.i, label %lor.lhs.false9.i.if.then13.i_crit_edge, label %lor.lhs.false9.i.if.end14.i_crit_edge

lor.lhs.false9.i.if.end14.i_crit_edge:            ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end14.i

lor.lhs.false9.i.if.then13.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false9.i.if.then13.i_crit_edge, %land.lhs.true7.i.if.then13.i_crit_edge, %if.then4.i.if.then13.i_crit_edge
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %lor.lhs.false9.i.if.end14.i_crit_edge, %land.lhs.true.i.if.end14.i_crit_edge, %lor.lhs.false.i121.if.end14.i_crit_edge
  %area_off.1 = phi i32 [ %and47.i, %if.then13.i ], [ 0, %land.lhs.true.i.if.end14.i_crit_edge ], [ %area_off.0, %lor.lhs.false9.i.if.end14.i_crit_edge ], [ %area_off.0, %lor.lhs.false.i121.if.end14.i_crit_edge ]
  %area_bits.1 = phi i32 [ %sub.i, %if.then13.i ], [ %area_bits.0, %land.lhs.true.i.if.end14.i_crit_edge ], [ %area_bits.0, %lor.lhs.false9.i.if.end14.i_crit_edge ], [ %area_bits.0, %lor.lhs.false.i121.if.end14.i_crit_edge ]
  %add15.i = add nuw i32 %call2.i, 1
  %call.i122 = tail call i32 @_find_next_zero_bit_be(ptr noundef %15, i32 noundef %13, i32 noundef %add15.i) #22
  %add.i = add i32 %call.i122, %sub
  %and.i = and i32 %add.i, %neg.i
  %add1.i = add i32 %and.i, %alloc_bits
  %cmp.i123 = icmp ugt i32 %add1.i, %13
  br i1 %cmp.i123, label %if.end14.i.pcpu_find_zero_area.exit_crit_edge, label %if.end14.i.if.end.i120_crit_edge

if.end14.i.if.end.i120_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i120

if.end14.i.pcpu_find_zero_area.exit_crit_edge:    ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_find_zero_area.exit

pcpu_find_zero_area.exit:                         ; preds = %if.end14.i.pcpu_find_zero_area.exit_crit_edge, %if.end.i120.pcpu_find_zero_area.exit_crit_edge
  %area_off.2 = phi i32 [ %area_off.1, %if.end14.i.pcpu_find_zero_area.exit_crit_edge ], [ %area_off.0, %if.end.i120.pcpu_find_zero_area.exit_crit_edge ]
  %area_bits.2 = phi i32 [ %area_bits.1, %if.end14.i.pcpu_find_zero_area.exit_crit_edge ], [ %area_bits.0, %if.end.i120.pcpu_find_zero_area.exit_crit_edge ]
  %retval.0.i124 = phi i32 [ %add1.i, %if.end14.i.pcpu_find_zero_area.exit_crit_edge ], [ %and47.i, %if.end.i120.pcpu_find_zero_area.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i124, i32 %13)
  %cmp36.not = icmp slt i32 %retval.0.i124, %13
  br i1 %cmp36.not, label %if.end38, label %pcpu_find_zero_area.exit.cleanup_crit_edge

pcpu_find_zero_area.exit.cleanup_crit_edge:       ; preds = %pcpu_find_zero_area.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

pcpu_find_zero_area.exit.thread:                  ; preds = %pcpu_chunk_slot.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %add145.i, i32 %13)
  %cmp36.not141 = icmp slt i32 %add145.i, %13
  br i1 %cmp36.not141, label %pcpu_find_zero_area.exit.thread.if.end41_crit_edge, label %pcpu_find_zero_area.exit.thread.cleanup_crit_edge

pcpu_find_zero_area.exit.thread.cleanup_crit_edge: ; preds = %pcpu_find_zero_area.exit.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

pcpu_find_zero_area.exit.thread.if.end41_crit_edge: ; preds = %pcpu_find_zero_area.exit.thread
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end41

if.end38:                                         ; preds = %pcpu_find_zero_area.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %area_bits.2)
  %tobool39.not = icmp eq i32 %area_bits.2, 0
  br i1 %tobool39.not, label %if.end38.if.end41_crit_edge, label %if.then40

if.end38.if.end41_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end41

if.then40:                                        ; preds = %if.end38
  %and.i.i125 = and i32 %area_off.2, 1023
  %add.i126 = add i32 %and.i.i125, %area_bits.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add.i126)
  %cmp.i127 = icmp ugt i32 %add.i126, 1024
  br i1 %cmp.i127, label %if.then40.if.end41_crit_edge, label %if.end.i131

if.then40.if.end41_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end41

if.end.i131:                                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #24
  %div1.i.i128 = lshr i32 %area_off.2, 10
  %md_blocks.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 8
  %18 = ptrtoint ptr %md_blocks.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %md_blocks.i, align 4
  %add.ptr.i129 = getelementptr %struct.pcpu_block_md, ptr %19, i32 %div1.i.i128
  %20 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %alloc_map, align 4
  %22 = shl nuw nsw i32 %div1.i.i128, 5
  %add.ptr.i.i130 = getelementptr i32, ptr %21, i32 %22
  %call5.i.i = tail call i32 @_find_last_bit(ptr noundef %add.ptr.i.i130, i32 noundef %and.i.i125) #22
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i125, i32 %call5.i.i)
  %cmp4.i = icmp eq i32 %and.i.i125, %call5.i.i
  %add5.i = add i32 %call5.i.i, 1
  %spec.select.i = select i1 %cmp4.i, i32 0, i32 %add5.i
  tail call fastcc void @pcpu_block_update(ptr noundef %add.ptr.i129, i32 noundef %spec.select.i, i32 noundef %add.i126) #22
  br label %if.end41

if.end41:                                         ; preds = %if.end.i131, %if.then40.if.end41_crit_edge, %if.end38.if.end41_crit_edge, %pcpu_find_zero_area.exit.thread.if.end41_crit_edge
  %retval.0.i124144151 = phi i32 [ %retval.0.i124, %if.end38.if.end41_crit_edge ], [ %retval.0.i124, %if.then40.if.end41_crit_edge ], [ %retval.0.i124, %if.end.i131 ], [ %add145.i, %pcpu_find_zero_area.exit.thread.if.end41_crit_edge ]
  %23 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %alloc_map, align 4
  tail call void @__bitmap_set(ptr noundef %24, i32 noundef %retval.0.i124144151, i32 noundef %alloc_bits) #22
  %bound_map = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 7
  %25 = ptrtoint ptr %bound_map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bound_map, align 4
  tail call void @_set_bit(i32 noundef %retval.0.i124144151, ptr noundef %26) #22
  %27 = ptrtoint ptr %bound_map to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %bound_map, align 4
  %add44 = add i32 %retval.0.i124144151, 1
  %sub45 = add i32 %alloc_bits, -1
  tail call void @__bitmap_clear(ptr noundef %28, i32 noundef %add44, i32 noundef %sub45) #22
  %add46 = add i32 %retval.0.i124144151, %alloc_bits
  %29 = ptrtoint ptr %bound_map to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bound_map, align 4
  tail call void @_set_bit(i32 noundef %add46, ptr noundef %30) #22
  %mul.neg = mul i32 %alloc_bits, -4
  %31 = ptrtoint ptr %free_bytes.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %free_bytes.i, align 4
  %sub48 = add i32 %32, %mul.neg
  store i32 %sub48, ptr %free_bytes.i, align 4
  %first_free = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 6
  %33 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %first_free, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i124144151, i32 %34)
  %cmp49 = icmp eq i32 %retval.0.i124144151, %34
  br i1 %cmp49, label %if.then50, label %if.end41.if.end56_crit_edge

if.end41.if.end56_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end56

if.then50:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #24
  %35 = ptrtoint ptr %alloc_map to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %alloc_map, align 4
  %37 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %nr_pages.i, align 4
  %39 = shl i32 %38, 10
  %div1.i.i135 = and i32 %39, 1073740800
  %call54 = tail call i32 @_find_next_zero_bit_be(ptr noundef %36, i32 noundef %div1.i.i135, i32 noundef %add46) #22
  %40 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %call54, ptr %first_free, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then50, %if.end41.if.end56_crit_edge
  tail call fastcc void @pcpu_block_update_hint_alloc(ptr noundef %chunk, i32 noundef %retval.0.i124144151, i32 noundef %alloc_bits)
  tail call fastcc void @pcpu_chunk_relocate(ptr noundef %chunk, i32 noundef %retval.0.i)
  %mul57 = shl i32 %retval.0.i124144151, 2
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %pcpu_find_zero_area.exit.thread.cleanup_crit_edge, %pcpu_find_zero_area.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %mul57, %if.end56 ], [ -1, %pcpu_find_zero_area.exit.cleanup_crit_edge ], [ -1, %pcpu_find_zero_area.exit.thread.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_create_chunk(i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pcpu_chunk_struct_size, align 4
  %call.i.i = tail call zeroext i1 @slab_is_available() #22
  br i1 %call.i.i, label %if.end38.i.i, label %land.rhs.i.i

land.rhs.i.i:                                     ; preds = %entry
  %.b47.i.i = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  br i1 %.b47.i.i, label %land.rhs.i.i.cleanup_crit_edge, label %if.then.i.i, !prof !386

land.rhs.i.i.cleanup_crit_edge:                   ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %cleanup

if.end38.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %0)
  %cmp.i.i = icmp ult i32 %0, 4097
  %or.i.i.i = or i32 %gfp, 256
  br i1 %cmp.i.i, label %if.end8.i.i.i.i, label %if.else.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit.i

if.else.i.i:                                      ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %call41.i.i = tail call noalias ptr @__vmalloc(i32 noundef %0, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit.i

pcpu_mem_zalloc.exit.i:                           ; preds = %if.else.i.i, %if.end8.i.i.i.i
  %retval.0.i.i = phi ptr [ %call41.i.i, %if.else.i.i ], [ %call9.i.i.i.i, %if.end8.i.i.i.i ]
  %tobool.not.i = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not.i, label %pcpu_mem_zalloc.exit.i.cleanup_crit_edge, label %if.end.i

pcpu_mem_zalloc.exit.i.cleanup_crit_edge:         ; preds = %pcpu_mem_zalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end.i:                                         ; preds = %pcpu_mem_zalloc.exit.i
  %list.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list.i, ptr %prev.i.i, align 4
  %3 = load i32, ptr @pcpu_unit_pages, align 4
  %nr_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 15
  %4 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nr_pages.i, align 4
  %5 = shl i32 %3, 10
  %div1.i.i.i = and i32 %5, 1073740800
  %sub.i = lshr exact i32 %div1.i.i.i, 3
  %call.i68.i = tail call zeroext i1 @slab_is_available() #22
  br i1 %call.i68.i, label %if.end38.i74.i, label %land.rhs.i70.i

land.rhs.i70.i:                                   ; preds = %if.end.i
  %.b47.i69.i = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  br i1 %.b47.i69.i, label %land.rhs.i70.i.pcpu_mem_zalloc.exit109.thread.i_crit_edge, label %if.then.i71.i, !prof !386

land.rhs.i70.i.pcpu_mem_zalloc.exit109.thread.i_crit_edge: ; preds = %land.rhs.i70.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_mem_zalloc.exit109.thread.i

if.then.i71.i:                                    ; preds = %land.rhs.i70.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %pcpu_mem_zalloc.exit109.thread.i

if.end38.i74.i:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32776, i32 %div1.i.i.i)
  %cmp.i72.i = icmp ult i32 %div1.i.i.i, 32776
  br i1 %cmp.i72.i, label %if.end8.i.i.i105.i, label %if.else.i107.i

if.end8.i.i.i105.i:                               ; preds = %if.end38.i74.i
  call void @__sanitizer_cov_trace_pc() #24
  %call9.i.i.i104.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %sub.i, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit109.i

if.else.i107.i:                                   ; preds = %if.end38.i74.i
  call void @__sanitizer_cov_trace_pc() #24
  %call41.i106.i = tail call noalias ptr @__vmalloc(i32 noundef %sub.i, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit109.i

pcpu_mem_zalloc.exit109.thread.i:                 ; preds = %if.then.i71.i, %land.rhs.i70.i.pcpu_mem_zalloc.exit109.thread.i_crit_edge
  %alloc_map248.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %alloc_map248.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %alloc_map248.i, align 4
  br label %alloc_map_fail.i

pcpu_mem_zalloc.exit109.i:                        ; preds = %if.else.i107.i, %if.end8.i.i.i105.i
  %retval.0.i108.i = phi ptr [ %call41.i106.i, %if.else.i107.i ], [ %call9.i.i.i104.i, %if.end8.i.i.i105.i ]
  %alloc_map.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %alloc_map.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %retval.0.i108.i, ptr %alloc_map.i, align 4
  %tobool4.not.i = icmp eq ptr %retval.0.i108.i, null
  br i1 %tobool4.not.i, label %pcpu_mem_zalloc.exit109.i.alloc_map_fail.i_crit_edge, label %if.end6.i

pcpu_mem_zalloc.exit109.i.alloc_map_fail.i_crit_edge: ; preds = %pcpu_mem_zalloc.exit109.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %alloc_map_fail.i

if.end6.i:                                        ; preds = %pcpu_mem_zalloc.exit109.i
  %8 = or i32 %sub.i, 4
  %call.i110.i = tail call zeroext i1 @slab_is_available() #22
  br i1 %call.i110.i, label %if.end38.i116.i, label %land.rhs.i112.i

land.rhs.i112.i:                                  ; preds = %if.end6.i
  %.b47.i111.i = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  br i1 %.b47.i111.i, label %land.rhs.i112.i.pcpu_mem_zalloc.exit150.thread.i_crit_edge, label %if.then.i113.i, !prof !386

land.rhs.i112.i.pcpu_mem_zalloc.exit150.thread.i_crit_edge: ; preds = %land.rhs.i112.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_mem_zalloc.exit150.thread.i

if.then.i113.i:                                   ; preds = %land.rhs.i112.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %pcpu_mem_zalloc.exit150.thread.i

if.end38.i116.i:                                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %8)
  %cmp.i114.i = icmp ult i32 %8, 4097
  br i1 %cmp.i114.i, label %if.end8.i.i.i146.i, label %if.else.i148.i

if.end8.i.i.i146.i:                               ; preds = %if.end38.i116.i
  call void @__sanitizer_cov_trace_pc() #24
  %call9.i.i.i145.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit150.i

if.else.i148.i:                                   ; preds = %if.end38.i116.i
  call void @__sanitizer_cov_trace_pc() #24
  %call41.i147.i = tail call noalias ptr @__vmalloc(i32 noundef %8, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit150.i

pcpu_mem_zalloc.exit150.thread.i:                 ; preds = %if.then.i113.i, %land.rhs.i112.i.pcpu_mem_zalloc.exit150.thread.i_crit_edge
  %bound_map256.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 7
  %9 = ptrtoint ptr %bound_map256.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %bound_map256.i, align 4
  br label %bound_map_fail.i

pcpu_mem_zalloc.exit150.i:                        ; preds = %if.else.i148.i, %if.end8.i.i.i146.i
  %retval.0.i149.i = phi ptr [ %call41.i147.i, %if.else.i148.i ], [ %call9.i.i.i145.i, %if.end8.i.i.i146.i ]
  %bound_map.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %bound_map.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i149.i, ptr %bound_map.i, align 4
  %tobool14.not.i = icmp eq ptr %retval.0.i149.i, null
  br i1 %tobool14.not.i, label %pcpu_mem_zalloc.exit150.i.bound_map_fail.i_crit_edge, label %if.end16.i

pcpu_mem_zalloc.exit150.i.bound_map_fail.i_crit_edge: ; preds = %pcpu_mem_zalloc.exit150.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %bound_map_fail.i

if.end16.i:                                       ; preds = %pcpu_mem_zalloc.exit150.i
  %11 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_pages.i, align 4
  %mul.i.i = shl i32 %12, 5
  %mul18.i = and i32 %mul.i.i, 33554400
  %call.i152.i = tail call zeroext i1 @slab_is_available() #22
  br i1 %call.i152.i, label %if.end38.i158.i, label %land.rhs.i154.i

land.rhs.i154.i:                                  ; preds = %if.end16.i
  %.b47.i153.i = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  br i1 %.b47.i153.i, label %land.rhs.i154.i.pcpu_mem_zalloc.exit193.thread.i_crit_edge, label %if.then.i155.i, !prof !386

land.rhs.i154.i.pcpu_mem_zalloc.exit193.thread.i_crit_edge: ; preds = %land.rhs.i154.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_mem_zalloc.exit193.thread.i

if.then.i155.i:                                   ; preds = %land.rhs.i154.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %pcpu_mem_zalloc.exit193.thread.i

if.end38.i158.i:                                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %mul18.i)
  %cmp.i156.i = icmp ult i32 %mul18.i, 4097
  br i1 %cmp.i156.i, label %if.end8.i.i.i189.i, label %if.else.i191.i

if.end8.i.i.i189.i:                               ; preds = %if.end38.i158.i
  call void @__sanitizer_cov_trace_pc() #24
  %call9.i.i.i188.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul18.i, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit193.i

if.else.i191.i:                                   ; preds = %if.end38.i158.i
  call void @__sanitizer_cov_trace_pc() #24
  %call41.i190.i = tail call noalias ptr @__vmalloc(i32 noundef %mul18.i, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit193.i

pcpu_mem_zalloc.exit193.thread.i:                 ; preds = %if.then.i155.i, %land.rhs.i154.i.pcpu_mem_zalloc.exit193.thread.i_crit_edge
  %md_blocks259.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 8
  %13 = ptrtoint ptr %md_blocks259.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %md_blocks259.i, align 4
  br label %md_blocks_fail.i

pcpu_mem_zalloc.exit193.i:                        ; preds = %if.else.i191.i, %if.end8.i.i.i189.i
  %retval.0.i192.i = phi ptr [ %call41.i190.i, %if.else.i191.i ], [ %call9.i.i.i188.i, %if.end8.i.i.i189.i ]
  %md_blocks.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 8
  %14 = ptrtoint ptr %md_blocks.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %retval.0.i192.i, ptr %md_blocks.i, align 4
  %tobool21.not.i = icmp eq ptr %retval.0.i192.i, null
  br i1 %tobool21.not.i, label %pcpu_mem_zalloc.exit193.i.md_blocks_fail.i_crit_edge, label %if.end23.i

pcpu_mem_zalloc.exit193.i.md_blocks_fail.i_crit_edge: ; preds = %pcpu_mem_zalloc.exit193.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %md_blocks_fail.i

if.end23.i:                                       ; preds = %pcpu_mem_zalloc.exit193.i
  %call24.i = tail call zeroext i1 @mem_cgroup_kmem_disabled() #22
  br i1 %call24.i, label %if.end23.i.if.end33.i_crit_edge, label %if.then25.i

if.end23.i.if.end33.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end33.i

if.then25.i:                                      ; preds = %if.end23.i
  %15 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_pages.i, align 4
  %17 = shl i32 %16, 12
  %call.i196.i = tail call zeroext i1 @slab_is_available() #22
  br i1 %call.i196.i, label %if.end38.i202.i, label %land.rhs.i198.i

land.rhs.i198.i:                                  ; preds = %if.then25.i
  %.b47.i197.i = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  br i1 %.b47.i197.i, label %land.rhs.i198.i.pcpu_mem_zalloc.exit237.thread.i_crit_edge, label %if.then.i199.i, !prof !386

land.rhs.i198.i.pcpu_mem_zalloc.exit237.thread.i_crit_edge: ; preds = %land.rhs.i198.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_mem_zalloc.exit237.thread.i

if.then.i199.i:                                   ; preds = %land.rhs.i198.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %pcpu_mem_zalloc.exit237.thread.i

if.end38.i202.i:                                  ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %17)
  %cmp.i200.i = icmp ult i32 %17, 4097
  br i1 %cmp.i200.i, label %if.end8.i.i.i233.i, label %if.else.i235.i

if.end8.i.i.i233.i:                               ; preds = %if.end38.i202.i
  call void @__sanitizer_cov_trace_pc() #24
  %call9.i.i.i232.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit237.i

if.else.i235.i:                                   ; preds = %if.end38.i202.i
  call void @__sanitizer_cov_trace_pc() #24
  %call41.i234.i = tail call noalias ptr @__vmalloc(i32 noundef %17, i32 noundef %or.i.i.i) #32
  br label %pcpu_mem_zalloc.exit237.i

pcpu_mem_zalloc.exit237.thread.i:                 ; preds = %if.then.i199.i, %land.rhs.i198.i.pcpu_mem_zalloc.exit237.thread.i_crit_edge
  %obj_cgroups268.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 14
  %18 = ptrtoint ptr %obj_cgroups268.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %obj_cgroups268.i, align 4
  br label %objcg_fail.i

pcpu_mem_zalloc.exit237.i:                        ; preds = %if.else.i235.i, %if.end8.i.i.i233.i
  %retval.0.i236.i = phi ptr [ %call41.i234.i, %if.else.i235.i ], [ %call9.i.i.i232.i, %if.end8.i.i.i233.i ]
  %obj_cgroups.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 14
  %19 = ptrtoint ptr %obj_cgroups.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %retval.0.i236.i, ptr %obj_cgroups.i, align 4
  %tobool30.not.i = icmp eq ptr %retval.0.i236.i, null
  br i1 %tobool30.not.i, label %pcpu_mem_zalloc.exit237.i.objcg_fail.i_crit_edge, label %pcpu_mem_zalloc.exit237.i.if.end33.i_crit_edge

pcpu_mem_zalloc.exit237.i.if.end33.i_crit_edge:   ; preds = %pcpu_mem_zalloc.exit237.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end33.i

pcpu_mem_zalloc.exit237.i.objcg_fail.i_crit_edge: ; preds = %pcpu_mem_zalloc.exit237.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %objcg_fail.i

if.end33.i:                                       ; preds = %pcpu_mem_zalloc.exit237.i.if.end33.i_crit_edge, %if.end23.i.if.end33.i_crit_edge
  %chunk_md.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_pages.i, align 4
  %22 = shl i32 %21, 10
  %div1.i.i.i.i = and i32 %22, 1073740800
  %23 = ptrtoint ptr %chunk_md.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %chunk_md.i.i, align 4
  %contig_hint.i.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 4, i32 2
  %24 = ptrtoint ptr %contig_hint.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %div1.i.i.i.i, ptr %contig_hint.i.i.i, align 4
  %left_free.i.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 4, i32 4
  %25 = ptrtoint ptr %left_free.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %div1.i.i.i.i, ptr %left_free.i.i.i, align 4
  %right_free.i.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 4, i32 5
  %26 = ptrtoint ptr %right_free.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %div1.i.i.i.i, ptr %right_free.i.i.i, align 4
  %first_free.i.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 4, i32 6
  %27 = ptrtoint ptr %first_free.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %first_free.i.i.i, align 4
  %nr_bits1.i.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 4, i32 7
  %28 = ptrtoint ptr %nr_bits1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div1.i.i.i.i, ptr %nr_bits1.i.i.i, align 4
  %29 = ptrtoint ptr %md_blocks.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %md_blocks.i, align 4
  %mul.i15.i.i = and i32 %21, 1048575
  %add.ptr16.i.i = getelementptr %struct.pcpu_block_md, ptr %30, i32 %mul.i15.i.i
  %cmp.not17.i.i = icmp eq ptr %30, %add.ptr16.i.i
  br i1 %cmp.not17.i.i, label %if.end33.i.pcpu_alloc_chunk.exit_crit_edge, label %if.end33.i.for.body.i.i_crit_edge

if.end33.i.for.body.i.i_crit_edge:                ; preds = %if.end33.i
  br label %for.body.i.i

if.end33.i.pcpu_alloc_chunk.exit_crit_edge:       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_alloc_chunk.exit

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end33.i.for.body.i.i_crit_edge
  %md_block.018.i.i = phi ptr [ %incdec.ptr.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %30, %if.end33.i.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %md_block.018.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %md_block.018.i.i, align 4
  %contig_hint.i10.i.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %contig_hint.i10.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 1024, ptr %contig_hint.i10.i.i, align 4
  %left_free.i11.i.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %left_free.i11.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1024, ptr %left_free.i11.i.i, align 4
  %right_free.i12.i.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %right_free.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1024, ptr %right_free.i12.i.i, align 4
  %first_free.i13.i.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i.i, i32 0, i32 6
  %35 = ptrtoint ptr %first_free.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %first_free.i13.i.i, align 4
  %nr_bits1.i14.i.i = getelementptr inbounds %struct.pcpu_block_md, ptr %md_block.018.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %nr_bits1.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1024, ptr %nr_bits1.i14.i.i, align 4
  %incdec.ptr.i.i = getelementptr %struct.pcpu_block_md, ptr %md_block.018.i.i, i32 1
  %37 = ptrtoint ptr %md_blocks.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %md_blocks.i, align 4
  %39 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_pages.i, align 4
  %mul.i.i.i = and i32 %40, 1048575
  %add.ptr.i.i = getelementptr %struct.pcpu_block_md, ptr %38, i32 %mul.i.i.i
  %cmp.not.i.i = icmp eq ptr %incdec.ptr.i.i, %add.ptr.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.pcpu_alloc_chunk.exit_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i.i

for.body.i.i.pcpu_alloc_chunk.exit_crit_edge:     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_alloc_chunk.exit

objcg_fail.i:                                     ; preds = %pcpu_mem_zalloc.exit237.i.objcg_fail.i_crit_edge, %pcpu_mem_zalloc.exit237.thread.i
  %41 = ptrtoint ptr %md_blocks.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %md_blocks.i, align 4
  tail call void @kvfree(ptr noundef %42) #22
  br label %md_blocks_fail.i

md_blocks_fail.i:                                 ; preds = %objcg_fail.i, %pcpu_mem_zalloc.exit193.i.md_blocks_fail.i_crit_edge, %pcpu_mem_zalloc.exit193.thread.i
  %43 = ptrtoint ptr %bound_map.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bound_map.i, align 4
  tail call void @kvfree(ptr noundef %44) #22
  br label %bound_map_fail.i

bound_map_fail.i:                                 ; preds = %md_blocks_fail.i, %pcpu_mem_zalloc.exit150.i.bound_map_fail.i_crit_edge, %pcpu_mem_zalloc.exit150.thread.i
  %45 = ptrtoint ptr %alloc_map.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %alloc_map.i, align 4
  tail call void @kvfree(ptr noundef %46) #22
  br label %alloc_map_fail.i

alloc_map_fail.i:                                 ; preds = %bound_map_fail.i, %pcpu_mem_zalloc.exit109.i.alloc_map_fail.i_crit_edge, %pcpu_mem_zalloc.exit109.thread.i
  tail call void @kvfree(ptr noundef %retval.0.i.i) #22
  br label %cleanup

pcpu_alloc_chunk.exit:                            ; preds = %for.body.i.i.pcpu_alloc_chunk.exit_crit_edge, %if.end33.i.pcpu_alloc_chunk.exit_crit_edge
  %47 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nr_pages.i, align 4
  %mul35.i = shl i32 %48, 12
  %free_bytes.i = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %free_bytes.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %mul35.i, ptr %free_bytes.i, align 4
  %tobool.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool.not, label %pcpu_alloc_chunk.exit.cleanup_crit_edge, label %if.end

pcpu_alloc_chunk.exit.cleanup_crit_edge:          ; preds = %pcpu_alloc_chunk.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %pcpu_alloc_chunk.exit
  %50 = load ptr, ptr @pcpu_group_offsets, align 4
  %51 = load ptr, ptr @pcpu_group_sizes, align 4
  %52 = load i32, ptr @pcpu_nr_groups, align 4
  %53 = load i32, ptr @pcpu_atom_size, align 4
  %call1 = tail call ptr @pcpu_get_vm_areas(ptr noundef %50, ptr noundef %51, i32 noundef %52, i32 noundef %53) #22
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %pcpu_free_chunk.exit, label %if.end4

pcpu_free_chunk.exit:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %obj_cgroups.i16 = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 14
  %54 = ptrtoint ptr %obj_cgroups.i16 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %obj_cgroups.i16, align 4
  tail call void @kvfree(ptr noundef %55) #22
  %md_blocks.i17 = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 8
  %56 = ptrtoint ptr %md_blocks.i17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %md_blocks.i17, align 4
  tail call void @kvfree(ptr noundef %57) #22
  %58 = ptrtoint ptr %bound_map.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %bound_map.i, align 4
  tail call void @kvfree(ptr noundef %59) #22
  %alloc_map.i19 = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 6
  %60 = ptrtoint ptr %alloc_map.i19 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %alloc_map.i19, align 4
  tail call void @kvfree(ptr noundef %61) #22
  tail call void @kvfree(ptr noundef nonnull %retval.0.i.i) #22
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %data = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 9
  %62 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call1, ptr %data, align 4
  %63 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call1, align 4
  %addr = getelementptr inbounds %struct.vm_struct, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %addr, align 4
  %67 = load ptr, ptr @pcpu_group_offsets, align 4
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %67, align 4
  %idx.neg = sub i32 0, %69
  %add.ptr = getelementptr i8, ptr %66, i32 %idx.neg
  %base_addr = getelementptr inbounds %struct.pcpu_chunk, ptr %retval.0.i.i, i32 0, i32 5
  %70 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr, ptr %base_addr, align 4
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4) to i32))
  %71 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4), align 8
  %inc.i = add i32 %71, 1
  store i32 %inc.i, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4), align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 5) to i32))
  %72 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 5), align 4
  %73 = tail call i32 @llvm.umax.i32(i32 %72, i32 %inc.i) #22
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 5) to i32))
  store i32 %73, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 5), align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %call2.i) #22
  %74 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base_addr, align 4
  tail call fastcc void @trace_percpu_create_chunk(ptr noundef %75)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %pcpu_free_chunk.exit, %pcpu_alloc_chunk.exit.cleanup_crit_edge, %alloc_map_fail.i, %pcpu_mem_zalloc.exit.i.cleanup_crit_edge, %if.then.i.i, %land.rhs.i.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %retval.0.i.i, %if.end4 ], [ null, %pcpu_free_chunk.exit ], [ null, %pcpu_alloc_chunk.exit.cleanup_crit_edge ], [ null, %alloc_map_fail.i ], [ null, %pcpu_mem_zalloc.exit.i.cleanup_crit_edge ], [ null, %if.then.i.i ], [ null, %land.rhs.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pcpu_populate_chunk(ptr noundef %chunk, i32 noundef %page_start, i32 noundef %page_end, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pcpu_get_pages()
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i = or i32 %gfp, 2
  %call12.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12.i, i32 %0)
  %cmp13.i = icmp ult i32 %call12.i, %0
  br i1 %cmp13.i, label %for.cond1.preheader.lr.ph.i, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %page_end, i32 %page_start)
  %cmp210.i = icmp sgt i32 %page_end, %page_start
  br label %for.cond1.preheader.i

for.cond.loopexit.i:                              ; preds = %for.inc.i.for.cond.loopexit.i_crit_edge, %for.cond1.preheader.i.for.cond.loopexit.i_crit_edge
  %call.i = tail call i32 @cpumask_next(i32 noundef %call14.i, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %1
  br i1 %cmp.i, label %for.cond.loopexit.i.for.cond1.preheader.i_crit_edge, label %for.cond.loopexit.i.if.end4_crit_edge

for.cond.loopexit.i.if.end4_crit_edge:            ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end4

for.cond.loopexit.i.for.cond1.preheader.i_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.loopexit.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %call14.i = phi i32 [ %call12.i, %for.cond1.preheader.lr.ph.i ], [ %call.i, %for.cond.loopexit.i.for.cond1.preheader.i_crit_edge ]
  br i1 %cmp210.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.for.cond.loopexit.i_crit_edge

for.cond1.preheader.i.for.cond.loopexit.i_crit_edge: ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.loopexit.i

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %for.inc.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.011.i = phi i32 [ %inc.i, %for.inc.i.for.body3.i_crit_edge ], [ %page_start, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %2 = load ptr, ptr @pcpu_unit_map, align 4
  %arrayidx.i.i = getelementptr i32, ptr %2, i32 %call14.i
  %3 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i.i, align 4
  %5 = load i32, ptr @pcpu_unit_pages, align 4
  %mul.i.i = mul i32 %5, %4
  %add.i.i = add i32 %mul.i.i, %i.011.i
  %arrayidx.i = getelementptr ptr, ptr %call, i32 %add.i.i
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef %or.i, i32 noundef 0, i32 noundef 0, ptr noundef null) #22
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call38.i.i.i, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not.i, label %while.cond.preheader.i, label %for.inc.i

while.cond.preheader.i:                           ; preds = %for.body3.i
  %dec15.i = add i32 %i.011.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %dec15.i, i32 %page_start)
  %cmp7.not16.i = icmp slt i32 %dec15.i, %page_start
  br i1 %cmp7.not16.i, label %while.cond.preheader.i.for.cond10.preheader.i_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.for.cond10.preheader.i_crit_edge: ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond10.preheader.i

for.inc.i:                                        ; preds = %for.body3.i
  %inc.i = add i32 %i.011.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %page_end
  br i1 %exitcond.not.i, label %for.inc.i.for.cond.loopexit.i_crit_edge, label %for.inc.i.for.body3.i_crit_edge

for.inc.i.for.body3.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body3.i

for.inc.i.for.cond.loopexit.i_crit_edge:          ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.loopexit.i

for.cond10.preheader.i:                           ; preds = %while.body.i.for.cond10.preheader.i_crit_edge, %while.cond.preheader.i.for.cond10.preheader.i_crit_edge
  %call1120.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %7 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1120.i, i32 %7)
  %cmp1221.i = icmp uge i32 %call1120.i, %7
  call void @__sanitizer_cov_trace_cmp4(i32 %call1120.i, i32 %call14.i)
  %cmp1422.i = icmp eq i32 %call1120.i, %call14.i
  %or.cond23.i = select i1 %cmp1221.i, i1 true, i1 %cmp1422.i
  br i1 %or.cond23.i, label %for.cond10.preheader.i.cleanup_crit_edge, label %for.cond10.preheader.i.for.body19.preheader.i_crit_edge

for.cond10.preheader.i.for.body19.preheader.i_crit_edge: ; preds = %for.cond10.preheader.i
  br label %for.body19.preheader.i

for.cond10.preheader.i.cleanup_crit_edge:         ; preds = %for.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %dec17.i = phi i32 [ %dec.i, %while.body.i.while.body.i_crit_edge ], [ %dec15.i, %while.cond.preheader.i.while.body.i_crit_edge ]
  %8 = load ptr, ptr @pcpu_unit_map, align 4
  %arrayidx.i1.i = getelementptr i32, ptr %8, i32 %call14.i
  %9 = ptrtoint ptr %arrayidx.i1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i1.i, align 4
  %11 = load i32, ptr @pcpu_unit_pages, align 4
  %mul.i2.i = mul i32 %11, %10
  %add.i3.i = add i32 %mul.i2.i, %dec17.i
  %arrayidx9.i = getelementptr ptr, ptr %call, i32 %add.i3.i
  %12 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx9.i, align 4
  tail call void @__free_pages(ptr noundef %13, i32 noundef 0) #22
  %dec.i = add i32 %dec17.i, -1
  %cmp7.not.i = icmp slt i32 %dec.i, %page_start
  br i1 %cmp7.not.i, label %while.body.i.for.cond10.preheader.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body.i

while.body.i.for.cond10.preheader.i_crit_edge:    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond10.preheader.i

for.cond10.loopexit.i:                            ; preds = %for.body19.i
  %call11.i = tail call i32 @cpumask_next(i32 noundef %call1124.i, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %14 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %14)
  %cmp12.i = icmp uge i32 %call11.i, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %call11.i, i32 %call14.i)
  %cmp14.i = icmp eq i32 %call11.i, %call14.i
  %or.cond.i = select i1 %cmp12.i, i1 true, i1 %cmp14.i
  br i1 %or.cond.i, label %for.cond10.loopexit.i.cleanup_crit_edge, label %for.cond10.loopexit.i.for.body19.preheader.i_crit_edge

for.cond10.loopexit.i.for.body19.preheader.i_crit_edge: ; preds = %for.cond10.loopexit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body19.preheader.i

for.cond10.loopexit.i.cleanup_crit_edge:          ; preds = %for.cond10.loopexit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.body19.preheader.i:                           ; preds = %for.cond10.loopexit.i.for.body19.preheader.i_crit_edge, %for.cond10.preheader.i.for.body19.preheader.i_crit_edge
  %call1124.i = phi i32 [ %call11.i, %for.cond10.loopexit.i.for.body19.preheader.i_crit_edge ], [ %call1120.i, %for.cond10.preheader.i.for.body19.preheader.i_crit_edge ]
  br label %for.body19.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.body19.preheader.i
  %i.219.i = phi i32 [ %inc23.i, %for.body19.i.for.body19.i_crit_edge ], [ %page_start, %for.body19.preheader.i ]
  %15 = load ptr, ptr @pcpu_unit_map, align 4
  %arrayidx.i4.i = getelementptr i32, ptr %15, i32 %call1124.i
  %16 = ptrtoint ptr %arrayidx.i4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i4.i, align 4
  %18 = load i32, ptr @pcpu_unit_pages, align 4
  %mul.i5.i = mul i32 %18, %17
  %add.i6.i = add i32 %mul.i5.i, %i.219.i
  %arrayidx21.i = getelementptr ptr, ptr %call, i32 %add.i6.i
  %19 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx21.i, align 4
  tail call void @__free_pages(ptr noundef %20, i32 noundef 0) #22
  %inc23.i = add i32 %i.219.i, 1
  %exitcond29.not.i = icmp eq i32 %inc23.i, %page_end
  br i1 %exitcond29.not.i, label %for.cond10.loopexit.i, label %for.body19.i.for.body19.i_crit_edge

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body19.i

if.end4:                                          ; preds = %for.cond.loopexit.i.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call65.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call65.i, i32 %21)
  %cmp66.i = icmp ult i32 %call65.i, %21
  br i1 %cmp66.i, label %for.body.lr.ph.i, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8

for.body.lr.ph.i:                                 ; preds = %if.end4
  %base_addr.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 5
  %shl.i.i.i = shl i32 %page_start, 12
  %sub.i = sub i32 %page_end, %page_start
  %shl.i.i = shl i32 %sub.i, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %page_end, i32 %page_start)
  %cmp663.i = icmp sgt i32 %page_end, %page_start
  %22 = ptrtoint ptr %chunk to i32
  br label %for.body.i

for.cond.loopexit.i23:                            ; preds = %for.body7.i.for.cond.loopexit.i23_crit_edge, %for.cond5.preheader.i.for.cond.loopexit.i23_crit_edge
  %call.i21 = tail call i32 @cpumask_next(i32 noundef %call67.i, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i22 = icmp ult i32 %call.i21, %23
  br i1 %cmp.i22, label %for.cond.loopexit.i23.for.body.i_crit_edge, label %for.cond.loopexit.i23.if.end8_crit_edge

for.cond.loopexit.i23.if.end8_crit_edge:          ; preds = %for.cond.loopexit.i23
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end8

for.cond.loopexit.i23.for.body.i_crit_edge:       ; preds = %for.cond.loopexit.i23
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.loopexit.i23.for.body.i_crit_edge, %for.body.lr.ph.i
  %call67.i = phi i32 [ %call65.i, %for.body.lr.ph.i ], [ %call.i21, %for.cond.loopexit.i23.for.body.i_crit_edge ]
  %24 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = load ptr, ptr @pcpu_unit_offsets, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %27, i32 %call67.i
  %28 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %shl.i.i.i, %26
  %add.i.i24 = add i32 %add.i.i.i, %29
  %30 = load ptr, ptr @pcpu_unit_map, align 4
  %arrayidx.i.i25 = getelementptr i32, ptr %30, i32 %call67.i
  %31 = ptrtoint ptr %arrayidx.i.i25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i25, align 4
  %33 = load i32, ptr @pcpu_unit_pages, align 4
  %mul.i.i26 = mul i32 %33, %32
  %add.i49.i = add i32 %mul.i.i26, %page_start
  %arrayidx.i27 = getelementptr ptr, ptr %call, i32 %add.i49.i
  %add.i50.i = add i32 %add.i.i24, %shl.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @pgprot_kernel to i32))
  %34 = load i32, ptr @pgprot_kernel, align 4
  %or.i.i = or i32 %34, 512
  %call.i.i = tail call i32 @vmap_pages_range_noflush(i32 noundef %add.i.i24, i32 noundef %add.i50.i, i32 noundef %or.i.i, ptr noundef %arrayidx.i27, i32 noundef 12) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp4.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp4.i, label %for.cond12.preheader.i, label %for.cond5.preheader.i

for.cond5.preheader.i:                            ; preds = %for.body.i
  br i1 %cmp663.i, label %for.body7.lr.ph.i, label %for.cond5.preheader.i.for.cond.loopexit.i23_crit_edge

for.cond5.preheader.i.for.cond.loopexit.i23_crit_edge: ; preds = %for.cond5.preheader.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.loopexit.i23

for.body7.lr.ph.i:                                ; preds = %for.cond5.preheader.i
  %35 = load ptr, ptr @pcpu_unit_map, align 4
  %arrayidx.i51.i = getelementptr i32, ptr %35, i32 %call67.i
  %36 = load i32, ptr @pcpu_unit_pages, align 4
  br label %for.body7.i

for.cond12.preheader.i:                           ; preds = %for.body.i
  %call1368.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %37 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1368.i, i32 %37)
  %cmp1469.i = icmp uge i32 %call1368.i, %37
  call void @__sanitizer_cov_trace_cmp4(i32 %call1368.i, i32 %call67.i)
  %cmp1670.i = icmp eq i32 %call1368.i, %call67.i
  %or.cond71.i = select i1 %cmp1469.i, i1 true, i1 %cmp1670.i
  br i1 %or.cond71.i, label %for.cond12.preheader.i.pcpu_map_pages.exit_crit_edge, label %for.cond12.preheader.i.if.end18.i_crit_edge

for.cond12.preheader.i.if.end18.i_crit_edge:      ; preds = %for.cond12.preheader.i
  br label %if.end18.i

for.cond12.preheader.i.pcpu_map_pages.exit_crit_edge: ; preds = %for.cond12.preheader.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_map_pages.exit

for.body7.i:                                      ; preds = %for.body7.i.for.body7.i_crit_edge, %for.body7.lr.ph.i
  %i.064.i = phi i32 [ %page_start, %for.body7.lr.ph.i ], [ %inc.i29, %for.body7.i.for.body7.i_crit_edge ]
  %38 = ptrtoint ptr %arrayidx.i51.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i51.i, align 4
  %mul.i52.i = mul i32 %39, %36
  %add.i53.i = add i32 %mul.i52.i, %i.064.i
  %arrayidx9.i28 = getelementptr ptr, ptr %call, i32 %add.i53.i
  %40 = ptrtoint ptr %arrayidx9.i28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx9.i28, align 4
  %index.i.i = getelementptr inbounds %struct.page, ptr %41, i32 0, i32 1, i32 0, i32 2
  %42 = ptrtoint ptr %index.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %22, ptr %index.i.i, align 4
  %inc.i29 = add nsw i32 %i.064.i, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, %page_end
  br i1 %exitcond.not.i30, label %for.body7.i.for.cond.loopexit.i23_crit_edge, label %for.body7.i.for.body7.i_crit_edge

for.body7.i.for.body7.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body7.i

for.body7.i.for.cond.loopexit.i23_crit_edge:      ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.loopexit.i23

if.end18.i:                                       ; preds = %if.end18.i.if.end18.i_crit_edge, %for.cond12.preheader.i.if.end18.i_crit_edge
  %call1372.i = phi i32 [ %call13.i, %if.end18.i.if.end18.i_crit_edge ], [ %call1368.i, %for.cond12.preheader.i.if.end18.i_crit_edge ]
  %43 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base_addr.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  %46 = load ptr, ptr @pcpu_unit_offsets, align 4
  %arrayidx.i.i55.i = getelementptr i32, ptr %46, i32 %call1372.i
  %47 = ptrtoint ptr %arrayidx.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i.i55.i, align 4
  %add.i.i57.i = add i32 %shl.i.i.i, %45
  %add.i58.i = add i32 %add.i.i57.i, %48
  %add.i60.i = add i32 %add.i58.i, %shl.i.i
  tail call void @vunmap_range_noflush(i32 noundef %add.i58.i, i32 noundef %add.i60.i) #22
  %call13.i = tail call i32 @cpumask_next(i32 noundef %call1372.i, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %49 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %49)
  %cmp14.i31 = icmp uge i32 %call13.i, %49
  call void @__sanitizer_cov_trace_cmp4(i32 %call13.i, i32 %call67.i)
  %cmp16.i = icmp eq i32 %call13.i, %call67.i
  %or.cond.i32 = select i1 %cmp14.i31, i1 true, i1 %cmp16.i
  br i1 %or.cond.i32, label %if.end18.i.pcpu_map_pages.exit_crit_edge, label %if.end18.i.if.end18.i_crit_edge

if.end18.i.if.end18.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end18.i

if.end18.i.pcpu_map_pages.exit_crit_edge:         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_map_pages.exit

pcpu_map_pages.exit:                              ; preds = %if.end18.i.pcpu_map_pages.exit_crit_edge, %for.cond12.preheader.i.pcpu_map_pages.exit_crit_edge
  %50 = load i32, ptr @pcpu_low_unit_cpu, align 4
  %51 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base_addr.i.i, align 4
  %53 = ptrtoint ptr %52 to i32
  %54 = load ptr, ptr @pcpu_unit_offsets, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %54, i32 %50
  %55 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %shl.i.i.i, %53
  %add.i.i61.i = add i32 %add.i.i.i.i, %56
  %57 = load i32, ptr @pcpu_high_unit_cpu, align 4
  %arrayidx.i.i4.i.i = getelementptr i32, ptr %54, i32 %57
  %58 = ptrtoint ptr %arrayidx.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx.i.i4.i.i, align 4
  %shl.i.i5.i.i = shl i32 %page_end, 12
  %add.i.i6.i.i = add i32 %shl.i.i5.i.i, %53
  %add.i7.i.i = add i32 %add.i.i6.i.i, %59
  tail call void @flush_tlb_kernel_range(i32 noundef %add.i.i61.i, i32 noundef %add.i7.i.i) #22
  %call3.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %60 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %60)
  %cmp4.i34 = icmp ult i32 %call3.i, %60
  br i1 %cmp4.i34, label %pcpu_map_pages.exit.for.cond1.preheader.i39_crit_edge, label %pcpu_map_pages.exit.cleanup_crit_edge

pcpu_map_pages.exit.cleanup_crit_edge:            ; preds = %pcpu_map_pages.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

pcpu_map_pages.exit.for.cond1.preheader.i39_crit_edge: ; preds = %pcpu_map_pages.exit
  br label %for.cond1.preheader.i39

for.cond.loopexit.i38:                            ; preds = %if.end.i.for.cond.loopexit.i38_crit_edge, %for.cond1.preheader.i39.for.cond.loopexit.i38_crit_edge
  %call.i36 = tail call i32 @cpumask_next(i32 noundef %call5.i, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %61 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i37 = icmp ult i32 %call.i36, %61
  br i1 %cmp.i37, label %for.cond.loopexit.i38.for.cond1.preheader.i39_crit_edge, label %for.cond.loopexit.i38.cleanup_crit_edge

for.cond.loopexit.i38.cleanup_crit_edge:          ; preds = %for.cond.loopexit.i38
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

for.cond.loopexit.i38.for.cond1.preheader.i39_crit_edge: ; preds = %for.cond.loopexit.i38
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond1.preheader.i39

for.cond1.preheader.i39:                          ; preds = %for.cond.loopexit.i38.for.cond1.preheader.i39_crit_edge, %pcpu_map_pages.exit.for.cond1.preheader.i39_crit_edge
  %call5.i = phi i32 [ %call.i36, %for.cond.loopexit.i38.for.cond1.preheader.i39_crit_edge ], [ %call3.i, %pcpu_map_pages.exit.for.cond1.preheader.i39_crit_edge ]
  br i1 %cmp663.i, label %for.cond1.preheader.i39.for.body3.i45_crit_edge, label %for.cond1.preheader.i39.for.cond.loopexit.i38_crit_edge

for.cond1.preheader.i39.for.cond.loopexit.i38_crit_edge: ; preds = %for.cond1.preheader.i39
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.loopexit.i38

for.cond1.preheader.i39.for.body3.i45_crit_edge:  ; preds = %for.cond1.preheader.i39
  br label %for.body3.i45

for.body3.i45:                                    ; preds = %if.end.i.for.body3.i45_crit_edge, %for.cond1.preheader.i39.for.body3.i45_crit_edge
  %i.02.i = phi i32 [ %inc.i46, %if.end.i.for.body3.i45_crit_edge ], [ %page_start, %for.cond1.preheader.i39.for.body3.i45_crit_edge ]
  %62 = load ptr, ptr @pcpu_unit_map, align 4
  %arrayidx.i.i40 = getelementptr i32, ptr %62, i32 %call5.i
  %63 = ptrtoint ptr %arrayidx.i.i40 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx.i.i40, align 4
  %65 = load i32, ptr @pcpu_unit_pages, align 4
  %mul.i.i41 = mul i32 %65, %64
  %add.i.i42 = add i32 %mul.i.i41, %i.02.i
  %arrayidx.i43 = getelementptr ptr, ptr %call, i32 %add.i.i42
  %66 = ptrtoint ptr %arrayidx.i43 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx.i43, align 4
  %tobool.not.i44 = icmp eq ptr %67, null
  br i1 %tobool.not.i44, label %for.body3.i45.if.end.i_crit_edge, label %if.then.i

for.body3.i45.if.end.i_crit_edge:                 ; preds = %for.body3.i45
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

if.then.i:                                        ; preds = %for.body3.i45
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__free_pages(ptr noundef nonnull %67, i32 noundef 0) #22
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body3.i45.if.end.i_crit_edge
  %inc.i46 = add i32 %i.02.i, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, %page_end
  br i1 %exitcond.not.i47, label %if.end.i.for.cond.loopexit.i38_crit_edge, label %if.end.i.for.body3.i45_crit_edge

if.end.i.for.body3.i45_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body3.i45

if.end.i.for.cond.loopexit.i38_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.loopexit.i38

if.end8:                                          ; preds = %for.cond.loopexit.i23.if.end8_crit_edge, %if.end4.if.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %68 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %68, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %69() #22
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #22, !srcloc !424
  br label %cleanup

cleanup:                                          ; preds = %if.else.i.i, %if.then.i.i, %for.cond.loopexit.i38.cleanup_crit_edge, %pcpu_map_pages.exit.cleanup_crit_edge, %for.cond10.loopexit.i.cleanup_crit_edge, %for.cond10.preheader.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -12, %for.cond10.preheader.i.cleanup_crit_edge ], [ -12, %pcpu_map_pages.exit.cleanup_crit_edge ], [ 0, %if.then.i.i ], [ 0, %if.else.i.i ], [ -12, %for.cond10.loopexit.i.cleanup_crit_edge ], [ -12, %for.cond.loopexit.i38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_chunk_populated(ptr noundef %chunk, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !387

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1528, i32 noundef 9, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %sub = sub i32 %page_end, %page_start
  %populated = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 18
  tail call void @__bitmap_set(ptr noundef %populated, i32 noundef %page_start, i32 noundef %sub) #22
  %nr_populated = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 16
  %1 = ptrtoint ptr %nr_populated to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_populated, align 4
  %add = add i32 %2, %sub
  store i32 %add, ptr %nr_populated, align 4
  %3 = load i32, ptr @pcpu_nr_populated, align 4
  %add24 = add i32 %3, %sub
  store i32 %add24, ptr @pcpu_nr_populated, align 4
  %nr_empty_pop_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 17
  %4 = ptrtoint ptr %nr_empty_pop_pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_empty_pop_pages.i, align 4
  %add.i = add i32 %5, %sub
  store i32 %add.i, ptr %nr_empty_pop_pages.i, align 4
  %6 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %cmp.not.i = icmp eq ptr %6, %chunk
  br i1 %cmp.not.i, label %if.end.pcpu_update_empty_pages.exit_crit_edge, label %land.lhs.true.i

if.end.pcpu_update_empty_pages.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_update_empty_pages.exit

land.lhs.true.i:                                  ; preds = %if.end
  %isolated.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 11
  %7 = ptrtoint ptr %isolated.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %isolated.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i32, label %land.lhs.true.i.pcpu_update_empty_pages.exit_crit_edge

land.lhs.true.i.pcpu_update_empty_pages.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_update_empty_pages.exit

if.then.i32:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  %9 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %add1.i = add i32 %9, %sub
  store i32 %add1.i, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %pcpu_update_empty_pages.exit

pcpu_update_empty_pages.exit:                     ; preds = %if.then.i32, %land.lhs.true.i.pcpu_update_empty_pages.exit_crit_edge, %if.end.pcpu_update_empty_pages.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_alloc_percpu(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2 section ".ref.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_percpu_alloc_percpu(i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_alloc_percpu, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_percpu_alloc_percpu, %do.body)) #22
          to label %if.end51 [label %do.body], !srcloc !399

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !386

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i78 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i78
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end72_crit_edge, label %if.end32

cpu_online.exit.if.end72_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end72

if.end32:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !425
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_alloc_percpu, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end51.critedge, label %if.end32.do.body3.i_crit_edge

if.end32.do.body3.i_crit_edge:                    ; preds = %if.end32
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %if.end32.do.body3.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body3.i.do.body3.i_crit_edge ], [ %13, %if.end32.do.body3.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align, ptr noundef %base_addr, i32 noundef %off, ptr noundef %ptr) #22
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool12.not.i = icmp eq ptr %19, null
  br i1 %tobool12.not.i, label %cleanup, label %do.body3.i.do.body3.i_crit_edge

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body3.i

cleanup:                                          ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !426
  br label %if.end51.sink.split

if.end51.critedge:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !426
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.end51.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i76.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i76.c to ptr
  %preempt_count.i.i77.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i77.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i77.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i77.c, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i79 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i79 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i80 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i80, label %if.end51.cpu_online.exit88_crit_edge, label %land.rhs.i.i.i.i82

if.end51.cpu_online.exit88_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit88

land.rhs.i.i.i.i82:                               ; preds = %if.end51
  %.b37.i.i.i.i81 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i81, label %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, label %if.then.i.i.i.i83, !prof !386

land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge:   ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit88

if.then.i.i.i.i83:                                ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit88

cpu_online.exit88:                                ; preds = %if.then.i.i.i.i83, %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, %if.end51.cpu_online.exit88_crit_edge
  %div3.i.i.i84 = lshr i32 %27, 5
  %arrayidx.i.i.i85 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i84
  %29 = ptrtoint ptr %arrayidx.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i85, align 4
  %and.i.i.i86 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i86
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i87.not = icmp eq i32 %32, 0
  br i1 %tobool.i87.not, label %cpu_online.exit88.if.end72_crit_edge, label %if.then55

cpu_online.exit88.if.end72_crit_edge:             ; preds = %cpu_online.exit88
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end72

if.then55:                                        ; preds = %cpu_online.exit88
  %33 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !402
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_alloc_percpu, i32 0, i32 7), align 4
  %call61 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.then55.do.end70_crit_edge

if.then55.do.end70_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end70

land.lhs.true:                                    ; preds = %if.then55
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @trace_percpu_alloc_percpu.__warned, align 1
  br i1 %.b75, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_percpu_alloc_percpu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.133, i32 noundef 41, ptr noundef nonnull @.str.134) #22
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge, %if.then55.do.end70_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !403
  %38 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i89 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i89 to ptr
  %preempt_count.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i90, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i90, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %cpu_online.exit88.if.end72_crit_edge, %cpu_online.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_percpu_alloc_percpu_fail(i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_alloc_percpu_fail, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_percpu_alloc_percpu_fail, %do.body)) #22
          to label %if.end51 [label %do.body], !srcloc !399

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !386

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %and.i.i.i78 = and i32 %3, 31
  %7 = shl nuw i32 1, %and.i.i.i78
  %8 = and i32 %6, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not = icmp eq i32 %8, 0
  br i1 %tobool.i.not, label %cpu_online.exit.if.end72_crit_edge, label %if.end32

cpu_online.exit.if.end72_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end72

if.end32:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !427
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_alloc_percpu_fail, i32 0, i32 7), align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end51.critedge, label %if.end32.do.body3.i_crit_edge

if.end32.do.body3.i_crit_edge:                    ; preds = %if.end32
  br label %do.body3.i

do.body3.i:                                       ; preds = %do.body3.i.do.body3.i_crit_edge, %if.end32.do.body3.i_crit_edge
  %it_func_ptr.0.i = phi ptr [ %incdec.ptr.i, %do.body3.i.do.body3.i_crit_edge ], [ %13, %if.end32.do.body3.i_crit_edge ]
  %14 = ptrtoint ptr %it_func_ptr.0.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %it_func_ptr.0.i, align 4
  %data.i = getelementptr inbounds %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 0, i32 1
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  tail call void %15(ptr noundef %17, i1 noundef zeroext %reserved, i1 noundef zeroext %is_atomic, i32 noundef %size, i32 noundef %align) #22
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool12.not.i = icmp eq ptr %19, null
  br i1 %tobool12.not.i, label %cleanup, label %do.body3.i.do.body3.i_crit_edge

do.body3.i.do.body3.i_crit_edge:                  ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body3.i

cleanup:                                          ; preds = %do.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !428
  br label %if.end51.sink.split

if.end51.critedge:                                ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !428
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %if.end51.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i76.c = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i76.c to ptr
  %preempt_count.i.i77.c = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i.i77.c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i.i77.c, align 4
  %sub.i = add i32 %23, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i77.c, align 4
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %entry
  %24 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i79 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i79 to ptr
  %cpu53 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %cpu53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu53, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %28 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %27)
  %cmp.not.i.i.i.i80 = icmp ugt i32 %28, %27
  br i1 %cmp.not.i.i.i.i80, label %if.end51.cpu_online.exit88_crit_edge, label %land.rhs.i.i.i.i82

if.end51.cpu_online.exit88_crit_edge:             ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit88

land.rhs.i.i.i.i82:                               ; preds = %if.end51
  %.b37.i.i.i.i81 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i81, label %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, label %if.then.i.i.i.i83, !prof !386

land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge:   ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit88

if.then.i.i.i.i83:                                ; preds = %land.rhs.i.i.i.i82
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit88

cpu_online.exit88:                                ; preds = %if.then.i.i.i.i83, %land.rhs.i.i.i.i82.cpu_online.exit88_crit_edge, %if.end51.cpu_online.exit88_crit_edge
  %div3.i.i.i84 = lshr i32 %27, 5
  %arrayidx.i.i.i85 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i84
  %29 = ptrtoint ptr %arrayidx.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i.i.i85, align 4
  %and.i.i.i86 = and i32 %27, 31
  %31 = shl nuw i32 1, %and.i.i.i86
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.i87.not = icmp eq i32 %32, 0
  br i1 %tobool.i87.not, label %cpu_online.exit88.if.end72_crit_edge, label %if.then55

cpu_online.exit88.if.end72_crit_edge:             ; preds = %cpu_online.exit88
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end72

if.then55:                                        ; preds = %cpu_online.exit88
  %33 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !402
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_alloc_percpu_fail, i32 0, i32 7), align 4
  %call61 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %land.lhs.true, label %if.then55.do.end70_crit_edge

if.then55.do.end70_crit_edge:                     ; preds = %if.then55
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end70

land.lhs.true:                                    ; preds = %if.then55
  %call63 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %land.lhs.true.do.end70_crit_edge, label %land.lhs.true65

land.lhs.true.do.end70_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end70

land.lhs.true65:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @trace_percpu_alloc_percpu_fail.__warned, align 1
  br i1 %.b75, label %land.lhs.true65.do.end70_crit_edge, label %if.then67

land.lhs.true65.do.end70_crit_edge:               ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end70

if.then67:                                        ; preds = %land.lhs.true65
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_percpu_alloc_percpu_fail.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.133, i32 noundef 88, ptr noundef nonnull @.str.134) #22
  br label %do.end70

do.end70:                                         ; preds = %if.then67, %land.lhs.true65.do.end70_crit_edge, %land.lhs.true.do.end70_crit_edge, %if.then55.do.end70_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !403
  %38 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i89 = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i.i89 to ptr
  %preempt_count.i.i.i90 = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i.i90 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i.i90, align 4
  %sub.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i90, align 4
  br label %if.end72

if.end72:                                         ; preds = %do.end70, %cpu_online.exit88.if.end72_crit_edge, %cpu_online.exit.if.end72_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_obj_cgroup_from_current() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @obj_cgroup_charge(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @obj_cgroup_put(ptr noundef %objcg) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !394
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #22
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 696, ptr noundef nonnull @.str.126) #22
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %4 = ptrtoint ptr %objcg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %objcg, align 4
  %and.i.i.i = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i1.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i1.i.i, label %do.body1.i.i, label %if.else.i.i, !prof !386

do.body1.i.i:                                     ; preds = %rcu_read_lock.exit.i.i
  %6 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #22, !srcloc !395
  %7 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i2.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i2.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %12, %5
  %13 = inttoptr i32 %add.i.i to ptr
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %add15.i.i = add i32 %15, -1
  store i32 %add15.i.i, ptr %13, align 4
  %16 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #22, !srcloc !396
  %and.i.i.i.i = and i32 %16, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then29.i.i, label %do.body1.i.i.do.end31.i.i_crit_edge, !prof !387

do.body1.i.i.do.end31.i.i_crit_edge:              ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end31.i.i

if.then29.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @warn_bogus_irq_restore() #22
  br label %do.end31.i.i

do.end31.i.i:                                     ; preds = %if.then29.i.i, %do.body1.i.i.do.end31.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %6) #22, !srcloc !397
  br label %if.end48.i.i

if.else.i.i:                                      ; preds = %rcu_read_lock.exit.i.i
  %data.i.i = getelementptr inbounds %struct.percpu_ref, ptr %objcg, i32 0, i32 1
  %17 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %18, i32 noundef 4) #22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !429
  tail call void @llvm.prefetch.p0(ptr %18, i32 1, i32 3, i32 1) #22
  %19 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %18, ptr %18, i32 1, ptr elementtype(i32) %18) #22, !srcloc !430
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #22, !srcloc !431
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i.i.i, label %if.then45.i.i, label %if.else.i.i.if.end48.i.i_crit_edge, !prof !387

if.else.i.i.if.end48.i.i_crit_edge:               ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end48.i.i

if.then45.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %release.i.i = getelementptr inbounds %struct.percpu_ref_data, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %release.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %release.i.i, align 4
  tail call void %23(ptr noundef %objcg) #22
  br label %if.end48.i.i

if.end48.i.i:                                     ; preds = %if.then45.i.i, %if.else.i.i.if.end48.i.i_crit_edge, %do.end31.i.i
  %call.i3.i.i = tail call zeroext i1 @rcu_is_watching() #22
  br i1 %call.i3.i.i, label %if.end48.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true.i6.i.i

if.end48.i.i.percpu_ref_put.exit_crit_edge:       ; preds = %if.end48.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %percpu_ref_put.exit

land.lhs.true.i6.i.i:                             ; preds = %if.end48.i.i
  %call1.i4.i.i = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i4.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %call1.i4.i.i, 0
  br i1 %tobool.not.i5.i.i, label %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, label %land.lhs.true2.i8.i.i

land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true.i6.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %percpu_ref_put.exit

land.lhs.true2.i8.i.i:                            ; preds = %land.lhs.true.i6.i.i
  %.b4.i7.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i7.i.i, label %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, label %if.then.i9.i.i

land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge: ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %percpu_ref_put.exit

if.then.i9.i.i:                                   ; preds = %land.lhs.true2.i8.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.125, i32 noundef 724, ptr noundef nonnull @.str.127) #22
  br label %percpu_ref_put.exit

percpu_ref_put.exit:                              ; preds = %if.then.i9.i.i, %land.lhs.true2.i8.i.i.percpu_ref_put.exit_crit_edge, %land.lhs.true.i6.i.i.percpu_ref_put.exit_crit_edge, %if.end48.i.i.percpu_ref_put.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !398
  %24 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i.i10.i.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i10.i.i to ptr
  %preempt_count.i.i.i.i11.i.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i11.i.i, align 4
  %sub.i.i.i.i.i = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i11.i.i, align 4
  tail call void @rcu_read_unlock_strict() #22
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #15

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @obj_cgroup_uncharge(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_memcg_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_next_fit_region(ptr nocapture noundef readonly %chunk, i32 noundef %alloc_bits, i32 noundef %align, ptr nocapture noundef %bit_off, ptr nocapture noundef %bits) unnamed_addr #16 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bit_off to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %bit_off, align 4
  %div1.i = lshr i32 %1, 10
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %bits, align 4
  %nr_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 15
  %3 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_pages.i, align 4
  %mul.i95 = and i32 %4, 1048575
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i, i32 %mul.i95)
  %cmp96 = icmp ult i32 %div1.i, %mul.i95
  br i1 %cmp96, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 8
  %5 = ptrtoint ptr %md_blocks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %md_blocks, align 4
  %add.ptr = getelementptr %struct.pcpu_block_md, ptr %6, i32 %div1.i
  %and.i = and i32 %1, 1023
  %sub = add i32 %align, -1
  %neg = sub i32 0, %align
  %7 = add i32 %align, 1023
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0101 = phi i32 [ %div1.i, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %block.098 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %block_off.097 = phi i32 [ %and.i, %for.body.lr.ph ], [ %block_off.1, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bits, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %for.body.if.end9_crit_edge, label %if.then

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.then:                                          ; preds = %for.body
  %left_free = getelementptr inbounds %struct.pcpu_block_md, ptr %block.098, i32 0, i32 4
  %10 = ptrtoint ptr %left_free to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %left_free, align 4
  %add = add i32 %11, %9
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %alloc_bits)
  %cmp3.not = icmp slt i32 %add, %alloc_bits
  br i1 %cmp3.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end:                                           ; preds = %if.then
  %13 = ptrtoint ptr %left_free to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %left_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %14)
  %cmp6 = icmp eq i32 %14, 1024
  br i1 %cmp6, label %if.end.for.inc_crit_edge, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.end9:                                          ; preds = %if.end.if.end9_crit_edge, %for.body.if.end9_crit_edge
  %contig_hint_start = getelementptr inbounds %struct.pcpu_block_md, ptr %block.098, i32 0, i32 3
  %15 = ptrtoint ptr %contig_hint_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %contig_hint_start, align 4
  %add10 = add i32 %sub, %16
  %and = and i32 %add10, %neg
  %sub13 = sub i32 %and, %16
  %17 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub13, ptr %bits, align 4
  %contig_hint = getelementptr inbounds %struct.pcpu_block_md, ptr %block.098, i32 0, i32 2
  %18 = ptrtoint ptr %contig_hint to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %contig_hint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool14.not = icmp eq i32 %19, 0
  br i1 %tobool14.not, label %if.end9.if.end28_crit_edge, label %land.lhs.true

if.end9.if.end28_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end28

land.lhs.true:                                    ; preds = %if.end9
  %20 = ptrtoint ptr %contig_hint_start to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %contig_hint_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %block_off.097)
  %cmp16.not = icmp slt i32 %21, %block_off.097
  %add19 = add i32 %sub13, %alloc_bits
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %add19)
  %cmp20.not = icmp slt i32 %19, %add19
  %or.cond = select i1 %cmp16.not, i1 true, i1 %cmp20.not
  br i1 %or.cond, label %land.lhs.true.if.end28_crit_edge, label %if.then21

land.lhs.true.if.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end28

if.then21:                                        ; preds = %land.lhs.true
  %22 = ptrtoint ptr %block.098 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %block.098, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %if.then21.if.end.i_crit_edge, label %land.lhs.true.i

if.then21.if.end.i_crit_edge:                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then21
  %scan_hint_start.i = getelementptr inbounds %struct.pcpu_block_md, ptr %block.098, i32 0, i32 1
  %24 = ptrtoint ptr %scan_hint_start.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %scan_hint_start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %25)
  %cmp.i = icmp sgt i32 %21, %25
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %alloc_bits)
  %cmp3.i = icmp slt i32 %23, %alloc_bits
  %or.cond.i = select i1 %cmp.i, i1 %cmp3.i, i1 false
  br i1 %or.cond.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  %add.i = add i32 %25, %23
  br label %pcpu_next_hint.exit

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then21.if.end.i_crit_edge
  %first_free.i = getelementptr inbounds %struct.pcpu_block_md, ptr %block.098, i32 0, i32 6
  %26 = ptrtoint ptr %first_free.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %first_free.i, align 4
  br label %pcpu_next_hint.exit

pcpu_next_hint.exit:                              ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %add.i, %if.then.i ], [ %27, %if.end.i ]
  %sub25 = add i32 %add19, %21
  %add26 = sub i32 %sub25, %retval.0.i
  %28 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add26, ptr %bits, align 4
  %mul.i83 = shl i32 %i.0101, 10
  %add.i84 = add i32 %retval.0.i, %mul.i83
  br label %cleanup.sink.split

if.end28:                                         ; preds = %land.lhs.true.if.end28_crit_edge, %if.end9.if.end28_crit_edge
  %right_free = getelementptr inbounds %struct.pcpu_block_md, ptr %block.098, i32 0, i32 5
  %29 = ptrtoint ptr %right_free to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %right_free, align 4
  %add31 = sub i32 %7, %30
  %and34 = and i32 %add31, %neg
  %31 = ptrtoint ptr %bit_off to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and34, ptr %bit_off, align 4
  %sub35 = sub i32 1024, %and34
  %32 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub35, ptr %bits, align 4
  %33 = load i32, ptr %bit_off, align 4
  %mul.i85 = shl i32 %i.0101, 10
  %add.i86 = add i32 %33, %mul.i85
  store i32 %add.i86, ptr %bit_off, align 4
  %34 = load i32, ptr %bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %alloc_bits)
  %cmp37.not = icmp slt i32 %34, %alloc_bits
  br i1 %cmp37.not, label %if.end28.for.inc_crit_edge, label %if.end28.cleanup_crit_edge

if.end28.cleanup_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end28.for.inc_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

for.inc:                                          ; preds = %if.end28.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %block_off.1 = phi i32 [ %block_off.097, %if.end.for.inc_crit_edge ], [ 0, %if.end28.for.inc_crit_edge ]
  %incdec.ptr = getelementptr %struct.pcpu_block_md, ptr %block.098, i32 1
  %inc = add nuw nsw i32 %i.0101, 1
  %35 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr_pages.i, align 4
  %mul.i = and i32 %36, 1048575
  %cmp = icmp ult i32 %inc, %mul.i
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %.lcssa88 = phi i32 [ %4, %entry.for.end_crit_edge ], [ %36, %for.inc.for.end_crit_edge ]
  %37 = shl i32 %.lcssa88, 10
  %div1.i.i = and i32 %37, 1073740800
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %pcpu_next_hint.exit
  %div1.i.i.sink = phi i32 [ %div1.i.i, %for.end ], [ %add.i84, %pcpu_next_hint.exit ]
  %38 = ptrtoint ptr %bit_off to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %div1.i.i.sink, ptr %bit_off, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end28.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_block_update_hint_alloc(ptr noundef %chunk, i32 noundef %bit_off, i32 noundef %bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_md1 = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4
  %div1.i = lshr i32 %bit_off, 10
  %add = add i32 %bits, %bit_off
  %sub = add i32 %add, -1
  %div1.i207 = lshr i32 %sub, 10
  %and.i = and i32 %bit_off, 1023
  %and.i208 = and i32 %sub, 1023
  %add7 = add nuw nsw i32 %and.i208, 1
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 8
  %0 = ptrtoint ptr %md_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md_blocks, align 4
  %add.ptr = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i
  %add.ptr9 = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i207
  %contig_hint = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i, i32 2
  %2 = ptrtoint ptr %contig_hint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %contig_hint, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %3)
  %cmp = icmp eq i32 %3, 1024
  %spec.select = zext i1 %cmp to i32
  %first_free = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i, i32 6
  %4 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %first_free, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp10 = icmp eq i32 %and.i, %5
  br i1 %cmp10, label %if.then11, label %entry.if.end16_crit_edge

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %.pre = add i32 %and.i, %bits
  br label %if.end16

if.then11:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %alloc_map.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 6
  %6 = ptrtoint ptr %alloc_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %alloc_map.i, align 4
  %8 = shl nuw nsw i32 %div1.i, 5
  %add.ptr.i = getelementptr i32, ptr %7, i32 %8
  %add13 = add i32 %and.i, %bits
  %call14 = tail call i32 @_find_next_zero_bit_be(ptr noundef %add.ptr.i, i32 noundef 1024, i32 noundef %add13) #22
  %9 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call14, ptr %first_free, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then11, %entry.if.end16_crit_edge
  %add19.pre-phi = phi i32 [ %.pre, %entry.if.end16_crit_edge ], [ %add13, %if.then11 ]
  %scan_hint_start = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i, i32 1
  %10 = ptrtoint ptr %scan_hint_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %scan_hint_start, align 4
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  %add18 = add i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %add19.pre-phi)
  %cmp.i = icmp slt i32 %11, %add19.pre-phi
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %add18)
  %cmp1.i = icmp slt i32 %and.i, %add18
  %spec.select.i = and i1 %cmp.i, %cmp1.i
  br i1 %spec.select.i, label %if.then21, label %if.end16.if.end23_crit_edge

if.end16.if.end23_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end23

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #24
  %14 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %add.ptr, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end16.if.end23_crit_edge
  %contig_hint_start = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i, i32 3
  %15 = ptrtoint ptr %contig_hint_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %contig_hint_start, align 4
  %17 = ptrtoint ptr %contig_hint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %contig_hint, align 4
  %add26 = add i32 %18, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %add19.pre-phi)
  %cmp.i210 = icmp slt i32 %16, %add19.pre-phi
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %add26)
  %cmp1.i211 = icmp slt i32 %and.i, %add26
  %spec.select.i212 = and i1 %cmp.i210, %cmp1.i211
  br i1 %spec.select.i212, label %if.then29, label %if.else

if.then29:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then30, label %if.then29.if.end31_crit_edge

if.then29.if.end31_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end31

if.then30:                                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #24
  %left_free = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i, i32 4
  %19 = ptrtoint ptr %left_free to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %left_free, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %if.then29.if.end31_crit_edge
  tail call fastcc void @pcpu_block_refresh_hint(ptr noundef %chunk, i32 noundef %div1.i)
  br label %if.end48

if.else:                                          ; preds = %if.end23
  %left_free32 = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i, i32 4
  %20 = ptrtoint ptr %left_free32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %left_free32, align 4
  %22 = tail call i32 @llvm.smin.i32(i32 %21, i32 %and.i)
  %23 = ptrtoint ptr %left_free32 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %left_free32, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i207, i32 %div1.i)
  %cmp35 = icmp eq i32 %div1.i207, %div1.i
  %right_free = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i, i32 5
  br i1 %cmp35, label %if.then36, label %if.else45

if.then36:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  %24 = ptrtoint ptr %right_free to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %right_free, align 4
  %sub37 = xor i32 %and.i208, 1023
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 %sub37)
  %27 = ptrtoint ptr %right_free to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %right_free, align 4
  br label %if.end48

if.else45:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  %28 = ptrtoint ptr %right_free to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %right_free, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.else45, %if.then36, %if.end31
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i207, i32 %div1.i)
  %cmp49.not = icmp eq i32 %div1.i207, %div1.i
  br i1 %cmp49.not, label %if.end48.if.end93_crit_edge, label %if.then50

if.end48.if.end93_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end93

if.then50:                                        ; preds = %if.end48
  %contig_hint51 = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i207, i32 2
  %29 = ptrtoint ptr %contig_hint51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %contig_hint51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %30)
  %cmp52 = icmp eq i32 %30, 1024
  %inc54 = select i1 %cmp, i32 2, i32 1
  %spec.select206 = select i1 %cmp52, i32 %inc54, i32 %spec.select
  %alloc_map.i213 = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 6
  %31 = ptrtoint ptr %alloc_map.i213 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %alloc_map.i213, align 4
  %33 = shl nuw nsw i32 %div1.i207, 5
  %add.ptr.i215 = getelementptr i32, ptr %32, i32 %33
  %call57 = tail call i32 @_find_next_zero_bit_be(ptr noundef %add.ptr.i215, i32 noundef 1024, i32 noundef %add7) #22
  %first_free58 = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i207, i32 6
  %34 = ptrtoint ptr %first_free58 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %call57, ptr %first_free58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add7)
  %cmp59 = icmp eq i32 %add7, 1024
  br i1 %cmp59, label %if.then60, label %if.else61

if.then60:                                        ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #24
  %incdec.ptr = getelementptr %struct.pcpu_block_md, ptr %add.ptr9, i32 1
  br label %if.end82

if.else61:                                        ; preds = %if.then50
  %scan_hint_start62 = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i207, i32 1
  %35 = ptrtoint ptr %scan_hint_start62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %scan_hint_start62, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i208, i32 %36)
  %cmp63.not = icmp slt i32 %and.i208, %36
  br i1 %cmp63.not, label %if.else61.if.end66_crit_edge, label %if.then64

if.else61.if.end66_crit_edge:                     ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end66

if.then64:                                        ; preds = %if.else61
  call void @__sanitizer_cov_trace_pc() #24
  %37 = ptrtoint ptr %add.ptr9 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %add.ptr9, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then64, %if.else61.if.end66_crit_edge
  %left_free67 = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i207, i32 4
  %38 = ptrtoint ptr %left_free67 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %left_free67, align 4
  %contig_hint_start68 = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i207, i32 3
  %39 = ptrtoint ptr %contig_hint_start68 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %contig_hint_start68, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i208, i32 %40)
  %cmp69.not = icmp slt i32 %and.i208, %40
  br i1 %cmp69.not, label %if.else71, label %if.then70

if.then70:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @pcpu_block_refresh_hint(ptr noundef %chunk, i32 noundef %div1.i207)
  br label %if.end82

if.else71:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #24
  %right_free72 = getelementptr %struct.pcpu_block_md, ptr %1, i32 %div1.i207, i32 5
  %41 = ptrtoint ptr %right_free72 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %right_free72, align 4
  %sub73 = xor i32 %and.i208, 1023
  %43 = tail call i32 @llvm.smin.i32(i32 %42, i32 %sub73)
  %44 = ptrtoint ptr %right_free72 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %right_free72, align 4
  br label %if.end82

if.end82:                                         ; preds = %if.else71, %if.then70, %if.then60
  %e_block.0 = phi ptr [ %incdec.ptr, %if.then60 ], [ %add.ptr9, %if.then70 ], [ %add.ptr9, %if.else71 ]
  %45 = xor i32 %div1.i, -1
  %sub84 = add nsw i32 %div1.i207, %45
  %add85 = add nsw i32 %sub84, %spec.select206
  %block.0222 = getelementptr %struct.pcpu_block_md, ptr %add.ptr, i32 1
  %cmp87223 = icmp ult ptr %block.0222, %e_block.0
  br i1 %cmp87223, label %if.end82.for.body_crit_edge, label %if.end82.if.end93_crit_edge

if.end82.if.end93_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end93

if.end82.for.body_crit_edge:                      ; preds = %if.end82
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end82.for.body_crit_edge
  %block.0225 = phi ptr [ %block.0, %for.body.for.body_crit_edge ], [ %block.0222, %if.end82.for.body_crit_edge ]
  %add.ptr.pn224 = phi ptr [ %block.0225, %for.body.for.body_crit_edge ], [ %add.ptr, %if.end82.for.body_crit_edge ]
  %46 = ptrtoint ptr %block.0225 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %block.0225, align 4
  %contig_hint89 = getelementptr %struct.pcpu_block_md, ptr %add.ptr.pn224, i32 1, i32 2
  %47 = ptrtoint ptr %contig_hint89 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %contig_hint89, align 4
  %left_free90 = getelementptr %struct.pcpu_block_md, ptr %add.ptr.pn224, i32 1, i32 4
  %48 = ptrtoint ptr %left_free90 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %left_free90, align 4
  %right_free91 = getelementptr %struct.pcpu_block_md, ptr %add.ptr.pn224, i32 1, i32 5
  %49 = ptrtoint ptr %right_free91 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %right_free91, align 4
  %block.0 = getelementptr %struct.pcpu_block_md, ptr %block.0225, i32 1
  %cmp87 = icmp ult ptr %block.0, %e_block.0
  br i1 %cmp87, label %for.body.for.body_crit_edge, label %for.body.if.end93_crit_edge

for.body.if.end93_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end93

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

if.end93:                                         ; preds = %for.body.if.end93_crit_edge, %if.end82.if.end93_crit_edge, %if.end48.if.end93_crit_edge
  %nr_empty_pages.2 = phi i32 [ %spec.select, %if.end48.if.end93_crit_edge ], [ %add85, %if.end82.if.end93_crit_edge ], [ %add85, %for.body.if.end93_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_empty_pages.2)
  %tobool94.not = icmp eq i32 %nr_empty_pages.2, 0
  br i1 %tobool94.not, label %if.end93.if.end97_crit_edge, label %if.then95

if.end93.if.end97_crit_edge:                      ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end97

if.then95:                                        ; preds = %if.end93
  %nr_empty_pop_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 17
  %50 = ptrtoint ptr %nr_empty_pop_pages.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr_empty_pop_pages.i, align 4
  %add.i = sub i32 %51, %nr_empty_pages.2
  store i32 %add.i, ptr %nr_empty_pop_pages.i, align 4
  %52 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %cmp.not.i = icmp eq ptr %52, %chunk
  br i1 %cmp.not.i, label %if.then95.if.end97_crit_edge, label %land.lhs.true.i

if.then95.if.end97_crit_edge:                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end97

land.lhs.true.i:                                  ; preds = %if.then95
  %isolated.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 11
  %53 = ptrtoint ptr %isolated.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %isolated.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i, label %if.then.i, label %land.lhs.true.i.if.end97_crit_edge

land.lhs.true.i.if.end97_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end97

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  %55 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %add1.i = sub i32 %55, %nr_empty_pages.2
  store i32 %add1.i, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.then.i, %land.lhs.true.i.if.end97_crit_edge, %if.then95.if.end97_crit_edge, %if.end93.if.end97_crit_edge
  %scan_hint_start98 = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 1
  %56 = ptrtoint ptr %scan_hint_start98 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %scan_hint_start98, align 4
  %58 = ptrtoint ptr %chunk_md1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chunk_md1, align 4
  %add101 = add i32 %59, %57
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %add)
  %cmp.i216 = icmp slt i32 %57, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add101, i32 %bit_off)
  %cmp1.i217 = icmp sgt i32 %add101, %bit_off
  %spec.select.i218 = and i1 %cmp.i216, %cmp1.i217
  br i1 %spec.select.i218, label %if.then104, label %if.end97.if.end106_crit_edge

if.end97.if.end106_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end106

if.then104:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #24
  %60 = ptrtoint ptr %chunk_md1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %chunk_md1, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.then104, %if.end97.if.end106_crit_edge
  %contig_hint_start107 = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 3
  %61 = ptrtoint ptr %contig_hint_start107 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %contig_hint_start107, align 4
  %contig_hint109 = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 2
  %63 = ptrtoint ptr %contig_hint109 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %contig_hint109, align 4
  %add110 = add i32 %64, %62
  call void @__sanitizer_cov_trace_cmp4(i32 %62, i32 %add)
  %cmp.i219 = icmp slt i32 %62, %add
  call void @__sanitizer_cov_trace_cmp4(i32 %add110, i32 %bit_off)
  %cmp1.i220 = icmp sgt i32 %add110, %bit_off
  %spec.select.i221 = and i1 %cmp.i219, %cmp1.i220
  br i1 %spec.select.i221, label %if.then113, label %if.end106.if.end114_crit_edge

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end114

if.then113:                                       ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @pcpu_chunk_refresh_hint(ptr noundef %chunk, i1 noundef zeroext false)
  br label %if.end114

if.end114:                                        ; preds = %if.then113, %if.end106.if.end114_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #17

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal fastcc void @pcpu_block_update(ptr noundef %block, i32 noundef %start, i32 noundef %end) unnamed_addr #18 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = sub i32 %end, %start
  %first_free = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 6
  %0 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %first_free, align 4
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 %start)
  %3 = ptrtoint ptr %first_free to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %first_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %start)
  %cmp2 = icmp eq i32 %start, 0
  br i1 %cmp2, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %left_free = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 4
  %4 = ptrtoint ptr %left_free to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %left_free, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %nr_bits = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 7
  %5 = ptrtoint ptr %nr_bits to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_bits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %end)
  %cmp3 = icmp eq i32 %6, %end
  br i1 %cmp3, label %if.then4, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  %right_free = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 5
  %7 = ptrtoint ptr %right_free to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %right_free, align 4
  br label %if.end5

if.end5:                                          ; preds = %if.then4, %if.end.if.end5_crit_edge
  %contig_hint = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 2
  %8 = ptrtoint ptr %contig_hint to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %contig_hint, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp6 = icmp sgt i32 %sub, %9
  br i1 %cmp6, label %if.then7, label %if.else27

if.then7:                                         ; preds = %if.end5
  %contig_hint_start = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 3
  %10 = ptrtoint ptr %contig_hint_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %contig_hint_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %start)
  %cmp8 = icmp slt i32 %11, %start
  br i1 %cmp8, label %if.then9, label %if.then7.if.end24.sink.split_crit_edge

if.then7.if.end24.sink.split_crit_edge:           ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end24.sink.split

if.then9:                                         ; preds = %if.then7
  %12 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %13)
  %cmp11 = icmp sgt i32 %9, %13
  %scan_hint_start = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 1
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #24
  %14 = ptrtoint ptr %scan_hint_start to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %scan_hint_start, align 4
  br label %if.end24.sink.split

if.else:                                          ; preds = %if.then9
  %15 = ptrtoint ptr %scan_hint_start to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %scan_hint_start, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %start)
  %cmp17 = icmp sgt i32 %16, %start
  br i1 %cmp17, label %if.else.if.end24.sink.split_crit_edge, label %if.else.if.end24_crit_edge

if.else.if.end24_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end24

if.else.if.end24.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end24.sink.split

if.end24.sink.split:                              ; preds = %if.else.if.end24.sink.split_crit_edge, %if.then12, %if.then7.if.end24.sink.split_crit_edge
  %.sink = phi i32 [ %9, %if.then12 ], [ 0, %if.else.if.end24.sink.split_crit_edge ], [ 0, %if.then7.if.end24.sink.split_crit_edge ]
  %17 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %block, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.end24.sink.split, %if.else.if.end24_crit_edge
  %18 = ptrtoint ptr %contig_hint_start to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %start, ptr %contig_hint_start, align 4
  %19 = ptrtoint ptr %contig_hint to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %sub, ptr %contig_hint, align 4
  br label %if.end76

if.else27:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %9)
  %cmp29 = icmp eq i32 %sub, %9
  %contig_hint_start31 = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 3
  %20 = ptrtoint ptr %contig_hint_start31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %contig_hint_start31, align 4
  br i1 %cmp29, label %if.then30, label %if.else59

if.then30:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.then30.if.else47_crit_edge, label %land.lhs.true

if.then30.if.else47_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else47

land.lhs.true:                                    ; preds = %if.then30
  br i1 %cmp2, label %land.lhs.true.if.then36_crit_edge, label %lor.lhs.false

land.lhs.true.if.then36_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then36

lor.lhs.false:                                    ; preds = %land.lhs.true
  %22 = tail call i32 @llvm.cttz.i32(i32 %start, i1 true) #22, !range !389
  %23 = tail call i32 @llvm.cttz.i32(i32 %21, i1 true) #22, !range !389
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %23)
  %cmp35 = icmp ugt i32 %22, %23
  br i1 %cmp35, label %lor.lhs.false.if.then36_crit_edge, label %lor.lhs.false.if.else47_crit_edge

lor.lhs.false.if.else47_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else47

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false.if.then36_crit_edge, %land.lhs.true.if.then36_crit_edge
  %24 = ptrtoint ptr %contig_hint_start31 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %start, ptr %contig_hint_start31, align 4
  %scan_hint_start38 = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 1
  %25 = ptrtoint ptr %scan_hint_start38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %scan_hint_start38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %start)
  %cmp39 = icmp sgt i32 %26, %start
  br i1 %cmp39, label %land.lhs.true40, label %if.then36.if.end76_crit_edge

if.then36.if.end76_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end76

land.lhs.true40:                                  ; preds = %if.then36
  %27 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %28)
  %cmp43 = icmp sgt i32 %sub, %28
  br i1 %cmp43, label %if.then44, label %land.lhs.true40.if.end76_crit_edge

land.lhs.true40.if.end76_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end76

if.then44:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #24
  %29 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %block, align 4
  br label %if.end76

if.else47:                                        ; preds = %lor.lhs.false.if.else47_crit_edge, %if.then30.if.else47_crit_edge
  %scan_hint_start48 = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 1
  %30 = ptrtoint ptr %scan_hint_start48 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %scan_hint_start48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %31, i32 %start)
  %cmp49 = icmp slt i32 %31, %start
  br i1 %cmp49, label %if.else47.if.then54_crit_edge, label %lor.lhs.false50

if.else47.if.then54_crit_edge:                    ; preds = %if.else47
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then54

lor.lhs.false50:                                  ; preds = %if.else47
  %32 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %33)
  %cmp53 = icmp sgt i32 %sub, %33
  br i1 %cmp53, label %lor.lhs.false50.if.then54_crit_edge, label %lor.lhs.false50.if.end76_crit_edge

lor.lhs.false50.if.end76_crit_edge:               ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end76

lor.lhs.false50.if.then54_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then54

if.then54:                                        ; preds = %lor.lhs.false50.if.then54_crit_edge, %if.else47.if.then54_crit_edge
  %34 = ptrtoint ptr %scan_hint_start48 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %start, ptr %scan_hint_start48, align 4
  %35 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %block, align 4
  br label %if.end76

if.else59:                                        ; preds = %if.else27
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %start)
  %cmp61 = icmp sgt i32 %21, %start
  br i1 %cmp61, label %land.lhs.true62, label %if.else59.if.end76_crit_edge

if.else59.if.end76_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end76

land.lhs.true62:                                  ; preds = %if.else59
  %36 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %block, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %37)
  %cmp64 = icmp sgt i32 %sub, %37
  br i1 %cmp64, label %land.lhs.true62.if.then71_crit_edge, label %lor.lhs.false65

land.lhs.true62.if.then71_crit_edge:              ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then71

lor.lhs.false65:                                  ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %37)
  %cmp67 = icmp eq i32 %sub, %37
  br i1 %cmp67, label %land.lhs.true68, label %lor.lhs.false65.if.end76_crit_edge

lor.lhs.false65.if.end76_crit_edge:               ; preds = %lor.lhs.false65
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end76

land.lhs.true68:                                  ; preds = %lor.lhs.false65
  %scan_hint_start69 = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 1
  %38 = ptrtoint ptr %scan_hint_start69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %scan_hint_start69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %start)
  %cmp70 = icmp slt i32 %39, %start
  br i1 %cmp70, label %land.lhs.true68.if.then71_crit_edge, label %land.lhs.true68.if.end76_crit_edge

land.lhs.true68.if.end76_crit_edge:               ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end76

land.lhs.true68.if.then71_crit_edge:              ; preds = %land.lhs.true68
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then71

if.then71:                                        ; preds = %land.lhs.true68.if.then71_crit_edge, %land.lhs.true62.if.then71_crit_edge
  %scan_hint_start72 = getelementptr inbounds %struct.pcpu_block_md, ptr %block, i32 0, i32 1
  %40 = ptrtoint ptr %scan_hint_start72 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %start, ptr %scan_hint_start72, align 4
  %41 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub, ptr %block, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.then71, %land.lhs.true68.if.end76_crit_edge, %lor.lhs.false65.if.end76_crit_edge, %if.else59.if.end76_crit_edge, %if.then54, %lor.lhs.false50.if.end76_crit_edge, %if.then44, %land.lhs.true40.if.end76_crit_edge, %if.then36.if.end76_crit_edge, %if.end24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_last_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #17

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_block_refresh_hint(ptr nocapture noundef readonly %chunk, i32 noundef %index) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %md_blocks = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 8
  %0 = ptrtoint ptr %md_blocks to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %md_blocks, align 4
  %add.ptr = getelementptr %struct.pcpu_block_md, ptr %1, i32 %index
  %alloc_map.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 6
  %2 = ptrtoint ptr %alloc_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %alloc_map.i, align 4
  %4 = shl i32 %index, 5
  %div1.i = and i32 %4, 134217696
  %add.ptr.i = getelementptr i32, ptr %3, i32 %div1.i
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %scan_hint_start = getelementptr %struct.pcpu_block_md, ptr %1, i32 %index, i32 1
  %7 = ptrtoint ptr %scan_hint_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %scan_hint_start, align 4
  %add = add i32 %8, %6
  %contig_hint_start = getelementptr %struct.pcpu_block_md, ptr %1, i32 %index, i32 3
  %9 = ptrtoint ptr %contig_hint_start to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %contig_hint_start, align 4
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %add.ptr, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  %first_free = getelementptr %struct.pcpu_block_md, ptr %1, i32 %index, i32 6
  %11 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %first_free, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %start.0 = phi i32 [ %12, %if.else ], [ %add, %if.then ]
  %13 = getelementptr %struct.pcpu_block_md, ptr %1, i32 %index, i32 2
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %6, ptr %13, align 4
  %right_free = getelementptr %struct.pcpu_block_md, ptr %1, i32 %index, i32 5
  %15 = ptrtoint ptr %right_free to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %right_free, align 4
  %call6 = tail call i32 @_find_next_zero_bit_be(ptr noundef %add.ptr.i, i32 noundef 1024, i32 noundef %start.0) #22
  %add7 = add i32 %call6, 1
  %call8 = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef 1024, i32 noundef %add7) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %call6)
  %cmp34 = icmp ult i32 %call6, 1024
  br i1 %cmp34, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %end.036 = phi i32 [ %call12, %for.body.for.body_crit_edge ], [ %call8, %if.end.for.body_crit_edge ]
  %start.135 = phi i32 [ %call10, %for.body.for.body_crit_edge ], [ %call6, %if.end.for.body_crit_edge ]
  tail call fastcc void @pcpu_block_update(ptr noundef %add.ptr, i32 noundef %start.135, i32 noundef %end.036)
  %add9 = add i32 %end.036, 1
  %call10 = tail call i32 @_find_next_zero_bit_be(ptr noundef %add.ptr.i, i32 noundef 1024, i32 noundef %add9) #22
  %add11 = add i32 %call10, 1
  %call12 = tail call i32 @_find_next_bit_be(ptr noundef %add.ptr.i, i32 noundef 1024, i32 noundef %add11) #22
  %cmp = icmp ult i32 %call10, 1024
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_chunk_refresh_hint(ptr noundef %chunk, i1 noundef zeroext %full_scan) unnamed_addr #19 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk_md1 = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4
  br i1 %full_scan, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %0 = ptrtoint ptr %chunk_md1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk_md1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  %scan_hint_start = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 1
  %2 = ptrtoint ptr %scan_hint_start to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %scan_hint_start, align 4
  %add = add i32 %3, %1
  %contig_hint_start = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 3
  %4 = ptrtoint ptr %contig_hint_start to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %contig_hint_start, align 4
  %contig_hint = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 2
  %5 = ptrtoint ptr %contig_hint to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %contig_hint, align 4
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %first_free = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 6
  %6 = ptrtoint ptr %first_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %first_free, align 4
  %contig_hint7 = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 4, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %contig_hint7.sink = phi ptr [ %contig_hint7, %if.else ], [ %chunk_md1, %if.then ]
  %bit_off.0 = phi i32 [ %7, %if.else ], [ %add, %if.then ]
  %8 = ptrtoint ptr %contig_hint7.sink to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %contig_hint7.sink, align 4
  %div1.i.i = lshr i32 %bit_off.0, 10
  %nr_pages.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 15
  %9 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_pages.i.i, align 4
  %mul.i47.i = and i32 %10, 1048575
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i, i32 %mul.i47.i)
  %cmp48.i = icmp ult i32 %div1.i.i, %mul.i47.i
  br i1 %cmp48.i, label %for.body.preheader.i, label %if.end.pcpu_next_md_free_region.exit_crit_edge

if.end.pcpu_next_md_free_region.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_next_md_free_region.exit

for.body.preheader.i:                             ; preds = %if.end
  %md_blocks.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 8
  %11 = ptrtoint ptr %md_blocks.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %md_blocks.i, align 4
  %add.ptr.i = getelementptr %struct.pcpu_block_md, ptr %12, i32 %div1.i.i
  %and.i.i = and i32 %bit_off.0, 1023
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %bit_off.1 = phi i32 [ %bit_off.0, %for.body.preheader.i ], [ %bit_off.2, %for.inc.i.for.body.i_crit_edge ]
  %bits.0 = phi i32 [ 0, %for.body.preheader.i ], [ %bits.1, %for.inc.i.for.body.i_crit_edge ]
  %block.053.i = phi ptr [ %add.ptr.i, %for.body.preheader.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %block_off.052.i = phi i32 [ %and.i.i, %for.body.preheader.i ], [ %block_off.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.049.i = phi i32 [ %div1.i.i, %for.body.preheader.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits.0)
  %tobool.not.i = icmp eq i32 %bits.0, 0
  br i1 %tobool.not.i, label %if.end6.i, label %if.then.i

if.then.i:                                        ; preds = %for.body.i
  %left_free.i = getelementptr inbounds %struct.pcpu_block_md, ptr %block.053.i, i32 0, i32 4
  %13 = ptrtoint ptr %left_free.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %left_free.i, align 4
  %add.i = add i32 %14, %bits.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %14)
  %cmp4.i = icmp eq i32 %14, 1024
  br i1 %cmp4.i, label %if.then.i.for.inc.i_crit_edge, label %if.then.i.pcpu_next_md_free_region.exit_crit_edge

if.then.i.pcpu_next_md_free_region.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_next_md_free_region.exit

if.then.i.for.inc.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

if.end6.i:                                        ; preds = %for.body.i
  %contig_hint.i = getelementptr inbounds %struct.pcpu_block_md, ptr %block.053.i, i32 0, i32 2
  %15 = ptrtoint ptr %contig_hint.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %contig_hint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool7.not.i = icmp eq i32 %16, 0
  br i1 %tobool7.not.i, label %if.end6.i.if.end16.i_crit_edge, label %land.lhs.true.i

if.end6.i.if.end16.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %if.end6.i
  %contig_hint_start.i = getelementptr inbounds %struct.pcpu_block_md, ptr %block.053.i, i32 0, i32 3
  %17 = ptrtoint ptr %contig_hint_start.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %contig_hint_start.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %block_off.052.i)
  %cmp8.not.i = icmp sge i32 %18, %block_off.052.i
  %add11.i = add i32 %18, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add11.i)
  %cmp12.i = icmp ult i32 %add11.i, 1024
  %or.cond.i = select i1 %cmp8.not.i, i1 %cmp12.i, i1 false
  br i1 %or.cond.i, label %if.then13.i, label %land.lhs.true.i.if.end16.i_crit_edge

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end16.i

if.then13.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  %mul.i45.i = shl i32 %i.049.i, 10
  %add.i.i = add i32 %18, %mul.i45.i
  br label %pcpu_next_md_free_region.exit

if.end16.i:                                       ; preds = %land.lhs.true.i.if.end16.i_crit_edge, %if.end6.i.if.end16.i_crit_edge
  %right_free.i = getelementptr inbounds %struct.pcpu_block_md, ptr %block.053.i, i32 0, i32 5
  %19 = ptrtoint ptr %right_free.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %right_free.i, align 4
  %add17.i = shl i32 %i.049.i, 10
  %mul.i = add i32 %add17.i, 1024
  %sub.i = sub i32 %mul.i, %20
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end16.i, %if.then.i.for.inc.i_crit_edge
  %bit_off.2 = phi i32 [ %sub.i, %if.end16.i ], [ %bit_off.1, %if.then.i.for.inc.i_crit_edge ]
  %bits.1 = phi i32 [ %20, %if.end16.i ], [ %add.i, %if.then.i.for.inc.i_crit_edge ]
  %block_off.1.i = phi i32 [ 0, %if.end16.i ], [ %block_off.052.i, %if.then.i.for.inc.i_crit_edge ]
  %incdec.ptr.i = getelementptr %struct.pcpu_block_md, ptr %block.053.i, i32 1
  %inc.i = add nuw nsw i32 %i.049.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %mul.i47.i
  br i1 %exitcond.not, label %for.inc.i.pcpu_next_md_free_region.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

for.inc.i.pcpu_next_md_free_region.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_next_md_free_region.exit

pcpu_next_md_free_region.exit:                    ; preds = %for.inc.i.pcpu_next_md_free_region.exit_crit_edge, %if.then13.i, %if.then.i.pcpu_next_md_free_region.exit_crit_edge, %if.end.pcpu_next_md_free_region.exit_crit_edge
  %bit_off.3 = phi i32 [ %add.i.i, %if.then13.i ], [ %bit_off.0, %if.end.pcpu_next_md_free_region.exit_crit_edge ], [ %bit_off.1, %if.then.i.pcpu_next_md_free_region.exit_crit_edge ], [ %bit_off.2, %for.inc.i.pcpu_next_md_free_region.exit_crit_edge ]
  %bits.2 = phi i32 [ %16, %if.then13.i ], [ 0, %if.end.pcpu_next_md_free_region.exit_crit_edge ], [ %add.i, %if.then.i.pcpu_next_md_free_region.exit_crit_edge ], [ %bits.1, %for.inc.i.pcpu_next_md_free_region.exit_crit_edge ]
  %21 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr_pages.i.i, align 4
  %23 = shl i32 %22, 10
  %div1.i.i2479 = and i32 %23, 1073740800
  call void @__sanitizer_cov_trace_cmp4(i32 %bit_off.3, i32 %div1.i.i2479)
  %cmp80 = icmp slt i32 %bit_off.3, %div1.i.i2479
  br i1 %cmp80, label %for.body.lr.ph, label %pcpu_next_md_free_region.exit.for.end_crit_edge

pcpu_next_md_free_region.exit.for.end_crit_edge:  ; preds = %pcpu_next_md_free_region.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body.lr.ph:                                   ; preds = %pcpu_next_md_free_region.exit
  %md_blocks.i29 = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 8
  br label %for.body

for.body:                                         ; preds = %pcpu_next_md_free_region.exit65.for.body_crit_edge, %for.body.lr.ph
  %bits.382 = phi i32 [ %bits.2, %for.body.lr.ph ], [ %bits.6, %pcpu_next_md_free_region.exit65.for.body_crit_edge ]
  %bit_off.481 = phi i32 [ %bit_off.3, %for.body.lr.ph ], [ %bit_off.7, %pcpu_next_md_free_region.exit65.for.body_crit_edge ]
  %add8 = add i32 %bits.382, %bit_off.481
  tail call fastcc void @pcpu_block_update(ptr noundef %chunk_md1, i32 noundef %bit_off.481, i32 noundef %add8)
  %add10 = add i32 %add8, 1
  %div1.i.i25 = lshr i32 %add10, 10
  %24 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_pages.i.i, align 4
  %mul.i47.i27 = and i32 %25, 1048575
  call void @__sanitizer_cov_trace_cmp4(i32 %div1.i.i25, i32 %mul.i47.i27)
  %cmp48.i28 = icmp ult i32 %div1.i.i25, %mul.i47.i27
  br i1 %cmp48.i28, label %for.body.preheader.i32, label %for.body.pcpu_next_md_free_region.exit65_crit_edge

for.body.pcpu_next_md_free_region.exit65_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_next_md_free_region.exit65

for.body.preheader.i32:                           ; preds = %for.body
  %26 = ptrtoint ptr %md_blocks.i29 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %md_blocks.i29, align 4
  %add.ptr.i30 = getelementptr %struct.pcpu_block_md, ptr %27, i32 %div1.i.i25
  %and.i.i31 = and i32 %add10, 1023
  br label %for.body.i37

for.body.i37:                                     ; preds = %for.inc.i64.for.body.i37_crit_edge, %for.body.preheader.i32
  %bit_off.5 = phi i32 [ %add10, %for.body.preheader.i32 ], [ %bit_off.6, %for.inc.i64.for.body.i37_crit_edge ]
  %bits.4 = phi i32 [ 0, %for.body.preheader.i32 ], [ %bits.5, %for.inc.i64.for.body.i37_crit_edge ]
  %block.053.i33 = phi ptr [ %add.ptr.i30, %for.body.preheader.i32 ], [ %incdec.ptr.i60, %for.inc.i64.for.body.i37_crit_edge ]
  %block_off.052.i34 = phi i32 [ %and.i.i31, %for.body.preheader.i32 ], [ %block_off.1.i59, %for.inc.i64.for.body.i37_crit_edge ]
  %i.049.i35 = phi i32 [ %div1.i.i25, %for.body.preheader.i32 ], [ %inc.i61, %for.inc.i64.for.body.i37_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bits.4)
  %tobool.not.i36 = icmp eq i32 %bits.4, 0
  br i1 %tobool.not.i36, label %if.end6.i44, label %if.then.i41

if.then.i41:                                      ; preds = %for.body.i37
  %left_free.i38 = getelementptr inbounds %struct.pcpu_block_md, ptr %block.053.i33, i32 0, i32 4
  %28 = ptrtoint ptr %left_free.i38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %left_free.i38, align 4
  %add.i39 = add i32 %29, %bits.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %29)
  %cmp4.i40 = icmp eq i32 %29, 1024
  br i1 %cmp4.i40, label %if.then.i41.for.inc.i64_crit_edge, label %if.then.i41.pcpu_next_md_free_region.exit65_crit_edge

if.then.i41.pcpu_next_md_free_region.exit65_crit_edge: ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_next_md_free_region.exit65

if.then.i41.for.inc.i64_crit_edge:                ; preds = %if.then.i41
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i64

if.end6.i44:                                      ; preds = %for.body.i37
  %contig_hint.i42 = getelementptr inbounds %struct.pcpu_block_md, ptr %block.053.i33, i32 0, i32 2
  %30 = ptrtoint ptr %contig_hint.i42 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %contig_hint.i42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool7.not.i43 = icmp eq i32 %31, 0
  br i1 %tobool7.not.i43, label %if.end6.i44.if.end16.i58_crit_edge, label %land.lhs.true.i50

if.end6.i44.if.end16.i58_crit_edge:               ; preds = %if.end6.i44
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end16.i58

land.lhs.true.i50:                                ; preds = %if.end6.i44
  %contig_hint_start.i45 = getelementptr inbounds %struct.pcpu_block_md, ptr %block.053.i33, i32 0, i32 3
  %32 = ptrtoint ptr %contig_hint_start.i45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %contig_hint_start.i45, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %block_off.052.i34)
  %cmp8.not.i46 = icmp sge i32 %33, %block_off.052.i34
  %add11.i47 = add i32 %33, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %add11.i47)
  %cmp12.i48 = icmp ult i32 %add11.i47, 1024
  %or.cond.i49 = select i1 %cmp8.not.i46, i1 %cmp12.i48, i1 false
  br i1 %or.cond.i49, label %if.then13.i53, label %land.lhs.true.i50.if.end16.i58_crit_edge

land.lhs.true.i50.if.end16.i58_crit_edge:         ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end16.i58

if.then13.i53:                                    ; preds = %land.lhs.true.i50
  call void @__sanitizer_cov_trace_pc() #24
  %mul.i45.i51 = shl i32 %i.049.i35, 10
  %add.i.i52 = add i32 %33, %mul.i45.i51
  br label %pcpu_next_md_free_region.exit65

if.end16.i58:                                     ; preds = %land.lhs.true.i50.if.end16.i58_crit_edge, %if.end6.i44.if.end16.i58_crit_edge
  %right_free.i54 = getelementptr inbounds %struct.pcpu_block_md, ptr %block.053.i33, i32 0, i32 5
  %34 = ptrtoint ptr %right_free.i54 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %right_free.i54, align 4
  %add17.i55 = shl i32 %i.049.i35, 10
  %mul.i56 = add i32 %add17.i55, 1024
  %sub.i57 = sub i32 %mul.i56, %35
  br label %for.inc.i64

for.inc.i64:                                      ; preds = %if.end16.i58, %if.then.i41.for.inc.i64_crit_edge
  %bit_off.6 = phi i32 [ %sub.i57, %if.end16.i58 ], [ %bit_off.5, %if.then.i41.for.inc.i64_crit_edge ]
  %bits.5 = phi i32 [ %35, %if.end16.i58 ], [ %add.i39, %if.then.i41.for.inc.i64_crit_edge ]
  %block_off.1.i59 = phi i32 [ 0, %if.end16.i58 ], [ %block_off.052.i34, %if.then.i41.for.inc.i64_crit_edge ]
  %incdec.ptr.i60 = getelementptr %struct.pcpu_block_md, ptr %block.053.i33, i32 1
  %inc.i61 = add nuw nsw i32 %i.049.i35, 1
  %exitcond88.not = icmp eq i32 %inc.i61, %mul.i47.i27
  br i1 %exitcond88.not, label %for.inc.i64.pcpu_next_md_free_region.exit65_crit_edge, label %for.inc.i64.for.body.i37_crit_edge

for.inc.i64.for.body.i37_crit_edge:               ; preds = %for.inc.i64
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i37

for.inc.i64.pcpu_next_md_free_region.exit65_crit_edge: ; preds = %for.inc.i64
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_next_md_free_region.exit65

pcpu_next_md_free_region.exit65:                  ; preds = %for.inc.i64.pcpu_next_md_free_region.exit65_crit_edge, %if.then13.i53, %if.then.i41.pcpu_next_md_free_region.exit65_crit_edge, %for.body.pcpu_next_md_free_region.exit65_crit_edge
  %bit_off.7 = phi i32 [ %add.i.i52, %if.then13.i53 ], [ %add10, %for.body.pcpu_next_md_free_region.exit65_crit_edge ], [ %bit_off.5, %if.then.i41.pcpu_next_md_free_region.exit65_crit_edge ], [ %bit_off.6, %for.inc.i64.pcpu_next_md_free_region.exit65_crit_edge ]
  %bits.6 = phi i32 [ %31, %if.then13.i53 ], [ 0, %for.body.pcpu_next_md_free_region.exit65_crit_edge ], [ %add.i39, %if.then.i41.pcpu_next_md_free_region.exit65_crit_edge ], [ %bits.5, %for.inc.i64.pcpu_next_md_free_region.exit65_crit_edge ]
  %36 = ptrtoint ptr %nr_pages.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_pages.i.i, align 4
  %38 = shl i32 %37, 10
  %div1.i.i24 = and i32 %38, 1073740800
  %cmp = icmp slt i32 %bit_off.7, %div1.i.i24
  br i1 %cmp, label %pcpu_next_md_free_region.exit65.for.body_crit_edge, label %pcpu_next_md_free_region.exit65.for.end_crit_edge

pcpu_next_md_free_region.exit65.for.end_crit_edge: ; preds = %pcpu_next_md_free_region.exit65
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

pcpu_next_md_free_region.exit65.for.body_crit_edge: ; preds = %pcpu_next_md_free_region.exit65
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.end:                                          ; preds = %pcpu_next_md_free_region.exit65.for.end_crit_edge, %pcpu_next_md_free_region.exit.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pcpu_get_vm_areas(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mem_cgroup_kmem_disabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @slab_is_available() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #20

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pcpu_get_pages() unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @pcpu_nr_units, align 4
  %1 = load i32, ptr @pcpu_unit_pages, align 4
  %mul = shl i32 %0, 2
  %mul1 = mul i32 %mul, %1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %2 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.mutex, ptr @pcpu_alloc_mutex, i32 0, i32 5), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !387

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.131, i32 noundef 37, i32 noundef 9, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %3 = load ptr, ptr @pcpu_get_pages.pages, align 4
  %tobool25.not = icmp eq ptr %3, null
  br i1 %tobool25.not, label %if.then26, label %if.end.if.end28_crit_edge

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end28

if.then26:                                        ; preds = %if.end
  %call.i30 = tail call zeroext i1 @slab_is_available() #22
  br i1 %call.i30, label %if.end38.i, label %land.rhs.i

land.rhs.i:                                       ; preds = %if.then26
  %.b47.i = load i1, ptr @pcpu_mem_zalloc.__already_done, align 1
  br i1 %.b47.i, label %land.rhs.i.pcpu_mem_zalloc.exit_crit_edge, label %if.then.i, !prof !386

land.rhs.i.pcpu_mem_zalloc.exit_crit_edge:        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_mem_zalloc.exit

if.then.i:                                        ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @pcpu_mem_zalloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 510, i32 noundef 9, ptr noundef null) #22
  br label %pcpu_mem_zalloc.exit

if.end38.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_const_cmp4(i32 4097, i32 %mul1)
  %cmp.i = icmp ult i32 %mul1, 4097
  br i1 %cmp.i, label %if.end8.i.i.i, label %if.else.i

if.end8.i.i.i:                                    ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #24
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul1, i32 noundef 3520) #32
  br label %pcpu_mem_zalloc.exit

if.else.i:                                        ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #24
  %call41.i = tail call noalias ptr @__vmalloc(i32 noundef %mul1, i32 noundef 3520) #32
  br label %pcpu_mem_zalloc.exit

pcpu_mem_zalloc.exit:                             ; preds = %if.else.i, %if.end8.i.i.i, %if.then.i, %land.rhs.i.pcpu_mem_zalloc.exit_crit_edge
  %retval.0.i = phi ptr [ %call41.i, %if.else.i ], [ null, %if.then.i ], [ null, %land.rhs.i.pcpu_mem_zalloc.exit_crit_edge ], [ %call9.i.i.i, %if.end8.i.i.i ]
  store ptr %retval.0.i, ptr @pcpu_get_pages.pages, align 4
  br label %if.end28

if.end28:                                         ; preds = %pcpu_mem_zalloc.exit, %if.end.if.end28_crit_edge
  %4 = load ptr, ptr @pcpu_get_pages.pages, align 4
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vmap_pages_range_noflush(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vunmap_range_noflush(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_kernel_range(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcpu_balance_workfn(ptr nocapture noundef readnone %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @pcpu_alloc_mutex, i32 noundef 0) #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  tail call fastcc void @pcpu_balance_free(i1 noundef zeroext false)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %land.rhs.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

land.rhs.i:                                       ; preds = %entry
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !387

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2140, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %1 = load ptr, ptr @pcpu_chunk_lists, align 4
  %2 = load i32, ptr @pcpu_to_depopulate_slot, align 4
  %arrayidx167.i = getelementptr %struct.list_head, ptr %1, i32 %2
  %3 = ptrtoint ptr %arrayidx167.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %arrayidx167.i, align 4
  %cmp.i.not168.i = icmp eq ptr %4, %arrayidx167.i
  br i1 %cmp.i.not168.i, label %if.end.i.pcpu_reclaim_populated.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  br label %while.body.i

if.end.i.pcpu_reclaim_populated.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_reclaim_populated.exit

while.body.i:                                     ; preds = %if.end109.i.while.body.i_crit_edge, %if.end.i.while.body.i_crit_edge
  %5 = phi ptr [ %60, %if.end109.i.while.body.i_crit_edge ], [ %4, %if.end.i.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 -8
  %immutable.i = getelementptr i8, ptr %5, i32 64
  %6 = ptrtoint ptr %immutable.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %immutable.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool31.not.i = icmp eq i8 %7, 0
  br i1 %tobool31.not.i, label %while.body.i.if.end53.i_crit_edge, label %do.end47.i, !prof !386

while.body.i.if.end53.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end53.i

do.end47.i:                                       ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2151, i32 noundef 9, ptr noundef null) #22
  br label %if.end53.i

if.end53.i:                                       ; preds = %do.end47.i, %while.body.i.if.end53.i_crit_edge
  %nr_pages.i = getelementptr i8, ptr %5, i32 80
  %8 = ptrtoint ptr %nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_pages.i, align 4
  %nr_empty_pop_pages.i = getelementptr i8, ptr %5, i32 88
  %i.0152.i = add i32 %9, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0152.i)
  %cmp62153.i = icmp sgt i32 %i.0152.i, -1
  br i1 %cmp62153.i, label %for.body.lr.ph.i, label %if.end53.i.end_chunk.i_crit_edge

if.end53.i.end_chunk.i_crit_edge:                 ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %end_chunk.i

for.body.lr.ph.i:                                 ; preds = %if.end53.i
  %md_blocks.i = getelementptr i8, ptr %5, i32 56
  %populated.i = getelementptr i8, ptr %5, i32 92
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.0157.i = phi i32 [ %i.0152.i, %for.body.lr.ph.i ], [ %i.0.i, %for.inc.i.for.body.i_crit_edge ]
  %freed_page_start.0156.i = phi i32 [ %9, %for.body.lr.ph.i ], [ %freed_page_start.1.i, %for.inc.i.for.body.i_crit_edge ]
  %freed_page_end.0155.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %freed_page_end.1.i, %for.inc.i.for.body.i_crit_edge ]
  %end.0154.i = phi i32 [ -1, %for.body.lr.ph.i ], [ %end.3.i, %for.inc.i.for.body.i_crit_edge ]
  %10 = ptrtoint ptr %nr_empty_pop_pages.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_empty_pop_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp63.i = icmp eq i32 %11, 0
  br i1 %cmp63.i, label %for.body.i.end_chunk.i_crit_edge, label %if.end65.i

for.body.i.end_chunk.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %end_chunk.i

if.end65.i:                                       ; preds = %for.body.i
  %12 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp66.i = icmp slt i32 %12, 4
  br i1 %cmp66.i, label %if.end65.i.end_chunk.i_crit_edge, label %if.end68.i

if.end65.i.end_chunk.i_crit_edge:                 ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %end_chunk.i

if.end68.i:                                       ; preds = %if.end65.i
  %13 = ptrtoint ptr %md_blocks.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %md_blocks.i, align 4
  %contig_hint.i = getelementptr %struct.pcpu_block_md, ptr %14, i32 %i.0157.i, i32 2
  %15 = ptrtoint ptr %contig_hint.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %contig_hint.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1024, i32 %16)
  %cmp70.i = icmp eq i32 %16, 1024
  br i1 %cmp70.i, label %land.lhs.true.i, label %if.end68.i.if.end80.i_crit_edge

if.end68.i.if.end80.i_crit_edge:                  ; preds = %if.end68.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end80.i

land.lhs.true.i:                                  ; preds = %if.end68.i
  %div3.i.i = lshr i32 %i.0157.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %populated.i, i32 %div3.i.i
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.0157.i, 31
  %19 = shl nuw i32 1, %and.i.i
  %20 = and i32 %18, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool72.not.i = icmp eq i32 %20, 0
  br i1 %tobool72.not.i, label %land.lhs.true.i.if.end80.i_crit_edge, label %if.then73.i

land.lhs.true.i.if.end80.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end80.i

if.then73.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %end.0154.i)
  %cmp74.i = icmp eq i32 %end.0154.i, -1
  %spec.select.i = select i1 %cmp74.i, i32 %i.0157.i, i32 %end.0154.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0157.i)
  %cmp77.not.i = icmp eq i32 %i.0157.i, 0
  br i1 %cmp77.not.i, label %if.then73.i.if.end83.i_crit_edge, label %if.then73.i.for.inc.i_crit_edge

if.then73.i.for.inc.i_crit_edge:                  ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

if.then73.i.if.end83.i_crit_edge:                 ; preds = %if.then73.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end83.i

if.end80.i:                                       ; preds = %land.lhs.true.i.if.end80.i_crit_edge, %if.end68.i.if.end80.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %end.0154.i)
  %cmp81.i = icmp eq i32 %end.0154.i, -1
  br i1 %cmp81.i, label %if.end80.i.for.inc.i_crit_edge, label %if.end80.i.if.end83.i_crit_edge

if.end80.i.if.end83.i_crit_edge:                  ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end83.i

if.end80.i.for.inc.i_crit_edge:                   ; preds = %if.end80.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc.i

if.end83.i:                                       ; preds = %if.end80.i.if.end83.i_crit_edge, %if.then73.i.if.end83.i_crit_edge
  %i.1151.i = phi i32 [ %i.0157.i, %if.end80.i.if.end83.i_crit_edge ], [ -1, %if.then73.i.if.end83.i_crit_edge ]
  %end.2150.i = phi i32 [ %end.0154.i, %if.end80.i.if.end83.i_crit_edge ], [ %spec.select.i, %if.then73.i.if.end83.i_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #22
  %add.i = add i32 %i.1151.i, 1
  %add84.i = add nuw i32 %end.2150.i, 1
  tail call fastcc void @pcpu_depopulate_chunk(ptr noundef %add.ptr.i, i32 noundef %add.i, i32 noundef %add84.i) #22
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2193, i32 noundef 0) #22
  %call.i144.i = tail call i32 @__cond_resched() #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  tail call fastcc void @pcpu_chunk_depopulated(ptr noundef %add.ptr.i, i32 noundef %add.i, i32 noundef %add84.i) #22
  %21 = tail call i32 @llvm.smin.i32(i32 %freed_page_start.0156.i, i32 %add.i) #22
  %22 = tail call i32 @llvm.smax.i32(i32 %freed_page_end.0155.i, i32 %add84.i) #22
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end83.i, %if.end80.i.for.inc.i_crit_edge, %if.then73.i.for.inc.i_crit_edge
  %end.3.i = phi i32 [ %spec.select.i, %if.then73.i.for.inc.i_crit_edge ], [ -1, %if.end80.i.for.inc.i_crit_edge ], [ -1, %if.end83.i ]
  %i.2.i = phi i32 [ %i.0157.i, %if.then73.i.for.inc.i_crit_edge ], [ %i.0157.i, %if.end80.i.for.inc.i_crit_edge ], [ %i.1151.i, %if.end83.i ]
  %freed_page_end.1.i = phi i32 [ %freed_page_end.0155.i, %if.then73.i.for.inc.i_crit_edge ], [ %freed_page_end.0155.i, %if.end80.i.for.inc.i_crit_edge ], [ %22, %if.end83.i ]
  %freed_page_start.1.i = phi i32 [ %freed_page_start.0156.i, %if.then73.i.for.inc.i_crit_edge ], [ %freed_page_start.0156.i, %if.end80.i.for.inc.i_crit_edge ], [ %21, %if.end83.i ]
  %i.0.i = add i32 %i.2.i, -1
  %cmp62.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp62.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.end_chunk.i_crit_edge

for.inc.i.end_chunk.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %end_chunk.i

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i

end_chunk.i:                                      ; preds = %for.inc.i.end_chunk.i_crit_edge, %if.end65.i.end_chunk.i_crit_edge, %for.body.i.end_chunk.i_crit_edge, %if.end53.i.end_chunk.i_crit_edge
  %freed_page_end.0.lcssa.i = phi i32 [ 0, %if.end53.i.end_chunk.i_crit_edge ], [ %freed_page_end.0155.i, %for.body.i.end_chunk.i_crit_edge ], [ %freed_page_end.1.i, %for.inc.i.end_chunk.i_crit_edge ], [ %freed_page_end.0155.i, %if.end65.i.end_chunk.i_crit_edge ]
  %freed_page_start.0.lcssa.i = phi i32 [ %9, %if.end53.i.end_chunk.i_crit_edge ], [ %freed_page_start.0156.i, %for.body.i.end_chunk.i_crit_edge ], [ %freed_page_start.1.i, %for.inc.i.end_chunk.i_crit_edge ], [ %freed_page_start.0156.i, %if.end65.i.end_chunk.i_crit_edge ]
  %reintegrate.0.off0.i = phi i1 [ false, %if.end53.i.end_chunk.i_crit_edge ], [ false, %for.body.i.end_chunk.i_crit_edge ], [ false, %for.inc.i.end_chunk.i_crit_edge ], [ true, %if.end65.i.end_chunk.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %freed_page_start.0.lcssa.i, i32 %freed_page_end.0.lcssa.i)
  %cmp100.i = icmp slt i32 %freed_page_start.0.lcssa.i, %freed_page_end.0.lcssa.i
  br i1 %cmp100.i, label %if.then101.i, label %end_chunk.i.if.end104.i_crit_edge

end_chunk.i.if.end104.i_crit_edge:                ; preds = %end_chunk.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end104.i

if.then101.i:                                     ; preds = %end_chunk.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #22
  %23 = load i32, ptr @pcpu_low_unit_cpu, align 4
  %base_addr.i.i.i = getelementptr i8, ptr %5, i32 44
  %24 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base_addr.i.i.i, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = load ptr, ptr @pcpu_unit_offsets, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %27, i32 %23
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shl.i.i.i.i = shl i32 %freed_page_start.0.lcssa.i, 12
  %add.i.i.i.i = add i32 %shl.i.i.i.i, %26
  %add.i.i.i = add i32 %add.i.i.i.i, %29
  %30 = load i32, ptr @pcpu_high_unit_cpu, align 4
  %arrayidx.i.i4.i.i = getelementptr i32, ptr %27, i32 %30
  %31 = ptrtoint ptr %arrayidx.i.i4.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx.i.i4.i.i, align 4
  %shl.i.i5.i.i = shl i32 %freed_page_end.0.lcssa.i, 12
  %add.i.i6.i.i = add i32 %shl.i.i5.i.i, %26
  %add.i7.i.i = add i32 %add.i.i6.i.i, %32
  tail call void @flush_tlb_kernel_range(i32 noundef %add.i.i.i, i32 noundef %add.i7.i.i) #22
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2211, i32 noundef 0) #22
  %call.i145.i = tail call i32 @__cond_resched() #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  br label %if.end104.i

if.end104.i:                                      ; preds = %if.then101.i, %end_chunk.i.if.end104.i_crit_edge
  br i1 %reintegrate.0.off0.i, label %if.end104.i.if.then107.i_crit_edge, label %lor.lhs.false.i

if.end104.i.if.then107.i_crit_edge:               ; preds = %if.end104.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then107.i

lor.lhs.false.i:                                  ; preds = %if.end104.i
  %free_bytes.i = getelementptr i8, ptr %5, i32 8
  %33 = ptrtoint ptr %free_bytes.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %free_bytes.i, align 4
  %35 = load i32, ptr @pcpu_unit_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %35)
  %cmp106.i = icmp eq i32 %34, %35
  br i1 %cmp106.i, label %lor.lhs.false.i.if.then107.i_crit_edge, label %if.else.i

lor.lhs.false.i.if.then107.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then107.i

if.then107.i:                                     ; preds = %lor.lhs.false.i.if.then107.i_crit_edge, %if.end104.i.if.then107.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %36 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i.i, label %if.then107.i.if.end.i.i_crit_edge, label %land.rhs.i.i

if.then107.i.if.end.i.i_crit_edge:                ; preds = %if.then107.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

land.rhs.i.i:                                     ; preds = %if.then107.i
  %call.i.i.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %cmp.not.i.i, label %do.end.i.i, label %land.rhs.i.i.if.end.i.i_crit_edge, !prof !387

land.rhs.i.i.if.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 584, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %land.rhs.i.i.if.end.i.i_crit_edge, %if.then107.i.if.end.i.i_crit_edge
  %isolated.i.i = getelementptr i8, ptr %5, i32 65
  %37 = ptrtoint ptr %isolated.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %isolated.i.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool24.not.i.i = icmp eq i8 %38, 0
  br i1 %tobool24.not.i.i, label %if.end.i.i.if.end109.i_crit_edge, label %if.then25.i.i

if.end.i.i.if.end109.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end109.i

if.then25.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %39 = ptrtoint ptr %isolated.i.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %isolated.i.i, align 1
  %40 = ptrtoint ptr %nr_empty_pop_pages.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_empty_pop_pages.i, align 4
  %42 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %add.i.i = add i32 %42, %41
  store i32 %add.i.i, ptr @pcpu_nr_empty_pop_pages, align 4
  tail call fastcc void @pcpu_chunk_relocate(ptr noundef %add.ptr.i, i32 noundef -1) #22
  br label %if.end109.i

if.else.i:                                        ; preds = %lor.lhs.false.i
  %43 = load ptr, ptr @pcpu_chunk_lists, align 4
  %44 = load i32, ptr @pcpu_sidelined_slot, align 4
  %arrayidx108.i = getelementptr %struct.list_head, ptr %43, i32 %44
  %call.i.i146.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #22
  br i1 %call.i.i146.i, label %if.end.i.i.i, label %if.else.i.__list_del_entry.exit.i.i_crit_edge

if.else.i.__list_del_entry.exit.i.i_crit_edge:    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i.i, align 4
  %47 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.else.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr %struct.list_head, ptr %43, i32 %44, i32 1
  %51 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %52, ptr noundef %arrayidx108.i) #22
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.if.end109.i_crit_edge

__list_del_entry.exit.i.i.if.end109.i_crit_edge:  ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end109.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #24
  %53 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %5, ptr %prev.i2.i.i, align 4
  %54 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %arrayidx108.i, ptr %5, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %55 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev3.i.i.i.i, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %5, ptr %52, align 4
  br label %if.end109.i

if.end109.i:                                      ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.if.end109.i_crit_edge, %if.then25.i.i, %if.end.i.i.if.end109.i_crit_edge
  %57 = load ptr, ptr @pcpu_chunk_lists, align 4
  %58 = load i32, ptr @pcpu_to_depopulate_slot, align 4
  %arrayidx.i = getelementptr %struct.list_head, ptr %57, i32 %58
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %arrayidx.i, align 4
  %cmp.i.not.i = icmp eq ptr %60, %arrayidx.i
  br i1 %cmp.i.not.i, label %if.end109.i.pcpu_reclaim_populated.exit_crit_edge, label %if.end109.i.while.body.i_crit_edge

if.end109.i.while.body.i_crit_edge:               ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %while.body.i

if.end109.i.pcpu_reclaim_populated.exit_crit_edge: ; preds = %if.end109.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_reclaim_populated.exit

pcpu_reclaim_populated.exit:                      ; preds = %if.end109.i.pcpu_reclaim_populated.exit_crit_edge, %if.end.i.pcpu_reclaim_populated.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %61 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i1 = icmp eq i32 %61, 0
  br i1 %tobool.not.i1, label %pcpu_reclaim_populated.exit.retry_pop.i.preheader_crit_edge, label %land.rhs.i4

pcpu_reclaim_populated.exit.retry_pop.i.preheader_crit_edge: ; preds = %pcpu_reclaim_populated.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %retry_pop.i.preheader

land.rhs.i4:                                      ; preds = %pcpu_reclaim_populated.exit
  %call.i.i2 = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i2)
  %cmp.not.i3 = icmp eq i32 %call.i.i2, 0
  br i1 %cmp.not.i3, label %do.end.i5, label %land.rhs.i4.retry_pop.i.preheader_crit_edge, !prof !387

land.rhs.i4.retry_pop.i.preheader_crit_edge:      ; preds = %land.rhs.i4
  call void @__sanitizer_cov_trace_pc() #24
  br label %retry_pop.i.preheader

do.end.i5:                                        ; preds = %land.rhs.i4
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 2046, i32 noundef 9, ptr noundef null) #22
  br label %retry_pop.i.preheader

retry_pop.i.preheader:                            ; preds = %do.end.i5, %land.rhs.i4.retry_pop.i.preheader_crit_edge, %pcpu_reclaim_populated.exit.retry_pop.i.preheader_crit_edge
  br label %retry_pop.i

retry_pop.i:                                      ; preds = %if.then114.i, %retry_pop.i.preheader
  %.b159.i = load i1, ptr @pcpu_atomic_alloc_failed, align 1
  br i1 %.b159.i, label %if.then25.i, label %if.else.i7

if.then25.i:                                      ; preds = %retry_pop.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 false, ptr @pcpu_atomic_alloc_failed, align 1
  br label %if.end34.i

if.else.i7:                                       ; preds = %retry_pop.i
  call void @__sanitizer_cov_trace_pc() #24
  %62 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %sub.i = sub i32 4, %62
  %63 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #22
  %64 = tail call i32 @llvm.umin.i32(i32 %63, i32 4) #22
  br label %if.end34.i

if.end34.i:                                       ; preds = %if.else.i7, %if.then25.i
  %nr_to_pop.0.i = phi i32 [ 4, %if.then25.i ], [ %64, %if.else.i7 ]
  %65 = load i32, ptr @pcpu_unit_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %65)
  %cmp.i.i = icmp eq i32 %65, 4096
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end34.i.pcpu_size_to_slot.exit.i_crit_edge

if.end34.i.pcpu_size_to_slot.exit.i_crit_edge:    ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_size_to_slot.exit.i

if.then.i.i:                                      ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #24
  %66 = load i32, ptr @pcpu_free_slot, align 4
  br label %pcpu_size_to_slot.exit.i

pcpu_size_to_slot.exit.i:                         ; preds = %if.then.i.i, %if.end34.i.pcpu_size_to_slot.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %66, %if.then.i.i ], [ 10, %if.end34.i.pcpu_size_to_slot.exit.i_crit_edge ]
  %67 = load i32, ptr @pcpu_free_slot, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.i, i32 %67)
  %cmp36.not184.i = icmp sgt i32 %retval.0.i.i, %67
  br i1 %cmp36.not184.i, label %pcpu_size_to_slot.exit.i.for.end107.i_crit_edge, label %pcpu_size_to_slot.exit.i.for.body.i8_crit_edge

pcpu_size_to_slot.exit.i.for.body.i8_crit_edge:   ; preds = %pcpu_size_to_slot.exit.i
  br label %for.body.i8

pcpu_size_to_slot.exit.i.for.end107.i_crit_edge:  ; preds = %pcpu_size_to_slot.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end107.i

for.body.i8:                                      ; preds = %for.inc106.i.for.body.i8_crit_edge, %pcpu_size_to_slot.exit.i.for.body.i8_crit_edge
  %slot.0186.i = phi i32 [ %inc.i, %for.inc106.i.for.body.i8_crit_edge ], [ %retval.0.i.i, %pcpu_size_to_slot.exit.i.for.body.i8_crit_edge ]
  %nr_to_pop.1185.i = phi i32 [ %nr_to_pop.5.ph.i, %for.inc106.i.for.body.i8_crit_edge ], [ %nr_to_pop.0.i, %pcpu_size_to_slot.exit.i.for.body.i8_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_to_pop.1185.i)
  %tobool37.not.i = icmp eq i32 %nr_to_pop.1185.i, 0
  br i1 %tobool37.not.i, label %for.body.i8.pcpu_balance_populated.exit_crit_edge, label %if.end39.i

for.body.i8.pcpu_balance_populated.exit_crit_edge: ; preds = %for.body.i8
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_balance_populated.exit

if.end39.i:                                       ; preds = %for.body.i8
  %68 = load ptr, ptr @pcpu_chunk_lists, align 4
  %arrayidx.i9 = getelementptr %struct.list_head, ptr %68, i32 %slot.0186.i
  br label %for.cond41.i

for.cond41.i:                                     ; preds = %for.body46.i.for.cond41.i_crit_edge, %if.end39.i
  %.pn.in.i = phi ptr [ %arrayidx.i9, %if.end39.i ], [ %.pn.i, %for.body46.i.for.cond41.i_crit_edge ]
  %69 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp43.not.i = icmp eq ptr %.pn.i, %arrayidx.i9
  br i1 %cmp43.not.i, label %for.cond41.i.for.inc106.i_crit_edge, label %for.body46.i

for.cond41.i.for.inc106.i_crit_edge:              ; preds = %for.cond41.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc106.i

for.body46.i:                                     ; preds = %for.cond41.i
  %nr_pages.i10 = getelementptr i8, ptr %.pn.i, i32 80
  %70 = ptrtoint ptr %nr_pages.i10 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nr_pages.i10, align 4
  %nr_populated.i = getelementptr i8, ptr %.pn.i, i32 84
  %72 = ptrtoint ptr %nr_populated.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %nr_populated.i, align 4
  %tobool48.not.i = icmp eq i32 %71, %73
  br i1 %tobool48.not.i, label %for.body46.i.for.cond41.i_crit_edge, label %if.end58.i

for.body46.i.for.cond41.i_crit_edge:              ; preds = %for.body46.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond41.i

if.end58.i:                                       ; preds = %for.body46.i
  %nr_pages.i10.le = getelementptr i8, ptr %.pn.i, i32 80
  %chunk.0.le.i = getelementptr i8, ptr %.pn.i, i32 -8
  %populated.i11 = getelementptr i8, ptr %.pn.i, i32 92
  %call60.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %populated.i11, i32 noundef %71, i32 noundef 0) #22
  %74 = ptrtoint ptr %nr_pages.i10.le to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr_pages.i10.le, align 4
  %add.i12 = add i32 %call60.i, 1
  %call64.i = tail call i32 @_find_next_bit_be(ptr noundef %populated.i11, i32 noundef %75, i32 noundef %add.i12) #22
  %76 = ptrtoint ptr %nr_pages.i10.le to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %nr_pages.i10.le, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call60.i, i32 %77)
  %cmp67178.i = icmp ult i32 %call60.i, %77
  br i1 %cmp67178.i, label %if.end58.i.for.body68.i_crit_edge, label %if.end58.i.for.inc106.i_crit_edge

if.end58.i.for.inc106.i_crit_edge:                ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc106.i

if.end58.i.for.body68.i_crit_edge:                ; preds = %if.end58.i
  br label %for.body68.i

for.body68.i:                                     ; preds = %for.inc89.i.for.body68.i_crit_edge, %if.end58.i.for.body68.i_crit_edge
  %nr_to_pop.2181.i = phi i32 [ %sub82.i, %for.inc89.i.for.body68.i_crit_edge ], [ %nr_to_pop.1185.i, %if.end58.i.for.body68.i_crit_edge ]
  %re.0180.i = phi i32 [ %call99.i, %for.inc89.i.for.body68.i_crit_edge ], [ %call64.i, %if.end58.i.for.body68.i_crit_edge ]
  %rs.0179.i = phi i32 [ %call94.i, %for.inc89.i.for.body68.i_crit_edge ], [ %call60.i, %if.end58.i.for.body68.i_crit_edge ]
  %sub69.i = sub i32 %re.0180.i, %rs.0179.i
  %78 = tail call i32 @llvm.smin.i32(i32 %sub69.i, i32 %nr_to_pop.2181.i) #22
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #22
  %add76.i = add i32 %78, %rs.0179.i
  %call77.i = tail call fastcc i32 @pcpu_populate_chunk(ptr noundef %chunk.0.le.i, i32 noundef %rs.0179.i, i32 noundef %add76.i, i32 noundef 76992) #22
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2090, i32 noundef 0) #22
  %call.i160.i = tail call i32 @__cond_resched() #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77.i)
  %tobool80.not.i = icmp eq i32 %call77.i, 0
  br i1 %tobool80.not.i, label %if.end85.i, label %for.body68.i.for.inc106.i_crit_edge

for.body68.i.for.inc106.i_crit_edge:              ; preds = %for.body68.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc106.i

if.end85.i:                                       ; preds = %for.body68.i
  %sub82.i = sub i32 %nr_to_pop.2181.i, %78
  tail call fastcc void @pcpu_chunk_populated(ptr noundef %chunk.0.le.i, i32 noundef %rs.0179.i, i32 noundef %add76.i) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub82.i)
  %tobool86.not.i = icmp eq i32 %sub82.i, 0
  br i1 %tobool86.not.i, label %if.end85.i.for.inc106.i_crit_edge, label %for.inc89.i

if.end85.i.for.inc106.i_crit_edge:                ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc106.i

for.inc89.i:                                      ; preds = %if.end85.i
  %79 = ptrtoint ptr %nr_pages.i10.le to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %nr_pages.i10.le, align 4
  %add93.i = add i32 %re.0180.i, 1
  %call94.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %populated.i11, i32 noundef %80, i32 noundef %add93.i) #22
  %81 = ptrtoint ptr %nr_pages.i10.le to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %nr_pages.i10.le, align 4
  %add98.i = add i32 %call94.i, 1
  %call99.i = tail call i32 @_find_next_bit_be(ptr noundef %populated.i11, i32 noundef %82, i32 noundef %add98.i) #22
  %83 = ptrtoint ptr %nr_pages.i10.le to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr_pages.i10.le, align 4
  %cmp67.i = icmp ult i32 %call94.i, %84
  br i1 %cmp67.i, label %for.inc89.i.for.body68.i_crit_edge, label %for.inc89.i.for.inc106.i_crit_edge

for.inc89.i.for.inc106.i_crit_edge:               ; preds = %for.inc89.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc106.i

for.inc89.i.for.body68.i_crit_edge:               ; preds = %for.inc89.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body68.i

for.inc106.i:                                     ; preds = %for.inc89.i.for.inc106.i_crit_edge, %if.end85.i.for.inc106.i_crit_edge, %for.body68.i.for.inc106.i_crit_edge, %if.end58.i.for.inc106.i_crit_edge, %for.cond41.i.for.inc106.i_crit_edge
  %nr_to_pop.5.ph.i = phi i32 [ %nr_to_pop.1185.i, %if.end58.i.for.inc106.i_crit_edge ], [ 0, %for.body68.i.for.inc106.i_crit_edge ], [ 0, %if.end85.i.for.inc106.i_crit_edge ], [ %sub82.i, %for.inc89.i.for.inc106.i_crit_edge ], [ %nr_to_pop.1185.i, %for.cond41.i.for.inc106.i_crit_edge ]
  %inc.i = add i32 %slot.0186.i, 1
  %85 = load i32, ptr @pcpu_free_slot, align 4
  %cmp36.not.i = icmp sgt i32 %inc.i, %85
  br i1 %cmp36.not.i, label %for.inc106.i.for.end107.i_crit_edge, label %for.inc106.i.for.body.i8_crit_edge

for.inc106.i.for.body.i8_crit_edge:               ; preds = %for.inc106.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body.i8

for.inc106.i.for.end107.i_crit_edge:              ; preds = %for.inc106.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end107.i

for.end107.i:                                     ; preds = %for.inc106.i.for.end107.i_crit_edge, %pcpu_size_to_slot.exit.i.for.end107.i_crit_edge
  %nr_to_pop.1.lcssa.i = phi i32 [ %nr_to_pop.0.i, %pcpu_size_to_slot.exit.i.for.end107.i_crit_edge ], [ %nr_to_pop.5.ph.i, %for.inc106.i.for.end107.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_to_pop.1.lcssa.i)
  %tobool108.not.i = icmp eq i32 %nr_to_pop.1.lcssa.i, 0
  br i1 %tobool108.not.i, label %for.end107.i.pcpu_balance_populated.exit_crit_edge, label %if.then109.i

for.end107.i.pcpu_balance_populated.exit_crit_edge: ; preds = %for.end107.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_balance_populated.exit

if.then109.i:                                     ; preds = %for.end107.i
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #22
  %call110.i = tail call fastcc ptr @pcpu_create_chunk(i32 noundef 76992) #22
  tail call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2108, i32 noundef 0) #22
  %call.i161.i = tail call i32 @__cond_resched() #22
  tail call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  %tobool113.not.i = icmp eq ptr %call110.i, null
  br i1 %tobool113.not.i, label %if.then109.i.pcpu_balance_populated.exit_crit_edge, label %if.then114.i

if.then109.i.pcpu_balance_populated.exit_crit_edge: ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_balance_populated.exit

if.then114.i:                                     ; preds = %if.then109.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call fastcc void @pcpu_chunk_relocate(ptr noundef nonnull %call110.i, i32 noundef -1) #22
  br label %retry_pop.i

pcpu_balance_populated.exit:                      ; preds = %if.then109.i.pcpu_balance_populated.exit_crit_edge, %for.end107.i.pcpu_balance_populated.exit_crit_edge, %for.body.i8.pcpu_balance_populated.exit_crit_edge
  tail call fastcc void @pcpu_balance_free(i1 noundef zeroext true)
  tail call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #22
  tail call void @mutex_unlock(ptr noundef nonnull @pcpu_alloc_mutex) #22
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_balance_free(i1 noundef zeroext %empty_only) unnamed_addr #0 align 64 {
entry:
  %to_free = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %to_free) #22
  %0 = getelementptr inbounds %struct.list_head, ptr %to_free, i32 0, i32 1
  %1 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %to_free, ptr %to_free, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %to_free, ptr %0, align 4
  %3 = load ptr, ptr @pcpu_chunk_lists, align 4
  %4 = load i32, ptr @pcpu_free_slot, align 4
  %arrayidx = getelementptr %struct.list_head, ptr %3, i32 %4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %5 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !387

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1991, i32 noundef 9, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp32.not172 = icmp eq ptr %7, %arrayidx
  br i1 %cmp32.not172, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %.pn.in173 = phi ptr [ %.pn175, %for.inc.for.body_crit_edge ], [ %7, %if.end.for.body_crit_edge ]
  %8 = ptrtoint ptr %.pn.in173 to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn175 = load ptr, ptr %.pn.in173, align 4
  %immutable = getelementptr i8, ptr %.pn.in173, i32 64
  %9 = ptrtoint ptr %immutable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %immutable, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool36.not = icmp eq i8 %10, 0
  br i1 %tobool36.not, label %for.body.if.end58_crit_edge, label %do.end52, !prof !386

for.body.if.end58_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end58

do.end52:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #24
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1998, i32 noundef 9, ptr noundef null) #22
  br label %if.end58

if.end58:                                         ; preds = %do.end52, %for.body.if.end58_crit_edge
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %cmp70 = icmp eq ptr %.pn.in173, %12
  br i1 %cmp70, label %if.end58.for.inc_crit_edge, label %if.end72

if.end58.for.inc_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.end72:                                         ; preds = %if.end58
  br i1 %empty_only, label %lor.lhs.false, label %if.end72.if.then75_crit_edge

if.end72.if.then75_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then75

lor.lhs.false:                                    ; preds = %if.end72
  %nr_empty_pop_pages = getelementptr i8, ptr %.pn.in173, i32 88
  %13 = ptrtoint ptr %nr_empty_pop_pages to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr_empty_pop_pages, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp74 = icmp eq i32 %14, 0
  br i1 %cmp74, label %lor.lhs.false.if.then75_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

lor.lhs.false.if.then75_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.then75

if.then75:                                        ; preds = %lor.lhs.false.if.then75_crit_edge, %if.end72.if.then75_crit_edge
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in173) #22
  br i1 %call.i.i, label %if.end.i.i, label %if.then75.__list_del_entry.exit.i_crit_edge

if.then75.__list_del_entry.exit.i_crit_edge:      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #24
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #24
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in173, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in173 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in173, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.then75.__list_del_entry.exit.i_crit_edge
  %21 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %to_free, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in173, ptr noundef nonnull %to_free, ptr noundef %22) #22
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.for.inc_crit_edge

__list_del_entry.exit.i.for.inc_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.inc

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %.pn.in173, ptr %prev1.i.i2.i, align 4
  %24 = ptrtoint ptr %.pn.in173 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %.pn.in173, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in173, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %to_free, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %to_free to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %.pn.in173, ptr %to_free, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %if.end58.for.inc_crit_edge
  %cmp32.not = icmp eq ptr %.pn175, %arrayidx
  br i1 %cmp32.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  %27 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %to_free, align 4
  %cmp.i.not = icmp eq ptr %28, %to_free
  br i1 %cmp.i.not, label %for.end.cleanup_crit_edge, label %if.end86

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %cleanup

if.end86:                                         ; preds = %for.end
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #22
  %29 = ptrtoint ptr %to_free to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %to_free, align 4
  %cmp98.not181 = icmp eq ptr %30, %to_free
  br i1 %cmp98.not181, label %if.end86.for.end131_crit_edge, label %if.end86.for.body101_crit_edge

if.end86.for.body101_crit_edge:                   ; preds = %if.end86
  br label %for.body101

if.end86.for.end131_crit_edge:                    ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end131

for.body101:                                      ; preds = %pcpu_destroy_chunk.exit.for.body101_crit_edge, %if.end86.for.body101_crit_edge
  %.pn167.in182 = phi ptr [ %.pn167184, %pcpu_destroy_chunk.exit.for.body101_crit_edge ], [ %30, %if.end86.for.body101_crit_edge ]
  %chunk.1183 = getelementptr i8, ptr %.pn167.in182, i32 -8
  %31 = ptrtoint ptr %.pn167.in182 to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn167184 = load ptr, ptr %.pn167.in182, align 4
  %populated = getelementptr i8, ptr %.pn167.in182, i32 92
  %nr_pages = getelementptr i8, ptr %.pn167.in182, i32 80
  %32 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_pages, align 4
  %call102 = call i32 @_find_next_bit_be(ptr noundef %populated, i32 noundef %33, i32 noundef 0) #22
  %34 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_pages, align 4
  %add = add i32 %call102, 1
  %call106 = call i32 @_find_next_zero_bit_be(ptr noundef %populated, i32 noundef %35, i32 noundef %add) #22
  %36 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_pages, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call102, i32 %37)
  %cmp109176 = icmp ult i32 %call102, %37
  br i1 %cmp109176, label %for.body101.for.body110_crit_edge, label %for.body101.for.end122_crit_edge

for.body101.for.end122_crit_edge:                 ; preds = %for.body101
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end122

for.body101.for.body110_crit_edge:                ; preds = %for.body101
  br label %for.body110

for.body110:                                      ; preds = %for.body110.for.body110_crit_edge, %for.body101.for.body110_crit_edge
  %re.0178 = phi i32 [ %call121, %for.body110.for.body110_crit_edge ], [ %call106, %for.body101.for.body110_crit_edge ]
  %rs.0177 = phi i32 [ %call116, %for.body110.for.body110_crit_edge ], [ %call102, %for.body101.for.body110_crit_edge ]
  call fastcc void @pcpu_depopulate_chunk(ptr noundef %chunk.1183, i32 noundef %rs.0177, i32 noundef %re.0178)
  call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  call fastcc void @pcpu_chunk_depopulated(ptr noundef %chunk.1183, i32 noundef %rs.0177, i32 noundef %re.0178)
  call void @_raw_spin_unlock_irq(ptr noundef nonnull @pcpu_lock) #22
  %38 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_pages, align 4
  %add115 = add i32 %re.0178, 1
  %call116 = call i32 @_find_next_bit_be(ptr noundef %populated, i32 noundef %39, i32 noundef %add115) #22
  %40 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_pages, align 4
  %add120 = add i32 %call116, 1
  %call121 = call i32 @_find_next_zero_bit_be(ptr noundef %populated, i32 noundef %41, i32 noundef %add120) #22
  %42 = ptrtoint ptr %nr_pages to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_pages, align 4
  %cmp109 = icmp ult i32 %call116, %43
  br i1 %cmp109, label %for.body110.for.body110_crit_edge, label %for.body110.for.end122_crit_edge

for.body110.for.end122_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end122

for.body110.for.body110_crit_edge:                ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body110

for.end122:                                       ; preds = %for.body110.for.end122_crit_edge, %for.body101.for.end122_crit_edge
  %tobool.not.i = icmp eq ptr %chunk.1183, null
  br i1 %tobool.not.i, label %for.end122.pcpu_destroy_chunk.exit_crit_edge, label %if.end.i

for.end122.pcpu_destroy_chunk.exit_crit_edge:     ; preds = %for.end122
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_destroy_chunk.exit

if.end.i:                                         ; preds = %for.end122
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @pcpu_lock) #22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4) to i32))
  %44 = load i32, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4), align 8
  %dec.i.i = add i32 %44, -1
  store i32 %dec.i.i, ptr getelementptr inbounds (%struct.percpu_stats, ptr @pcpu_stats, i32 0, i32 4), align 8
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @pcpu_lock, i32 noundef %call2.i.i) #22
  %base_addr.i = getelementptr i8, ptr %.pn167.in182, i32 44
  %45 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base_addr.i, align 4
  call fastcc void @trace_percpu_destroy_chunk(ptr noundef %46) #22
  %data.i = getelementptr i8, ptr %.pn167.in182, i32 60
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %tobool1.not.i = icmp eq ptr %48, null
  br i1 %tobool1.not.i, label %if.end.i.pcpu_free_chunk.exit.i_crit_edge, label %if.then2.i

if.end.i.pcpu_free_chunk.exit.i_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_free_chunk.exit.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  %49 = load i32, ptr @pcpu_nr_groups, align 4
  call void @pcpu_free_vm_areas(ptr noundef nonnull %48, i32 noundef %49) #22
  br label %pcpu_free_chunk.exit.i

pcpu_free_chunk.exit.i:                           ; preds = %if.then2.i, %if.end.i.pcpu_free_chunk.exit.i_crit_edge
  %obj_cgroups.i.i = getelementptr i8, ptr %.pn167.in182, i32 76
  %50 = ptrtoint ptr %obj_cgroups.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %obj_cgroups.i.i, align 4
  call void @kvfree(ptr noundef %51) #22
  %md_blocks.i.i = getelementptr i8, ptr %.pn167.in182, i32 56
  %52 = ptrtoint ptr %md_blocks.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %md_blocks.i.i, align 4
  call void @kvfree(ptr noundef %53) #22
  %bound_map.i.i = getelementptr i8, ptr %.pn167.in182, i32 52
  %54 = ptrtoint ptr %bound_map.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bound_map.i.i, align 4
  call void @kvfree(ptr noundef %55) #22
  %alloc_map.i.i = getelementptr i8, ptr %.pn167.in182, i32 48
  %56 = ptrtoint ptr %alloc_map.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %alloc_map.i.i, align 4
  call void @kvfree(ptr noundef %57) #22
  call void @kvfree(ptr noundef nonnull %chunk.1183) #22
  br label %pcpu_destroy_chunk.exit

pcpu_destroy_chunk.exit:                          ; preds = %pcpu_free_chunk.exit.i, %for.end122.pcpu_destroy_chunk.exit_crit_edge
  call void @__might_resched(ptr noundef nonnull @.str.3, i32 noundef 2022, i32 noundef 0) #22
  %call.i170 = call i32 @__cond_resched() #22
  %cmp98.not = icmp eq ptr %.pn167184, %to_free
  br i1 %cmp98.not, label %pcpu_destroy_chunk.exit.for.end131_crit_edge, label %pcpu_destroy_chunk.exit.for.body101_crit_edge

pcpu_destroy_chunk.exit.for.body101_crit_edge:    ; preds = %pcpu_destroy_chunk.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body101

pcpu_destroy_chunk.exit.for.end131_crit_edge:     ; preds = %pcpu_destroy_chunk.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end131

for.end131:                                       ; preds = %pcpu_destroy_chunk.exit.for.end131_crit_edge, %if.end86.for.end131_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef nonnull @pcpu_lock) #22
  br label %cleanup

cleanup:                                          ; preds = %for.end131, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %to_free) #22
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_depopulate_chunk(ptr nocapture noundef readonly %chunk, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pcpu_get_pages()
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.body4, label %do.end9, !prof !387

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22mm/percpu-vm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 323, 0\0A.popsection", ""() #22, !srcloc !432
  unreachable

do.end9:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @cacheid to i32))
  %0 = load i32, ptr @cacheid, align 4
  %and2.i.i.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.end9.pcpu_pre_unmap_flush.exit_crit_edge

do.end9.pcpu_pre_unmap_flush.exit_crit_edge:      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_pre_unmap_flush.exit

if.then.i.i:                                      ; preds = %do.end9
  call void @__sanitizer_cov_trace_pc() #24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1) to i32))
  %1 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 1), align 4
  tail call void %1() #22
  br label %pcpu_pre_unmap_flush.exit

pcpu_pre_unmap_flush.exit:                        ; preds = %if.then.i.i, %do.end9.pcpu_pre_unmap_flush.exit_crit_edge
  %call46.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call46.i, i32 %2)
  %cmp47.i = icmp ult i32 %call46.i, %2
  br i1 %cmp47.i, label %for.cond1.preheader.lr.ph.i, label %pcpu_pre_unmap_flush.exit.pcpu_unmap_pages.exit_crit_edge

pcpu_pre_unmap_flush.exit.pcpu_unmap_pages.exit_crit_edge: ; preds = %pcpu_pre_unmap_flush.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_unmap_pages.exit

for.cond1.preheader.lr.ph.i:                      ; preds = %pcpu_pre_unmap_flush.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %page_end, i32 %page_start)
  %cmp244.i = icmp sgt i32 %page_end, %page_start
  %immutable.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 10
  %base_addr.i.i.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 5
  %shl.i.i.i = shl i32 %page_start, 12
  %sub.i = sub i32 %page_end, %page_start
  %shl.i.i = shl i32 %sub.i, 12
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.end.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %call48.i = phi i32 [ %call46.i, %for.cond1.preheader.lr.ph.i ], [ %call.i, %for.end.i.for.cond1.preheader.i_crit_edge ]
  br i1 %cmp244.i, label %for.cond1.preheader.i.for.body3.i_crit_edge, label %for.cond1.preheader.i.for.end.i_crit_edge

for.cond1.preheader.i.for.end.i_crit_edge:        ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end.i

for.cond1.preheader.i.for.body3.i_crit_edge:      ; preds = %for.cond1.preheader.i
  br label %for.body3.i

for.body3.i:                                      ; preds = %if.end.i.for.body3.i_crit_edge, %for.cond1.preheader.i.for.body3.i_crit_edge
  %i.045.i = phi i32 [ %inc.i, %if.end.i.for.body3.i_crit_edge ], [ %page_start, %for.cond1.preheader.i.for.body3.i_crit_edge ]
  %3 = ptrtoint ptr %immutable.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %immutable.i.i, align 4, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i18 = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i18, label %for.body3.i.pcpu_chunk_page.exit.i_crit_edge, label %do.end.i.i, !prof !386

for.body3.i.pcpu_chunk_page.exit.i_crit_edge:     ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_chunk_page.exit.i

do.end.i.i:                                       ; preds = %for.body3.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.131, i32 noundef 17, i32 noundef 9, ptr noundef null) #22
  br label %pcpu_chunk_page.exit.i

pcpu_chunk_page.exit.i:                           ; preds = %do.end.i.i, %for.body3.i.pcpu_chunk_page.exit.i_crit_edge
  %5 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base_addr.i.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  %8 = load ptr, ptr @pcpu_unit_offsets, align 4
  %arrayidx.i.i.i.i = getelementptr i32, ptr %8, i32 %call48.i
  %9 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %shl.i.i.i.i = shl i32 %i.045.i, 12
  %add.i.i.i.i = add i32 %shl.i.i.i.i, %7
  %add.i.i.i = add i32 %add.i.i.i.i, %10
  %11 = inttoptr i32 %add.i.i.i to ptr
  %call20.i.i = tail call ptr @vmalloc_to_page(ptr noundef %11) #22
  %tobool.not.i = icmp eq ptr %call20.i.i, null
  br i1 %tobool.not.i, label %do.end.i, label %pcpu_chunk_page.exit.i.if.end.i_crit_edge, !prof !387

pcpu_chunk_page.exit.i.if.end.i_crit_edge:        ; preds = %pcpu_chunk_page.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i

do.end.i:                                         ; preds = %pcpu_chunk_page.exit.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.131, i32 noundef 164, i32 noundef 9, ptr noundef null) #22
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %pcpu_chunk_page.exit.i.if.end.i_crit_edge
  %12 = load ptr, ptr @pcpu_unit_map, align 4
  %arrayidx.i.i = getelementptr i32, ptr %12, i32 %call48.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i.i, align 4
  %15 = load i32, ptr @pcpu_unit_pages, align 4
  %mul.i.i = mul i32 %15, %14
  %add.i.i = add i32 %mul.i.i, %i.045.i
  %arrayidx.i = getelementptr ptr, ptr %call, i32 %add.i.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call20.i.i, ptr %arrayidx.i, align 4
  %inc.i = add i32 %i.045.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %page_end
  br i1 %exitcond.not.i, label %if.end.i.for.end.i_crit_edge, label %if.end.i.for.body3.i_crit_edge

if.end.i.for.body3.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body3.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.end.i

for.end.i:                                        ; preds = %if.end.i.for.end.i_crit_edge, %for.cond1.preheader.i.for.end.i_crit_edge
  %17 = ptrtoint ptr %base_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base_addr.i.i.i, align 4
  %19 = ptrtoint ptr %18 to i32
  %20 = load ptr, ptr @pcpu_unit_offsets, align 4
  %arrayidx.i.i.i = getelementptr i32, ptr %20, i32 %call48.i
  %21 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i41.i = add i32 %shl.i.i.i, %19
  %add.i42.i = add i32 %add.i.i41.i, %22
  %add.i43.i = add i32 %add.i42.i, %shl.i.i
  tail call void @vunmap_range_noflush(i32 noundef %add.i42.i, i32 noundef %add.i43.i) #22
  %call.i = tail call i32 @cpumask_next(i32 noundef %call48.i, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %23 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %23
  br i1 %cmp.i, label %for.end.i.for.cond1.preheader.i_crit_edge, label %for.end.i.pcpu_unmap_pages.exit_crit_edge

for.end.i.pcpu_unmap_pages.exit_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_unmap_pages.exit

for.end.i.for.cond1.preheader.i_crit_edge:        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond1.preheader.i

pcpu_unmap_pages.exit:                            ; preds = %for.end.i.pcpu_unmap_pages.exit_crit_edge, %pcpu_pre_unmap_flush.exit.pcpu_unmap_pages.exit_crit_edge
  %call3.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %24 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3.i, i32 %24)
  %cmp4.i = icmp ult i32 %call3.i, %24
  br i1 %cmp4.i, label %for.cond1.preheader.lr.ph.i19, label %pcpu_unmap_pages.exit.pcpu_free_pages.exit_crit_edge

pcpu_unmap_pages.exit.pcpu_free_pages.exit_crit_edge: ; preds = %pcpu_unmap_pages.exit
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_free_pages.exit

for.cond1.preheader.lr.ph.i19:                    ; preds = %pcpu_unmap_pages.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %page_end, i32 %page_start)
  %cmp21.i = icmp sgt i32 %page_end, %page_start
  br label %for.cond1.preheader.i22

for.cond.loopexit.i:                              ; preds = %if.end.i31.for.cond.loopexit.i_crit_edge, %for.cond1.preheader.i22.for.cond.loopexit.i_crit_edge
  %call.i20 = tail call i32 @cpumask_next(i32 noundef %call5.i, ptr noundef nonnull @__cpu_possible_mask) #25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %25 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i21 = icmp ult i32 %call.i20, %25
  br i1 %cmp.i21, label %for.cond.loopexit.i.for.cond1.preheader.i22_crit_edge, label %for.cond.loopexit.i.pcpu_free_pages.exit_crit_edge

for.cond.loopexit.i.pcpu_free_pages.exit_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_free_pages.exit

for.cond.loopexit.i.for.cond1.preheader.i22_crit_edge: ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond1.preheader.i22

for.cond1.preheader.i22:                          ; preds = %for.cond.loopexit.i.for.cond1.preheader.i22_crit_edge, %for.cond1.preheader.lr.ph.i19
  %call5.i = phi i32 [ %call3.i, %for.cond1.preheader.lr.ph.i19 ], [ %call.i20, %for.cond.loopexit.i.for.cond1.preheader.i22_crit_edge ]
  br i1 %cmp21.i, label %for.cond1.preheader.i22.for.body3.i28_crit_edge, label %for.cond1.preheader.i22.for.cond.loopexit.i_crit_edge

for.cond1.preheader.i22.for.cond.loopexit.i_crit_edge: ; preds = %for.cond1.preheader.i22
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.loopexit.i

for.cond1.preheader.i22.for.body3.i28_crit_edge:  ; preds = %for.cond1.preheader.i22
  br label %for.body3.i28

for.body3.i28:                                    ; preds = %if.end.i31.for.body3.i28_crit_edge, %for.cond1.preheader.i22.for.body3.i28_crit_edge
  %i.02.i = phi i32 [ %inc.i29, %if.end.i31.for.body3.i28_crit_edge ], [ %page_start, %for.cond1.preheader.i22.for.body3.i28_crit_edge ]
  %26 = load ptr, ptr @pcpu_unit_map, align 4
  %arrayidx.i.i23 = getelementptr i32, ptr %26, i32 %call5.i
  %27 = ptrtoint ptr %arrayidx.i.i23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i23, align 4
  %29 = load i32, ptr @pcpu_unit_pages, align 4
  %mul.i.i24 = mul i32 %29, %28
  %add.i.i25 = add i32 %mul.i.i24, %i.02.i
  %arrayidx.i26 = getelementptr ptr, ptr %call, i32 %add.i.i25
  %30 = ptrtoint ptr %arrayidx.i26 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i26, align 4
  %tobool.not.i27 = icmp eq ptr %31, null
  br i1 %tobool.not.i27, label %for.body3.i28.if.end.i31_crit_edge, label %if.then.i

for.body3.i28.if.end.i31_crit_edge:               ; preds = %for.body3.i28
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end.i31

if.then.i:                                        ; preds = %for.body3.i28
  call void @__sanitizer_cov_trace_pc() #24
  tail call void @__free_pages(ptr noundef nonnull %31, i32 noundef 0) #22
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.then.i, %for.body3.i28.if.end.i31_crit_edge
  %inc.i29 = add i32 %i.02.i, 1
  %exitcond.not.i30 = icmp eq i32 %inc.i29, %page_end
  br i1 %exitcond.not.i30, label %if.end.i31.for.cond.loopexit.i_crit_edge, label %if.end.i31.for.body3.i28_crit_edge

if.end.i31.for.body3.i28_crit_edge:               ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.body3.i28

if.end.i31.for.cond.loopexit.i_crit_edge:         ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #24
  br label %for.cond.loopexit.i

pcpu_free_pages.exit:                             ; preds = %for.cond.loopexit.i.pcpu_free_pages.exit_crit_edge, %pcpu_unmap_pages.exit.pcpu_free_pages.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pcpu_chunk_depopulated(ptr noundef %chunk, i32 noundef %page_start, i32 noundef %page_end) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

land.rhs:                                         ; preds = %entry
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.spinlock, ptr @pcpu_lock, i32 0, i32 0, i32 0, i32 4), i32 noundef -1) #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !387

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1552, i32 noundef 9, ptr noundef null) #22
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %sub = sub i32 %page_end, %page_start
  %populated = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 18
  tail call void @__bitmap_clear(ptr noundef %populated, i32 noundef %page_start, i32 noundef %sub) #22
  %nr_populated = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 16
  %1 = ptrtoint ptr %nr_populated to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_populated, align 4
  %sub24 = sub i32 %2, %sub
  store i32 %sub24, ptr %nr_populated, align 4
  %3 = load i32, ptr @pcpu_nr_populated, align 4
  %sub25 = sub i32 %3, %sub
  store i32 %sub25, ptr @pcpu_nr_populated, align 4
  %nr_empty_pop_pages.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 17
  %4 = ptrtoint ptr %nr_empty_pop_pages.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_empty_pop_pages.i, align 4
  %add.i = sub i32 %5, %sub
  store i32 %add.i, ptr %nr_empty_pop_pages.i, align 4
  %6 = load ptr, ptr @pcpu_reserved_chunk, align 4
  %cmp.not.i = icmp eq ptr %6, %chunk
  br i1 %cmp.not.i, label %if.end.pcpu_update_empty_pages.exit_crit_edge, label %land.lhs.true.i

if.end.pcpu_update_empty_pages.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_update_empty_pages.exit

land.lhs.true.i:                                  ; preds = %if.end
  %isolated.i = getelementptr inbounds %struct.pcpu_chunk, ptr %chunk, i32 0, i32 11
  %7 = ptrtoint ptr %isolated.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %isolated.i, align 1, !range !393
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %if.then.i34, label %land.lhs.true.i.pcpu_update_empty_pages.exit_crit_edge

land.lhs.true.i.pcpu_update_empty_pages.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %pcpu_update_empty_pages.exit

if.then.i34:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #24
  %9 = load i32, ptr @pcpu_nr_empty_pop_pages, align 4
  %add1.i = sub i32 %9, %sub
  store i32 %add1.i, ptr @pcpu_nr_empty_pop_pages, align 4
  br label %pcpu_update_empty_pages.exit

pcpu_update_empty_pages.exit:                     ; preds = %if.then.i34, %land.lhs.true.i.pcpu_update_empty_pages.exit_crit_edge, %if.end.pcpu_update_empty_pages.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_percpu_destroy_chunk(ptr noundef %base_addr) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #24
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_destroy_chunk, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_percpu_destroy_chunk, %do.body)) #22
          to label %if.end48 [label %do.body], !srcloc !399

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !386

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit

cpu_online.exit:                                  ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, %do.body.cpu_online.exit_crit_edge
  %div3.i.i.i = lshr i32 %3, 5
  %arrayidx.i.i.i = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !433
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_destroy_chunk, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %base_addr) #22
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !434
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #24
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !434
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !386

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.135, i32 noundef 108, i32 noundef 9, ptr noundef null) #22
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %27, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #24
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !376) #22
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !402
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_percpu_destroy_chunk, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_percpu_destroy_chunk.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #24
  store i1 true, ptr @trace_percpu_destroy_chunk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.133, i32 noundef 122, ptr noundef nonnull @.str.134) #22
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #22, !srcloc !403
  %38 = tail call i32 @llvm.read_register.i32(metadata !376) #22
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
declare dso_local void @pcpu_free_vm_areas(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #17

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @memblock_alloc_try_nid(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @lcm(i32 noundef, i32 noundef) local_unnamed_addr #21

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #17

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #17

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #22

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #23 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #23 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 146)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong allocsize(0) uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nounwind readonly }
attributes #14 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #15 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #16 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #17 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #18 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #19 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #20 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #21 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #22 = { nounwind }
attributes #23 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #24 = { nomerge }
attributes #25 = { nounwind readonly willreturn }
attributes #26 = { cold nounwind }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { cold }
attributes #29 = { nounwind readnone willreturn }
attributes #30 = { alwaysinline nounwind readonly willreturn }
attributes #31 = { alwaysinline nounwind }
attributes #32 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !42, !43, !45, !47, !49, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !62, !63, !64, !65, !66, !68, !69, !70, !71, !72, !74, !75, !76, !77, !78, !80, !81, !82, !83, !84, !86, !87, !88, !89, !90, !92, !93, !94, !95, !96, !98, !99, !100, !101, !102, !104, !105, !106, !107, !108, !110, !111, !112, !113, !114, !116, !117, !118, !119, !120, !122, !123, !124, !125, !126, !128, !129, !130, !131, !132, !134, !136, !137, !138, !139, !140, !142, !143, !144, !145, !146, !148, !149, !150, !151, !152, !154, !155, !156, !157, !158, !160, !162, !164, !166, !168, !170, !172, !174, !175, !176, !177, !179, !180, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !234, !235, !236, !237, !238, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !272, !274, !276, !278, !280, !282, !284, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !300, !301, !302, !304, !306, !308, !310, !312, !313, !314, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !329, !330, !331, !332, !334, !335, !336, !337, !339, !340, !341, !343, !344, !345, !347, !348, !349, !351, !352, !353, !355, !356, !357, !359, !360, !362, !363, !364, !365, !367, !368, !369, !370, !372, !374}
!llvm.named.register.sp = !{!376}
!llvm.module.flags = !{!377, !378, !379, !380, !381, !382, !383, !384}
!llvm.ident = !{!385}

!0 = !{ptr @__tracepoint_percpu_alloc_percpu, !1, !"__tracepoint_percpu_alloc_percpu", i1 false, i1 false}
!1 = !{!"../include/trace/events/percpu.h", i32 10, i32 1}
!2 = !{ptr @__tracepoint_ptr_percpu_alloc_percpu, !1, !"__tracepoint_ptr_percpu_alloc_percpu", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_percpu_alloc_percpu, !1, !"__SCK__tp_func_percpu_alloc_percpu", i1 false, i1 false}
!4 = !{ptr @__tracepoint_percpu_free_percpu, !5, !"__tracepoint_percpu_free_percpu", i1 false, i1 false}
!5 = !{!"../include/trace/events/percpu.h", i32 43, i32 1}
!6 = !{ptr @__tracepoint_ptr_percpu_free_percpu, !5, !"__tracepoint_ptr_percpu_free_percpu", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_percpu_free_percpu, !5, !"__SCK__tp_func_percpu_free_percpu", i1 false, i1 false}
!8 = !{ptr @__tracepoint_percpu_alloc_percpu_fail, !9, !"__tracepoint_percpu_alloc_percpu_fail", i1 false, i1 false}
!9 = !{!"../include/trace/events/percpu.h", i32 65, i32 1}
!10 = !{ptr @__tracepoint_ptr_percpu_alloc_percpu_fail, !9, !"__tracepoint_ptr_percpu_alloc_percpu_fail", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_percpu_alloc_percpu_fail, !9, !"__SCK__tp_func_percpu_alloc_percpu_fail", i1 false, i1 false}
!12 = !{ptr @__tracepoint_percpu_create_chunk, !13, !"__tracepoint_percpu_create_chunk", i1 false, i1 false}
!13 = !{!"../include/trace/events/percpu.h", i32 90, i32 1}
!14 = !{ptr @__tracepoint_ptr_percpu_create_chunk, !13, !"__tracepoint_ptr_percpu_create_chunk", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_percpu_create_chunk, !13, !"__SCK__tp_func_percpu_create_chunk", i1 false, i1 false}
!16 = !{ptr @__tracepoint_percpu_destroy_chunk, !17, !"__tracepoint_percpu_destroy_chunk", i1 false, i1 false}
!17 = !{!"../include/trace/events/percpu.h", i32 107, i32 1}
!18 = !{ptr @__tracepoint_ptr_percpu_destroy_chunk, !17, !"__tracepoint_ptr_percpu_destroy_chunk", i1 false, i1 false}
!19 = !{ptr @__SCK__tp_func_percpu_destroy_chunk, !17, !"__SCK__tp_func_percpu_destroy_chunk", i1 false, i1 false}
!20 = !{ptr @event_class_percpu_alloc_percpu, !1, !"event_class_percpu_alloc_percpu", i1 false, i1 false}
!21 = !{ptr @event_percpu_alloc_percpu, !1, !"event_percpu_alloc_percpu", i1 false, i1 false}
!22 = !{ptr @__event_percpu_alloc_percpu, !1, !"__event_percpu_alloc_percpu", i1 false, i1 false}
!23 = !{ptr @event_class_percpu_free_percpu, !5, !"event_class_percpu_free_percpu", i1 false, i1 false}
!24 = !{ptr @event_percpu_free_percpu, !5, !"event_percpu_free_percpu", i1 false, i1 false}
!25 = !{ptr @__event_percpu_free_percpu, !5, !"__event_percpu_free_percpu", i1 false, i1 false}
!26 = !{ptr @event_class_percpu_alloc_percpu_fail, !9, !"event_class_percpu_alloc_percpu_fail", i1 false, i1 false}
!27 = !{ptr @event_percpu_alloc_percpu_fail, !9, !"event_percpu_alloc_percpu_fail", i1 false, i1 false}
!28 = !{ptr @__event_percpu_alloc_percpu_fail, !9, !"__event_percpu_alloc_percpu_fail", i1 false, i1 false}
!29 = !{ptr @event_class_percpu_create_chunk, !13, !"event_class_percpu_create_chunk", i1 false, i1 false}
!30 = !{ptr @event_percpu_create_chunk, !13, !"event_percpu_create_chunk", i1 false, i1 false}
!31 = !{ptr @__event_percpu_create_chunk, !13, !"__event_percpu_create_chunk", i1 false, i1 false}
!32 = !{ptr @event_class_percpu_destroy_chunk, !17, !"event_class_percpu_destroy_chunk", i1 false, i1 false}
!33 = !{ptr @event_percpu_destroy_chunk, !17, !"event_percpu_destroy_chunk", i1 false, i1 false}
!34 = !{ptr @__event_percpu_destroy_chunk, !17, !"__event_percpu_destroy_chunk", i1 false, i1 false}
!35 = !{ptr @__bpf_trace_tp_map_percpu_alloc_percpu, !1, !"__bpf_trace_tp_map_percpu_alloc_percpu", i1 false, i1 false}
!36 = !{ptr @__bpf_trace_tp_map_percpu_free_percpu, !5, !"__bpf_trace_tp_map_percpu_free_percpu", i1 false, i1 false}
!37 = !{ptr @__bpf_trace_tp_map_percpu_alloc_percpu_fail, !9, !"__bpf_trace_tp_map_percpu_alloc_percpu_fail", i1 false, i1 false}
!38 = !{ptr @__bpf_trace_tp_map_percpu_create_chunk, !13, !"__bpf_trace_tp_map_percpu_create_chunk", i1 false, i1 false}
!39 = !{ptr @__bpf_trace_tp_map_percpu_destroy_chunk, !17, !"__bpf_trace_tp_map_percpu_destroy_chunk", i1 false, i1 false}
!40 = !{ptr @.str, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../mm/percpu.c", i32 172, i32 1}
!42 = !{ptr @pcpu_lock, !41, !"pcpu_lock", i1 false, i1 false}
!43 = !{ptr @__ksymtab___alloc_percpu_gfp, !44, !"__ksymtab___alloc_percpu_gfp", i1 false, i1 false}
!44 = !{!"../mm/percpu.c", i32 1938, i32 1}
!45 = !{ptr @__ksymtab___alloc_percpu, !46, !"__ksymtab___alloc_percpu", i1 false, i1 false}
!46 = !{!"../mm/percpu.c", i32 1951, i32 1}
!47 = !{ptr @__ksymtab_free_percpu, !48, !"__ksymtab_free_percpu", i1 false, i1 false}
!48 = !{!"../mm/percpu.c", i32 2310, i32 1}
!49 = !{ptr @.str.1, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../mm/percpu.c", i32 2613, i32 2}
!51 = !{ptr @.str.2, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @pcpu_setup_first_chunk._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @pcpu_setup_first_chunk._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.4, !50, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.6, !50, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @pcpu_setup_first_chunk._entry.5, !50, !"_entry", i1 false, i1 false}
!58 = !{ptr @pcpu_setup_first_chunk._entry_ptr.7, !50, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.8, !50, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @pcpu_setup_first_chunk._entry.9, !61, !"_entry", i1 false, i1 false}
!61 = !{!"../mm/percpu.c", i32 2615, i32 2}
!62 = !{ptr @pcpu_setup_first_chunk._entry_ptr.10, !61, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.11, !61, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @pcpu_setup_first_chunk._entry.12, !61, !"_entry", i1 false, i1 false}
!65 = !{ptr @pcpu_setup_first_chunk._entry_ptr.13, !61, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @pcpu_setup_first_chunk._entry.14, !67, !"_entry", i1 false, i1 false}
!67 = !{!"../mm/percpu.c", i32 2616, i32 2}
!68 = !{ptr @pcpu_setup_first_chunk._entry_ptr.15, !67, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @pcpu_setup_first_chunk._entry.17, !67, !"_entry", i1 false, i1 false}
!71 = !{ptr @pcpu_setup_first_chunk._entry_ptr.18, !67, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @pcpu_setup_first_chunk._entry.19, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../mm/percpu.c", i32 2618, i32 2}
!74 = !{ptr @pcpu_setup_first_chunk._entry_ptr.20, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.21, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @pcpu_setup_first_chunk._entry.22, !73, !"_entry", i1 false, i1 false}
!77 = !{ptr @pcpu_setup_first_chunk._entry_ptr.23, !73, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @pcpu_setup_first_chunk._entry.24, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../mm/percpu.c", i32 2619, i32 2}
!80 = !{ptr @pcpu_setup_first_chunk._entry_ptr.25, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.26, !79, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @pcpu_setup_first_chunk._entry.27, !79, !"_entry", i1 false, i1 false}
!83 = !{ptr @pcpu_setup_first_chunk._entry_ptr.28, !79, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @pcpu_setup_first_chunk._entry.29, !85, !"_entry", i1 false, i1 false}
!85 = !{!"../mm/percpu.c", i32 2620, i32 2}
!86 = !{ptr @pcpu_setup_first_chunk._entry_ptr.30, !85, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @pcpu_setup_first_chunk._entry.32, !85, !"_entry", i1 false, i1 false}
!89 = !{ptr @pcpu_setup_first_chunk._entry_ptr.33, !85, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @pcpu_setup_first_chunk._entry.34, !91, !"_entry", i1 false, i1 false}
!91 = !{!"../mm/percpu.c", i32 2621, i32 2}
!92 = !{ptr @pcpu_setup_first_chunk._entry_ptr.35, !91, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.36, !91, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @pcpu_setup_first_chunk._entry.37, !91, !"_entry", i1 false, i1 false}
!95 = !{ptr @pcpu_setup_first_chunk._entry_ptr.38, !91, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @pcpu_setup_first_chunk._entry.39, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../mm/percpu.c", i32 2622, i32 2}
!98 = !{ptr @pcpu_setup_first_chunk._entry_ptr.40, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @pcpu_setup_first_chunk._entry.42, !97, !"_entry", i1 false, i1 false}
!101 = !{ptr @pcpu_setup_first_chunk._entry_ptr.43, !97, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @pcpu_setup_first_chunk._entry.44, !103, !"_entry", i1 false, i1 false}
!103 = !{!"../mm/percpu.c", i32 2623, i32 2}
!104 = !{ptr @pcpu_setup_first_chunk._entry_ptr.45, !103, !"_entry_ptr", i1 false, i1 false}
!105 = distinct !{null, !103, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @pcpu_setup_first_chunk._entry.47, !103, !"_entry", i1 false, i1 false}
!107 = !{ptr @pcpu_setup_first_chunk._entry_ptr.48, !103, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @pcpu_setup_first_chunk._entry.49, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../mm/percpu.c", i32 2624, i32 2}
!110 = !{ptr @pcpu_setup_first_chunk._entry_ptr.50, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !109, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @pcpu_setup_first_chunk._entry.52, !109, !"_entry", i1 false, i1 false}
!113 = !{ptr @pcpu_setup_first_chunk._entry_ptr.53, !109, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @pcpu_setup_first_chunk._entry.54, !115, !"_entry", i1 false, i1 false}
!115 = !{!"../mm/percpu.c", i32 2625, i32 2}
!116 = !{ptr @pcpu_setup_first_chunk._entry_ptr.55, !115, !"_entry_ptr", i1 false, i1 false}
!117 = distinct !{null, !115, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @pcpu_setup_first_chunk._entry.57, !115, !"_entry", i1 false, i1 false}
!119 = !{ptr @pcpu_setup_first_chunk._entry_ptr.58, !115, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @pcpu_setup_first_chunk._entry.59, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../mm/percpu.c", i32 2626, i32 2}
!122 = !{ptr @pcpu_setup_first_chunk._entry_ptr.60, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @pcpu_setup_first_chunk._entry.62, !121, !"_entry", i1 false, i1 false}
!125 = !{ptr @pcpu_setup_first_chunk._entry_ptr.63, !121, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @pcpu_setup_first_chunk._entry.64, !127, !"_entry", i1 false, i1 false}
!127 = !{!"../mm/percpu.c", i32 2629, i32 2}
!128 = !{ptr @pcpu_setup_first_chunk._entry_ptr.65, !127, !"_entry_ptr", i1 false, i1 false}
!129 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @pcpu_setup_first_chunk._entry.67, !127, !"_entry", i1 false, i1 false}
!131 = !{ptr @pcpu_setup_first_chunk._entry_ptr.68, !127, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.69, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../mm/percpu.c", i32 2635, i32 9}
!134 = !{ptr @pcpu_setup_first_chunk._entry.70, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../mm/percpu.c", i32 2673, i32 4}
!136 = !{ptr @pcpu_setup_first_chunk._entry_ptr.71, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.72, !135, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @pcpu_setup_first_chunk._entry.73, !135, !"_entry", i1 false, i1 false}
!139 = !{ptr @pcpu_setup_first_chunk._entry_ptr.74, !135, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @pcpu_setup_first_chunk._entry.75, !141, !"_entry", i1 false, i1 false}
!141 = !{!"../mm/percpu.c", i32 2674, i32 4}
!142 = !{ptr @pcpu_setup_first_chunk._entry_ptr.76, !141, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.77, !141, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @pcpu_setup_first_chunk._entry.78, !141, !"_entry", i1 false, i1 false}
!145 = !{ptr @pcpu_setup_first_chunk._entry_ptr.79, !141, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @pcpu_setup_first_chunk._entry.80, !147, !"_entry", i1 false, i1 false}
!147 = !{!"../mm/percpu.c", i32 2675, i32 4}
!148 = !{ptr @pcpu_setup_first_chunk._entry_ptr.81, !147, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.82, !147, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @pcpu_setup_first_chunk._entry.83, !147, !"_entry", i1 false, i1 false}
!151 = !{ptr @pcpu_setup_first_chunk._entry_ptr.84, !147, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @pcpu_setup_first_chunk._entry.85, !153, !"_entry", i1 false, i1 false}
!153 = !{!"../mm/percpu.c", i32 2692, i32 3}
!154 = !{ptr @pcpu_setup_first_chunk._entry_ptr.86, !153, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @.str.87, !153, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @pcpu_setup_first_chunk._entry.88, !153, !"_entry", i1 false, i1 false}
!157 = !{ptr @pcpu_setup_first_chunk._entry_ptr.89, !153, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.90, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../mm/percpu.c", i32 2696, i32 23}
!160 = !{ptr @.str.91, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../mm/percpu.c", i32 2784, i32 19}
!162 = !{ptr @.str.92, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../mm/percpu.c", i32 2785, i32 20}
!164 = !{ptr @.str.93, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../mm/percpu.c", i32 2786, i32 19}
!166 = !{ptr @pcpu_fc_names, !167, !"pcpu_fc_names", i1 false, i1 false}
!167 = !{!"../mm/percpu.c", i32 2783, i32 20}
!168 = !{ptr @pcpu_chosen_fc, !169, !"pcpu_chosen_fc", i1 false, i1 false}
!169 = !{!"../mm/percpu.c", i32 2789, i32 14}
!170 = !{ptr @__setup_percpu_alloc_setup, !171, !"__setup_percpu_alloc_setup", i1 false, i1 false}
!171 = !{!"../mm/percpu.c", i32 2811, i32 1}
!172 = !{ptr @.str.94, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../mm/percpu.c", i32 3118, i32 3}
!174 = !{ptr @.str.95, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @pcpu_embed_first_chunk._entry, !173, !"_entry", i1 false, i1 false}
!176 = !{ptr @pcpu_embed_first_chunk._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!177 = !{ptr @.str.97, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../mm/percpu.c", i32 3153, i32 2}
!179 = !{ptr @pcpu_embed_first_chunk._entry.96, !178, !"_entry", i1 false, i1 false}
!180 = !{ptr @pcpu_embed_first_chunk._entry_ptr.98, !178, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @__ksymtab___per_cpu_offset, !182, !"__ksymtab___per_cpu_offset", i1 false, i1 false}
!182 = !{!"../mm/percpu.c", i32 3374, i32 1}
!183 = !{ptr @.str.99, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../mm/percpu.c", i32 3389, i32 9}
!185 = !{ptr @__initcall__kmod_percpu__376_3460_percpu_enable_async4, !186, !"__initcall__kmod_percpu__376_3460_percpu_enable_async4", i1 false, i1 false}
!186 = !{!"../mm/percpu.c", i32 3460, i32 1}
!187 = !{ptr @pcpu_unit_pages, !188, !"pcpu_unit_pages", i1 false, i1 false}
!188 = !{!"../mm/percpu.c", i32 133, i32 12}
!189 = !{ptr @pcpu_unit_size, !190, !"pcpu_unit_size", i1 false, i1 false}
!190 = !{!"../mm/percpu.c", i32 134, i32 12}
!191 = !{ptr @pcpu_nr_units, !192, !"pcpu_nr_units", i1 false, i1 false}
!192 = !{!"../mm/percpu.c", i32 135, i32 12}
!193 = !{ptr @pcpu_atom_size, !194, !"pcpu_atom_size", i1 false, i1 false}
!194 = !{!"../mm/percpu.c", i32 136, i32 12}
!195 = !{ptr @pcpu_nr_slots, !196, !"pcpu_nr_slots", i1 false, i1 false}
!196 = !{!"../mm/percpu.c", i32 137, i32 5}
!197 = !{ptr @pcpu_free_slot, !198, !"pcpu_free_slot", i1 false, i1 false}
!198 = !{!"../mm/percpu.c", i32 138, i32 12}
!199 = !{ptr @pcpu_sidelined_slot, !200, !"pcpu_sidelined_slot", i1 false, i1 false}
!200 = !{!"../mm/percpu.c", i32 139, i32 5}
!201 = !{ptr @pcpu_to_depopulate_slot, !202, !"pcpu_to_depopulate_slot", i1 false, i1 false}
!202 = !{!"../mm/percpu.c", i32 140, i32 5}
!203 = !{ptr @pcpu_chunk_struct_size, !204, !"pcpu_chunk_struct_size", i1 false, i1 false}
!204 = !{!"../mm/percpu.c", i32 141, i32 15}
!205 = !{ptr @pcpu_low_unit_cpu, !206, !"pcpu_low_unit_cpu", i1 false, i1 false}
!206 = !{!"../mm/percpu.c", i32 144, i32 21}
!207 = !{ptr @pcpu_high_unit_cpu, !208, !"pcpu_high_unit_cpu", i1 false, i1 false}
!208 = !{!"../mm/percpu.c", i32 145, i32 21}
!209 = !{ptr @pcpu_base_addr, !210, !"pcpu_base_addr", i1 false, i1 false}
!210 = !{!"../mm/percpu.c", i32 148, i32 7}
!211 = !{ptr @pcpu_unit_map, !212, !"pcpu_unit_map", i1 false, i1 false}
!212 = !{!"../mm/percpu.c", i32 150, i32 19}
!213 = !{ptr @pcpu_unit_offsets, !214, !"pcpu_unit_offsets", i1 false, i1 false}
!214 = !{!"../mm/percpu.c", i32 151, i32 22}
!215 = !{ptr @pcpu_nr_groups, !216, !"pcpu_nr_groups", i1 false, i1 false}
!216 = !{!"../mm/percpu.c", i32 154, i32 12}
!217 = !{ptr @pcpu_group_offsets, !218, !"pcpu_group_offsets", i1 false, i1 false}
!218 = !{!"../mm/percpu.c", i32 155, i32 29}
!219 = !{ptr @pcpu_group_sizes, !220, !"pcpu_group_sizes", i1 false, i1 false}
!220 = !{!"../mm/percpu.c", i32 156, i32 22}
!221 = !{ptr @pcpu_first_chunk, !222, !"pcpu_first_chunk", i1 false, i1 false}
!222 = !{!"../mm/percpu.c", i32 163, i32 20}
!223 = !{ptr @pcpu_reserved_chunk, !224, !"pcpu_reserved_chunk", i1 false, i1 false}
!224 = !{!"../mm/percpu.c", i32 170, i32 20}
!225 = !{ptr @pcpu_chunk_lists, !226, !"pcpu_chunk_lists", i1 false, i1 false}
!226 = !{!"../mm/percpu.c", i32 175, i32 19}
!227 = !{ptr @pcpu_nr_empty_pop_pages, !228, !"pcpu_nr_empty_pop_pages", i1 false, i1 false}
!228 = !{!"../mm/percpu.c", i32 184, i32 5}
!229 = !{ptr @pcpu_nr_populated, !230, !"pcpu_nr_populated", i1 false, i1 false}
!230 = !{!"../mm/percpu.c", i32 192, i32 22}
!231 = !{ptr @__per_cpu_offset, !232, !"__per_cpu_offset", i1 false, i1 false}
!232 = !{!"../mm/percpu.c", i32 3373, i32 15}
!233 = !{ptr @__tpstrtab_percpu_alloc_percpu, !1, !"__tpstrtab_percpu_alloc_percpu", i1 false, i1 false}
!234 = !{ptr @__tpstrtab_percpu_free_percpu, !5, !"__tpstrtab_percpu_free_percpu", i1 false, i1 false}
!235 = !{ptr @__tpstrtab_percpu_alloc_percpu_fail, !9, !"__tpstrtab_percpu_alloc_percpu_fail", i1 false, i1 false}
!236 = !{ptr @__tpstrtab_percpu_create_chunk, !13, !"__tpstrtab_percpu_create_chunk", i1 false, i1 false}
!237 = !{ptr @__tpstrtab_percpu_destroy_chunk, !17, !"__tpstrtab_percpu_destroy_chunk", i1 false, i1 false}
!238 = !{ptr @str__percpu__trace_system_name, !239, !"str__percpu__trace_system_name", i1 false, i1 false}
!239 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!240 = !{ptr @.str.100, !1, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @.str.101, !1, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.102, !1, !"<string literal>", i1 false, i1 false}
!243 = !{ptr @.str.103, !1, !"<string literal>", i1 false, i1 false}
!244 = !{ptr @.str.104, !1, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.105, !1, !"<string literal>", i1 false, i1 false}
!246 = !{ptr @.str.106, !1, !"<string literal>", i1 false, i1 false}
!247 = !{ptr @.str.107, !1, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.108, !1, !"<string literal>", i1 false, i1 false}
!249 = !{ptr @.str.109, !1, !"<string literal>", i1 false, i1 false}
!250 = !{ptr @.str.110, !1, !"<string literal>", i1 false, i1 false}
!251 = !{ptr @trace_event_fields_percpu_alloc_percpu, !1, !"trace_event_fields_percpu_alloc_percpu", i1 false, i1 false}
!252 = !{ptr @trace_event_type_funcs_percpu_alloc_percpu, !1, !"trace_event_type_funcs_percpu_alloc_percpu", i1 false, i1 false}
!253 = !{ptr @.str.111, !1, !"<string literal>", i1 false, i1 false}
!254 = !{ptr @print_fmt_percpu_alloc_percpu, !1, !"print_fmt_percpu_alloc_percpu", i1 false, i1 false}
!255 = !{ptr @trace_event_fields_percpu_free_percpu, !5, !"trace_event_fields_percpu_free_percpu", i1 false, i1 false}
!256 = !{ptr @trace_event_type_funcs_percpu_free_percpu, !5, !"trace_event_type_funcs_percpu_free_percpu", i1 false, i1 false}
!257 = !{ptr @.str.112, !5, !"<string literal>", i1 false, i1 false}
!258 = !{ptr @print_fmt_percpu_free_percpu, !5, !"print_fmt_percpu_free_percpu", i1 false, i1 false}
!259 = !{ptr @trace_event_fields_percpu_alloc_percpu_fail, !9, !"trace_event_fields_percpu_alloc_percpu_fail", i1 false, i1 false}
!260 = !{ptr @trace_event_type_funcs_percpu_alloc_percpu_fail, !9, !"trace_event_type_funcs_percpu_alloc_percpu_fail", i1 false, i1 false}
!261 = !{ptr @.str.113, !9, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @print_fmt_percpu_alloc_percpu_fail, !9, !"print_fmt_percpu_alloc_percpu_fail", i1 false, i1 false}
!263 = !{ptr @trace_event_fields_percpu_create_chunk, !13, !"trace_event_fields_percpu_create_chunk", i1 false, i1 false}
!264 = !{ptr @trace_event_type_funcs_percpu_create_chunk, !13, !"trace_event_type_funcs_percpu_create_chunk", i1 false, i1 false}
!265 = !{ptr @.str.114, !13, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @print_fmt_percpu_create_chunk, !13, !"print_fmt_percpu_create_chunk", i1 false, i1 false}
!267 = !{ptr @trace_event_fields_percpu_destroy_chunk, !17, !"trace_event_fields_percpu_destroy_chunk", i1 false, i1 false}
!268 = !{ptr @trace_event_type_funcs_percpu_destroy_chunk, !17, !"trace_event_type_funcs_percpu_destroy_chunk", i1 false, i1 false}
!269 = !{ptr @print_fmt_percpu_destroy_chunk, !17, !"print_fmt_percpu_destroy_chunk", i1 false, i1 false}
!270 = !{ptr @pcpu_alloc.warn_limit, !271, !"warn_limit", i1 false, i1 false}
!271 = !{!"../mm/percpu.c", i32 1729, i32 13}
!272 = !{ptr @.str.115, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../mm/percpu.c", i32 1758, i32 3}
!274 = !{ptr @.str.116, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../mm/percpu.c", i32 1788, i32 10}
!276 = distinct !{null, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../mm/percpu.c", i32 1829, i32 9}
!278 = !{ptr @.str.118, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../mm/percpu.c", i32 1836, i32 10}
!280 = !{ptr @.str.119, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../mm/percpu.c", i32 1867, i32 11}
!282 = !{ptr @.str.120, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../mm/percpu.c", i32 1900, i32 3}
!284 = !{ptr @.str.121, !283, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @pcpu_alloc._entry, !283, !"_entry", i1 false, i1 false}
!286 = !{ptr @pcpu_alloc._entry_ptr, !283, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.123, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../mm/percpu.c", i32 1904, i32 4}
!289 = !{ptr @pcpu_alloc._entry.122, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @pcpu_alloc._entry_ptr.124, !288, !"_entry_ptr", i1 false, i1 false}
!291 = distinct !{null, !292, !"__warned", i1 false, i1 false}
!292 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!293 = !{ptr @.str.125, !292, !"<string literal>", i1 false, i1 false}
!294 = !{ptr @.str.126, !292, !"<string literal>", i1 false, i1 false}
!295 = distinct !{null, !296, !"__warned", i1 false, i1 false}
!296 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!297 = !{ptr @.str.127, !296, !"<string literal>", i1 false, i1 false}
!298 = !{ptr @.str.128, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../mm/percpu.c", i32 173, i32 8}
!300 = !{ptr @.str.129, !299, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @pcpu_alloc_mutex, !299, !"pcpu_alloc_mutex", i1 false, i1 false}
!302 = distinct !{null, !303, !"__already_done", i1 false, i1 false}
!303 = !{!"../mm/percpu.c", i32 510, i32 6}
!304 = !{ptr @.str.130, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../mm/percpu-internal.h", i32 173, i32 2}
!306 = !{ptr @pcpu_get_pages.pages, !307, !"pages", i1 false, i1 false}
!307 = !{!"../mm/percpu-vm.c", i32 34, i32 23}
!308 = !{ptr @.str.131, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../mm/percpu-vm.c", i32 37, i32 2}
!310 = distinct !{null, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!312 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!313 = !{ptr @.str.133, !1, !"<string literal>", i1 false, i1 false}
!314 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!315 = !{ptr @.str.134, !1, !"<string literal>", i1 false, i1 false}
!316 = distinct !{null, !317, !"__already_done", i1 false, i1 false}
!317 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!318 = !{ptr @.str.135, !317, !"<string literal>", i1 false, i1 false}
!319 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!320 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!321 = distinct !{null, !322, !"pcpu_atomic_alloc_failed", i1 false, i1 false}
!322 = !{!"../mm/percpu.c", i32 203, i32 13}
!323 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!324 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!325 = distinct !{null, !326, !"pcpu_async_enabled", i1 false, i1 false}
!326 = !{!"../mm/percpu.c", i32 202, i32 13}
!327 = !{ptr @.str.136, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../mm/percpu.c", i32 201, i32 8}
!329 = !{ptr @pcpu_balance_work, !328, !"pcpu_balance_work", i1 false, i1 false}
!330 = distinct !{null, !17, !"__already_done", i1 false, i1 false}
!331 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!332 = !{ptr @.str.137, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../mm/percpu.c", i32 2504, i32 2}
!334 = !{ptr @.str.138, !333, !"<string literal>", i1 false, i1 false}
!335 = !{ptr @pcpu_dump_alloc_info._entry, !333, !"_entry", i1 false, i1 false}
!336 = !{ptr @pcpu_dump_alloc_info._entry_ptr, !333, !"_entry_ptr", i1 false, i1 false}
!337 = !{ptr @.str.140, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../mm/percpu.c", i32 2516, i32 5}
!339 = !{ptr @pcpu_dump_alloc_info._entry.139, !338, !"_entry", i1 false, i1 false}
!340 = !{ptr @pcpu_dump_alloc_info._entry_ptr.141, !338, !"_entry_ptr", i1 false, i1 false}
!341 = !{ptr @.str.143, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../mm/percpu.c", i32 2517, i32 5}
!343 = !{ptr @pcpu_dump_alloc_info._entry.142, !342, !"_entry", i1 false, i1 false}
!344 = !{ptr @pcpu_dump_alloc_info._entry_ptr.144, !342, !"_entry_ptr", i1 false, i1 false}
!345 = !{ptr @.str.146, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../mm/percpu.c", i32 2519, i32 4}
!347 = !{ptr @pcpu_dump_alloc_info._entry.145, !346, !"_entry", i1 false, i1 false}
!348 = !{ptr @pcpu_dump_alloc_info._entry_ptr.147, !346, !"_entry_ptr", i1 false, i1 false}
!349 = !{ptr @.str.149, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../mm/percpu.c", i32 2523, i32 6}
!351 = !{ptr @pcpu_dump_alloc_info._entry.148, !350, !"_entry", i1 false, i1 false}
!352 = !{ptr @pcpu_dump_alloc_info._entry_ptr.150, !350, !"_entry_ptr", i1 false, i1 false}
!353 = !{ptr @.str.152, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../mm/percpu.c", i32 2526, i32 6}
!355 = !{ptr @pcpu_dump_alloc_info._entry.151, !354, !"_entry", i1 false, i1 false}
!356 = !{ptr @pcpu_dump_alloc_info._entry_ptr.153, !354, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @pcpu_dump_alloc_info._entry.154, !358, !"_entry", i1 false, i1 false}
!358 = !{!"../mm/percpu.c", i32 2529, i32 2}
!359 = !{ptr @pcpu_dump_alloc_info._entry_ptr.155, !358, !"_entry_ptr", i1 false, i1 false}
!360 = !{ptr @__func__.pcpu_alloc_first_chunk, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../mm/percpu.c", i32 1367, i32 47}
!362 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!363 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!364 = !{ptr @__setup_str_percpu_alloc_setup, !171, !"__setup_str_percpu_alloc_setup", i1 false, i1 false}
!365 = !{ptr @.str.156, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../mm/percpu.c", i32 2807, i32 3}
!367 = !{ptr @.str.157, !366, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @percpu_alloc_setup._entry, !366, !"_entry", i1 false, i1 false}
!369 = !{ptr @percpu_alloc_setup._entry_ptr, !366, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @pcpu_build_alloc_info.group_map, !371, !"group_map", i1 false, i1 false}
!371 = !{!"../mm/percpu.c", i32 2856, i32 13}
!372 = !{ptr @pcpu_build_alloc_info.group_cnt, !373, !"group_cnt", i1 false, i1 false}
!373 = !{!"../mm/percpu.c", i32 2857, i32 13}
!374 = !{ptr @pcpu_build_alloc_info.mask, !375, !"mask", i1 false, i1 false}
!375 = !{!"../mm/percpu.c", i32 2858, i32 24}
!376 = !{!"sp"}
!377 = !{i32 1, !"wchar_size", i32 2}
!378 = !{i32 1, !"min_enum_size", i32 4}
!379 = !{i32 8, !"branch-target-enforcement", i32 0}
!380 = !{i32 8, !"sign-return-address", i32 0}
!381 = !{i32 8, !"sign-return-address-all", i32 0}
!382 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!383 = !{i32 7, !"uwtable", i32 1}
!384 = !{i32 7, !"frame-pointer", i32 2}
!385 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!386 = !{!"branch_weights", i32 2000, i32 1}
!387 = !{!"branch_weights", i32 1, i32 2000}
!388 = !{!"auto-init"}
!389 = !{i32 0, i32 33}
!390 = !{!"branch_weights", i32 7818360, i32 -388717296}
!391 = !{i64 2148883539, i64 2148883544, i64 2148883565, i64 2148883609, i64 2148883643, i64 2148883664}
!392 = !{!"branch_weights", i32 2146410443, i32 1073205}
!393 = !{i8 0, i8 2}
!394 = !{i64 2150124537}
!395 = !{i64 679465, i64 679526}
!396 = !{i64 682197}
!397 = !{i64 682482}
!398 = !{i64 2150124803}
!399 = !{i64 2148883136, i64 2148883141, i64 2148883154, i64 2148883198, i64 2148883232, i64 2148883253}
!400 = !{i64 2155025522}
!401 = !{i64 2155025759}
!402 = !{i64 2150133096}
!403 = !{i64 2150134132}
!404 = !{i64 2156357422, i64 2156357899, i64 2156357459, i64 2156357515, i64 2156357549, i64 2156357573, i64 2156357614, i64 2156357635, i64 2156357663, i64 2156357697}
!405 = !{i64 2156362839, i64 2156363316, i64 2156362876, i64 2156362932, i64 2156362966, i64 2156362990, i64 2156363031, i64 2156363052, i64 2156363080, i64 2156363114}
!406 = !{i64 2156368486, i64 2156368963, i64 2156368523, i64 2156368579, i64 2156368613, i64 2156368637, i64 2156368678, i64 2156368699, i64 2156368727, i64 2156368761}
!407 = !{i64 2156373867, i64 2156374344, i64 2156373904, i64 2156373960, i64 2156373994, i64 2156374018, i64 2156374059, i64 2156374080, i64 2156374108, i64 2156374142}
!408 = !{i64 2156383533, i64 2156384010, i64 2156383570, i64 2156383626, i64 2156383660, i64 2156383684, i64 2156383725, i64 2156383746, i64 2156383774, i64 2156383808}
!409 = !{i64 2156388998, i64 2156389475, i64 2156389035, i64 2156389091, i64 2156389125, i64 2156389149, i64 2156389190, i64 2156389211, i64 2156389239, i64 2156389273}
!410 = !{i64 2156394631, i64 2156395108, i64 2156394668, i64 2156394724, i64 2156394758, i64 2156394782, i64 2156394823, i64 2156394844, i64 2156394872, i64 2156394906}
!411 = !{i64 2156400454, i64 2156400931, i64 2156400491, i64 2156400547, i64 2156400581, i64 2156400605, i64 2156400646, i64 2156400667, i64 2156400695, i64 2156400729}
!412 = !{i64 2156411835, i64 2156412312, i64 2156411872, i64 2156411928, i64 2156411962, i64 2156411986, i64 2156412027, i64 2156412048, i64 2156412076, i64 2156412110}
!413 = !{i64 2156423037, i64 2156423514, i64 2156423074, i64 2156423130, i64 2156423164, i64 2156423188, i64 2156423229, i64 2156423250, i64 2156423278, i64 2156423312}
!414 = !{i64 2156440801, i64 2156441278, i64 2156440838, i64 2156440894, i64 2156440928, i64 2156440952, i64 2156440993, i64 2156441014, i64 2156441042, i64 2156441076}
!415 = !{i64 2156446230, i64 2156446707, i64 2156446267, i64 2156446323, i64 2156446357, i64 2156446381, i64 2156446422, i64 2156446443, i64 2156446471, i64 2156446505}
!416 = !{i64 2156451701, i64 2156452178, i64 2156451738, i64 2156451794, i64 2156451828, i64 2156451852, i64 2156451893, i64 2156451914, i64 2156451942, i64 2156451976}
!417 = !{i64 2156457461, i64 2156457938, i64 2156457498, i64 2156457554, i64 2156457588, i64 2156457612, i64 2156457653, i64 2156457674, i64 2156457702, i64 2156457736}
!418 = !{i64 2156343753, i64 2156344230, i64 2156343790, i64 2156343846, i64 2156343880, i64 2156343904, i64 2156343945, i64 2156343966, i64 2156343994, i64 2156344028}
!419 = !{i64 2155063961}
!420 = !{i64 2155064180}
!421 = !{i64 2156479086, i64 2156479563, i64 2156479123, i64 2156479179, i64 2156479213, i64 2156479237, i64 2156479278, i64 2156479299, i64 2156479327, i64 2156479361}
!422 = !{i64 2156473792, i64 2156474269, i64 2156473829, i64 2156473885, i64 2156473919, i64 2156473943, i64 2156473984, i64 2156474005, i64 2156474033, i64 2156474067}
!423 = !{i64 2156475964, i64 2156476441, i64 2156476001, i64 2156476057, i64 2156476091, i64 2156476115, i64 2156476156, i64 2156476177, i64 2156476205, i64 2156476239}
!424 = !{i64 2154457220}
!425 = !{i64 2155008139}
!426 = !{i64 2155008446}
!427 = !{i64 2155047031}
!428 = !{i64 2155047306}
!429 = !{i64 2148375436}
!430 = !{i64 2148290169, i64 2148290201, i64 2148290230, i64 2148290264, i64 2148290295, i64 2148290318}
!431 = !{i64 2148375665}
!432 = !{i64 2156259589, i64 2156260068, i64 2156259626, i64 2156259682, i64 2156259716, i64 2156259740, i64 2156259781, i64 2156259802, i64 2156259830, i64 2156259864}
!433 = !{i64 2155080395}
!434 = !{i64 2155080616}
