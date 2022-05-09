; ModuleID = '/llk/IR_all_yes/fs/netfs/read_helper.c_pt.bc'
source_filename = "../fs/netfs/read_helper.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+netfs_subreq_terminated\22, \22a\22\09"
module asm "\09.weak\09__crc_netfs_subreq_terminated\09\09\09\09"
module asm "\09.long\09__crc_netfs_subreq_terminated\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netfs_subreq_terminated:\09\09\09\09\09"
module asm "\09.asciz \09\22netfs_subreq_terminated\22\09\09\09\09\09"
module asm "__kstrtabns_netfs_subreq_terminated:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netfs_readahead\22, \22a\22\09"
module asm "\09.weak\09__crc_netfs_readahead\09\09\09\09"
module asm "\09.long\09__crc_netfs_readahead\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netfs_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22netfs_readahead\22\09\09\09\09\09"
module asm "__kstrtabns_netfs_readahead:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netfs_readpage\22, \22a\22\09"
module asm "\09.weak\09__crc_netfs_readpage\09\09\09\09"
module asm "\09.long\09__crc_netfs_readpage\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netfs_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22netfs_readpage\22\09\09\09\09\09"
module asm "__kstrtabns_netfs_readpage:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+netfs_write_begin\22, \22a\22\09"
module asm "\09.weak\09__crc_netfs_write_begin\09\09\09\09"
module asm "\09.long\09__crc_netfs_write_begin\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_netfs_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22netfs_write_begin\22\09\09\09\09\09"
module asm "__kstrtabns_netfs_write_begin:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_eval_map = type { ptr, ptr, i32 }
%struct.trace_event_fields = type { ptr, %union.anon.100 }
%union.anon.100 = type { %struct.anon.101 }
%struct.anon.101 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.102, %struct.trace_event, ptr, ptr, %union.anon.103, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.102 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.103 = type { ptr }
%union.anon.104 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.105 = type { %struct.bpf_raw_event_map }
%union.anon.106 = type { %struct.bpf_raw_event_map }
%union.anon.107 = type { %struct.bpf_raw_event_map }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.66 }
%union.anon.66 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.trace_print_flags = type { i32, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.netfs_read_request = type { %struct.work_struct, ptr, ptr, %struct.netfs_cache_resources, %struct.list_head, ptr, i32, %struct.atomic_t, %struct.atomic_t, i32, i32, i16, i64, i64, i32, %struct.refcount_struct, i32, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.netfs_cache_resources = type { ptr, ptr, ptr, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.trace_event_raw_netfs_read = type { %struct.trace_entry, i32, i32, i64, i32, i32, i32, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.71 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_netfs_rreq = type { %struct.trace_entry, i32, i16, i32, [0 x i8] }
%struct.trace_event_raw_netfs_sreq = type { %struct.trace_entry, i32, i16, i16, i16, i8, i32, i32, i32, i64, [0 x i8] }
%struct.netfs_read_subrequest = type { ptr, %struct.list_head, i64, i32, i32, %struct.refcount_struct, i16, i16, i8, i32 }
%struct.trace_event_raw_netfs_failure = type { %struct.trace_entry, i32, i16, i16, i16, i8, i32, i32, i32, i64, [0 x i8] }
%struct.iov_iter = type { i8, i8, i8, i32, i32, %union.anon.21, %union.anon.22 }
%union.anon.21 = type { ptr }
%union.anon.22 = type { i64 }
%struct.readahead_control = type { ptr, ptr, ptr, i32, i32, i32 }
%struct.netfs_read_request_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.file = type { %union.anon.20, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.20 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.netfs_cache_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.page = type { i32, %union.anon.7, %union.anon.64, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.64 = type { %struct.atomic_t }
%struct.xa_state = type { ptr, i32, i8, i8, i8, i8, ptr, ptr, ptr }
%struct.anon.75 = type { i32, %struct.list_head, ptr, i32, ptr, %struct.atomic_t, %struct.atomic_t, i32 }
%struct.anon.11 = type { i32, i8, i8, %struct.atomic_t, i32 }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.58, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.35 }
%struct.llist_node = type { ptr }
%union.anon.35 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.37 }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32, i64, ptr }
%struct.prev_cputime = type { i64, i64, %struct.raw_spinlock }
%struct.posix_cputimers = type { [3 x %struct.posix_cputimer_base], i32, i32 }
%struct.posix_cputimer_base = type { i64, %struct.timerqueue_head }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.sysv_sem = type { ptr }
%struct.sysv_shm = type { %struct.list_head }
%struct.sigset_t = type { [2 x i32] }
%struct.sigpending = type { %struct.list_head, %struct.sigset_t }
%struct.seccomp = type { i32, %struct.atomic_t, ptr }
%struct.syscall_user_dispatch = type {}
%struct.wake_q_node = type { ptr }
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.tlbflush_unmap_batch = type {}
%union.anon.58 = type { %struct.callback_head }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.wait_bit_queue_entry = type { %struct.wait_bit_key, %struct.wait_queue_entry }
%struct.wait_bit_key = type { ptr, i32, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.xa_node = type { i8, i8, i8, i8, ptr, ptr, %union.anon.108, [64 x ptr], %union.anon.109 }
%union.anon.108 = type { %struct.list_head }
%union.anon.109 = type { [3 x [2 x i32]] }
%struct.anon = type { [16 x i8], %struct.lockdep_map }

@__tpstrtab_netfs_read = internal constant [11 x i8] c"netfs_read\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_netfs_read = dso_local global %struct.static_call_key { ptr @__traceiter_netfs_read }, align 4
@__tracepoint_netfs_read = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_netfs_read, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_netfs_read, ptr null, ptr @__traceiter_netfs_read, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_netfs_read = internal constant ptr @__tracepoint_netfs_read, section "__tracepoints_ptrs", align 4
@__tpstrtab_netfs_rreq = internal constant [11 x i8] c"netfs_rreq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_netfs_rreq = dso_local global %struct.static_call_key { ptr @__traceiter_netfs_rreq }, align 4
@__tracepoint_netfs_rreq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_netfs_rreq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_netfs_rreq, ptr null, ptr @__traceiter_netfs_rreq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_netfs_rreq = internal constant ptr @__tracepoint_netfs_rreq, section "__tracepoints_ptrs", align 4
@__tpstrtab_netfs_sreq = internal constant [11 x i8] c"netfs_sreq\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_netfs_sreq = dso_local global %struct.static_call_key { ptr @__traceiter_netfs_sreq }, align 4
@__tracepoint_netfs_sreq = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_netfs_sreq, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_netfs_sreq, ptr null, ptr @__traceiter_netfs_sreq, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_netfs_sreq = internal constant ptr @__tracepoint_netfs_sreq, section "__tracepoints_ptrs", align 4
@__tpstrtab_netfs_failure = internal constant [14 x i8] c"netfs_failure\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_netfs_failure = dso_local global %struct.static_call_key { ptr @__traceiter_netfs_failure }, align 4
@__tracepoint_netfs_failure = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_netfs_failure, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_netfs_failure, ptr null, ptr @__traceiter_netfs_failure, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_netfs_failure = internal constant ptr @__tracepoint_netfs_failure, section "__tracepoints_ptrs", align 4
@str__netfs__trace_system_name = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"netfs\00", [26 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netfs_read_trace_expanded\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_read_trace_expanded = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_read_trace_expanded = internal global ptr @__TRACE_SYSTEM_netfs_read_trace_expanded, section "_ftrace_eval_map", align 4
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"netfs_read_trace_readahead\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_read_trace_readahead = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.1, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_read_trace_readahead = internal global ptr @__TRACE_SYSTEM_netfs_read_trace_readahead, section "_ftrace_eval_map", align 4
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netfs_read_trace_readpage\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_read_trace_readpage = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.2, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_read_trace_readpage = internal global ptr @__TRACE_SYSTEM_netfs_read_trace_readpage, section "_ftrace_eval_map", align 4
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netfs_read_trace_write_begin\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_read_trace_write_begin = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.3, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_read_trace_write_begin = internal global ptr @__TRACE_SYSTEM_netfs_read_trace_write_begin, section "_ftrace_eval_map", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netfs_rreq_trace_assess\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_rreq_trace_assess = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.4, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_rreq_trace_assess = internal global ptr @__TRACE_SYSTEM_netfs_rreq_trace_assess, section "_ftrace_eval_map", align 4
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netfs_rreq_trace_done\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_rreq_trace_done = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.5, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_rreq_trace_done = internal global ptr @__TRACE_SYSTEM_netfs_rreq_trace_done, section "_ftrace_eval_map", align 4
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netfs_rreq_trace_free\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_rreq_trace_free = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.6, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_rreq_trace_free = internal global ptr @__TRACE_SYSTEM_netfs_rreq_trace_free, section "_ftrace_eval_map", align 4
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netfs_rreq_trace_resubmit\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_rreq_trace_resubmit = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.7, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_rreq_trace_resubmit = internal global ptr @__TRACE_SYSTEM_netfs_rreq_trace_resubmit, section "_ftrace_eval_map", align 4
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netfs_rreq_trace_unlock\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_rreq_trace_unlock = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.8, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_rreq_trace_unlock = internal global ptr @__TRACE_SYSTEM_netfs_rreq_trace_unlock, section "_ftrace_eval_map", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netfs_rreq_trace_unmark\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_rreq_trace_unmark = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.9, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_rreq_trace_unmark = internal global ptr @__TRACE_SYSTEM_netfs_rreq_trace_unmark, section "_ftrace_eval_map", align 4
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netfs_rreq_trace_write\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_rreq_trace_write = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.10, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_rreq_trace_write = internal global ptr @__TRACE_SYSTEM_netfs_rreq_trace_write, section "_ftrace_eval_map", align 4
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"NETFS_FILL_WITH_ZEROES\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_NETFS_FILL_WITH_ZEROES = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.11, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_NETFS_FILL_WITH_ZEROES = internal global ptr @__TRACE_SYSTEM_NETFS_FILL_WITH_ZEROES, section "_ftrace_eval_map", align 4
@.str.12 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"NETFS_DOWNLOAD_FROM_SERVER\00", [37 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_NETFS_DOWNLOAD_FROM_SERVER = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.12, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_NETFS_DOWNLOAD_FROM_SERVER = internal global ptr @__TRACE_SYSTEM_NETFS_DOWNLOAD_FROM_SERVER, section "_ftrace_eval_map", align 4
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"NETFS_READ_FROM_CACHE\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_NETFS_READ_FROM_CACHE = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.13, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_NETFS_READ_FROM_CACHE = internal global ptr @__TRACE_SYSTEM_NETFS_READ_FROM_CACHE, section "_ftrace_eval_map", align 4
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"NETFS_INVALID_READ\00", [45 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_NETFS_INVALID_READ = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.14, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_NETFS_INVALID_READ = internal global ptr @__TRACE_SYSTEM_NETFS_INVALID_READ, section "_ftrace_eval_map", align 4
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"netfs_sreq_trace_download_instead\00", [62 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_sreq_trace_download_instead = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.15, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_sreq_trace_download_instead = internal global ptr @__TRACE_SYSTEM_netfs_sreq_trace_download_instead, section "_ftrace_eval_map", align 4
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"netfs_sreq_trace_free\00", [42 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_sreq_trace_free = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.16, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_sreq_trace_free = internal global ptr @__TRACE_SYSTEM_netfs_sreq_trace_free, section "_ftrace_eval_map", align 4
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netfs_sreq_trace_prepare\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_sreq_trace_prepare = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.17, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_sreq_trace_prepare = internal global ptr @__TRACE_SYSTEM_netfs_sreq_trace_prepare, section "_ftrace_eval_map", align 4
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"netfs_sreq_trace_resubmit_short\00", [32 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_sreq_trace_resubmit_short = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.18, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_sreq_trace_resubmit_short = internal global ptr @__TRACE_SYSTEM_netfs_sreq_trace_resubmit_short, section "_ftrace_eval_map", align 4
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"netfs_sreq_trace_submit\00", [40 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_sreq_trace_submit = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.19, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_sreq_trace_submit = internal global ptr @__TRACE_SYSTEM_netfs_sreq_trace_submit, section "_ftrace_eval_map", align 4
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netfs_sreq_trace_terminated\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_sreq_trace_terminated = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.20, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_sreq_trace_terminated = internal global ptr @__TRACE_SYSTEM_netfs_sreq_trace_terminated, section "_ftrace_eval_map", align 4
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"netfs_sreq_trace_write\00", [41 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_sreq_trace_write = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.21, i32 6 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_sreq_trace_write = internal global ptr @__TRACE_SYSTEM_netfs_sreq_trace_write, section "_ftrace_eval_map", align 4
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netfs_sreq_trace_write_skip\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_sreq_trace_write_skip = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.22, i32 7 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_sreq_trace_write_skip = internal global ptr @__TRACE_SYSTEM_netfs_sreq_trace_write_skip, section "_ftrace_eval_map", align 4
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"netfs_sreq_trace_write_term\00", [36 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_sreq_trace_write_term = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.23, i32 8 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_sreq_trace_write_term = internal global ptr @__TRACE_SYSTEM_netfs_sreq_trace_write_term, section "_ftrace_eval_map", align 4
@.str.24 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netfs_fail_check_write_begin\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_fail_check_write_begin = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.24, i32 0 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_fail_check_write_begin = internal global ptr @__TRACE_SYSTEM_netfs_fail_check_write_begin, section "_ftrace_eval_map", align 4
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netfs_fail_copy_to_cache\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_fail_copy_to_cache = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.25, i32 1 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_fail_copy_to_cache = internal global ptr @__TRACE_SYSTEM_netfs_fail_copy_to_cache, section "_ftrace_eval_map", align 4
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"netfs_fail_read\00", [16 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_fail_read = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.26, i32 2 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_fail_read = internal global ptr @__TRACE_SYSTEM_netfs_fail_read, section "_ftrace_eval_map", align 4
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netfs_fail_short_readpage\00", [38 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_fail_short_readpage = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.27, i32 3 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_fail_short_readpage = internal global ptr @__TRACE_SYSTEM_netfs_fail_short_readpage, section "_ftrace_eval_map", align 4
@.str.28 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"netfs_fail_short_write_begin\00", [35 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_fail_short_write_begin = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.28, i32 4 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_fail_short_write_begin = internal global ptr @__TRACE_SYSTEM_netfs_fail_short_write_begin, section "_ftrace_eval_map", align 4
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"netfs_fail_prepare_write\00", [39 x i8] zeroinitializer }, align 32
@__TRACE_SYSTEM_netfs_fail_prepare_write = internal global %struct.trace_eval_map { ptr @str__netfs__trace_system_name, ptr @.str.29, i32 5 }, section ".init.data", align 4
@TRACE_SYSTEM_netfs_fail_prepare_write = internal global ptr @__TRACE_SYSTEM_netfs_fail_prepare_write, section "_ftrace_eval_map", align 4
@trace_event_fields_netfs_read = internal global { [7 x %struct.trace_event_fields], [56 x i8] } { [7 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.100 { %struct.anon.101 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.100 { %struct.anon.101 { ptr @.str.34, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.35, %union.anon.100 { %struct.anon.101 { ptr @.str.36, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.100 { %struct.anon.101 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.39, %union.anon.100 { %struct.anon.101 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.32, %union.anon.100 { %struct.anon.101 { ptr @.str.41, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [56 x i8] zeroinitializer }, align 32
@event_class_netfs_read = internal global %struct.trace_event_class { ptr @str__netfs__trace_system_name, ptr @trace_event_raw_event_netfs_read, ptr @perf_trace_netfs_read, ptr @trace_event_reg, ptr @trace_event_fields_netfs_read, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_netfs_read, i64 24), ptr getelementptr (i8, ptr @event_class_netfs_read, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_netfs_read = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_netfs_read, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_netfs_read = internal global { [309 x i8], [75 x i8] } { [309 x i8] c"\22R=%08x %s c=%08x ni=%x s=%llx %zx\22, REC->rreq, __print_symbolic(REC->what, { netfs_read_trace_expanded, \22EXPANDED \22 }, { netfs_read_trace_readahead, \22READAHEAD\22 }, { netfs_read_trace_readpage, \22READPAGE \22 }, { netfs_read_trace_write_begin, \22WRITEBEGN\22 }), REC->cookie, REC->netfs_inode, REC->start, REC->len\00", [75 x i8] zeroinitializer }, align 32
@event_netfs_read = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_netfs_read, %union.anon.102 { ptr @__tracepoint_netfs_read }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_netfs_read }, ptr @print_fmt_netfs_read, ptr null, %union.anon.103 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_netfs_read = internal global ptr @event_netfs_read, section "_ftrace_events", align 4
@trace_event_fields_netfs_rreq = internal global { [4 x %struct.trace_event_fields], [32 x i8] } { [4 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.100 { %struct.anon.101 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.100 { %struct.anon.101 { ptr @.str.48, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.49, %union.anon.100 { %struct.anon.101 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [32 x i8] zeroinitializer }, align 32
@event_class_netfs_rreq = internal global %struct.trace_event_class { ptr @str__netfs__trace_system_name, ptr @trace_event_raw_event_netfs_rreq, ptr @perf_trace_netfs_rreq, ptr @trace_event_reg, ptr @trace_event_fields_netfs_rreq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_netfs_rreq, i64 24), ptr getelementptr (i8, ptr @event_class_netfs_rreq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_netfs_rreq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_netfs_rreq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_netfs_rreq = internal global { [341 x i8], [75 x i8] } { [341 x i8] c"\22R=%08x %s f=%02x\22, REC->rreq, __print_symbolic(REC->what, { netfs_rreq_trace_assess, \22ASSESS\22 }, { netfs_rreq_trace_done, \22DONE  \22 }, { netfs_rreq_trace_free, \22FREE  \22 }, { netfs_rreq_trace_resubmit, \22RESUBM\22 }, { netfs_rreq_trace_unlock, \22UNLOCK\22 }, { netfs_rreq_trace_unmark, \22UNMARK\22 }, { netfs_rreq_trace_write, \22WRITE \22 }), REC->flags\00", [75 x i8] zeroinitializer }, align 32
@event_netfs_rreq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_netfs_rreq, %union.anon.102 { ptr @__tracepoint_netfs_rreq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_netfs_rreq }, ptr @print_fmt_netfs_rreq, ptr null, %union.anon.103 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_netfs_rreq = internal global ptr @event_netfs_rreq, section "_ftrace_events", align 4
@trace_event_fields_netfs_sreq = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.100 { %struct.anon.101 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.100 { %struct.anon.101 { ptr @.str.58, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.100 { %struct.anon.101 { ptr @.str.60, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.100 { %struct.anon.101 { ptr @.str.48, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.61, %union.anon.100 { %struct.anon.101 { ptr @.str.62, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.63, %union.anon.100 { %struct.anon.101 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.100 { %struct.anon.101 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.100 { %struct.anon.101 { ptr @.str.64, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.35, %union.anon.100 { %struct.anon.101 { ptr @.str.36, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_netfs_sreq = internal global %struct.trace_event_class { ptr @str__netfs__trace_system_name, ptr @trace_event_raw_event_netfs_sreq, ptr @perf_trace_netfs_sreq, ptr @trace_event_reg, ptr @trace_event_fields_netfs_sreq, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_netfs_sreq, i64 24), ptr getelementptr (i8, ptr @event_class_netfs_sreq, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_netfs_sreq = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_netfs_sreq, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_netfs_sreq = internal global { [706 x i8], [190 x i8] } { [706 x i8] c"\22R=%08x[%u] %s %s f=%02x s=%llx %zx/%zx e=%d\22, REC->rreq, REC->index, __print_symbolic(REC->what, { netfs_sreq_trace_download_instead, \22RDOWN\22 }, { netfs_sreq_trace_free, \22FREE \22 }, { netfs_sreq_trace_prepare, \22PREP \22 }, { netfs_sreq_trace_resubmit_short, \22SHORT\22 }, { netfs_sreq_trace_submit, \22SUBMT\22 }, { netfs_sreq_trace_terminated, \22TERM \22 }, { netfs_sreq_trace_write, \22WRITE\22 }, { netfs_sreq_trace_write_skip, \22SKIP \22 }, { netfs_sreq_trace_write_term, \22WTERM\22 }), __print_symbolic(REC->source, { NETFS_FILL_WITH_ZEROES, \22ZERO\22 }, { NETFS_DOWNLOAD_FROM_SERVER, \22DOWN\22 }, { NETFS_READ_FROM_CACHE, \22READ\22 }, { NETFS_INVALID_READ, \22INVL\22 }), REC->flags, REC->start, REC->transferred, REC->len, REC->error\00", [190 x i8] zeroinitializer }, align 32
@event_netfs_sreq = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_netfs_sreq, %union.anon.102 { ptr @__tracepoint_netfs_sreq }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_netfs_sreq }, ptr @print_fmt_netfs_sreq, ptr null, %union.anon.103 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_netfs_sreq = internal global ptr @event_netfs_sreq, section "_ftrace_events", align 4
@trace_event_fields_netfs_failure = internal global { [10 x %struct.trace_event_fields], [48 x i8] } { [10 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.100 { %struct.anon.101 { ptr @.str.33, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.100 { %struct.anon.101 { ptr @.str.58, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.59, %union.anon.100 { %struct.anon.101 { ptr @.str.60, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.47, %union.anon.100 { %struct.anon.101 { ptr @.str.48, i32 2, i32 2, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.61, %union.anon.100 { %struct.anon.101 { ptr @.str.62, i32 1, i32 1, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.80, %union.anon.100 { %struct.anon.101 { ptr @.str.40, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.100 { %struct.anon.101 { ptr @.str.38, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.37, %union.anon.100 { %struct.anon.101 { ptr @.str.64, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.35, %union.anon.100 { %struct.anon.101 { ptr @.str.36, i32 8, i32 8, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [48 x i8] zeroinitializer }, align 32
@event_class_netfs_failure = internal global %struct.trace_event_class { ptr @str__netfs__trace_system_name, ptr @trace_event_raw_event_netfs_failure, ptr @perf_trace_netfs_failure, ptr @trace_event_reg, ptr @trace_event_fields_netfs_failure, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_netfs_failure, i64 24), ptr getelementptr (i8, ptr @event_class_netfs_failure, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_netfs_failure = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_netfs_failure, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_netfs_failure = internal global { [615 x i8], [153 x i8] } { [615 x i8] c"\22R=%08x[%u] %s f=%02x s=%llx %zx/%zx %s e=%d\22, REC->rreq, REC->index, __print_symbolic(REC->source, { NETFS_FILL_WITH_ZEROES, \22ZERO\22 }, { NETFS_DOWNLOAD_FROM_SERVER, \22DOWN\22 }, { NETFS_READ_FROM_CACHE, \22READ\22 }, { NETFS_INVALID_READ, \22INVL\22 }), REC->flags, REC->start, REC->transferred, REC->len, __print_symbolic(REC->what, { netfs_fail_check_write_begin, \22check-write-begin\22 }, { netfs_fail_copy_to_cache, \22copy-to-cache\22 }, { netfs_fail_read, \22read\22 }, { netfs_fail_short_readpage, \22short-readpage\22 }, { netfs_fail_short_write_begin, \22short-write-begin\22 }, { netfs_fail_prepare_write, \22prep-write\22 }), REC->error\00", [153 x i8] zeroinitializer }, align 32
@event_netfs_failure = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_netfs_failure, %union.anon.102 { ptr @__tracepoint_netfs_failure }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_netfs_failure }, ptr @print_fmt_netfs_failure, ptr null, %union.anon.103 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_netfs_failure = internal global ptr @event_netfs_failure, section "_ftrace_events", align 4
@__bpf_trace_tp_map_netfs_read = internal global %union.anon.104 { %struct.bpf_raw_event_map { ptr @__tracepoint_netfs_read, ptr @__bpf_trace_netfs_read, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_netfs_rreq = internal global %union.anon.105 { %struct.bpf_raw_event_map { ptr @__tracepoint_netfs_rreq, ptr @__bpf_trace_netfs_rreq, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_netfs_sreq = internal global %union.anon.106 { %struct.bpf_raw_event_map { ptr @__tracepoint_netfs_sreq, ptr @__bpf_trace_netfs_sreq, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_netfs_failure = internal global %union.anon.107 { %struct.bpf_raw_event_map { ptr @__tracepoint_netfs_failure, ptr @__bpf_trace_netfs_failure, i32 4, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__UNIQUE_ID_description297 = internal constant [37 x i8] c"netfs.description=Network fs support\00", section ".modinfo", align 1
@__UNIQUE_ID_author298 = internal constant [27 x i8] c"netfs.author=Red Hat, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_file299 = internal constant [26 x i8] c"netfs.file=fs/netfs/netfs\00", section ".modinfo", align 1
@__UNIQUE_ID_license300 = internal constant [18 x i8] c"netfs.license=GPL\00", section ".modinfo", align 1
@__param_str_debug = internal constant [12 x i8] c"netfs.debug\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@netfs_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.66 { ptr @netfs_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype301 = internal constant [26 x i8] c"netfs.parmtype=debug:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_netfs_debug302 = internal constant [52 x i8] c"netfs.parm=netfs_debug:Netfs support debugging mask\00", section ".modinfo", align 1
@netfs_n_rh_read_done = external dso_local global %struct.atomic_t, align 4
@netfs_n_rh_download_done = external dso_local global %struct.atomic_t, align 4
@.str.30 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fs/netfs/read_helper.c\00", [41 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Subreq overread: R%x[%x] %zd > %zu - %zu\00", [55 x i8] zeroinitializer }, align 32
@netfs_n_rh_read_failed = external dso_local global %struct.atomic_t, align 4
@netfs_n_rh_download_failed = external dso_local global %struct.atomic_t, align 4
@__kstrtab_netfs_subreq_terminated = external dso_local constant [0 x i8], align 1
@__kstrtabns_netfs_subreq_terminated = external dso_local constant [0 x i8], align 1
@__ksymtab_netfs_subreq_terminated = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netfs_subreq_terminated to i32), ptr @__kstrtab_netfs_subreq_terminated, ptr @__kstrtabns_netfs_subreq_terminated }, section "___ksymtab+netfs_subreq_terminated", align 4
@netfs_n_rh_readahead = external dso_local global %struct.atomic_t, align 4
@__kstrtab_netfs_readahead = external dso_local constant [0 x i8], align 1
@__kstrtabns_netfs_readahead = external dso_local constant [0 x i8], align 1
@__ksymtab_netfs_readahead = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netfs_readahead to i32), ptr @__kstrtab_netfs_readahead, ptr @__kstrtabns_netfs_readahead }, section "___ksymtab+netfs_readahead", align 4
@netfs_n_rh_readpage = external dso_local global %struct.atomic_t, align 4
@__kstrtab_netfs_readpage = external dso_local constant [0 x i8], align 1
@__kstrtabns_netfs_readpage = external dso_local constant [0 x i8], align 1
@__ksymtab_netfs_readpage = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netfs_readpage to i32), ptr @__kstrtab_netfs_readpage, ptr @__kstrtabns_netfs_readpage }, section "___ksymtab+netfs_readpage", align 4
@netfs_n_rh_write_zskip = external dso_local global %struct.atomic_t, align 4
@netfs_n_rh_write_begin = external dso_local global %struct.atomic_t, align 4
@__kstrtab_netfs_write_begin = external dso_local constant [0 x i8], align 1
@__kstrtabns_netfs_write_begin = external dso_local constant [0 x i8], align 1
@__ksymtab_netfs_write_begin = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @netfs_write_begin to i32), ptr @__kstrtab_netfs_write_begin, ptr @__kstrtabns_netfs_write_begin }, section "___ksymtab+netfs_write_begin", align 4
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"unsigned int\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"rreq\00", [27 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cookie\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"loff_t\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"start\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"len\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enum netfs_read_trace\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"what\00", [27 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"netfs_inode\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"R=%08x %s c=%08x ni=%x s=%llx %zx\0A\00", [61 x i8] zeroinitializer }, align 32
@trace_raw_output_netfs_read.symbols = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.43 }, %struct.trace_print_flags { i32 1, ptr @.str.44 }, %struct.trace_print_flags { i32 2, ptr @.str.45 }, %struct.trace_print_flags { i32 3, ptr @.str.46 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"EXPANDED \00", [22 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"READAHEAD\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"READPAGE \00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"WRITEBEGN\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"unsigned short\00", [17 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"flags\00", [26 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enum netfs_rreq_trace\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"R=%08x %s f=%02x\0A\00", [46 x i8] zeroinitializer }, align 32
@trace_raw_output_netfs_rreq.symbols = internal constant { [8 x %struct.trace_print_flags], [32 x i8] } { [8 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.51 }, %struct.trace_print_flags { i32 1, ptr @.str.52 }, %struct.trace_print_flags { i32 2, ptr @.str.53 }, %struct.trace_print_flags { i32 3, ptr @.str.54 }, %struct.trace_print_flags { i32 4, ptr @.str.55 }, %struct.trace_print_flags { i32 5, ptr @.str.56 }, %struct.trace_print_flags { i32 6, ptr @.str.57 }, %struct.trace_print_flags { i32 -1, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ASSESS\00", [25 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DONE  \00", [25 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"FREE  \00", [25 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RESUBM\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNLOCK\00", [25 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"UNMARK\00", [25 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"WRITE \00", [25 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"index\00", [26 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"enum netfs_read_source\00", [41 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"source\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"enum netfs_sreq_trace\00", [42 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"transferred\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"R=%08x[%u] %s %s f=%02x s=%llx %zx/%zx e=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_raw_output_netfs_sreq.symbols = internal constant { [10 x %struct.trace_print_flags], [48 x i8] } { [10 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.66 }, %struct.trace_print_flags { i32 1, ptr @.str.67 }, %struct.trace_print_flags { i32 2, ptr @.str.68 }, %struct.trace_print_flags { i32 3, ptr @.str.69 }, %struct.trace_print_flags { i32 4, ptr @.str.70 }, %struct.trace_print_flags { i32 5, ptr @.str.71 }, %struct.trace_print_flags { i32 6, ptr @.str.72 }, %struct.trace_print_flags { i32 7, ptr @.str.73 }, %struct.trace_print_flags { i32 8, ptr @.str.74 }, %struct.trace_print_flags { i32 -1, ptr null }], [48 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"RDOWN\00", [26 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"FREE \00", [26 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"PREP \00", [26 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SHORT\00", [26 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SUBMT\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"TERM \00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WRITE\00", [26 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"SKIP \00", [26 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WTERM\00", [26 x i8] zeroinitializer }, align 32
@trace_raw_output_netfs_sreq.symbols.75 = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.76 }, %struct.trace_print_flags { i32 1, ptr @.str.77 }, %struct.trace_print_flags { i32 2, ptr @.str.78 }, %struct.trace_print_flags { i32 3, ptr @.str.79 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ZERO\00", [27 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DOWN\00", [27 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"READ\00", [27 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INVL\00", [27 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"enum netfs_failure\00", [45 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"R=%08x[%u] %s f=%02x s=%llx %zx/%zx %s e=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@trace_raw_output_netfs_failure.symbols = internal constant { [5 x %struct.trace_print_flags], [56 x i8] } { [5 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.76 }, %struct.trace_print_flags { i32 1, ptr @.str.77 }, %struct.trace_print_flags { i32 2, ptr @.str.78 }, %struct.trace_print_flags { i32 3, ptr @.str.79 }, %struct.trace_print_flags { i32 -1, ptr null }], [56 x i8] zeroinitializer }, align 32
@trace_raw_output_netfs_failure.symbols.82 = internal constant { [7 x %struct.trace_print_flags], [40 x i8] } { [7 x %struct.trace_print_flags] [%struct.trace_print_flags { i32 0, ptr @.str.83 }, %struct.trace_print_flags { i32 1, ptr @.str.84 }, %struct.trace_print_flags { i32 2, ptr @.str.85 }, %struct.trace_print_flags { i32 3, ptr @.str.86 }, %struct.trace_print_flags { i32 4, ptr @.str.87 }, %struct.trace_print_flags { i32 5, ptr @.str.88 }, %struct.trace_print_flags { i32 -1, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"check-write-begin\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"copy-to-cache\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"short-readpage\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"short-write-begin\00", [46 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"prep-write\00", [21 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@.str.89 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/netfs.h\00", [35 x i8] zeroinitializer }, align 32
@trace_netfs_failure.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.90 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.91 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@trace_netfs_sreq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@netfs_n_rh_sreq = external dso_local global %struct.atomic_t, align 4
@netfs_alloc_read_request.debug_ids = internal global { %struct.atomic_t, [28 x i8] } zeroinitializer, align 32
@netfs_alloc_read_request.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.92 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"(work_completion)(&rreq->work)\00", [33 x i8] zeroinitializer }, align 32
@netfs_n_rh_rreq = external dso_local global %struct.atomic_t, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@trace_netfs_read.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netfs_n_rh_zero = external dso_local global %struct.atomic_t, align 4
@netfs_n_rh_download = external dso_local global %struct.atomic_t, align 4
@netfs_n_rh_read = external dso_local global %struct.atomic_t, align 4
@.str.93 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"VM_BUG_ON_FOLIO(!folio_test_locked(folio))\00", [53 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"VM_BUG_ON_PAGE(PageTail(page))\00", [33 x i8] zeroinitializer }, align 32
@trace_netfs_rreq.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@netfs_n_rh_download_instead = external dso_local global %struct.atomic_t, align 4
@netfs_n_rh_short_read = external dso_local global %struct.atomic_t, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.96 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"VM_BUG_ON_FOLIO(folio_test_private_2(folio))\00", [51 x i8] zeroinitializer }, align 32
@xa_entry.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.99 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/xarray.h\00", [41 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.100 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@netfs_n_rh_write = external dso_local global %struct.atomic_t, align 4
@netfs_n_rh_write_failed = external dso_local global %struct.atomic_t, align 4
@netfs_n_rh_write_done = external dso_local global %struct.atomic_t, align 4
@.str.101 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"VM_BUG_ON_PAGE(PagePoisoned(page))\00", [61 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"VM_BUG_ON_FOLIO(((unsigned int) folio_ref_count(folio) + 127u <= 127u))\00", [56 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod = external dso_local global %struct.tracepoint, align 4
@.str.103 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"VM_BUG_ON_PAGE(page_ref_count(page) == 0)\00", [54 x i8] zeroinitializer }, align 32
@__tracepoint_page_ref_mod_and_test = external dso_local global %struct.tracepoint, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967284, i64 4294967292]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 3]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967284, i64 4294967292]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 4294966784, i64 4294967284, i64 4294967292]
@___asan_gen_.110 = private unnamed_addr constant [30 x i8] c"str__netfs__trace_system_name\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 36, i32 1 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 110, i32 1 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 111, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 112, i32 1 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 113, i32 1 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 114, i32 1 }
@___asan_gen_.203 = private unnamed_addr constant [30 x i8] c"trace_event_fields_netfs_read\00", align 1
@___asan_gen_.206 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_netfs_read\00", align 1
@___asan_gen_.209 = private unnamed_addr constant [21 x i8] c"print_fmt_netfs_read\00", align 1
@___asan_gen_.212 = private unnamed_addr constant [17 x i8] c"event_netfs_read\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [30 x i8] c"trace_event_fields_netfs_rreq\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_netfs_rreq\00", align 1
@___asan_gen_.221 = private unnamed_addr constant [21 x i8] c"print_fmt_netfs_rreq\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"event_netfs_rreq\00", align 1
@___asan_gen_.227 = private unnamed_addr constant [30 x i8] c"trace_event_fields_netfs_sreq\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [34 x i8] c"trace_event_type_funcs_netfs_sreq\00", align 1
@___asan_gen_.233 = private unnamed_addr constant [21 x i8] c"print_fmt_netfs_sreq\00", align 1
@___asan_gen_.236 = private unnamed_addr constant [17 x i8] c"event_netfs_sreq\00", align 1
@___asan_gen_.239 = private unnamed_addr constant [33 x i8] c"trace_event_fields_netfs_failure\00", align 1
@___asan_gen_.242 = private unnamed_addr constant [37 x i8] c"trace_event_type_funcs_netfs_failure\00", align 1
@___asan_gen_.245 = private unnamed_addr constant [24 x i8] c"print_fmt_netfs_failure\00", align 1
@___asan_gen_.248 = private unnamed_addr constant [20 x i8] c"event_netfs_failure\00", align 1
@___asan_gen_.251 = private unnamed_addr constant [12 x i8] c"netfs_debug\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 26, i32 10 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 632, i32 6 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 125, i32 1 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 158, i32 1 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 182, i32 1 }
@___asan_gen_.422 = private unnamed_addr constant [8 x i8] c"symbols\00", align 1
@___asan_gen_.447 = private unnamed_addr constant [32 x i8] c"../include/trace/events/netfs.h\00", align 1
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.447, i32 221, i32 1 }
@___asan_gen_.450 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.450, i32 108, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant [10 x i8] c"debug_ids\00", align 1
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 44, i32 18 }
@___asan_gen_.455 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.459 = private constant [26 x i8] c"../fs/netfs/read_helper.c\00", align 1
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.459, i32 55, i32 3 }
@___asan_gen_.462 = private unnamed_addr constant [27 x i8] c"../include/linux/pagemap.h\00", align 1
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.462, i32 1096, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 260, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 695, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant [25 x i8] c"../include/linux/netfs.h\00", align 1
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.474, i32 41, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.477, i32 1182, i32 9 }
@___asan_gen_.480 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.480, i32 723, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [30 x i8] c"../include/linux/page-flags.h\00", align 1
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.483, i32 698, i32 1 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 1160, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.489 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.489, i32 717, i32 2 }
@llvm.compiler.used = appending global [218 x ptr] [ptr @TRACE_SYSTEM_NETFS_DOWNLOAD_FROM_SERVER, ptr @TRACE_SYSTEM_NETFS_FILL_WITH_ZEROES, ptr @TRACE_SYSTEM_NETFS_INVALID_READ, ptr @TRACE_SYSTEM_NETFS_READ_FROM_CACHE, ptr @TRACE_SYSTEM_netfs_fail_check_write_begin, ptr @TRACE_SYSTEM_netfs_fail_copy_to_cache, ptr @TRACE_SYSTEM_netfs_fail_prepare_write, ptr @TRACE_SYSTEM_netfs_fail_read, ptr @TRACE_SYSTEM_netfs_fail_short_readpage, ptr @TRACE_SYSTEM_netfs_fail_short_write_begin, ptr @TRACE_SYSTEM_netfs_read_trace_expanded, ptr @TRACE_SYSTEM_netfs_read_trace_readahead, ptr @TRACE_SYSTEM_netfs_read_trace_readpage, ptr @TRACE_SYSTEM_netfs_read_trace_write_begin, ptr @TRACE_SYSTEM_netfs_rreq_trace_assess, ptr @TRACE_SYSTEM_netfs_rreq_trace_done, ptr @TRACE_SYSTEM_netfs_rreq_trace_free, ptr @TRACE_SYSTEM_netfs_rreq_trace_resubmit, ptr @TRACE_SYSTEM_netfs_rreq_trace_unlock, ptr @TRACE_SYSTEM_netfs_rreq_trace_unmark, ptr @TRACE_SYSTEM_netfs_rreq_trace_write, ptr @TRACE_SYSTEM_netfs_sreq_trace_download_instead, ptr @TRACE_SYSTEM_netfs_sreq_trace_free, ptr @TRACE_SYSTEM_netfs_sreq_trace_prepare, ptr @TRACE_SYSTEM_netfs_sreq_trace_resubmit_short, ptr @TRACE_SYSTEM_netfs_sreq_trace_submit, ptr @TRACE_SYSTEM_netfs_sreq_trace_terminated, ptr @TRACE_SYSTEM_netfs_sreq_trace_write, ptr @TRACE_SYSTEM_netfs_sreq_trace_write_skip, ptr @TRACE_SYSTEM_netfs_sreq_trace_write_term, ptr @__TRACE_SYSTEM_NETFS_DOWNLOAD_FROM_SERVER, ptr @__TRACE_SYSTEM_NETFS_FILL_WITH_ZEROES, ptr @__TRACE_SYSTEM_NETFS_INVALID_READ, ptr @__TRACE_SYSTEM_NETFS_READ_FROM_CACHE, ptr @__TRACE_SYSTEM_netfs_fail_check_write_begin, ptr @__TRACE_SYSTEM_netfs_fail_copy_to_cache, ptr @__TRACE_SYSTEM_netfs_fail_prepare_write, ptr @__TRACE_SYSTEM_netfs_fail_read, ptr @__TRACE_SYSTEM_netfs_fail_short_readpage, ptr @__TRACE_SYSTEM_netfs_fail_short_write_begin, ptr @__TRACE_SYSTEM_netfs_read_trace_expanded, ptr @__TRACE_SYSTEM_netfs_read_trace_readahead, ptr @__TRACE_SYSTEM_netfs_read_trace_readpage, ptr @__TRACE_SYSTEM_netfs_read_trace_write_begin, ptr @__TRACE_SYSTEM_netfs_rreq_trace_assess, ptr @__TRACE_SYSTEM_netfs_rreq_trace_done, ptr @__TRACE_SYSTEM_netfs_rreq_trace_free, ptr @__TRACE_SYSTEM_netfs_rreq_trace_resubmit, ptr @__TRACE_SYSTEM_netfs_rreq_trace_unlock, ptr @__TRACE_SYSTEM_netfs_rreq_trace_unmark, ptr @__TRACE_SYSTEM_netfs_rreq_trace_write, ptr @__TRACE_SYSTEM_netfs_sreq_trace_download_instead, ptr @__TRACE_SYSTEM_netfs_sreq_trace_free, ptr @__TRACE_SYSTEM_netfs_sreq_trace_prepare, ptr @__TRACE_SYSTEM_netfs_sreq_trace_resubmit_short, ptr @__TRACE_SYSTEM_netfs_sreq_trace_submit, ptr @__TRACE_SYSTEM_netfs_sreq_trace_terminated, ptr @__TRACE_SYSTEM_netfs_sreq_trace_write, ptr @__TRACE_SYSTEM_netfs_sreq_trace_write_skip, ptr @__TRACE_SYSTEM_netfs_sreq_trace_write_term, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_debugtype301, ptr @__UNIQUE_ID_description297, ptr @__UNIQUE_ID_file299, ptr @__UNIQUE_ID_license300, ptr @__UNIQUE_ID_netfs_debug302, ptr @__bpf_trace_tp_map_netfs_failure, ptr @__bpf_trace_tp_map_netfs_read, ptr @__bpf_trace_tp_map_netfs_rreq, ptr @__bpf_trace_tp_map_netfs_sreq, ptr @__event_netfs_failure, ptr @__event_netfs_read, ptr @__event_netfs_rreq, ptr @__event_netfs_sreq, ptr @__ksymtab_netfs_readahead, ptr @__ksymtab_netfs_readpage, ptr @__ksymtab_netfs_subreq_terminated, ptr @__ksymtab_netfs_write_begin, ptr @__param_debug, ptr @__tracepoint_netfs_failure, ptr @__tracepoint_netfs_read, ptr @__tracepoint_netfs_rreq, ptr @__tracepoint_netfs_sreq, ptr @__tracepoint_ptr_netfs_failure, ptr @__tracepoint_ptr_netfs_read, ptr @__tracepoint_ptr_netfs_rreq, ptr @__tracepoint_ptr_netfs_sreq, ptr @event_class_netfs_failure, ptr @event_class_netfs_read, ptr @event_class_netfs_rreq, ptr @event_class_netfs_sreq, ptr @event_netfs_failure, ptr @event_netfs_read, ptr @event_netfs_rreq, ptr @event_netfs_sreq, ptr @str__netfs__trace_system_name, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @trace_event_fields_netfs_read, ptr @trace_event_type_funcs_netfs_read, ptr @print_fmt_netfs_read, ptr @trace_event_fields_netfs_rreq, ptr @trace_event_type_funcs_netfs_rreq, ptr @print_fmt_netfs_rreq, ptr @trace_event_fields_netfs_sreq, ptr @trace_event_type_funcs_netfs_sreq, ptr @print_fmt_netfs_sreq, ptr @trace_event_fields_netfs_failure, ptr @trace_event_type_funcs_netfs_failure, ptr @print_fmt_netfs_failure, ptr @netfs_debug, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @trace_raw_output_netfs_read.symbols, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @trace_raw_output_netfs_rreq.symbols, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @trace_raw_output_netfs_sreq.symbols, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @trace_raw_output_netfs_sreq.symbols.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @trace_raw_output_netfs_failure.symbols, ptr @trace_raw_output_netfs_failure.symbols.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @netfs_alloc_read_request.debug_ids, ptr @netfs_alloc_read_request.__key, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], section "llvm.metadata"
@0 = internal global [127 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__netfs__trace_system_name to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_netfs_read to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_netfs_read to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_netfs_read to i32), i32 309, i32 384, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_netfs_read to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_netfs_rreq to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_netfs_rreq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_netfs_rreq to i32), i32 341, i32 416, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_netfs_rreq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_netfs_sreq to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_netfs_sreq to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_netfs_sreq to i32), i32 706, i32 896, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_netfs_sreq to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_netfs_failure to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_netfs_failure to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_netfs_failure to i32), i32 615, i32 768, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_netfs_failure to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_netfs_read.symbols to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_netfs_rreq.symbols to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_netfs_sreq.symbols to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_netfs_sreq.symbols.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_netfs_failure.symbols to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_raw_output_netfs_failure.symbols.82 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_alloc_read_request.debug_ids to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netfs_alloc_read_request.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_netfs_read(ptr nocapture readnone %__data, ptr noundef %rreq, i64 noundef %start, i32 noundef %len, i32 noundef %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_read, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %rreq, i64 noundef %start, i32 noundef %len, i32 noundef %what) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_netfs_rreq(ptr nocapture readnone %__data, ptr noundef %rreq, i32 noundef %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_rreq, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %rreq, i32 noundef %what) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_netfs_sreq(ptr nocapture readnone %__data, ptr noundef %sreq, i32 noundef %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_sreq, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %sreq, i32 noundef %what) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_netfs_failure(ptr nocapture readnone %__data, ptr noundef %rreq, ptr noundef %sreq, i32 noundef %error, i32 noundef %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_failure, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  tail call void %2(ptr noundef %4, ptr noundef %rreq, ptr noundef %sreq, i32 noundef %error, i32 noundef %what) #8
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_netfs_read(ptr noundef %__data, ptr nocapture noundef readonly %rreq, i64 noundef %start, i32 noundef %len, i32 noundef %what) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !284

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !285

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 6
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %rreq6 = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %rreq6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rreq6, align 8
  %debug_id7 = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %debug_id7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %debug_id7, align 4
  %cookie = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cookie, align 4
  %start8 = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %start8 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %start, ptr %start8, align 8
  %len9 = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call3, i32 0, i32 4
  %10 = ptrtoint ptr %len9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %len9, align 8
  %what10 = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call3, i32 0, i32 5
  %11 = ptrtoint ptr %what10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %what, ptr %what10, align 4
  %inode = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 1
  %12 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %inode, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 11
  %14 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %i_ino, align 8
  %netfs_inode = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call3, i32 0, i32 6
  %16 = ptrtoint ptr %netfs_inode to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %netfs_inode, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_netfs_read(ptr noundef %__data, ptr nocapture noundef readonly %rreq, i64 noundef %start, i32 noundef %len, i32 noundef %what) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !286
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !286
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !274) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 6
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  %rreq17 = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %rreq17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rreq17, align 8
  %debug_id18 = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 3, i32 3
  %30 = ptrtoint ptr %debug_id18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %debug_id18, align 4
  %cookie = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %cookie to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cookie, align 4
  %start19 = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %start19 to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %start, ptr %start19, align 8
  %len20 = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call13, i32 0, i32 4
  %34 = ptrtoint ptr %len20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %len, ptr %len20, align 8
  %what21 = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call13, i32 0, i32 5
  %35 = ptrtoint ptr %what21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %what, ptr %what21, align 4
  %inode = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 1
  %36 = ptrtoint ptr %inode to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %inode, align 4
  %i_ino = getelementptr inbounds %struct.inode, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %i_ino to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %i_ino, align 8
  %netfs_inode = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %call13, i32 0, i32 6
  %40 = ptrtoint ptr %netfs_inode to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %netfs_inode, align 8
  %41 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rctx, align 4
  %43 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %42, ptr noundef %__data, i64 noundef 1, ptr noundef %44, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_netfs_rreq(ptr noundef %__data, ptr nocapture noundef readonly %rreq, i32 noundef %what) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !284

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !285

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 20) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 6
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %rreq6 = getelementptr inbounds %struct.trace_event_raw_netfs_rreq, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %rreq6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rreq6, align 4
  %flags = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 16
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 8
  %conv = trunc i32 %7 to i16
  %flags7 = getelementptr inbounds %struct.trace_event_raw_netfs_rreq, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %flags7 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %flags7, align 4
  %what8 = getelementptr inbounds %struct.trace_event_raw_netfs_rreq, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %what8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %what, ptr %what8, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_netfs_rreq(ptr noundef %__data, ptr nocapture noundef readonly %rreq, i32 noundef %what) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !286
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !286
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 20, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !274) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 6
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  %rreq17 = getelementptr inbounds %struct.trace_event_raw_netfs_rreq, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %rreq17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rreq17, align 4
  %flags = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 16
  %30 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %flags, align 8
  %conv = trunc i32 %31 to i16
  %flags18 = getelementptr inbounds %struct.trace_event_raw_netfs_rreq, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %flags18 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %flags18, align 4
  %what19 = getelementptr inbounds %struct.trace_event_raw_netfs_rreq, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %what19 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %what, ptr %what19, align 4
  %34 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %rctx, align 4
  %36 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 20, i32 noundef %35, ptr noundef %__data, i64 noundef 1, ptr noundef %37, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_netfs_sreq(ptr noundef %__data, ptr nocapture noundef readonly %sreq, i32 noundef %what) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !284

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !285

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sreq, align 8
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %4, i32 0, i32 6
  %5 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %debug_id, align 4
  %rreq6 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call3, i32 0, i32 1
  %7 = ptrtoint ptr %rreq6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %rreq6, align 8
  %debug_index = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 7
  %8 = ptrtoint ptr %debug_index to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %debug_index, align 2
  %index = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call3, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %index, align 4
  %error = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 6
  %11 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %error, align 4
  %error7 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call3, i32 0, i32 3
  %13 = ptrtoint ptr %error7 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %error7, align 2
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 9
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %conv = trunc i32 %15 to i16
  %flags8 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call3, i32 0, i32 4
  %16 = ptrtoint ptr %flags8 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv, ptr %flags8, align 8
  %source = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 8
  %17 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %source, align 8
  %source9 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call3, i32 0, i32 5
  %19 = ptrtoint ptr %source9 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %source9, align 2
  %what10 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call3, i32 0, i32 6
  %20 = ptrtoint ptr %what10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %what, ptr %what10, align 4
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 3
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 8
  %len11 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call3, i32 0, i32 7
  %23 = ptrtoint ptr %len11 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %len11, align 8
  %transferred = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 4
  %24 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %transferred, align 4
  %transferred12 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call3, i32 0, i32 8
  %26 = ptrtoint ptr %transferred12 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %transferred12, align 4
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 2
  %27 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %start, align 8
  %start13 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call3, i32 0, i32 9
  %29 = ptrtoint ptr %start13 to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 %28, ptr %start13, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_netfs_sreq(ptr noundef %__data, ptr nocapture noundef readonly %sreq, i32 noundef %what) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !286
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !286
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !274) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %27 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %sreq, align 8
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %debug_id, align 4
  %rreq17 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call13, i32 0, i32 1
  %31 = ptrtoint ptr %rreq17 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %rreq17, align 8
  %debug_index = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 7
  %32 = ptrtoint ptr %debug_index to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %debug_index, align 2
  %index = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call13, i32 0, i32 2
  %34 = ptrtoint ptr %index to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %index, align 4
  %error = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 6
  %35 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %error, align 4
  %error18 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call13, i32 0, i32 3
  %37 = ptrtoint ptr %error18 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %error18, align 2
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 9
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %conv = trunc i32 %39 to i16
  %flags19 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call13, i32 0, i32 4
  %40 = ptrtoint ptr %flags19 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv, ptr %flags19, align 8
  %source = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 8
  %41 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %source, align 8
  %source20 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call13, i32 0, i32 5
  %43 = ptrtoint ptr %source20 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %source20, align 2
  %what21 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call13, i32 0, i32 6
  %44 = ptrtoint ptr %what21 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %what, ptr %what21, align 4
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 3
  %45 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %len, align 8
  %len22 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call13, i32 0, i32 7
  %47 = ptrtoint ptr %len22 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %len22, align 8
  %transferred = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 4
  %48 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %transferred, align 4
  %transferred23 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call13, i32 0, i32 8
  %50 = ptrtoint ptr %transferred23 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %transferred23, align 4
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 2
  %51 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %start, align 8
  %start24 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %call13, i32 0, i32 9
  %53 = ptrtoint ptr %start24 to i32
  call void @__asan_store8_noabort(i32 %53)
  store i64 %52, ptr %start24, align 8
  %54 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %rctx, align 4
  %56 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %55, ptr noundef %__data, i64 noundef 1, ptr noundef %57, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_netfs_failure(ptr noundef %__data, ptr nocapture noundef readonly %rreq, ptr noundef readonly %sreq, i32 noundef %error, i32 noundef %what) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #8
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !284

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !285

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #8
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 40) #8
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 6
  %3 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %debug_id, align 4
  %rreq6 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %rreq6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %rreq6, align 8
  %tobool7.not = icmp eq ptr %sreq, null
  br i1 %tobool7.not, label %cond.end14.critedge, label %cond.true

cond.true:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %debug_index = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 7
  %6 = ptrtoint ptr %debug_index to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %debug_index, align 2
  %index.c75 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 2
  %8 = ptrtoint ptr %index.c75 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %index.c75, align 4
  %conv9.c76 = trunc i32 %error to i16
  %error10.c77 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 3
  %9 = ptrtoint ptr %error10.c77 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %conv9.c76, ptr %error10.c77, align 2
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 9
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags, align 4
  %phi.cast = trunc i32 %11 to i16
  %flags17.c78 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %flags17.c78 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %phi.cast, ptr %flags17.c78, align 8
  %source = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 8
  %13 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %source, align 8
  %source25.c79 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 5
  %15 = ptrtoint ptr %source25.c79 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %source25.c79, align 2
  %what26.c80 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 6
  %16 = ptrtoint ptr %what26.c80 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %what, ptr %what26.c80, align 4
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 3
  %17 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len, align 8
  %len32.c81 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 7
  %19 = ptrtoint ptr %len32.c81 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %len32.c81, align 8
  %transferred = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 4
  %20 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %transferred, align 4
  %transferred38.c82 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 8
  %22 = ptrtoint ptr %transferred38.c82 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %transferred38.c82, align 4
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 2
  %23 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %start, align 8
  br label %cond.end42

cond.end14.critedge:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %index.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 2
  %25 = ptrtoint ptr %index.c to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 0, ptr %index.c, align 4
  %conv9.c = trunc i32 %error to i16
  %error10.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 3
  %26 = ptrtoint ptr %error10.c to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv9.c, ptr %error10.c, align 2
  %flags17.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 4
  %27 = ptrtoint ptr %flags17.c to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags17.c, align 8
  %source25.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 5
  %28 = ptrtoint ptr %source25.c to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %source25.c, align 2
  %what26.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 6
  %29 = ptrtoint ptr %what26.c to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %what, ptr %what26.c, align 4
  %len32.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 7
  %30 = ptrtoint ptr %len32.c to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %len32.c, align 8
  %transferred38.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 8
  %31 = ptrtoint ptr %transferred38.c to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %transferred38.c, align 4
  br label %cond.end42

cond.end42:                                       ; preds = %cond.end14.critedge, %cond.true
  %cond43 = phi i64 [ %24, %cond.true ], [ 0, %cond.end14.critedge ]
  %start44 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call3, i32 0, i32 9
  %32 = ptrtoint ptr %start44 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %cond43, ptr %start44, align 8
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end42, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_netfs_failure(ptr noundef %__data, ptr nocapture noundef readonly %rreq, ptr noundef readonly %sreq, i32 noundef %error, i32 noundef %what) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #8
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !286
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #8
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !286
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 44, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #8
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end16:                                         ; preds = %if.end
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #8
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #8
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !274) #8
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 6
  %27 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %debug_id, align 4
  %rreq17 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %rreq17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %rreq17, align 8
  %tobool18.not = icmp eq ptr %sreq, null
  br i1 %tobool18.not, label %cond.end25.critedge, label %cond.true

cond.true:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %debug_index = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 7
  %30 = ptrtoint ptr %debug_index to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %debug_index, align 2
  %index.c98 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 2
  %32 = ptrtoint ptr %index.c98 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %index.c98, align 4
  %conv20.c99 = trunc i32 %error to i16
  %error21.c100 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 3
  %33 = ptrtoint ptr %error21.c100 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv20.c99, ptr %error21.c100, align 2
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 9
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags, align 4
  %phi.cast = trunc i32 %35 to i16
  %flags28.c101 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %flags28.c101 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %phi.cast, ptr %flags28.c101, align 8
  %source = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 8
  %37 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %source, align 8
  %source36.c102 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 5
  %39 = ptrtoint ptr %source36.c102 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %source36.c102, align 2
  %what37.c103 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 6
  %40 = ptrtoint ptr %what37.c103 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %what, ptr %what37.c103, align 4
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 3
  %41 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %len, align 8
  %len43.c104 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 7
  %43 = ptrtoint ptr %len43.c104 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %len43.c104, align 8
  %transferred = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 4
  %44 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %transferred, align 4
  %transferred49.c105 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 8
  %46 = ptrtoint ptr %transferred49.c105 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %transferred49.c105, align 4
  %start = getelementptr inbounds %struct.netfs_read_subrequest, ptr %sreq, i32 0, i32 2
  %47 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %47)
  %48 = load i64, ptr %start, align 8
  br label %cond.end53

cond.end25.critedge:                              ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %index.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 2
  %49 = ptrtoint ptr %index.c to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %index.c, align 4
  %conv20.c = trunc i32 %error to i16
  %error21.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 3
  %50 = ptrtoint ptr %error21.c to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv20.c, ptr %error21.c, align 2
  %flags28.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 4
  %51 = ptrtoint ptr %flags28.c to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags28.c, align 8
  %source36.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 5
  %52 = ptrtoint ptr %source36.c to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 3, ptr %source36.c, align 2
  %what37.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 6
  %53 = ptrtoint ptr %what37.c to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %what, ptr %what37.c, align 4
  %len43.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 7
  %54 = ptrtoint ptr %len43.c to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %len43.c, align 8
  %transferred49.c = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 8
  %55 = ptrtoint ptr %transferred49.c to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 0, ptr %transferred49.c, align 4
  br label %cond.end53

cond.end53:                                       ; preds = %cond.end25.critedge, %cond.true
  %cond54 = phi i64 [ %48, %cond.true ], [ 0, %cond.end25.critedge ]
  %start55 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %call13, i32 0, i32 9
  %56 = ptrtoint ptr %start55 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %cond54, ptr %start55, align 8
  %57 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %rctx, align 4
  %59 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 44, i32 noundef %58, ptr noundef %__data, i64 noundef 1, ptr noundef %60, ptr noundef %11, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %cond.end53, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_netfs_read(ptr noundef %__data, ptr noundef %rreq, i64 noundef %start, i32 noundef %len, i32 noundef %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %rreq to i32
  %conv = zext i32 %0 to i64
  %conv7 = zext i32 %len to i64
  %conv11 = zext i32 %what to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %start, i64 noundef %conv7, i64 noundef %conv11) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_netfs_rreq(ptr noundef %__data, ptr noundef %rreq, i32 noundef %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %rreq to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %what to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_netfs_sreq(ptr noundef %__data, ptr noundef %sreq, i32 noundef %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %sreq to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %what to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_netfs_failure(ptr noundef %__data, ptr noundef %rreq, ptr noundef %sreq, i32 noundef %error, i32 noundef %what) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = ptrtoint ptr %rreq to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %sreq to i32
  %conv4 = zext i32 %1 to i64
  %conv8 = zext i32 %error to i64
  %conv12 = zext i32 %what to i64
  tail call void @bpf_trace_run4(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4, i64 noundef %conv8, i64 noundef %conv12) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netfs_subreq_terminated(ptr noundef %subreq, i32 noundef %transferred_or_error, i1 noundef zeroext %was_async) #0 align 64 {
entry:
  %iter.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %subreq, align 8
  %source = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 8
  %2 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %source, align 8
  %conv = sext i8 %3 to i32
  %4 = zext i32 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %conv, label %entry.sw.epilog_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_read_done, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_read_done, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_read_done, ptr nonnull @netfs_n_rh_read_done, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_read_done) #8, !srcloc !287
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i150 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_download_done, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_download_done, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_download_done, ptr nonnull @netfs_n_rh_download_done, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_download_done) #8, !srcloc !287
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb, %entry.sw.epilog_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %transferred_or_error)
  %cmp = icmp ugt i32 %transferred_or_error, -4096
  br i1 %cmp, label %if.then, label %if.end, !prof !285

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %conv5 = trunc i32 %transferred_or_error to i16
  %error = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 6
  %7 = ptrtoint ptr %error to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv5, ptr %error, align 4
  tail call fastcc void @trace_netfs_failure(ptr noundef %1, ptr noundef %subreq, i32 noundef %transferred_or_error, i32 noundef 2)
  br label %failed

if.end:                                           ; preds = %sw.epilog
  %len = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 3
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 8
  %transferred = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 4
  %10 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %transferred, align 4
  %sub = sub i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %transferred_or_error)
  %cmp6 = icmp ult i32 %sub, %transferred_or_error
  br i1 %cmp6, label %do.end, label %if.end.if.end42_crit_edge, !prof !285

if.end.if.end42_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %debug_id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %debug_id, align 4
  %debug_index = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 7
  %14 = ptrtoint ptr %debug_index to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %debug_index, align 2
  %conv21 = zext i16 %15 to i32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 635, i32 noundef 9, ptr noundef nonnull @.str.31, i32 noundef %13, i32 noundef %conv21, i32 noundef %transferred_or_error, i32 noundef %9, i32 noundef %11) #8
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 8
  %18 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %transferred, align 4
  %sub41 = sub i32 %17, %19
  br label %if.end42

if.end42:                                         ; preds = %do.end, %if.end.if.end42_crit_edge
  %transferred_or_error.addr.0 = phi i32 [ %sub41, %do.end ], [ %transferred_or_error, %if.end.if.end42_crit_edge ]
  %error43 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 6
  %20 = ptrtoint ptr %error43 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %error43, align 4
  %21 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %transferred, align 4
  %add = add i32 %22, %transferred_or_error.addr.0
  store i32 %add, ptr %transferred, align 4
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %add)
  %cmp47 = icmp ugt i32 %24, %add
  br i1 %cmp47, label %incomplete, label %if.end42.complete_crit_edge

if.end42.complete_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %complete

complete:                                         ; preds = %if.then71, %if.end42.complete_crit_edge
  %flags = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 9
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and.i = and i32 %26, -17
  store i32 %and.i, ptr %flags, align 4
  %27 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool52.not = icmp eq i32 %and1.i, 0
  br i1 %tobool52.not, label %complete.out_crit_edge, label %if.then53

complete.out_crit_edge:                           ; preds = %complete
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then53:                                        ; preds = %complete
  call void @__sanitizer_cov_trace_pc() #10
  %flags54 = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 16
  call void @_set_bit(i32 noundef 1, ptr noundef %flags54) #8
  br label %out

out:                                              ; preds = %if.else95, %if.then93, %if.end86, %if.then53, %complete.out_crit_edge
  call fastcc void @trace_netfs_sreq(ptr noundef %subreq, i32 noundef 5)
  %nr_rd_ops = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @llvm.prefetch.p0(ptr %nr_rd_ops, i32 1, i32 3, i32 1) #8
  %28 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_rd_ops, ptr %nr_rd_ops, i32 1, ptr elementtype(i32) %nr_rd_ops) #8, !srcloc !289
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %28, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !290
  %29 = zext i32 %asmresult.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %asmresult.i.i.i.i, label %out.if.end66_crit_edge [
    i32 0, label %if.then59
    i32 1, label %if.then63
  ]

out.if.end66_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

if.then59:                                        ; preds = %out
  %flags.i = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 16
  %30 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp ne i32 %and1.i.i, 0
  %32 = and i1 %tobool.not.i, %was_async
  br i1 %32, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %33 = load ptr, ptr @system_unbound_wq, align 4
  %call.i.i151 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %33, ptr noundef %1) #8
  br i1 %call.i.i151, label %if.then.i.if.end66_crit_edge, label %do.body.i

if.then.i.if.end66_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end66

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/netfs/read_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 579, 0\0A.popsection", ""() #8, !srcloc !291
  unreachable

if.else.i:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @netfs_rreq_assess(ptr noundef %1, i1 noundef zeroext %was_async) #8
  br label %if.end66

if.then63:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #10
  call void @wake_up_var(ptr noundef %nr_rd_ops) #8
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.else.i, %if.then.i.if.end66_crit_edge, %out.if.end66_crit_edge
  call fastcc void @netfs_put_subrequest(ptr noundef %subreq, i1 noundef zeroext %was_async)
  ret void

incomplete:                                       ; preds = %if.end42
  %flags68 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 9
  %34 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile i32, ptr %flags68, align 4
  %36 = and i32 %35, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool70.not = icmp eq i32 %36, 0
  br i1 %tobool70.not, label %if.end74, label %if.then71

if.then71:                                        ; preds = %incomplete
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #8
  %37 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %38 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %subreq, align 8
  %mapping.i = getelementptr inbounds %struct.netfs_read_request, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %mapping.i, align 8
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %41, i32 0, i32 1
  %start.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 2
  %42 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %start.i, align 8
  %conv.i = zext i32 %add to i64
  %add.i = add i64 %43, %conv.i
  %sub.i = sub i32 %24, %add
  call void @iov_iter_xarray(ptr noundef nonnull %iter.i, i32 noundef 0, ptr noundef %i_pages.i, i64 noundef %add.i, i32 noundef %sub.i) #8
  %count.i.i = getelementptr inbounds %struct.iov_iter, ptr %iter.i, i32 0, i32 4
  %44 = ptrtoint ptr %count.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count.i.i, align 8
  %call2.i = call i32 @iov_iter_zero(i32 noundef %45, ptr noundef nonnull %iter.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #8
  %46 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len, align 8
  %48 = ptrtoint ptr %transferred to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %transferred, align 4
  br label %complete

if.end74:                                         ; preds = %incomplete
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %transferred_or_error.addr.0)
  %cmp75 = icmp eq i32 %transferred_or_error.addr.0, 0
  br i1 %cmp75, label %if.then77, label %if.else84

if.then77:                                        ; preds = %if.end74
  %or.i = or i32 %35, 16
  %49 = ptrtoint ptr %flags68 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i, ptr %flags68, align 4
  %50 = and i32 %35, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool80.not = icmp eq i32 %50, 0
  br i1 %tobool80.not, label %if.then77.if.end86_crit_edge, label %if.then81

if.then77.if.end86_crit_edge:                     ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then81:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %error43 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 -61, ptr %error43, align 4
  br label %failed

if.else84:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %and.i148 = and i32 %35, -17
  %52 = ptrtoint ptr %flags68 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %and.i148, ptr %flags68, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else84, %if.then77.if.end86_crit_edge
  %53 = ptrtoint ptr %flags68 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %flags68, align 4
  %or.i149 = or i32 %54, 4
  store i32 %or.i149, ptr %flags68, align 4
  %flags88 = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags88) #8
  br label %out

failed:                                           ; preds = %if.then81, %if.then
  %55 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %source, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp91 = icmp eq i8 %56, 2
  br i1 %cmp91, label %if.then93, label %if.else95

if.then93:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i152 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_read_failed, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_read_failed, i32 1, i32 3, i32 1) #8
  %57 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_read_failed, ptr nonnull @netfs_n_rh_read_failed, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_read_failed) #8, !srcloc !287
  %flags94 = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 0, ptr noundef %flags94) #8
  br label %out

if.else95:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i153 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_download_failed, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_download_failed, i32 1, i32 3, i32 1) #8
  %58 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_download_failed, ptr nonnull @netfs_n_rh_download_failed, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_download_failed) #8, !srcloc !287
  %flags96 = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 16
  tail call void @_set_bit(i32 noundef 4, ptr noundef %flags96) #8
  %error97 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 6
  %59 = ptrtoint ptr %error97 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %error97, align 4
  %error98 = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 11
  %61 = ptrtoint ptr %error98 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %60, ptr %error98, align 8
  br label %out
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_netfs_failure(ptr noundef %rreq, ptr noundef %sreq, i32 noundef %error, i32 noundef %what) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_failure, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_netfs_failure, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !292

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !284

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !293
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_failure, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %rreq, ptr noundef %sreq, i32 noundef %error, i32 noundef %what) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !294
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !294
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !284

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !295
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_failure, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_netfs_failure.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_netfs_failure.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 259, ptr noundef nonnull @.str.90) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !296
  %38 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_netfs_sreq(ptr noundef %sreq, i32 noundef %what) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_sreq, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_netfs_sreq, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !292

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !284

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !297
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_sreq, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %sreq, i32 noundef %what) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !298
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !298
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !284

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !295
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_sreq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_netfs_sreq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_netfs_sreq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 219, ptr noundef nonnull @.str.90) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !296
  %38 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
declare dso_local void @wake_up_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netfs_put_subrequest(ptr noundef %subreq, i1 noundef zeroext %was_async) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq, i32 0, i32 5
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !299
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #8, !srcloc !300
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !284

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !301
  %1 = ptrtoint ptr %subreq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %subreq, align 8
  tail call fastcc void @trace_netfs_sreq(ptr noundef %subreq, i32 noundef 1) #8
  tail call void @kfree(ptr noundef %subreq) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_sreq, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_sreq, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_sreq, ptr nonnull @netfs_n_rh_sreq, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_sreq) #8, !srcloc !302
  tail call fastcc void @netfs_put_read_request(ptr noundef %2, i1 noundef zeroext %was_async) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @netfs_readahead(ptr noundef %ractl, ptr noundef %ops, ptr noundef %netfs_priv) #0 align 64 {
entry:
  %debug_index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %debug_index) #8
  %0 = ptrtoint ptr %debug_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %debug_index, align 4
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %1 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp eq i32 %2, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %ractl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ractl, align 4
  %call1 = tail call fastcc ptr @netfs_alloc_read_request(ptr noundef %ops, ptr noundef %netfs_priv, ptr noundef %4)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %mapping = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %5 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mapping, align 4
  %mapping4 = getelementptr inbounds %struct.netfs_read_request, ptr %call1, i32 0, i32 2
  %7 = ptrtoint ptr %mapping4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %mapping4, align 8
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %8 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_index.i, align 4
  %conv.i = zext i32 %9 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %start = getelementptr inbounds %struct.netfs_read_request, ptr %call1, i32 0, i32 13
  %10 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %mul.i, ptr %start, align 8
  %11 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %_nr_pages.i, align 4
  %mul.i70 = shl i32 %12, 12
  %len = getelementptr inbounds %struct.netfs_read_request, ptr %call1, i32 0, i32 10
  %13 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %mul.i70, ptr %len, align 4
  %begin_cache_operation = getelementptr inbounds %struct.netfs_read_request_ops, ptr %ops, i32 0, i32 2
  %14 = ptrtoint ptr %begin_cache_operation to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %begin_cache_operation, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.end3.if.end17_crit_edge, label %if.then8

if.end3.if.end17_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then8:                                         ; preds = %if.end3
  %call10 = tail call i32 %15(ptr noundef nonnull %call1) #8
  %16 = zext i32 %call10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call10, label %if.then8.if.end17_crit_edge [
    i32 -12, label %if.then8.cleanup_free_crit_edge
    i32 -4, label %if.then8.cleanup_free_crit_edge76
    i32 -512, label %if.then8.cleanup_free_crit_edge77
  ]

if.then8.cleanup_free_crit_edge77:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_free

if.then8.cleanup_free_crit_edge76:                ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_free

if.then8.cleanup_free_crit_edge:                  ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup_free

if.then8.if.end17_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.end17:                                         ; preds = %if.then8.if.end17_crit_edge, %if.end3.if.end17_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_readahead, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_readahead, i32 1, i32 3, i32 1) #8
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_readahead, ptr nonnull @netfs_n_rh_readahead, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_readahead) #8, !srcloc !287
  %18 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %_index.i, align 4
  %conv.i72 = zext i32 %19 to i64
  %mul.i73 = shl nuw nsw i64 %conv.i72, 12
  %20 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_nr_pages.i, align 4
  %mul.i75 = shl i32 %21, 12
  tail call fastcc void @trace_netfs_read(ptr noundef nonnull %call1, i64 noundef %mul.i73, i32 noundef %mul.i75, i32 noundef 1)
  tail call fastcc void @netfs_rreq_expand(ptr noundef nonnull %call1, ptr noundef %ractl)
  %nr_rd_ops = getelementptr inbounds %struct.netfs_read_request, ptr %call1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  %22 = ptrtoint ptr %nr_rd_ops to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile i32 1, ptr %nr_rd_ops, align 4
  %submitted = getelementptr inbounds %struct.netfs_read_request, ptr %call1, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end17
  %call20 = call fastcc zeroext i1 @netfs_rreq_submit_slice(ptr noundef nonnull %call1, ptr noundef nonnull %debug_index)
  br i1 %call20, label %do.cond, label %do.body.while.cond.preheader_crit_edge

do.body.while.cond.preheader_crit_edge:           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

do.cond:                                          ; preds = %do.body
  %23 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %submitted, align 8
  %25 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len, align 4
  %cmp24 = icmp ult i32 %24, %26
  br i1 %cmp24, label %do.cond.do.body_crit_edge, label %do.cond.while.cond.preheader_crit_edge

do.cond.while.cond.preheader_crit_edge:           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

while.cond.preheader:                             ; preds = %do.cond.while.cond.preheader_crit_edge, %do.body.while.cond.preheader_crit_edge
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %while.cond.preheader
  %call25 = tail call fastcc ptr @readahead_folio(ptr noundef %ractl)
  %tobool26.not = icmp eq ptr %call25, null
  br i1 %tobool26.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %call.i.i68 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @llvm.prefetch.p0(ptr %nr_rd_ops, i32 1, i32 3, i32 1) #8
  %27 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_rd_ops, ptr %nr_rd_ops, i32 1, ptr elementtype(i32) %nr_rd_ops) #8, !srcloc !289
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %27, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then29, label %while.end.cleanup36_crit_edge

while.end.cleanup36_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.then29:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @netfs_rreq_assess(ptr noundef nonnull %call1, i1 noundef zeroext false)
  br label %cleanup36

cleanup_free:                                     ; preds = %if.then8.cleanup_free_crit_edge, %if.then8.cleanup_free_crit_edge76, %if.then8.cleanup_free_crit_edge77
  tail call fastcc void @netfs_put_read_request(ptr noundef nonnull %call1, i1 noundef zeroext false)
  br label %cleanup36

cleanup:                                          ; preds = %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %tobool31.not = icmp eq ptr %netfs_priv, null
  br i1 %tobool31.not, label %cleanup.cleanup36_crit_edge, label %if.then32

cleanup.cleanup36_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup36

if.then32:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  %cleanup33 = getelementptr inbounds %struct.netfs_read_request_ops, ptr %ops, i32 0, i32 9
  %28 = ptrtoint ptr %cleanup33 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cleanup33, align 4
  %mapping34 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %30 = ptrtoint ptr %mapping34 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %mapping34, align 4
  tail call void %29(ptr noundef %31, ptr noundef nonnull %netfs_priv) #8
  br label %cleanup36

cleanup36:                                        ; preds = %if.then32, %cleanup.cleanup36_crit_edge, %cleanup_free, %if.then29, %while.end.cleanup36_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debug_index) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @netfs_alloc_read_request(ptr noundef %ops, ptr noundef %netfs_priv, ptr noundef %file) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 144) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then:                                          ; preds = %entry
  %netfs_ops = getelementptr inbounds %struct.netfs_read_request, ptr %call7.i.i, i32 0, i32 17
  %1 = ptrtoint ptr %netfs_ops to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ops, ptr %netfs_ops, align 4
  %netfs_priv1 = getelementptr inbounds %struct.netfs_read_request, ptr %call7.i.i, i32 0, i32 5
  %2 = ptrtoint ptr %netfs_priv1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %netfs_priv, ptr %netfs_priv1, align 8
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %3 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_inode.i, align 8
  %inode = getelementptr inbounds %struct.netfs_read_request, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %inode to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %inode, align 4
  %call4 = tail call fastcc i64 @i_size_read(ptr noundef %4)
  %i_size = getelementptr inbounds %struct.netfs_read_request, ptr %call7.i.i, i32 0, i32 12
  %6 = ptrtoint ptr %i_size to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %call4, ptr %i_size, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_alloc_read_request.debug_ids, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !303
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_alloc_read_request.debug_ids, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_alloc_read_request.debug_ids, ptr nonnull @netfs_alloc_read_request.debug_ids, i32 1, ptr nonnull elementtype(i32) @netfs_alloc_read_request.debug_ids) #8, !srcloc !304
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %7, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !305
  %debug_id = getelementptr inbounds %struct.netfs_read_request, ptr %call7.i.i, i32 0, i32 6
  %8 = ptrtoint ptr %debug_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %asmresult.i.i.i.i, ptr %debug_id, align 4
  %subrequests = getelementptr inbounds %struct.netfs_read_request, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %subrequests to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %subrequests, ptr %subrequests, align 8
  %prev.i = getelementptr inbounds %struct.netfs_read_request, ptr %call7.i.i, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %subrequests, ptr %prev.i, align 4
  tail call void @__init_work(ptr noundef nonnull %call7.i.i, i32 noundef 0) #8
  %11 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %call7.i.i, align 8
  %lockdep_map = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.92, ptr noundef nonnull @netfs_alloc_read_request.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #8
  %entry9 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %entry9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry9, ptr %entry9, align 4
  %prev.i34 = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i34 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry9, ptr %prev.i34, align 8
  %func = getelementptr inbounds %struct.work_struct, ptr %call7.i.i, i32 0, i32 2
  %14 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @netfs_rreq_work, ptr %func, align 4
  %usage = getelementptr inbounds %struct.netfs_read_request, ptr %call7.i.i, i32 0, i32 15
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #8
  %15 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile i32 1, ptr %usage, align 4
  %flags = getelementptr inbounds %struct.netfs_read_request, ptr %call7.i.i, i32 0, i32 16
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 8
  %or.i = or i32 %17, 32
  store i32 %or.i, ptr %flags, align 8
  %init_rreq = getelementptr inbounds %struct.netfs_read_request_ops, ptr %ops, i32 0, i32 1
  %18 = ptrtoint ptr %init_rreq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %init_rreq, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %if.then.if.end_crit_edge, label %if.then12

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %19(ptr noundef nonnull %call7.i.i, ptr noundef %file) #8
  br label %if.end

if.end:                                           ; preds = %if.then12, %if.then.if.end_crit_edge
  %call.i.i.i35 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_rreq, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_rreq, i32 1, i32 3, i32 1) #8
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_rreq, ptr nonnull @netfs_n_rh_rreq, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_rreq) #8, !srcloc !287
  br label %if.end14

if.end14:                                         ; preds = %if.end, %entry.if.end14_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_netfs_read(ptr noundef %rreq, i64 noundef %start, i32 noundef %len, i32 noundef %what) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_read, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_netfs_read, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !292

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !284

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !306
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_read, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %rreq, i64 noundef %start, i32 noundef %len, i32 noundef %what) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !307
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !307
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !284

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !295
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_read, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_netfs_read.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_netfs_read.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 156, ptr noundef nonnull @.str.90) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !296
  %38 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netfs_rreq_expand(ptr noundef %rreq, ptr noundef %ractl) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %start = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 13
  %len = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 10
  %i_size = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 12
  %0 = ptrtoint ptr %i_size to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %i_size, align 8
  %cache_resources.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 3
  %2 = ptrtoint ptr %cache_resources.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cache_resources.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.netfs_cache_expand_readahead.exit_crit_edge, label %land.lhs.true.i

entry.netfs_cache_expand_readahead.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_cache_expand_readahead.exit

land.lhs.true.i:                                  ; preds = %entry
  %expand_readahead.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %expand_readahead.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %expand_readahead.i, align 4
  %tobool2.not.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.netfs_cache_expand_readahead.exit_crit_edge, label %if.then.i

land.lhs.true.i.netfs_cache_expand_readahead.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_cache_expand_readahead.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %5(ptr noundef %cache_resources.i, ptr noundef %start, ptr noundef %len, i64 noundef %1) #8
  br label %netfs_cache_expand_readahead.exit

netfs_cache_expand_readahead.exit:                ; preds = %if.then.i, %land.lhs.true.i.netfs_cache_expand_readahead.exit_crit_edge, %entry.netfs_cache_expand_readahead.exit_crit_edge
  %netfs_ops = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 17
  %6 = ptrtoint ptr %netfs_ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %netfs_ops, align 4
  %expand_readahead = getelementptr inbounds %struct.netfs_read_request_ops, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %expand_readahead to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %expand_readahead, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %netfs_cache_expand_readahead.exit.if.end_crit_edge, label %if.then

netfs_cache_expand_readahead.exit.if.end_crit_edge: ; preds = %netfs_cache_expand_readahead.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %netfs_cache_expand_readahead.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %9(ptr noundef %rreq) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %netfs_cache_expand_readahead.exit.if.end_crit_edge
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start, align 8
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %12 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %_index.i, align 4
  %conv.i = zext i32 %13 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  call void @__sanitizer_cov_trace_cmp8(i64 %11, i64 %mul.i)
  %cmp.not = icmp eq i64 %11, %mul.i
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false:                                    ; preds = %if.end
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 4
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %16 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %_nr_pages.i, align 4
  %mul.i36 = shl i32 %17, 12
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %mul.i36)
  %cmp6.not = icmp eq i32 %15, %mul.i36
  br i1 %cmp6.not, label %lor.lhs.false.if.end16_crit_edge, label %lor.lhs.false.if.then7_crit_edge

lor.lhs.false.if.then7_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then7

lor.lhs.false.if.end16_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then7:                                         ; preds = %lor.lhs.false.if.then7_crit_edge, %if.end.if.then7_crit_edge
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %len, align 4
  tail call void @readahead_expand(ptr noundef %ractl, i64 noundef %11, i32 noundef %19) #8
  %20 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %_index.i, align 4
  %conv.i38 = zext i32 %21 to i64
  %mul.i39 = shl nuw nsw i64 %conv.i38, 12
  %22 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %mul.i39, ptr %start, align 8
  %_nr_pages.i40 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %23 = ptrtoint ptr %_nr_pages.i40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %_nr_pages.i40, align 4
  %mul.i41 = shl i32 %24, 12
  %25 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %mul.i41, ptr %len, align 4
  %26 = load i32, ptr %_index.i, align 4
  %conv.i43 = zext i32 %26 to i64
  %mul.i44 = shl nuw nsw i64 %conv.i43, 12
  %27 = load i32, ptr %_nr_pages.i40, align 4
  %mul.i46 = shl i32 %27, 12
  tail call fastcc void @trace_netfs_read(ptr noundef %rreq, i64 noundef %mul.i44, i32 noundef %mul.i46, i32 noundef 0)
  br label %if.end16

if.end16:                                         ; preds = %if.then7, %lor.lhs.false.if.end16_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @netfs_rreq_submit_slice(ptr noundef %rreq, ptr nocapture noundef %_debug_index) unnamed_addr #0 align 64 {
entry:
  %iter.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 48) #11
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.then.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %entry
  %rreq_link.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %rreq_link.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %rreq_link.i, ptr %rreq_link.i, align 4
  %prev.i.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %rreq_link.i, ptr %prev.i.i, align 8
  %usage.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  %3 = ptrtoint ptr %usage.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 2, ptr %usage.i, align 8
  %4 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %rreq, ptr %call7.i.i.i, align 8
  %usage.i.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 15
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #8
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #8, !srcloc !308
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !285

if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %6 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %6)
  %.not.i.i.i.i.i = icmp sgt i32 %6, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !284

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.if.end_crit_edge
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_sreq, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_sreq, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_sreq, ptr nonnull @netfs_n_rh_sreq, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_sreq) #8, !srcloc !287
  %8 = ptrtoint ptr %_debug_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %_debug_index, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %_debug_index, align 4
  %conv = trunc i32 %9 to i16
  %debug_index = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %debug_index to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %debug_index, align 2
  %start = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 13
  %11 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %start, align 8
  %submitted = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 9
  %13 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %submitted, align 8
  %conv1 = zext i32 %14 to i64
  %add = add i64 %12, %conv1
  %start2 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %start2 to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %add, ptr %start2, align 8
  %len = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 10
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 4
  %sub = sub i32 %17, %14
  %len4 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub, ptr %len4, align 8
  %subrequests = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 4
  %prev.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 4, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i, align 4
  %call.i.i46 = tail call zeroext i1 @__list_add_valid(ptr noundef %rreq_link.i, ptr noundef %20, ptr noundef %subrequests) #8
  br i1 %call.i.i46, label %if.end.i.i, label %if.end.list_add_tail.exit_crit_edge

if.end.list_add_tail.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rreq_link.i, ptr %prev.i, align 4
  %22 = ptrtoint ptr %rreq_link.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %subrequests, ptr %rreq_link.i, align 4
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev.i.i, align 8
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %rreq_link.i, ptr %20, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end.list_add_tail.exit_crit_edge
  %i_size.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 12
  %25 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %call7.i.i.i, align 8
  %cache_resources.i.i = getelementptr inbounds %struct.netfs_read_request, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %cache_resources.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cache_resources.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end.i.i48, label %if.then.i.i

if.then.i.i:                                      ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %29 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %i_size.i, align 8
  %prepare_read.i.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %28, i32 0, i32 4
  %31 = ptrtoint ptr %prepare_read.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prepare_read.i.i, align 4
  %call.i.i47 = tail call signext i8 %32(ptr noundef nonnull %call7.i.i.i, i64 noundef %30) #8
  br label %netfs_cache_prepare_read.exit.i

if.end.i.i48:                                     ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %start2 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %start2, align 8
  %i_size3.i.i = getelementptr inbounds %struct.netfs_read_request, ptr %26, i32 0, i32 12
  %35 = ptrtoint ptr %i_size3.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %i_size3.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %36)
  %cmp.not.i.i = icmp slt i64 %34, %36
  %..i.i = zext i1 %cmp.not.i.i to i8
  br label %netfs_cache_prepare_read.exit.i

netfs_cache_prepare_read.exit.i:                  ; preds = %if.end.i.i48, %if.then.i.i
  %retval.0.i.i = phi i8 [ %call.i.i47, %if.then.i.i ], [ %..i.i, %if.end.i.i48 ]
  %37 = zext i8 %retval.0.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %retval.0.i.i, label %netfs_cache_prepare_read.exit.i.if.end22.i_crit_edge [
    i8 3, label %netfs_cache_prepare_read.exit.i.netfs_rreq_prepare_read.exit.thread_crit_edge
    i8 1, label %if.then5.i
  ]

netfs_cache_prepare_read.exit.i.netfs_rreq_prepare_read.exit.thread_crit_edge: ; preds = %netfs_cache_prepare_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_prepare_read.exit.thread

netfs_cache_prepare_read.exit.i.if.end22.i_crit_edge: ; preds = %netfs_cache_prepare_read.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then5.i:                                       ; preds = %netfs_cache_prepare_read.exit.i
  %38 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %len4, align 8
  %conv6.i = zext i32 %39 to i64
  %40 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %i_size.i, align 8
  %42 = ptrtoint ptr %start2 to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %start2, align 8
  %sub.i = sub i64 %41, %43
  call void @__sanitizer_cov_trace_cmp8(i64 %sub.i, i64 %conv6.i)
  %cmp8.i = icmp slt i64 %sub.i, %conv6.i
  br i1 %cmp8.i, label %if.then10.i, label %if.then5.i.if.end16.i_crit_edge

if.then5.i.if.end16.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then10.i:                                      ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv14.i = trunc i64 %sub.i to i32
  %44 = ptrtoint ptr %len4 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv14.i, ptr %len4, align 8
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.then10.i, %if.then5.i.if.end16.i_crit_edge
  %netfs_ops.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 17
  %45 = ptrtoint ptr %netfs_ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %netfs_ops.i, align 4
  %clamp_length.i = getelementptr inbounds %struct.netfs_read_request_ops, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %clamp_length.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %clamp_length.i, align 4
  %tobool.not.i49 = icmp eq ptr %48, null
  br i1 %tobool.not.i49, label %if.end16.i.if.end22.i_crit_edge, label %land.lhs.true.i

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

land.lhs.true.i:                                  ; preds = %if.end16.i
  %call19.i = tail call zeroext i1 %48(ptr noundef nonnull %call7.i.i.i) #8
  br i1 %call19.i, label %land.lhs.true.i.if.end22.i_crit_edge, label %land.lhs.true.i.netfs_rreq_prepare_read.exit.thread_crit_edge

land.lhs.true.i.netfs_rreq_prepare_read.exit.thread_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_prepare_read.exit.thread

land.lhs.true.i.if.end22.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %land.lhs.true.i.if.end22.i_crit_edge, %if.end16.i.if.end22.i_crit_edge, %netfs_cache_prepare_read.exit.i.if.end22.i_crit_edge
  %49 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp24.i = icmp eq i32 %50, 0
  br i1 %cmp24.i, label %do.end.i, label %netfs_rreq_prepare_read.exit, !prof !285

do.end.i:                                         ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 739, i32 noundef 9, ptr noundef null) #8
  br label %netfs_rreq_prepare_read.exit.thread

netfs_rreq_prepare_read.exit.thread:              ; preds = %do.end.i, %land.lhs.true.i.netfs_rreq_prepare_read.exit.thread_crit_edge, %netfs_cache_prepare_read.exit.i.netfs_rreq_prepare_read.exit.thread_crit_edge
  %source51.i58 = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 8
  %51 = ptrtoint ptr %source51.i58 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 3, ptr %source51.i58, align 8
  tail call fastcc void @trace_netfs_sreq(ptr noundef nonnull %call7.i.i.i, i32 noundef 2) #8
  br label %subreq_failed

netfs_rreq_prepare_read.exit:                     ; preds = %if.end22.i
  %source51.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %source51.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %retval.0.i.i, ptr %source51.i, align 8
  tail call fastcc void @trace_netfs_sreq(ptr noundef nonnull %call7.i.i.i, i32 noundef 2) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %retval.0.i.i)
  %cmp = icmp eq i8 %retval.0.i.i, 3
  br i1 %cmp, label %netfs_rreq_prepare_read.exit.subreq_failed_crit_edge, label %if.end9

netfs_rreq_prepare_read.exit.subreq_failed_crit_edge: ; preds = %netfs_rreq_prepare_read.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %subreq_failed

if.end9:                                          ; preds = %netfs_rreq_prepare_read.exit
  %conv6 = sext i8 %retval.0.i.i to i32
  %nr_rd_ops = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %nr_rd_ops, i32 1, i32 3, i32 1) #8
  %53 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_rd_ops, ptr %nr_rd_ops, i32 1, ptr elementtype(i32) %nr_rd_ops) #8, !srcloc !287
  %54 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len4, align 8
  %56 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %submitted, align 8
  %add12 = add i32 %57, %55
  store i32 %add12, ptr %submitted, align 8
  tail call fastcc void @trace_netfs_sreq(ptr noundef nonnull %call7.i.i.i, i32 noundef 4)
  %58 = zext i32 %conv6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %conv6, label %do.body [
    i32 0, label %sw.bb
    i32 1, label %sw.bb14
    i32 2, label %sw.bb15
  ]

sw.bb:                                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i50 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_zero, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_zero, i32 1, i32 3, i32 1) #8
  %59 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_zero, ptr nonnull @netfs_n_rh_zero, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_zero) #8, !srcloc !287
  %flags.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 9
  %60 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %61, 2
  store i32 %or.i.i, ptr %flags.i, align 4
  tail call void @netfs_subreq_terminated(ptr noundef nonnull %call7.i.i.i, i32 noundef 0, i1 noundef zeroext false) #8
  br label %cleanup

sw.bb14:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i51 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_download, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_download, i32 1, i32 3, i32 1) #8
  %62 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_download, ptr nonnull @netfs_n_rh_download, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_download) #8, !srcloc !287
  %netfs_ops.i52 = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 17
  %63 = ptrtoint ptr %netfs_ops.i52 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %netfs_ops.i52, align 4
  %issue_op.i = getelementptr inbounds %struct.netfs_read_request_ops, ptr %64, i32 0, i32 5
  %65 = ptrtoint ptr %issue_op.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %issue_op.i, align 4
  tail call void %66(ptr noundef nonnull %call7.i.i.i) #8
  br label %cleanup

sw.bb15:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %cache_resources.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #8
  %67 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  %call.i.i.i.i53 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_read, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_read, i32 1, i32 3, i32 1) #8
  %68 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_read, ptr nonnull @netfs_n_rh_read, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_read) #8, !srcloc !287
  %mapping.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 2
  %69 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mapping.i, align 8
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %70, i32 0, i32 1
  %71 = ptrtoint ptr %start2 to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %start2, align 8
  %transferred.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 4
  %73 = ptrtoint ptr %transferred.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %transferred.i, align 4
  %conv.i = zext i32 %74 to i64
  %add.i = add i64 %72, %conv.i
  %75 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len4, align 8
  %sub.i56 = sub i32 %76, %74
  call void @iov_iter_xarray(ptr noundef nonnull %iter.i, i32 noundef 0, ptr noundef %i_pages.i, i64 noundef %add.i, i32 noundef %sub.i56) #8
  %77 = ptrtoint ptr %cache_resources.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %cache_resources.i, align 4
  %read.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %78, i32 0, i32 1
  %79 = ptrtoint ptr %read.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %read.i, align 4
  %81 = ptrtoint ptr %start2 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %start2, align 8
  %call.i = call i32 %80(ptr noundef %cache_resources.i, i64 noundef %82, ptr noundef nonnull %iter.i, i32 noundef 0, ptr noundef nonnull @netfs_cache_read_terminated, ptr noundef nonnull %call7.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #8
  br label %cleanup

do.body:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/netfs/read_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 796, 0\0A.popsection", ""() #8, !srcloc !309
  unreachable

subreq_failed:                                    ; preds = %netfs_rreq_prepare_read.exit.subreq_failed_crit_edge, %netfs_rreq_prepare_read.exit.thread
  %error = getelementptr inbounds %struct.netfs_read_subrequest, ptr %call7.i.i.i, i32 0, i32 6
  %83 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %error, align 4
  %error19 = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 11
  %85 = ptrtoint ptr %error19 to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 %84, ptr %error19, align 8
  tail call fastcc void @netfs_put_subrequest(ptr noundef nonnull %call7.i.i.i, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %subreq_failed, %sw.bb15, %sw.bb14, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %subreq_failed ], [ true, %sw.bb15 ], [ true, %sw.bb14 ], [ true, %sw.bb ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @readahead_folio(ptr nocapture noundef %ractl) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %_batch_count.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 5
  %0 = ptrtoint ptr %_batch_count.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_batch_count.i, align 4
  %_nr_pages.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %2 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_nr_pages.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.i = icmp ult i32 %3, %1
  br i1 %cmp.i, label %do.body2.i, label %do.end7.i, !prof !285

do.body2.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1086, 0\0A.popsection", ""() #8, !srcloc !310
  unreachable

do.end7.i:                                        ; preds = %entry
  %sub.i = sub i32 %3, %1
  %4 = ptrtoint ptr %_nr_pages.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.i, ptr %_nr_pages.i, align 4
  %_index.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %5 = ptrtoint ptr %_index.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_index.i, align 4
  %add.i = add i32 %6, %1
  store i32 %add.i, ptr %_index.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %tobool12.not.i = icmp eq i32 %3, %1
  br i1 %tobool12.not.i, label %__readahead_folio.exit.thread, label %if.end15.i

__readahead_folio.exit.thread:                    ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %_batch_count.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %_batch_count.i, align 4
  br label %if.end

if.end15.i:                                       ; preds = %do.end7.i
  %mapping.i = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %8 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mapping.i, align 4
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %9, i32 0, i32 1
  %call.i = tail call ptr @xa_load(ptr noundef %i_pages.i, i32 noundef %add.i) #8
  %10 = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %10, align 4
  %and.i.i.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_locked.exit.i, label %if.then.i.i.i, !prof !284

if.then.i.i.i:                                    ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_locked.exit.i:                         ; preds = %if.end15.i
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %call.i, align 4
  %and1.i.i.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i)
  %tobool.i.not.i = icmp eq i32 %and1.i.i.i, 0
  br i1 %tobool.i.not.i, label %if.then27.i, label %do.end36.i, !prof !285

if.then27.i:                                      ; preds = %folio_test_locked.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.93) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/pagemap.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1096, 0\0A.popsection", ""() #8, !srcloc !312
  unreachable

do.end36.i:                                       ; preds = %folio_test_locked.exit.i
  %15 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %cmp.i.not.i.i.i.i = icmp eq i32 %16, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i, label %PageHead.exit.i.i.i, !prof !285

if.then.i.i.i.i:                                  ; preds = %do.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %call.i, ptr noundef nonnull @.str.101) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !313
  unreachable

PageHead.exit.i.i.i:                              ; preds = %do.end36.i
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %call.i, align 4
  %19 = and i32 %18, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i53.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i53.i, label %PageHead.exit.i.i.i.__readahead_folio.exit_crit_edge, label %if.end.i.i.i

PageHead.exit.i.i.i.__readahead_folio.exit_crit_edge: ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__readahead_folio.exit

if.end.i.i.i:                                     ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i.i = getelementptr %struct.page, ptr %call.i, i32 1, i32 1, i32 0, i32 2
  %20 = ptrtoint ptr %compound_nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %compound_nr.i.i.i, align 4
  br label %__readahead_folio.exit

__readahead_folio.exit:                           ; preds = %if.end.i.i.i, %PageHead.exit.i.i.i.__readahead_folio.exit_crit_edge
  %storemerge.i = phi i32 [ %21, %if.end.i.i.i ], [ 1, %PageHead.exit.i.i.i.__readahead_folio.exit_crit_edge ]
  %22 = ptrtoint ptr %_batch_count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %storemerge.i, ptr %_batch_count.i, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %__readahead_folio.exit.if.end_crit_edge, label %if.then

__readahead_folio.exit.if.end_crit_edge:          ; preds = %__readahead_folio.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %__readahead_folio.exit
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call.i, i32 0, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %23 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i.i.i = icmp eq i32 %24, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i3, label %do.end5.i.i.i, !prof !285

if.then.i.i.i3:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.103) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !314
  unreachable

do.end5.i.i.i:                                    ; preds = %if.then
  %call.i.i.i10.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !289
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@readahead_folio, %if.then.i.i.i.i4)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i4], !srcloc !292

if.then.i.i.i.i4:                                 ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i.i.i to i32
  tail call void @__page_ref_mod_and_test(ptr noundef nonnull %call.i, i32 noundef -1, i32 noundef %conv.i.i.i.i) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i4, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i, label %folio_put_testzero.exit.i.if.end_crit_edge

folio_put_testzero.exit.i.if.end_crit_edge:       ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i:                                        ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__put_page(ptr noundef nonnull %call.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %folio_put_testzero.exit.i.if.end_crit_edge, %__readahead_folio.exit.if.end_crit_edge, %__readahead_folio.exit.thread
  %retval.0.i8 = phi ptr [ null, %__readahead_folio.exit.thread ], [ null, %__readahead_folio.exit.if.end_crit_edge ], [ %call.i, %folio_put_testzero.exit.i.if.end_crit_edge ], [ %call.i, %if.then.i ]
  ret ptr %retval.0.i8
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netfs_rreq_assess(ptr noundef %rreq, i1 noundef zeroext %was_async) unnamed_addr #0 align 64 {
entry:
  %xas.i = alloca %struct.xa_state, align 4
  %iter.i.i.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_netfs_rreq(ptr noundef %rreq, i32 noundef 0)
  %netfs_ops.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 17
  %subrequests.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 16
  %nr_rd_ops.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 7
  %cache_resources.i.i.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 3
  %mapping.i.i.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 2
  br label %again

again:                                            ; preds = %for.end.i.again_crit_edge, %entry
  %0 = ptrtoint ptr %netfs_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %netfs_ops.i, align 4
  %is_still_valid.i = getelementptr inbounds %struct.netfs_read_request_ops, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %is_still_valid.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %is_still_valid.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %again.netfs_rreq_is_still_valid.exit_crit_edge, label %lor.lhs.false.i

again.netfs_rreq_is_still_valid.exit_crit_edge:   ; preds = %again
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_is_still_valid.exit

lor.lhs.false.i:                                  ; preds = %again
  %call.i = call zeroext i1 %3(ptr noundef %rreq) #8
  br i1 %call.i, label %lor.lhs.false.i.netfs_rreq_is_still_valid.exit_crit_edge, label %if.end.i

lor.lhs.false.i.netfs_rreq_is_still_valid.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_is_still_valid.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %4 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn21.i = load ptr, ptr %subrequests.i, align 4
  %cmp.not22.i = icmp eq ptr %.pn21.i, %subrequests.i
  br i1 %cmp.not22.i, label %if.end.i.netfs_rreq_is_still_valid.exit_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.netfs_rreq_is_still_valid.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_is_still_valid.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %.pn23.i = phi ptr [ %.pn.i, %for.inc.i.for.body.i_crit_edge ], [ %.pn21.i, %if.end.i.for.body.i_crit_edge ]
  %source.i = getelementptr i8, ptr %.pn23.i, i32 36
  %5 = ptrtoint ptr %source.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %source.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp4.i = icmp eq i8 %6, 2
  br i1 %cmp4.i, label %if.then6.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then6.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %error.i = getelementptr i8, ptr %.pn23.i, i32 32
  %7 = ptrtoint ptr %error.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 -116, ptr %error.i, align 4
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %or.i.i = or i32 %9, 1
  store i32 %or.i.i, ptr %flags.i, align 4
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then6.i, %for.body.i.for.inc.i_crit_edge
  %10 = ptrtoint ptr %.pn23.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn.i = load ptr, ptr %.pn23.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %subrequests.i
  br i1 %cmp.not.i, label %for.inc.i.netfs_rreq_is_still_valid.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.netfs_rreq_is_still_valid.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_is_still_valid.exit

netfs_rreq_is_still_valid.exit:                   ; preds = %for.inc.i.netfs_rreq_is_still_valid.exit_crit_edge, %if.end.i.netfs_rreq_is_still_valid.exit_crit_edge, %lor.lhs.false.i.netfs_rreq_is_still_valid.exit_crit_edge, %again.netfs_rreq_is_still_valid.exit_crit_edge
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %flags.i, align 4
  %13 = and i32 %12, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %land.lhs.true, label %netfs_rreq_is_still_valid.exit.if.end6_crit_edge

netfs_rreq_is_still_valid.exit.if.end6_crit_edge: ; preds = %netfs_rreq_is_still_valid.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

land.lhs.true:                                    ; preds = %netfs_rreq_is_still_valid.exit
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %flags.i, align 4
  %and1.i25 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i25)
  %tobool3.not = icmp eq i32 %and1.i25, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end6_crit_edge, label %if.then

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  %16 = call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i, align 4
  %and.i = and i32 %19, 15728640
  %20 = call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i74.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i74.i to ptr
  %preempt_count.i75.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %preempt_count.i75.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %preempt_count.i75.i, align 4
  %and2.i = and i32 %23, 983040
  %or.i = or i32 %and2.i, %and.i
  %24 = call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i76.i = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i76.i to ptr
  %preempt_count.i77.i = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i77.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i77.i, align 4
  %and4.i = and i32 %27, 65280
  %or5.i = or i32 %or.i, %and4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or5.i)
  %tobool.not.i28 = icmp eq i32 %or5.i, 0
  br i1 %tobool.not.i28, label %if.then.if.end.i31_crit_edge, label %do.end.i, !prof !284

if.then.if.end.i31_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i31

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 478, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i31

if.end.i31:                                       ; preds = %do.end.i, %if.then.if.end.i31_crit_edge
  call fastcc void @trace_netfs_rreq(ptr noundef %rreq, i32 noundef 3) #8
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %nr_rd_ops.i, i32 1, i32 3, i32 1) #8
  %28 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_rd_ops.i, ptr %nr_rd_ops.i, i32 1, ptr elementtype(i32) %nr_rd_ops.i) #8, !srcloc !287
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %and.i.i = and i32 %30, -2
  store i32 %and.i.i, ptr %flags.i, align 4
  %31 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn84.i = load ptr, ptr %subrequests.i, align 4
  %cmp.not86.i = icmp eq ptr %.pn84.i, %subrequests.i
  br i1 %cmp.not86.i, label %if.end.i31.for.end.i_crit_edge, label %if.end.i31.for.body.i34_crit_edge

if.end.i31.for.body.i34_crit_edge:                ; preds = %if.end.i31
  br label %for.body.i34

if.end.i31.for.end.i_crit_edge:                   ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i34:                                     ; preds = %for.inc.i38.for.body.i34_crit_edge, %if.end.i31.for.body.i34_crit_edge
  %.pn87.i = phi ptr [ %.pn.i36, %for.inc.i38.for.body.i34_crit_edge ], [ %.pn84.i, %if.end.i31.for.body.i34_crit_edge ]
  %subreq.088.i = getelementptr i8, ptr %.pn87.i, i32 -4
  %error.i33 = getelementptr i8, ptr %.pn87.i, i32 32
  %32 = ptrtoint ptr %error.i33 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %error.i33, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool29.not.i = icmp eq i16 %33, 0
  br i1 %tobool29.not.i, label %if.else.i, label %if.then30.i

if.then30.i:                                      ; preds = %for.body.i34
  %source.i35 = getelementptr i8, ptr %.pn87.i, i32 36
  %34 = ptrtoint ptr %source.i35 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %source.i35, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %35)
  %cmp31.not.i = icmp eq i8 %35, 2
  br i1 %cmp31.not.i, label %if.end34.i, label %if.then30.i.for.end.i_crit_edge

if.then30.i.for.end.i_crit_edge:                  ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end34.i:                                       ; preds = %if.then30.i
  %36 = ptrtoint ptr %source.i35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %source.i35, align 8
  %37 = ptrtoint ptr %error.i33 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 0, ptr %error.i33, align 4
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_download_instead, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_download_instead, i32 1, i32 3, i32 1) #8
  %38 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_download_instead, ptr nonnull @netfs_n_rh_download_instead, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_download_instead) #8, !srcloc !287
  call fastcc void @trace_netfs_sreq(ptr noundef %subreq.088.i, i32 noundef 0) #8
  %usage.i.i = getelementptr i8, ptr %.pn87.i, i32 28
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #8
  %39 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #8, !srcloc !308
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %39, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end34.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !285

if.end34.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end34.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %40 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %.not.i.i.i.i.i = icmp sgt i32 %40, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.netfs_get_read_subrequest.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !284

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.netfs_get_read_subrequest.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_get_read_subrequest.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end34.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end34.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %netfs_get_read_subrequest.exit.i

netfs_get_read_subrequest.exit.i:                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.netfs_get_read_subrequest.exit.i_crit_edge
  %call.i.i78.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %nr_rd_ops.i, i32 1, i32 3, i32 1) #8
  %41 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_rd_ops.i, ptr %nr_rd_ops.i, i32 1, ptr elementtype(i32) %nr_rd_ops.i) #8, !srcloc !287
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_download, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_download, i32 1, i32 3, i32 1) #8
  %42 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_download, ptr nonnull @netfs_n_rh_download, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_download) #8, !srcloc !287
  %43 = ptrtoint ptr %netfs_ops.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %netfs_ops.i, align 4
  %issue_op.i.i = getelementptr inbounds %struct.netfs_read_request_ops, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %issue_op.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %issue_op.i.i, align 4
  call void %46(ptr noundef %subreq.088.i) #8
  br label %for.inc.i38

if.else.i:                                        ; preds = %for.body.i34
  %flags38.i = getelementptr i8, ptr %.pn87.i, i32 40
  %47 = ptrtoint ptr %flags38.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %flags38.i, align 4
  %49 = and i32 %48, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool40.not.i = icmp eq i32 %49, 0
  br i1 %tobool40.not.i, label %if.else.i.for.inc.i38_crit_edge, label %if.then41.i

if.else.i.for.inc.i38_crit_edge:                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i38

if.then41.i:                                      ; preds = %if.else.i
  %and.i.i80.i = and i32 %48, -13
  %or.i.i.i = or i32 %and.i.i80.i, 8
  %50 = ptrtoint ptr %flags38.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or.i.i.i, ptr %flags38.i, align 4
  %call.i.i.i.i81.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_short_read, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_short_read, i32 1, i32 3, i32 1) #8
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_short_read, ptr nonnull @netfs_n_rh_short_read, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_short_read) #8, !srcloc !287
  call fastcc void @trace_netfs_sreq(ptr noundef %subreq.088.i, i32 noundef 3) #8
  %usage.i.i.i = getelementptr i8, ptr %.pn87.i, i32 28
  %call.i.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage.i.i.i, i32 1, i32 3, i32 1) #8
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i.i, ptr %usage.i.i.i, i32 1, ptr elementtype(i32) %usage.i.i.i) #8, !srcloc !308
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i, label %if.then41.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i, !prof !285

if.then41.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i:                              ; preds = %if.then41.i
  %add.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i, 1
  %53 = or i32 %add.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.netfs_get_read_subrequest.exit.i.i_crit_edge, label %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, !prof !284

if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i.i

if.else.i.i.i.i.i.i.netfs_get_read_subrequest.exit.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_get_read_subrequest.exit.i.i

if.end15.sink.split.i.i.i.i.i.i:                  ; preds = %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge, %if.then41.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i = phi i32 [ 2, %if.then41.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i.i, i32 noundef %.sink.i.i.i.i.i.i) #8
  br label %netfs_get_read_subrequest.exit.i.i

netfs_get_read_subrequest.exit.i.i:               ; preds = %if.end15.sink.split.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.netfs_get_read_subrequest.exit.i.i_crit_edge
  %call.i.i.i82.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %nr_rd_ops.i, i32 1, i32 3, i32 1) #8
  %54 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_rd_ops.i, ptr %nr_rd_ops.i, i32 1, ptr elementtype(i32) %nr_rd_ops.i) #8, !srcloc !287
  %source.i.i = getelementptr i8, ptr %.pn87.i, i32 36
  %55 = ptrtoint ptr %source.i.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %source.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %56)
  %cmp.i.i = icmp eq i8 %56, 2
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %netfs_get_read_subrequest.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i.i.i) #8
  %57 = call ptr @memset(ptr %iter.i.i.i, i32 255, i32 24)
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_read, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_read, i32 1, i32 3, i32 1) #8
  %58 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_read, ptr nonnull @netfs_n_rh_read, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_read) #8, !srcloc !287
  %59 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %mapping.i.i.i, align 8
  %i_pages.i.i.i = getelementptr inbounds %struct.address_space, ptr %60, i32 0, i32 1
  %start.i.i.i = getelementptr i8, ptr %.pn87.i, i32 12
  %61 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %start.i.i.i, align 8
  %transferred.i.i.i = getelementptr i8, ptr %.pn87.i, i32 24
  %63 = ptrtoint ptr %transferred.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %transferred.i.i.i, align 4
  %conv.i.i.i = zext i32 %64 to i64
  %add.i.i.i = add i64 %62, %conv.i.i.i
  %len.i.i.i = getelementptr i8, ptr %.pn87.i, i32 20
  %65 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len.i.i.i, align 8
  %sub.i.i.i = sub i32 %66, %64
  call void @iov_iter_xarray(ptr noundef nonnull %iter.i.i.i, i32 noundef 0, ptr noundef %i_pages.i.i.i, i64 noundef %add.i.i.i, i32 noundef %sub.i.i.i) #8
  %67 = ptrtoint ptr %cache_resources.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %cache_resources.i.i.i, align 4
  %read.i.i.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %68, i32 0, i32 1
  %69 = ptrtoint ptr %read.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %read.i.i.i, align 4
  %71 = ptrtoint ptr %start.i.i.i to i32
  call void @__asan_load8_noabort(i32 %71)
  %72 = load i64, ptr %start.i.i.i, align 8
  %call.i.i83.i = call i32 %70(ptr noundef %cache_resources.i.i.i, i64 noundef %72, ptr noundef nonnull %iter.i.i.i, i32 noundef 1, ptr noundef nonnull @netfs_cache_read_terminated, ptr noundef %subreq.088.i) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i.i.i) #8
  br label %for.inc.i38

if.else.i.i:                                      ; preds = %netfs_get_read_subrequest.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i11.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_download, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_download, i32 1, i32 3, i32 1) #8
  %73 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_download, ptr nonnull @netfs_n_rh_download, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_download) #8, !srcloc !287
  %74 = ptrtoint ptr %netfs_ops.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %netfs_ops.i, align 4
  %issue_op.i.i.i = getelementptr inbounds %struct.netfs_read_request_ops, ptr %75, i32 0, i32 5
  %76 = ptrtoint ptr %issue_op.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %issue_op.i.i.i, align 4
  call void %77(ptr noundef %subreq.088.i) #8
  br label %for.inc.i38

for.inc.i38:                                      ; preds = %if.else.i.i, %if.then.i.i, %if.else.i.for.inc.i38_crit_edge, %netfs_get_read_subrequest.exit.i
  %78 = ptrtoint ptr %.pn87.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pn.i36 = load ptr, ptr %.pn87.i, align 4
  %cmp.not.i37 = icmp eq ptr %.pn.i36, %subrequests.i
  br i1 %cmp.not.i37, label %for.inc.i38.for.end.i_crit_edge, label %for.inc.i38.for.body.i34_crit_edge

for.inc.i38.for.body.i34_crit_edge:               ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i34

for.inc.i38.for.end.i_crit_edge:                  ; preds = %for.inc.i38
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i38.for.end.i_crit_edge, %if.then30.i.for.end.i_crit_edge, %if.end.i31.for.end.i_crit_edge
  %call.i.i79.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @llvm.prefetch.p0(ptr %nr_rd_ops.i, i32 1, i32 3, i32 1) #8
  %79 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_rd_ops.i, ptr %nr_rd_ops.i, i32 1, ptr elementtype(i32) %nr_rd_ops.i) #8, !srcloc !289
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %79, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !290
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %for.end.i.again_crit_edge, label %netfs_rreq_perform_resubmissions.exit.thread

for.end.i.again_crit_edge:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %again

netfs_rreq_perform_resubmissions.exit.thread:     ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @wake_up_var(ptr noundef %nr_rd_ops.i) #8
  br label %return

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %netfs_rreq_is_still_valid.exit.if.end6_crit_edge
  %start.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 13
  %80 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %start.i, align 8
  %div.i = sdiv i64 %81, 4096
  %conv.i = trunc i64 %div.i to i32
  %len.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 10
  %82 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %len.i, align 4
  %conv2.i = zext i32 %83 to i64
  %add.i = add i64 %81, %conv2.i
  %div3.i = sdiv i64 %add.i, 4096
  %84 = trunc i64 %div3.i to i32
  %conv4.i = add i32 %84, -1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas.i) #8
  %85 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 1
  %86 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 2
  %87 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 6
  %88 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 7
  %89 = getelementptr inbounds %struct.xa_state, ptr %xas.i, i32 0, i32 8
  %90 = ptrtoint ptr %mapping.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mapping.i.i.i, align 8
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %xas.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %i_pages.i, ptr %xas.i, align 4
  %93 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %conv.i, ptr %85, align 4
  %94 = ptrtoint ptr %86 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %86, align 4
  %95 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr inttoptr (i32 3 to ptr), ptr %87, align 4
  %96 = ptrtoint ptr %88 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr null, ptr %88, align 4
  %97 = ptrtoint ptr %89 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr null, ptr %89, align 4
  %98 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %flags.i, align 4
  %100 = and i32 %99, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i40 = icmp eq i32 %100, 0
  br i1 %tobool.not.i40, label %if.end6.if.end.i47_crit_edge, label %if.then.i

if.end6.if.end.i47_crit_edge:                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i47

if.then.i:                                        ; preds = %if.end6
  %and.i.i41 = and i32 %99, -3
  %101 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %and.i.i41, ptr %flags.i, align 4
  %102 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %.pn210.i = load ptr, ptr %subrequests.i, align 4
  %cmp.not211.i = icmp eq ptr %.pn210.i, %subrequests.i
  br i1 %cmp.not211.i, label %if.then.i.if.end.i47_crit_edge, label %if.then.i.for.body.i45_crit_edge

if.then.i.for.body.i45_crit_edge:                 ; preds = %if.then.i
  br label %for.body.i45

if.then.i.if.end.i47_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i47

for.body.i45:                                     ; preds = %for.body.i45.for.body.i45_crit_edge, %if.then.i.for.body.i45_crit_edge
  %.pn212.i = phi ptr [ %.pn.i43, %for.body.i45.for.body.i45_crit_edge ], [ %.pn210.i, %if.then.i.for.body.i45_crit_edge ]
  %flags8.i = getelementptr i8, ptr %.pn212.i, i32 40
  %103 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %flags8.i, align 4
  %and.i149.i = and i32 %104, -2
  store i32 %and.i149.i, ptr %flags8.i, align 4
  %105 = ptrtoint ptr %.pn212.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %.pn.i43 = load ptr, ptr %.pn212.i, align 4
  %cmp.not.i44 = icmp eq ptr %.pn.i43, %subrequests.i
  br i1 %cmp.not.i44, label %for.body.i45.if.end.i47_crit_edge, label %for.body.i45.for.body.i45_crit_edge

for.body.i45.for.body.i45_crit_edge:              ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i45

for.body.i45.if.end.i47_crit_edge:                ; preds = %for.body.i45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i47

if.end.i47:                                       ; preds = %for.body.i45.if.end.i47_crit_edge, %if.then.i.if.end.i47_crit_edge, %if.end6.if.end.i47_crit_edge
  %106 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %subrequests.i, align 8
  %add.ptr18.i = getelementptr i8, ptr %107, i32 -4
  %error.i46 = getelementptr i8, ptr %107, i32 32
  %108 = ptrtoint ptr %error.i46 to i32
  call void @__asan_load2_noabort(i32 %108)
  %109 = load i16, ptr %error.i46, align 4
  call fastcc void @trace_netfs_rreq(ptr noundef %rreq, i32 noundef 4) #8
  %110 = call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i.i.i.i = and i32 %110, -16384
  %111 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %113, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !315
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i, label %if.end.i47.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.end.i47.rcu_read_lock.exit.i_crit_edge:        ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.end.i47
  %call1.i.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i48

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i

if.then.i.i48:                                    ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.96, i32 noundef 696, ptr noundef nonnull @.str.97) #8
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i48, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.end.i47.rcu_read_lock.exit.i_crit_edge
  %call22.i = call ptr @xas_find(ptr noundef nonnull %xas.i, i32 noundef %conv4.i) #8
  %tobool24.not213.i = icmp eq ptr %call22.i, null
  br i1 %tobool24.not213.i, label %rcu_read_lock.exit.i.for.end95.i_crit_edge, label %for.body25.lr.ph.i

rcu_read_lock.exit.i.for.end95.i_crit_edge:       ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end95.i

for.body25.lr.ph.i:                               ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %109)
  %extract.t143.i = icmp slt i16 %109, 0
  %no_unlock_folio.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 14
  br label %for.body25.i

for.body25.i:                                     ; preds = %if.end92.i.for.body25.i_crit_edge, %for.body25.lr.ph.i
  %subreq.1220.i = phi ptr [ %add.ptr18.i, %for.body25.lr.ph.i ], [ %subreq.4194.i, %if.end92.i.for.body25.i_crit_edge ]
  %folio.0217.i = phi ptr [ %call22.i, %for.body25.lr.ph.i ], [ %call94.i, %if.end92.i.for.body25.i_crit_edge ]
  %iopos.0216.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %iopos.2193.i, %if.end92.i.for.body25.i_crit_edge ]
  %account.0215.i = phi i32 [ 0, %for.body25.lr.ph.i ], [ %account.2192.i, %if.end92.i.for.body25.i_crit_edge ]
  %subreq_failed.0.off0214.i = phi i1 [ %extract.t143.i, %for.body25.lr.ph.i ], [ %subreq_failed.3.off0191.i, %if.end92.i.for.body25.i_crit_edge ]
  %114 = getelementptr inbounds %struct.page, ptr %folio.0217.i, i32 0, i32 1
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %114, align 4
  %and.i.i.i.i.i155.i = and i32 %116, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i155.i)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i155.i, 0
  br i1 %tobool.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i, label %if.then.i.i.i.i.i, !prof !284

if.then.i.i.i.i.i:                                ; preds = %for.body25.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef nonnull %folio.0217.i, ptr noundef nonnull @.str.94) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i.i:                 ; preds = %for.body25.i
  %117 = ptrtoint ptr %folio.0217.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %folio.0217.i, align 4
  %119 = and i32 %118, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.i.not.i.i.i = icmp eq i32 %119, 0
  br i1 %tobool.i.not.i.i.i, label %folio_test_swapbacked.exit.i.i.i.if.end.i.i_crit_edge, label %land.rhs.i.i.i

folio_test_swapbacked.exit.i.i.i.if.end.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.rhs.i.i.i:                                   ; preds = %folio_test_swapbacked.exit.i.i.i
  %120 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load volatile i32, ptr %114, align 4
  %and.i.i.i.i.i = and i32 %121, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapcache.exit.i.i, label %if.then.i.i.i.i, !prof !284

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef nonnull %folio.0217.i, ptr noundef nonnull @.str.94) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapcache.exit.i.i:                    ; preds = %land.rhs.i.i.i
  %122 = ptrtoint ptr %folio.0217.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load volatile i32, ptr %folio.0217.i, align 4
  %124 = and i32 %123, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool.i.not.i.i = icmp eq i32 %124, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapcache.exit.i.i.if.end.i.i_crit_edge, label %if.then.i156.i, !prof !284

folio_test_swapcache.exit.i.i.if.end.i.i_crit_edge: ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i156.i:                                   ; preds = %folio_test_swapcache.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i = call i32 @__page_file_index(ptr noundef nonnull %folio.0217.i) #8
  br label %folio_index.exit.i

if.end.i.i:                                       ; preds = %folio_test_swapcache.exit.i.i.if.end.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.if.end.i.i_crit_edge
  %index.i.i = getelementptr inbounds %struct.anon.75, ptr %folio.0217.i, i32 0, i32 3
  %125 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %index.i.i, align 4
  br label %folio_index.exit.i

folio_index.exit.i:                               ; preds = %if.end.i.i, %if.then.i156.i
  %retval.0.i.i = phi i32 [ %call2.i.i, %if.then.i156.i ], [ %126, %if.end.i.i ]
  %sub27.i = sub i32 %retval.0.i.i, %conv.i
  %mul.i = shl i32 %sub27.i, 12
  %127 = ptrtoint ptr %folio.0217.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %folio.0217.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %128)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %128, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i157.i, label %PageHead.exit.i.i.i.i, !prof !285

if.then.i.i.i.i157.i:                             ; preds = %folio_index.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef nonnull %folio.0217.i, ptr noundef nonnull @.str.101) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !313
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %folio_index.exit.i
  %129 = ptrtoint ptr %folio.0217.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %folio.0217.i, align 4
  %131 = and i32 %130, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool.not.i.i.i158.i = icmp eq i32 %131, 0
  br i1 %tobool.not.i.i.i158.i, label %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_size.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %132 = getelementptr %struct.page, ptr %folio.0217.i, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.11, ptr %132, i32 0, i32 2
  %133 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %134 to i32
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %add29.i = add i32 %shl.i.i, %mul.i
  br label %for.cond30.i

for.cond30.i:                                     ; preds = %if.end69.i.for.cond30.i_crit_edge, %folio_size.exit.i
  %subreq_failed.1.off0.i = phi i1 [ %subreq_failed.0.off0214.i, %folio_size.exit.i ], [ %extract.t142.i, %if.end69.i.for.cond30.i_crit_edge ]
  %account.1.i = phi i32 [ %account.0215.i, %folio_size.exit.i ], [ %add51.i, %if.end69.i.for.cond30.i_crit_edge ]
  %pg_failed.0.off0.i = phi i1 [ false, %folio_size.exit.i ], [ %or148.i, %if.end69.i.for.cond30.i_crit_edge ]
  %iopos.1.i = phi i32 [ %iopos.0216.i, %folio_size.exit.i ], [ %add46.i, %if.end69.i.for.cond30.i_crit_edge ]
  %subreq.2.i = phi ptr [ %subreq.1220.i, %folio_size.exit.i ], [ %subreq.3.i, %if.end69.i.for.cond30.i_crit_edge ]
  %tobool31.not.i = icmp eq ptr %subreq.2.i, null
  br i1 %tobool31.not.i, label %for.cond30.i.if.end77.i_crit_edge, label %if.end33.i

for.cond30.i.if.end77.i_crit_edge:                ; preds = %for.cond30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

if.end33.i:                                       ; preds = %for.cond30.i
  %flags34.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq.2.i, i32 0, i32 9
  %135 = ptrtoint ptr %flags34.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load volatile i32, ptr %flags34.i, align 4
  %and1.i150.i = and i32 %136, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i150.i)
  %tobool36.not.i = icmp eq i32 %and1.i150.i, 0
  br i1 %tobool36.not.i, label %if.end33.i.if.end38.i_crit_edge, label %if.then37.i

if.end33.i.if.end38.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i

if.then37.i:                                      ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @folio_start_fscache(ptr noundef nonnull %folio.0217.i) #8
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then37.i, %if.end33.i.if.end38.i_crit_edge
  %or148.i = or i1 %subreq_failed.1.off0.i, %pg_failed.0.off0.i
  %len45.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq.2.i, i32 0, i32 3
  %137 = ptrtoint ptr %len45.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %len45.i, align 8
  %add46.i = add i32 %138, %iopos.1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add29.i, i32 %add46.i)
  %cmp47.i = icmp ult i32 %add29.i, %add46.i
  br i1 %cmp47.i, label %if.end38.i.for.end74.i_crit_edge, label %if.end50.i

if.end38.i.for.end74.i_crit_edge:                 ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end74.i

if.end50.i:                                       ; preds = %if.end38.i
  %transferred.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq.2.i, i32 0, i32 4
  %139 = ptrtoint ptr %transferred.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %transferred.i, align 4
  %add51.i = add i32 %140, %account.1.i
  %rreq_link54.i = getelementptr inbounds %struct.netfs_read_subrequest, ptr %subreq.2.i, i32 0, i32 1
  %141 = ptrtoint ptr %rreq_link54.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %rreq_link54.i, align 4
  %cmp.i.not.i = icmp eq ptr %142, %subrequests.i
  br i1 %cmp.i.not.i, label %if.end50.i.if.end69.i_crit_edge, label %if.then58.i

if.end50.i.if.end69.i_crit_edge:                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69.i

if.then58.i:                                      ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr63.i = getelementptr i8, ptr %142, i32 -4
  %error64.i = getelementptr i8, ptr %142, i32 32
  %143 = ptrtoint ptr %error64.i to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %error64.i, align 4
  %.lobit.i = lshr i16 %144, 15
  %145 = trunc i16 %.lobit.i to i8
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.then58.i, %if.end50.i.if.end69.i_crit_edge
  %subreq_failed.2.i = phi i8 [ %145, %if.then58.i ], [ 0, %if.end50.i.if.end69.i_crit_edge ]
  %subreq.3.i = phi ptr [ %add.ptr63.i, %if.then58.i ], [ null, %if.end50.i.if.end69.i_crit_edge ]
  %cmp70.i = icmp eq i32 %add29.i, %add46.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %subreq_failed.2.i)
  %extract.t142.i = icmp ne i8 %subreq_failed.2.i, 0
  br i1 %cmp70.i, label %if.end69.i.for.end74.i_crit_edge, label %if.end69.i.for.cond30.i_crit_edge

if.end69.i.for.cond30.i_crit_edge:                ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond30.i

if.end69.i.for.end74.i_crit_edge:                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end74.i

for.end74.i:                                      ; preds = %if.end69.i.for.end74.i_crit_edge, %if.end38.i.for.end74.i_crit_edge
  %subreq_failed.3.off0.i = phi i1 [ %subreq_failed.1.off0.i, %if.end38.i.for.end74.i_crit_edge ], [ %extract.t142.i, %if.end69.i.for.end74.i_crit_edge ]
  %account.2.i = phi i32 [ %account.1.i, %if.end38.i.for.end74.i_crit_edge ], [ %add51.i, %if.end69.i.for.end74.i_crit_edge ]
  %iopos.2.i = phi i32 [ %iopos.1.i, %if.end38.i.for.end74.i_crit_edge ], [ %add29.i, %if.end69.i.for.end74.i_crit_edge ]
  %subreq.4.i = phi ptr [ %subreq.2.i, %if.end38.i.for.end74.i_crit_edge ], [ %subreq.3.i, %if.end69.i.for.end74.i_crit_edge ]
  br i1 %or148.i, label %for.end74.i.if.end77.i_crit_edge, label %if.then76.i

for.end74.i.if.end77.i_crit_edge:                 ; preds = %for.end74.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end77.i

if.then76.i:                                      ; preds = %for.end74.i
  call void @flush_dcache_folio(ptr noundef nonnull %folio.0217.i) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !316
  %146 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %114, align 4
  %and.i.i.i.i = and i32 %147, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_mark_uptodate.exit.i, label %if.then.i.i.i, !prof !284

if.then.i.i.i:                                    ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %folio.0217.i, ptr noundef nonnull @.str.94) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_mark_uptodate.exit.i:                       ; preds = %if.then76.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @_set_bit(i32 noundef 2, ptr noundef %folio.0217.i) #8
  br label %if.end77.i

if.end77.i:                                       ; preds = %folio_mark_uptodate.exit.i, %for.end74.i.if.end77.i_crit_edge, %for.cond30.i.if.end77.i_crit_edge
  %subreq.4194.i = phi ptr [ %subreq.4.i, %folio_mark_uptodate.exit.i ], [ %subreq.4.i, %for.end74.i.if.end77.i_crit_edge ], [ null, %for.cond30.i.if.end77.i_crit_edge ]
  %iopos.2193.i = phi i32 [ %iopos.2.i, %folio_mark_uptodate.exit.i ], [ %iopos.2.i, %for.end74.i.if.end77.i_crit_edge ], [ %iopos.1.i, %for.cond30.i.if.end77.i_crit_edge ]
  %account.2192.i = phi i32 [ %account.2.i, %folio_mark_uptodate.exit.i ], [ %account.2.i, %for.end74.i.if.end77.i_crit_edge ], [ %account.1.i, %for.cond30.i.if.end77.i_crit_edge ]
  %subreq_failed.3.off0191.i = phi i1 [ %subreq_failed.3.off0.i, %folio_mark_uptodate.exit.i ], [ %subreq_failed.3.off0.i, %for.end74.i.if.end77.i_crit_edge ], [ %subreq_failed.1.off0.i, %for.cond30.i.if.end77.i_crit_edge ]
  %148 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %flags.i, align 4
  %150 = and i32 %149, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %150)
  %tobool80.not.i = icmp eq i32 %150, 0
  br i1 %tobool80.not.i, label %if.then81.i, label %if.end77.i.if.end92.i_crit_edge

if.end77.i.if.end92.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

if.then81.i:                                      ; preds = %if.end77.i
  %151 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load volatile i32, ptr %114, align 4
  %and.i.i.i.i.i159.i = and i32 %152, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i159.i)
  %tobool.not.i.i.i.i160.i = icmp eq i32 %and.i.i.i.i.i159.i, 0
  br i1 %tobool.not.i.i.i.i160.i, label %folio_test_swapbacked.exit.i.i163.i, label %if.then.i.i.i.i161.i, !prof !284

if.then.i.i.i.i161.i:                             ; preds = %if.then81.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %folio.0217.i, ptr noundef nonnull @.str.94) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i163.i:              ; preds = %if.then81.i
  %153 = ptrtoint ptr %folio.0217.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %folio.0217.i, align 4
  %155 = and i32 %154, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool.i.not.i.i162.i = icmp eq i32 %155, 0
  br i1 %tobool.i.not.i.i162.i, label %folio_test_swapbacked.exit.i.i163.i.if.end.i173.i_crit_edge, label %land.rhs.i.i166.i

folio_test_swapbacked.exit.i.i163.i.if.end.i173.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i163.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i173.i

land.rhs.i.i166.i:                                ; preds = %folio_test_swapbacked.exit.i.i163.i
  %156 = ptrtoint ptr %114 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load volatile i32, ptr %114, align 4
  %and.i.i.i.i164.i = and i32 %157, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i164.i)
  %tobool.not.i.i.i165.i = icmp eq i32 %and.i.i.i.i164.i, 0
  br i1 %tobool.not.i.i.i165.i, label %folio_test_swapcache.exit.i169.i, label %if.then.i.i.i167.i, !prof !284

if.then.i.i.i167.i:                               ; preds = %land.rhs.i.i166.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %folio.0217.i, ptr noundef nonnull @.str.94) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapcache.exit.i169.i:                 ; preds = %land.rhs.i.i166.i
  %158 = ptrtoint ptr %folio.0217.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load volatile i32, ptr %folio.0217.i, align 4
  %160 = and i32 %159, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool.i.not.i168.i = icmp eq i32 %160, 0
  br i1 %tobool.i.not.i168.i, label %folio_test_swapcache.exit.i169.i.if.end.i173.i_crit_edge, label %if.then.i171.i, !prof !284

folio_test_swapcache.exit.i169.i.if.end.i173.i_crit_edge: ; preds = %folio_test_swapcache.exit.i169.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i173.i

if.then.i171.i:                                   ; preds = %folio_test_swapcache.exit.i169.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i170.i = call i32 @__page_file_index(ptr noundef %folio.0217.i) #8
  br label %folio_index.exit175.i

if.end.i173.i:                                    ; preds = %folio_test_swapcache.exit.i169.i.if.end.i173.i_crit_edge, %folio_test_swapbacked.exit.i.i163.i.if.end.i173.i_crit_edge
  %index.i172.i = getelementptr inbounds %struct.anon.75, ptr %folio.0217.i, i32 0, i32 3
  %161 = ptrtoint ptr %index.i172.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %index.i172.i, align 4
  br label %folio_index.exit175.i

folio_index.exit175.i:                            ; preds = %if.end.i173.i, %if.then.i171.i
  %retval.0.i174.i = phi i32 [ %call2.i170.i, %if.then.i171.i ], [ %162, %if.end.i173.i ]
  %163 = ptrtoint ptr %no_unlock_folio.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %no_unlock_folio.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i174.i, i32 %164)
  %cmp83.i = icmp eq i32 %retval.0.i174.i, %164
  br i1 %cmp83.i, label %land.lhs.true.i, label %folio_index.exit175.i.if.else90.i_crit_edge

folio_index.exit175.i.if.else90.i_crit_edge:      ; preds = %folio_index.exit175.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else90.i

land.lhs.true.i:                                  ; preds = %folio_index.exit175.i
  %165 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load volatile i32, ptr %flags.i, align 4
  %167 = and i32 %166, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %167)
  %tobool87.not.i = icmp eq i32 %167, 0
  br i1 %tobool87.not.i, label %land.lhs.true.i.if.else90.i_crit_edge, label %land.lhs.true.i.if.end92.i_crit_edge

land.lhs.true.i.if.end92.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end92.i

land.lhs.true.i.if.else90.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else90.i

if.else90.i:                                      ; preds = %land.lhs.true.i.if.else90.i_crit_edge, %folio_index.exit175.i.if.else90.i_crit_edge
  call void @folio_unlock(ptr noundef nonnull %folio.0217.i) #8
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else90.i, %land.lhs.true.i.if.end92.i_crit_edge, %if.end77.i.if.end92.i_crit_edge
  %call94.i = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas.i, i32 noundef %conv4.i) #8
  %tobool24.not.i = icmp eq ptr %call94.i, null
  br i1 %tobool24.not.i, label %if.end92.i.for.end95.i_crit_edge, label %if.end92.i.for.body25.i_crit_edge

if.end92.i.for.body25.i_crit_edge:                ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body25.i

if.end92.i.for.end95.i_crit_edge:                 ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end95.i

for.end95.i:                                      ; preds = %if.end92.i.for.end95.i_crit_edge, %rcu_read_lock.exit.i.for.end95.i_crit_edge
  %account.0.lcssa.i = phi i32 [ 0, %rcu_read_lock.exit.i.for.end95.i_crit_edge ], [ %account.2192.i, %if.end92.i.for.end95.i_crit_edge ]
  %call.i176.i = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i176.i, label %for.end95.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true.i179.i

for.end95.i.rcu_read_unlock.exit.i_crit_edge:     ; preds = %for.end95.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true.i179.i:                             ; preds = %for.end95.i
  %call1.i177.i = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i177.i)
  %tobool.not.i178.i = icmp eq i32 %call1.i177.i, 0
  br i1 %tobool.not.i178.i, label %land.lhs.true.i179.i.rcu_read_unlock.exit.i_crit_edge, label %land.lhs.true2.i181.i

land.lhs.true.i179.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true.i179.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

land.lhs.true2.i181.i:                            ; preds = %land.lhs.true.i179.i
  %.b4.i180.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i180.i, label %land.lhs.true2.i181.i.rcu_read_unlock.exit.i_crit_edge, label %if.then.i182.i

land.lhs.true2.i181.i.rcu_read_unlock.exit.i_crit_edge: ; preds = %land.lhs.true2.i181.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit.i

if.then.i182.i:                                   ; preds = %land.lhs.true2.i181.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.96, i32 noundef 724, ptr noundef nonnull @.str.100) #8
  br label %rcu_read_unlock.exit.i

rcu_read_unlock.exit.i:                           ; preds = %if.then.i182.i, %land.lhs.true2.i181.i.rcu_read_unlock.exit.i_crit_edge, %land.lhs.true.i179.i.rcu_read_unlock.exit.i_crit_edge, %for.end95.i.rcu_read_unlock.exit.i_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !317
  %168 = call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i.i.i183.i = and i32 %168, -16384
  %169 = inttoptr i32 %and.i.i.i.i.i183.i to ptr
  %preempt_count.i.i.i.i184.i = getelementptr inbounds %struct.thread_info, ptr %169, i32 0, i32 1
  %170 = ptrtoint ptr %preempt_count.i.i.i.i184.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load volatile i32, ptr %preempt_count.i.i.i.i184.i, align 4
  %sub.i.i.i.i = add i32 %171, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i184.i, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %conv.i185.i = zext i32 %account.0.lcssa.i to i64
  %172 = call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i49 = and i32 %172, -16384
  %173 = inttoptr i32 %and.i.i.i49 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %173, i32 0, i32 2
  %174 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %task.i.i, align 8
  %read_bytes.i.i = getelementptr inbounds %struct.task_struct, ptr %175, i32 0, i32 155, i32 4
  %176 = ptrtoint ptr %read_bytes.i.i to i32
  call void @__asan_load8_noabort(i32 %176)
  %177 = load i64, ptr %read_bytes.i.i, align 8
  %add.i.i = add i64 %177, %conv.i185.i
  store i64 %add.i.i, ptr %read_bytes.i.i, align 8
  %178 = ptrtoint ptr %netfs_ops.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %netfs_ops.i, align 4
  %done.i = getelementptr inbounds %struct.netfs_read_request_ops, ptr %179, i32 0, i32 8
  %180 = ptrtoint ptr %done.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %done.i, align 4
  %tobool96.not.i = icmp eq ptr %181, null
  br i1 %tobool96.not.i, label %rcu_read_unlock.exit.i.netfs_rreq_unlock.exit_crit_edge, label %if.then97.i

rcu_read_unlock.exit.i.netfs_rreq_unlock.exit_crit_edge: ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_unlock.exit

if.then97.i:                                      ; preds = %rcu_read_unlock.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %181(ptr noundef %rreq) #8
  br label %netfs_rreq_unlock.exit

netfs_rreq_unlock.exit:                           ; preds = %if.then97.i, %rcu_read_unlock.exit.i.netfs_rreq_unlock.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas.i) #8
  %call.i.i51 = call zeroext i1 @__kasan_check_write(ptr noundef %flags.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !318
  call void @llvm.prefetch.p0(ptr %flags.i, i32 1, i32 3, i32 1) #8
  %182 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flags.i, ptr %flags.i, i32 32, ptr elementtype(i32) %flags.i) #8, !srcloc !319
  call void @wake_up_bit(ptr noundef %flags.i, i32 noundef 5) #8
  %183 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load volatile i32, ptr %flags.i, align 4
  %185 = and i32 %184, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %185)
  %tobool11.not = icmp eq i32 %185, 0
  br i1 %tobool11.not, label %if.end13, label %if.then12

if.then12:                                        ; preds = %netfs_rreq_unlock.exit
  %func.i = getelementptr inbounds %struct.work_struct, ptr %rreq, i32 0, i32 2
  %186 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @netfs_rreq_write_to_cache_work, ptr %func.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %187 = load ptr, ptr @system_unbound_wq, align 4
  %call.i.i52 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %187, ptr noundef %rreq) #8
  br i1 %call.i.i52, label %if.then12.return_crit_edge, label %do.body.i

if.then12.return_crit_edge:                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.body.i:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/netfs/read_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 362, 0\0A.popsection", ""() #8, !srcloc !320
  unreachable

if.end13:                                         ; preds = %netfs_rreq_unlock.exit
  call fastcc void @trace_netfs_rreq(ptr noundef %rreq, i32 noundef 1) #8
  %188 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load volatile ptr, ptr %subrequests.i, align 4
  %cmp.i.not5.i.i = icmp eq ptr %189, %subrequests.i
  br i1 %cmp.i.not5.i.i, label %if.end13.netfs_rreq_completed.exit_crit_edge, label %if.end13.while.body.i.i_crit_edge

if.end13.while.body.i.i_crit_edge:                ; preds = %if.end13
  br label %while.body.i.i

if.end13.netfs_rreq_completed.exit_crit_edge:     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_completed.exit

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %if.end13.while.body.i.i_crit_edge
  %190 = phi ptr [ %200, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %189, %if.end13.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %190, i32 -4
  %call.i.i.i.i54 = call zeroext i1 @__list_del_entry_valid(ptr noundef %190) #8
  br i1 %call.i.i.i.i54, label %if.end.i.i.i.i55, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i55:                                 ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %191 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %prev.i.i.i.i, align 4
  %193 = ptrtoint ptr %190 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %190, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %194, i32 0, i32 1
  %195 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %195)
  store ptr %192, ptr %prev1.i.i.i.i.i, align 4
  %196 = ptrtoint ptr %192 to i32
  call void @__asan_store4_noabort(i32 %196)
  store volatile ptr %194, ptr %192, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i55, %while.body.i.i.list_del.exit.i.i_crit_edge
  %197 = ptrtoint ptr %190 to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr inttoptr (i32 256 to ptr), ptr %190, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %198 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call fastcc void @netfs_put_subrequest(ptr noundef %add.ptr.i.i, i1 noundef zeroext %was_async) #8
  %199 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load volatile ptr, ptr %subrequests.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %200, %subrequests.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.netfs_rreq_completed.exit_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

list_del.exit.i.i.netfs_rreq_completed.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_completed.exit

netfs_rreq_completed.exit:                        ; preds = %list_del.exit.i.i.netfs_rreq_completed.exit_crit_edge, %if.end13.netfs_rreq_completed.exit_crit_edge
  call fastcc void @netfs_put_read_request(ptr noundef %rreq, i1 noundef zeroext %was_async) #8
  br label %return

return:                                           ; preds = %netfs_rreq_completed.exit, %if.then12.return_crit_edge, %netfs_rreq_perform_resubmissions.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netfs_put_read_request(ptr noundef %rreq, i1 noundef zeroext %was_async) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %usage = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 15
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !299
  tail call void @llvm.prefetch.p0(ptr %usage, i32 1, i32 3, i32 1) #8
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage, ptr %usage, i32 1, ptr elementtype(i32) %usage) #8, !srcloc !300
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end9_crit_edge, label %if.then10.i.i.i, !prof !284

if.end5.i.i.i.if.end9_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %usage, i32 noundef 3) #8
  br label %if.end9

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !301
  br i1 %was_async, label %if.then1, label %while.cond.i.preheader

while.cond.i.preheader:                           ; preds = %if.then
  %subrequests.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 4
  %1 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %subrequests.i, align 4
  %cmp.i.i.not15 = icmp eq ptr %2, %subrequests.i
  br i1 %cmp.i.i.not15, label %while.cond.i.preheader.netfs_rreq_clear_subreqs.exit_crit_edge, label %while.cond.i.preheader.while.body.i_crit_edge

while.cond.i.preheader.while.body.i_crit_edge:    ; preds = %while.cond.i.preheader
  br label %while.body.i

while.cond.i.preheader.netfs_rreq_clear_subreqs.exit_crit_edge: ; preds = %while.cond.i.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_clear_subreqs.exit

if.then1:                                         ; preds = %if.then
  %func = getelementptr inbounds %struct.work_struct, ptr %rreq, i32 0, i32 2
  %3 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @netfs_free_read_request, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_unbound_wq to i32))
  %4 = load ptr, ptr @system_unbound_wq, align 4
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %rreq) #8
  br i1 %call.i, label %if.then1.if.end9_crit_edge, label %do.body

if.then1.if.end9_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.body:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22fs/netfs/read_helper.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 104, 0\0A.popsection", ""() #8, !srcloc !321
  unreachable

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %while.cond.i.preheader.while.body.i_crit_edge
  %5 = phi ptr [ %15, %list_del.exit.i.while.body.i_crit_edge ], [ %2, %while.cond.i.preheader.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %5, i32 -4
  %call.i.i.i14 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #8
  br i1 %call.i.i.i14, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call fastcc void @netfs_put_subrequest(ptr noundef %add.ptr.i, i1 noundef zeroext false) #8
  %14 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %subrequests.i, align 4
  %cmp.i.i.not = icmp eq ptr %15, %subrequests.i
  br i1 %cmp.i.i.not, label %list_del.exit.i.netfs_rreq_clear_subreqs.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

list_del.exit.i.netfs_rreq_clear_subreqs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_clear_subreqs.exit

netfs_rreq_clear_subreqs.exit:                    ; preds = %list_del.exit.i.netfs_rreq_clear_subreqs.exit_crit_edge, %while.cond.i.preheader.netfs_rreq_clear_subreqs.exit_crit_edge
  %netfs_priv.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 5
  %16 = ptrtoint ptr %netfs_priv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %netfs_priv.i, align 8
  %tobool.not.i = icmp eq ptr %17, null
  br i1 %tobool.not.i, label %netfs_rreq_clear_subreqs.exit.if.end.i_crit_edge, label %if.then.i

netfs_rreq_clear_subreqs.exit.if.end.i_crit_edge: ; preds = %netfs_rreq_clear_subreqs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %netfs_rreq_clear_subreqs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %netfs_ops.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 17
  %18 = ptrtoint ptr %netfs_ops.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %netfs_ops.i, align 4
  %cleanup.i = getelementptr inbounds %struct.netfs_read_request_ops, ptr %19, i32 0, i32 9
  %20 = ptrtoint ptr %cleanup.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cleanup.i, align 4
  %mapping.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 2
  %22 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %mapping.i, align 8
  tail call void %21(ptr noundef %23, ptr noundef nonnull %17) #8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %netfs_rreq_clear_subreqs.exit.if.end.i_crit_edge
  tail call fastcc void @trace_netfs_rreq(ptr noundef %rreq, i32 noundef 2) #8
  %cache_resources.i = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 3
  %24 = ptrtoint ptr %cache_resources.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cache_resources.i, align 4
  %tobool2.not.i = icmp eq ptr %25, null
  br i1 %tobool2.not.i, label %if.end.i.netfs_free_read_request.exit_crit_edge, label %if.then3.i

if.end.i.netfs_free_read_request.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_free_read_request.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  tail call void %27(ptr noundef %cache_resources.i) #8
  br label %netfs_free_read_request.exit

netfs_free_read_request.exit:                     ; preds = %if.then3.i, %if.end.i.netfs_free_read_request.exit_crit_edge
  tail call void @kfree(ptr noundef %rreq) #8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_rreq, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_rreq, i32 1, i32 3, i32 1) #8
  %28 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_rreq, ptr nonnull @netfs_n_rh_rreq, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_rreq) #8, !srcloc !302
  br label %if.end9

if.end9:                                          ; preds = %netfs_free_read_request.exit, %if.then1.if.end9_crit_edge, %if.then10.i.i.i, %if.end5.i.i.i.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netfs_readpage(ptr noundef %file, ptr noundef %folio, ptr noundef %ops, ptr noundef %netfs_priv) #0 align 64 {
entry:
  %debug_index = alloca i32, align 4
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %debug_index) #8
  %0 = ptrtoint ptr %debug_index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %debug_index, align 4
  %call = tail call fastcc ptr @netfs_alloc_read_request(ptr noundef %ops, ptr noundef %netfs_priv, ptr noundef %file)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %netfs_priv, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then2:                                         ; preds = %if.then
  %cleanup = getelementptr inbounds %struct.netfs_read_request_ops, ptr %ops, i32 0, i32 9
  %1 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cleanup, align 4
  %3 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  %and.i.i.i.i.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !284

if.then.i.i.i.i:                                  ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %if.then2
  %6 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %folio, align 4
  %8 = and i32 %7, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.i.not.i.i = icmp eq i32 %8, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %3, align 4
  %and.i.i.i.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !284

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %11 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %folio, align 4
  %13 = and i32 %12, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not.i = icmp eq i32 %13, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i, !prof !284

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call ptr @swapcache_mapping(ptr noundef %folio) #8
  br label %folio_file_mapping.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %mapping.i = getelementptr inbounds %struct.anon.75, ptr %folio, i32 0, i32 2
  %14 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mapping.i, align 4
  br label %folio_file_mapping.exit

folio_file_mapping.exit:                          ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi ptr [ %call2.i, %if.then.i ], [ %15, %if.end.i ]
  tail call void %2(ptr noundef %retval.0.i, ptr noundef nonnull %netfs_priv) #8
  br label %if.end

if.end:                                           ; preds = %folio_file_mapping.exit, %if.then.if.end_crit_edge
  tail call void @folio_unlock(ptr noundef %folio) #8
  br label %cleanup64

if.end4:                                          ; preds = %entry
  %16 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i.i108 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i108)
  %tobool.not.i.i.i.i109 = icmp eq i32 %and.i.i.i.i.i108, 0
  br i1 %tobool.not.i.i.i.i109, label %folio_test_swapbacked.exit.i.i112, label %if.then.i.i.i.i110, !prof !284

if.then.i.i.i.i110:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i112:                ; preds = %if.end4
  %19 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %folio, align 4
  %21 = and i32 %20, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.i.not.i.i111 = icmp eq i32 %21, 0
  br i1 %tobool.i.not.i.i111, label %folio_test_swapbacked.exit.i.i112.if.end.i122_crit_edge, label %land.rhs.i.i115

folio_test_swapbacked.exit.i.i112.if.end.i122_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i122

land.rhs.i.i115:                                  ; preds = %folio_test_swapbacked.exit.i.i112
  %22 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i113 = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i113)
  %tobool.not.i.i.i114 = icmp eq i32 %and.i.i.i.i113, 0
  br i1 %tobool.not.i.i.i114, label %folio_test_swapcache.exit.i118, label %if.then.i.i.i116, !prof !284

if.then.i.i.i116:                                 ; preds = %land.rhs.i.i115
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapcache.exit.i118:                   ; preds = %land.rhs.i.i115
  %24 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %folio, align 4
  %26 = and i32 %25, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.i.not.i117 = icmp eq i32 %26, 0
  br i1 %tobool.i.not.i117, label %folio_test_swapcache.exit.i118.if.end.i122_crit_edge, label %if.then.i120, !prof !284

folio_test_swapcache.exit.i118.if.end.i122_crit_edge: ; preds = %folio_test_swapcache.exit.i118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i122

if.then.i120:                                     ; preds = %folio_test_swapcache.exit.i118
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i119 = tail call ptr @swapcache_mapping(ptr noundef %folio) #8
  br label %folio_file_mapping.exit124

if.end.i122:                                      ; preds = %folio_test_swapcache.exit.i118.if.end.i122_crit_edge, %folio_test_swapbacked.exit.i.i112.if.end.i122_crit_edge
  %mapping.i121 = getelementptr inbounds %struct.anon.75, ptr %folio, i32 0, i32 2
  %27 = ptrtoint ptr %mapping.i121 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mapping.i121, align 4
  br label %folio_file_mapping.exit124

folio_file_mapping.exit124:                       ; preds = %if.end.i122, %if.then.i120
  %retval.0.i123 = phi ptr [ %call2.i119, %if.then.i120 ], [ %28, %if.end.i122 ]
  %mapping = getelementptr inbounds %struct.netfs_read_request, ptr %call, i32 0, i32 2
  %29 = ptrtoint ptr %mapping to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i123, ptr %mapping, align 8
  %30 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %16, align 4
  %and.i.i.i.i.i125 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i125)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i125, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i, !prof !284

if.then.i.i.i.i.i:                                ; preds = %folio_file_mapping.exit124
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i.i = add i32 %31, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %folio_file_mapping.exit124
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %folio to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %32, %if.end.i.i.i.i.i ]
  %33 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %34 = getelementptr inbounds %struct.page, ptr %33, i32 0, i32 1
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i.i.i.i.i = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, !prof !284

if.then.i.i.i.i.i.i.i:                            ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i.i.i.i:             ; preds = %_compound_head.exit.i.i.i.i
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %33, align 4
  %39 = and i32 %38, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %39, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  %40 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %34, align 4
  %and.i.i.i.i.i.i.i = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %PageSwapCache.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !284

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %33, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

PageSwapCache.exit.i.i.i:                         ; preds = %land.rhs.i.i.i.i.i
  %42 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile i32, ptr %33, align 4
  %44 = and i32 %43, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool.i.i.not.i.i.i = icmp eq i32 %44, 0
  br i1 %tobool.i.i.not.i.i.i, label %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i126, !prof !284

PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge:  ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i126:                                 ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i.i = tail call i32 @__page_file_index(ptr noundef %folio) #8
  br label %folio_file_pos.exit

if.end.i.i.i:                                     ; preds = %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1, i32 0, i32 2
  %45 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index.i.i.i, align 4
  br label %folio_file_pos.exit

folio_file_pos.exit:                              ; preds = %if.end.i.i.i, %if.then.i.i.i126
  %retval.0.i.i.i = phi i32 [ %call2.i.i.i, %if.then.i.i.i126 ], [ %46, %if.end.i.i.i ]
  %conv.i.i = zext i32 %retval.0.i.i.i to i64
  %shl.i.i = shl nuw nsw i64 %conv.i.i, 12
  %start = getelementptr inbounds %struct.netfs_read_request, ptr %call, i32 0, i32 13
  %47 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %shl.i.i, ptr %start, align 8
  %48 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %folio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %49)
  %cmp.i.not.i.i.i.i = icmp eq i32 %49, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i127, label %PageHead.exit.i.i.i, !prof !285

if.then.i.i.i.i127:                               ; preds = %folio_file_pos.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.101) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !313
  unreachable

PageHead.exit.i.i.i:                              ; preds = %folio_file_pos.exit
  %50 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %folio, align 4
  %52 = and i32 %51, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i.i.i128 = icmp eq i32 %52, 0
  br i1 %tobool.not.i.i.i128, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i129

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_size.exit

if.end.i.i.i129:                                  ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %53 = getelementptr %struct.page, ptr %folio, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.11, ptr %53, i32 0, i32 2
  %54 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %55 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i129, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i130 = phi i32 [ %conv.i.i.i, %if.end.i.i.i129 ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i130
  %len = getelementptr inbounds %struct.netfs_read_request, ptr %call, i32 0, i32 10
  %56 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %shl.i, ptr %len, align 4
  %begin_cache_operation = getelementptr inbounds %struct.netfs_read_request_ops, ptr %ops, i32 0, i32 2
  %57 = ptrtoint ptr %begin_cache_operation to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %begin_cache_operation, align 4
  %tobool8.not = icmp eq ptr %58, null
  br i1 %tobool8.not, label %folio_size.exit.if.end17_crit_edge, label %if.then9

folio_size.exit.if.end17_crit_edge:               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then9:                                         ; preds = %folio_size.exit
  %call11 = tail call i32 %58(ptr noundef nonnull %call) #8
  %59 = zext i32 %call11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call11, label %if.then9.if.end17_crit_edge [
    i32 -12, label %if.then9.if.then15_crit_edge
    i32 -4, label %if.then9.if.then15_crit_edge136
    i32 -512, label %if.then9.if.then15_crit_edge137
  ]

if.then9.if.then15_crit_edge137:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then9.if.then15_crit_edge136:                  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then9.if.then15_crit_edge:                     ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then15

if.then9.if.end17_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17

if.then15:                                        ; preds = %if.then9.if.then15_crit_edge, %if.then9.if.then15_crit_edge136, %if.then9.if.then15_crit_edge137
  tail call void @folio_unlock(ptr noundef %folio) #8
  br label %out

if.end17:                                         ; preds = %if.then9.if.end17_crit_edge, %folio_size.exit.if.end17_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_readpage, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_readpage, i32 1, i32 3, i32 1) #8
  %60 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_readpage, ptr nonnull @netfs_n_rh_readpage, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_readpage) #8, !srcloc !287
  %61 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %start, align 8
  %63 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %len, align 4
  tail call fastcc void @trace_netfs_read(ptr noundef nonnull %call, i64 noundef %62, i32 noundef %64, i32 noundef 2)
  %usage.i = getelementptr inbounds %struct.netfs_read_request, ptr %call, i32 0, i32 15
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %65 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !308
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %65, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.end17.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !285

if.end17.if.end15.sink.split.i.i.i.i_crit_edge:   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.end17
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %66 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %66)
  %.not.i.i.i.i = icmp sgt i32 %66, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.netfs_get_read_request.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !284

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.netfs_get_read_request.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_get_read_request.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.end17.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #8
  br label %netfs_get_read_request.exit

netfs_get_read_request.exit:                      ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.netfs_get_read_request.exit_crit_edge
  %nr_rd_ops = getelementptr inbounds %struct.netfs_read_request, ptr %call, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  %67 = ptrtoint ptr %nr_rd_ops to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 1, ptr %nr_rd_ops, align 4
  %submitted = getelementptr inbounds %struct.netfs_read_request, ptr %call, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %netfs_get_read_request.exit
  %call20 = call fastcc zeroext i1 @netfs_rreq_submit_slice(ptr noundef nonnull %call, ptr noundef nonnull %debug_index)
  br i1 %call20, label %do.cond, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.cond:                                          ; preds = %do.body
  %68 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %submitted, align 8
  %70 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %len, align 4
  %cmp24 = icmp ult i32 %69, %71
  br i1 %cmp24, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  %72 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  %flags = getelementptr inbounds %struct.netfs_read_request, ptr %call, i32 0, i32 16
  br label %do.body25

do.body25:                                        ; preds = %do.end51.do.body25_crit_edge, %do.end
  call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 992) #8
  %call.i.i106 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  %73 = ptrtoint ptr %nr_rd_ops to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile i32, ptr %nr_rd_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %74)
  %cmp35 = icmp eq i32 %74, 1
  br i1 %cmp35, label %do.body25.do.end51_crit_edge, label %if.end37

do.body25.do.end51_crit_edge:                     ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end51

if.end37:                                         ; preds = %do.body25
  %call39 = call ptr @__var_waitqueue(ptr noundef %nr_rd_ops) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #8
  %75 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %nr_rd_ops, i32 noundef 0) #8
  %call41133 = call i32 @prepare_to_wait_event(ptr noundef %call39, ptr noundef %72, i32 noundef 2) #8
  %call.i.i107134 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  %76 = ptrtoint ptr %nr_rd_ops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %nr_rd_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %77)
  %cmp44135 = icmp eq i32 %77, 1
  br i1 %cmp44135, label %if.end37.for.end_crit_edge, label %if.end37.cleanup47_crit_edge

if.end37.cleanup47_crit_edge:                     ; preds = %if.end37
  br label %cleanup47

if.end37.for.end_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup47:                                        ; preds = %cleanup47.cleanup47_crit_edge, %if.end37.cleanup47_crit_edge
  call void @schedule() #8
  %call41 = call i32 @prepare_to_wait_event(ptr noundef %call39, ptr noundef %72, i32 noundef 2) #8
  %call.i.i107 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  %78 = ptrtoint ptr %nr_rd_ops to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %nr_rd_ops, align 4
  %cmp44 = icmp eq i32 %79, 1
  br i1 %cmp44, label %cleanup47.for.end_crit_edge, label %cleanup47.cleanup47_crit_edge

cleanup47.cleanup47_crit_edge:                    ; preds = %cleanup47
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup47

cleanup47.for.end_crit_edge:                      ; preds = %cleanup47
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup47.for.end_crit_edge, %if.end37.for.end_crit_edge
  call void @finish_wait(ptr noundef %call39, ptr noundef %72) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #8
  br label %do.end51

do.end51:                                         ; preds = %for.end, %do.body25.do.end51_crit_edge
  call fastcc void @netfs_rreq_assess(ptr noundef nonnull %call, i1 noundef zeroext false)
  %80 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %flags, align 4
  %82 = and i32 %81, 32
  %tobool54.not = icmp eq i32 %82, 0
  br i1 %tobool54.not, label %do.end55, label %do.end51.do.body25_crit_edge

do.end51.do.body25_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body25

do.end55:                                         ; preds = %do.end51
  %error = getelementptr inbounds %struct.netfs_read_request, ptr %call, i32 0, i32 11
  %83 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %error, align 8
  %conv = sext i16 %84 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %84)
  %cmp56 = icmp eq i16 %84, 0
  br i1 %cmp56, label %land.lhs.true, label %do.end55.out_crit_edge

do.end55.out_crit_edge:                           ; preds = %do.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

land.lhs.true:                                    ; preds = %do.end55
  %85 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %submitted, align 8
  %87 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %86, i32 %88)
  %cmp60 = icmp ult i32 %86, %88
  br i1 %cmp60, label %if.then62, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.then62:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_netfs_failure(ptr noundef nonnull %call, ptr noundef null, i32 noundef 0, i32 noundef 3)
  br label %out

out:                                              ; preds = %if.then62, %land.lhs.true.out_crit_edge, %do.end55.out_crit_edge, %if.then15
  %ret.0 = phi i32 [ %call11, %if.then15 ], [ -5, %if.then62 ], [ 0, %land.lhs.true.out_crit_edge ], [ %conv, %do.end55.out_crit_edge ]
  call fastcc void @netfs_put_read_request(ptr noundef nonnull %call, i1 noundef zeroext false)
  br label %cleanup64

cleanup64:                                        ; preds = %out, %if.end
  %retval.0 = phi i32 [ %ret.0, %out ], [ -12, %if.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debug_index) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__var_waitqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_var_entry(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @netfs_write_begin(ptr noundef %file, ptr noundef %mapping, i64 noundef %pos, i32 noundef %len, i32 noundef %aop_flags, ptr nocapture noundef writeonly %_folio, ptr noundef %_fsdata, ptr noundef %ops, ptr noundef %netfs_priv) #0 align 64 {
entry:
  %debug_index = alloca i32, align 4
  %ractl = alloca %struct.readahead_control, align 4
  %__wbq_entry = alloca %struct.wait_bit_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %f_inode.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %0 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_inode.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %debug_index) #8
  %2 = ptrtoint ptr %debug_index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %debug_index, align 4
  %3 = lshr i64 %pos, 12
  %conv = trunc i64 %3 to i32
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ractl) #8
  %4 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 1
  %5 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 2
  %6 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 3
  %7 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 4
  %8 = getelementptr inbounds %struct.readahead_control, ptr %ractl, i32 0, i32 5
  %9 = ptrtoint ptr %ractl to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %file, ptr %ractl, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %mapping, ptr %4, align 4
  %11 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %5, align 4
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv, ptr %6, align 4
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %7, align 4
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %8, align 4
  %and = and i32 %aop_flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool.not, i32 526, i32 542
  %gfp_mask.i = getelementptr inbounds %struct.address_space, ptr %mapping, i32 0, i32 3
  %check_write_begin = getelementptr inbounds %struct.netfs_read_request_ops, ptr %ops, i32 0, i32 7
  br label %retry

retry:                                            ; preds = %if.then13.retry_crit_edge, %entry
  %15 = ptrtoint ptr %gfp_mask.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %gfp_mask.i, align 4
  %call4 = tail call ptr @__filemap_get_folio(ptr noundef %mapping, i32 noundef %conv, i32 noundef %spec.select, i32 noundef %16) #8
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %retry.cleanup127_crit_edge, label %if.end7

retry.cleanup127_crit_edge:                       ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.end7:                                          ; preds = %retry
  %17 = ptrtoint ptr %check_write_begin to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %check_write_begin, align 4
  %tobool8.not = icmp eq ptr %18, null
  br i1 %tobool8.not, label %if.end7.if.end19_crit_edge, label %if.then9

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then9:                                         ; preds = %if.end7
  %call11 = tail call i32 %18(ptr noundef %file, i64 noundef %pos, i32 noundef %len, ptr noundef nonnull %call4, ptr noundef %_fsdata) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then13, label %if.then9.if.end19_crit_edge

if.then9.if.end19_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then13:                                        ; preds = %if.then9
  tail call fastcc void @trace_netfs_failure(ptr noundef null, ptr noundef null, i32 noundef %call11, i32 noundef 0)
  %cmp14 = icmp eq i32 %call11, -11
  br i1 %cmp14, label %if.then13.retry_crit_edge, label %if.then13.error121_crit_edge

if.then13.error121_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %error121

if.then13.retry_crit_edge:                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #10
  br label %retry

if.end19:                                         ; preds = %if.then9.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %19 = getelementptr inbounds %struct.page, ptr %call4, i32 0, i32 1
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  %and.i.i.i = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_flags.exit.i, label %if.then.i.i, !prof !284

if.then.i.i:                                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_flags.exit.i:                               ; preds = %if.end19
  %22 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %call4, align 4
  %24 = and i32 %23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.i.not = icmp eq i32 %24, 0
  br i1 %tobool.i.not, label %if.end22, label %folio_test_uptodate.exit.thread

folio_test_uptodate.exit.thread:                  ; preds = %folio_flags.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !322
  br label %have_folio

if.end22:                                         ; preds = %folio_flags.exit.i
  %25 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ops, align 4
  %call23 = tail call zeroext i1 %26(ptr noundef %1) #8
  br i1 %call23, label %if.end22.if.end27_crit_edge, label %land.lhs.true

if.end22.if.end27_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true:                                    ; preds = %if.end22
  %mapping.i.i = getelementptr inbounds %struct.anon.75, ptr %call4, i32 0, i32 2
  %27 = ptrtoint ptr %mapping.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mapping.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %28, align 4
  %call1.i = tail call fastcc i64 @i_size_read(ptr noundef %30) #8
  %conv.i = trunc i64 %pos to i32
  %31 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %call4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %32)
  %cmp.i.not.i.i.i.i.i = icmp eq i32 %32, -1
  br i1 %cmp.i.not.i.i.i.i.i, label %if.then.i.i.i.i.i, label %PageHead.exit.i.i.i.i, !prof !285

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.101) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !313
  unreachable

PageHead.exit.i.i.i.i:                            ; preds = %land.lhs.true
  %33 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %call4, align 4
  %35 = and i32 %34, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i.i.i = icmp eq i32 %35, 0
  br i1 %tobool.not.i.i.i.i, label %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge, label %if.end.i.i.i.i

PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge: ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_size.exit.i

if.end.i.i.i.i:                                   ; preds = %PageHead.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = getelementptr %struct.page, ptr %call4, i32 1, i32 1
  %compound_order.i.i.i.i = getelementptr inbounds %struct.anon.11, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %compound_order.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %compound_order.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %38 to i32
  br label %folio_size.exit.i

folio_size.exit.i:                                ; preds = %if.end.i.i.i.i, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge
  %retval.0.i.i.i.i = phi i32 [ %conv.i.i.i.i, %if.end.i.i.i.i ], [ 0, %PageHead.exit.i.i.i.i.folio_size.exit.i_crit_edge ]
  %shl.i.i = shl i32 4096, %retval.0.i.i.i.i
  %sub.i = add i32 %shl.i.i, -1
  %and.i = and i32 %sub.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.thread.i

land.lhs.true.i:                                  ; preds = %folio_size.exit.i
  %39 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %call4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %40)
  %cmp.i.not.i.i.i.i38.i = icmp eq i32 %40, -1
  br i1 %cmp.i.not.i.i.i.i38.i, label %if.then.i.i.i.i39.i, label %PageHead.exit.i.i.i41.i, !prof !285

if.then.i.i.i.i39.i:                              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.101) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !313
  unreachable

PageHead.exit.i.i.i41.i:                          ; preds = %land.lhs.true.i
  %41 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %call4, align 4
  %43 = and i32 %42, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.not.i.i.i40.i = icmp eq i32 %43, 0
  br i1 %tobool.not.i.i.i40.i, label %PageHead.exit.i.i.i41.i.folio_size.exit47.i_crit_edge, label %if.end.i.i.i44.i

PageHead.exit.i.i.i41.i.folio_size.exit47.i_crit_edge: ; preds = %PageHead.exit.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_size.exit47.i

if.end.i.i.i44.i:                                 ; preds = %PageHead.exit.i.i.i41.i
  call void @__sanitizer_cov_trace_pc() #10
  %44 = getelementptr %struct.page, ptr %call4, i32 1, i32 1
  %compound_order.i.i.i42.i = getelementptr inbounds %struct.anon.11, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %compound_order.i.i.i42.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %compound_order.i.i.i42.i, align 1
  %conv.i.i.i43.i = zext i8 %46 to i32
  br label %folio_size.exit47.i

folio_size.exit47.i:                              ; preds = %if.end.i.i.i44.i, %PageHead.exit.i.i.i41.i.folio_size.exit47.i_crit_edge
  %retval.0.i.i.i45.i = phi i32 [ %conv.i.i.i43.i, %if.end.i.i.i44.i ], [ 0, %PageHead.exit.i.i.i41.i.folio_size.exit47.i_crit_edge ]
  %shl.i46.i = shl i32 4096, %retval.0.i.i.i45.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i46.i, i32 %len)
  %cmp5.not.i = icmp ugt i32 %shl.i46.i, %len
  br i1 %cmp5.not.i, label %if.end.i, label %folio_size.exit47.i.if.then26_crit_edge

folio_size.exit47.i.if.then26_crit_edge:          ; preds = %folio_size.exit47.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then26

if.end.i:                                         ; preds = %folio_size.exit47.i
  call void @__sanitizer_cov_trace_cmp8(i64 %call1.i, i64 %pos)
  %cmp9.not.i = icmp sgt i64 %call1.i, %pos
  br i1 %cmp9.not.i, label %land.lhs.true15.critedge.i, label %if.end.i.zero_out.i_crit_edge

if.end.i.zero_out.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zero_out.i

if.end.thread.i:                                  ; preds = %folio_size.exit.i
  %conv758.i = zext i32 %and.i to i64
  %sub859.i = sub i64 %pos, %conv758.i
  call void @__sanitizer_cov_trace_cmp8(i64 %sub859.i, i64 %call1.i)
  %cmp9.not60.i = icmp slt i64 %sub859.i, %call1.i
  br i1 %cmp9.not60.i, label %if.end.thread.i.if.end27_crit_edge, label %if.end.thread.i.zero_out.i_crit_edge

if.end.thread.i.zero_out.i_crit_edge:             ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zero_out.i

if.end.thread.i.if.end27_crit_edge:               ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

land.lhs.true15.critedge.i:                       ; preds = %if.end.i
  %conv16.i = zext i32 %len to i64
  %add.i = add i64 %conv16.i, %pos
  call void @__sanitizer_cov_trace_cmp8(i64 %add.i, i64 %call1.i)
  %cmp17.not.i = icmp slt i64 %add.i, %call1.i
  br i1 %cmp17.not.i, label %land.lhs.true15.critedge.i.if.end27_crit_edge, label %land.lhs.true15.critedge.i.zero_out.i_crit_edge

land.lhs.true15.critedge.i.zero_out.i_crit_edge:  ; preds = %land.lhs.true15.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zero_out.i

land.lhs.true15.critedge.i.if.end27_crit_edge:    ; preds = %land.lhs.true15.critedge.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

zero_out.i:                                       ; preds = %land.lhs.true15.critedge.i.zero_out.i_crit_edge, %if.end.thread.i.zero_out.i_crit_edge, %if.end.i.zero_out.i_crit_edge
  %add21.i = add i32 %and.i, %len
  %47 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %call4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %48)
  %cmp.i.not.i.i.i.i48.i = icmp eq i32 %48, -1
  br i1 %cmp.i.not.i.i.i.i48.i, label %if.then.i.i.i.i49.i, label %PageHead.exit.i.i.i51.i, !prof !285

if.then.i.i.i.i49.i:                              ; preds = %zero_out.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.101) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !313
  unreachable

PageHead.exit.i.i.i51.i:                          ; preds = %zero_out.i
  %49 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %call4, align 4
  %51 = and i32 %50, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i.i.i50.i = icmp eq i32 %51, 0
  br i1 %tobool.not.i.i.i50.i, label %PageHead.exit.i.i.i51.i.folio_size.exit57.i_crit_edge, label %if.end.i.i.i54.i

PageHead.exit.i.i.i51.i.folio_size.exit57.i_crit_edge: ; preds = %PageHead.exit.i.i.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_size.exit57.i

if.end.i.i.i54.i:                                 ; preds = %PageHead.exit.i.i.i51.i
  call void @__sanitizer_cov_trace_pc() #10
  %52 = getelementptr %struct.page, ptr %call4, i32 1, i32 1
  %compound_order.i.i.i52.i = getelementptr inbounds %struct.anon.11, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %compound_order.i.i.i52.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %compound_order.i.i.i52.i, align 1
  %conv.i.i.i53.i = zext i8 %54 to i32
  br label %folio_size.exit57.i

folio_size.exit57.i:                              ; preds = %if.end.i.i.i54.i, %PageHead.exit.i.i.i51.i.folio_size.exit57.i_crit_edge
  %retval.0.i.i.i55.i = phi i32 [ %conv.i.i.i53.i, %if.end.i.i.i54.i ], [ 0, %PageHead.exit.i.i.i51.i.folio_size.exit57.i_crit_edge ]
  %shl.i56.i = shl i32 4096, %retval.0.i.i.i55.i
  tail call void @zero_user_segments(ptr noundef nonnull %call4, i32 noundef 0, i32 noundef %and.i, i32 noundef %add21.i, i32 noundef %shl.i56.i) #8
  br label %if.then26

if.then26:                                        ; preds = %folio_size.exit57.i, %folio_size.exit47.i.if.then26_crit_edge
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_write_zskip, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_write_zskip, i32 1, i32 3, i32 1) #8
  %55 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_write_zskip, ptr nonnull @netfs_n_rh_write_zskip, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_write_zskip) #8, !srcloc !287
  br label %have_folio_no_wait

if.end27:                                         ; preds = %land.lhs.true15.critedge.i.if.end27_crit_edge, %if.end.thread.i.if.end27_crit_edge, %if.end22.if.end27_crit_edge
  %call28 = tail call fastcc ptr @netfs_alloc_read_request(ptr noundef %ops, ptr noundef %netfs_priv, ptr noundef %file)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end27.error121_crit_edge, label %if.end31

if.end27.error121_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %error121

if.end31:                                         ; preds = %if.end27
  %56 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool.not.i.i.i.i212 = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i212, label %folio_test_swapbacked.exit.i.i, label %if.then.i.i.i.i, !prof !284

if.then.i.i.i.i:                                  ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %if.end31
  %58 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %call4, align 4
  %60 = and i32 %59, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i213_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i213_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i213

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %61 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %if.then.i.i.i, !prof !284

if.then.i.i.i:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %63 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %call4, align 4
  %65 = and i32 %64, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not.i = icmp eq i32 %65, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i213_crit_edge, label %if.then.i, !prof !284

folio_test_swapcache.exit.i.if.end.i213_crit_edge: ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i213

if.then.i:                                        ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call ptr @swapcache_mapping(ptr noundef nonnull %call4) #8
  br label %folio_file_mapping.exit

if.end.i213:                                      ; preds = %folio_test_swapcache.exit.i.if.end.i213_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i213_crit_edge
  %mapping.i = getelementptr inbounds %struct.anon.75, ptr %call4, i32 0, i32 2
  %66 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mapping.i, align 4
  br label %folio_file_mapping.exit

folio_file_mapping.exit:                          ; preds = %if.end.i213, %if.then.i
  %retval.0.i214 = phi ptr [ %call2.i, %if.then.i ], [ %67, %if.end.i213 ]
  %mapping33 = getelementptr inbounds %struct.netfs_read_request, ptr %call28, i32 0, i32 2
  %68 = ptrtoint ptr %mapping33 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %retval.0.i214, ptr %mapping33, align 8
  %69 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i.i215 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i215)
  %tobool.not.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i215, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %if.then.i.i.i.i.i216, !prof !284

if.then.i.i.i.i.i216:                             ; preds = %folio_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i.i = add i32 %70, -1
  br label %_compound_head.exit.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %folio_file_mapping.exit
  call void @__sanitizer_cov_trace_pc() #10
  %71 = ptrtoint ptr %call4 to i32
  br label %_compound_head.exit.i.i.i.i

_compound_head.exit.i.i.i.i:                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.i.i216
  %retval.0.i.i.i.i.i = phi i32 [ %sub.i.i.i.i.i, %if.then.i.i.i.i.i216 ], [ %71, %if.end.i.i.i.i.i ]
  %72 = inttoptr i32 %retval.0.i.i.i.i.i to ptr
  %73 = getelementptr inbounds %struct.page, ptr %72, i32 0, i32 1
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %73, align 4
  %and.i.i.i.i.i.i.i.i = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i, label %if.then.i.i.i.i.i.i.i, !prof !284

if.then.i.i.i.i.i.i.i:                            ; preds = %_compound_head.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %72, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i.i.i.i:             ; preds = %_compound_head.exit.i.i.i.i
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %72, align 4
  %78 = and i32 %77, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i.not.i.i.i.i.i = icmp eq i32 %78, 0
  br i1 %tobool.i.not.i.i.i.i.i, label %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge, label %land.rhs.i.i.i.i.i

folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

land.rhs.i.i.i.i.i:                               ; preds = %folio_test_swapbacked.exit.i.i.i.i.i
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %73, align 4
  %and.i.i.i.i.i.i.i = and i32 %80, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i.i.i)
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %and.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %PageSwapCache.exit.i.i.i, label %if.then.i.i.i.i.i.i, !prof !284

if.then.i.i.i.i.i.i:                              ; preds = %land.rhs.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %72, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

PageSwapCache.exit.i.i.i:                         ; preds = %land.rhs.i.i.i.i.i
  %81 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile i32, ptr %72, align 4
  %83 = and i32 %82, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.i.i.not.i.i.i = icmp eq i32 %83, 0
  br i1 %tobool.i.i.not.i.i.i, label %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i217, !prof !284

PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge:  ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i217:                                 ; preds = %PageSwapCache.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.i.i = tail call i32 @__page_file_index(ptr noundef nonnull %call4) #8
  br label %folio_file_pos.exit

if.end.i.i.i:                                     ; preds = %PageSwapCache.exit.i.i.i.if.end.i.i.i_crit_edge, %folio_test_swapbacked.exit.i.i.i.i.i.if.end.i.i.i_crit_edge
  %index.i.i.i = getelementptr inbounds %struct.page, ptr %call4, i32 0, i32 1, i32 0, i32 2
  %84 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %index.i.i.i, align 4
  br label %folio_file_pos.exit

folio_file_pos.exit:                              ; preds = %if.end.i.i.i, %if.then.i.i.i217
  %retval.0.i.i.i = phi i32 [ %call2.i.i.i, %if.then.i.i.i217 ], [ %85, %if.end.i.i.i ]
  %conv.i.i = zext i32 %retval.0.i.i.i to i64
  %shl.i.i218 = shl nuw nsw i64 %conv.i.i, 12
  %start = getelementptr inbounds %struct.netfs_read_request, ptr %call28, i32 0, i32 13
  %86 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %shl.i.i218, ptr %start, align 8
  %87 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load volatile i32, ptr %call4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %88)
  %cmp.i.not.i.i.i.i = icmp eq i32 %88, -1
  br i1 %cmp.i.not.i.i.i.i, label %if.then.i.i.i.i219, label %PageHead.exit.i.i.i, !prof !285

if.then.i.i.i.i219:                               ; preds = %folio_file_pos.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.101) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !313
  unreachable

PageHead.exit.i.i.i:                              ; preds = %folio_file_pos.exit
  %89 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %call4, align 4
  %91 = and i32 %90, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i.i.i220 = icmp eq i32 %91, 0
  br i1 %tobool.not.i.i.i220, label %PageHead.exit.i.i.i.folio_size.exit_crit_edge, label %if.end.i.i.i221

PageHead.exit.i.i.i.folio_size.exit_crit_edge:    ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_size.exit

if.end.i.i.i221:                                  ; preds = %PageHead.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = getelementptr %struct.page, ptr %call4, i32 1, i32 1
  %compound_order.i.i.i = getelementptr inbounds %struct.anon.11, ptr %92, i32 0, i32 2
  %93 = ptrtoint ptr %compound_order.i.i.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %compound_order.i.i.i, align 1
  %conv.i.i.i = zext i8 %94 to i32
  br label %folio_size.exit

folio_size.exit:                                  ; preds = %if.end.i.i.i221, %PageHead.exit.i.i.i.folio_size.exit_crit_edge
  %retval.0.i.i.i222 = phi i32 [ %conv.i.i.i, %if.end.i.i.i221 ], [ 0, %PageHead.exit.i.i.i.folio_size.exit_crit_edge ]
  %shl.i = shl i32 4096, %retval.0.i.i.i222
  %len36 = getelementptr inbounds %struct.netfs_read_request, ptr %call28, i32 0, i32 10
  %95 = ptrtoint ptr %len36 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %shl.i, ptr %len36, align 4
  %96 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i.i223 = and i32 %97, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i223)
  %tobool.not.i.i.i.i224 = icmp eq i32 %and.i.i.i.i.i223, 0
  br i1 %tobool.not.i.i.i.i224, label %folio_test_swapbacked.exit.i.i227, label %if.then.i.i.i.i225, !prof !284

if.then.i.i.i.i225:                               ; preds = %folio_size.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i227:                ; preds = %folio_size.exit
  %98 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load volatile i32, ptr %call4, align 4
  %100 = and i32 %99, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.i.not.i.i226 = icmp eq i32 %100, 0
  br i1 %tobool.i.not.i.i226, label %folio_test_swapbacked.exit.i.i227.if.end.i236_crit_edge, label %land.rhs.i.i230

folio_test_swapbacked.exit.i.i227.if.end.i236_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i227
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i236

land.rhs.i.i230:                                  ; preds = %folio_test_swapbacked.exit.i.i227
  %101 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %19, align 4
  %and.i.i.i.i228 = and i32 %102, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i228)
  %tobool.not.i.i.i229 = icmp eq i32 %and.i.i.i.i228, 0
  br i1 %tobool.not.i.i.i229, label %folio_test_swapcache.exit.i233, label %if.then.i.i.i231, !prof !284

if.then.i.i.i231:                                 ; preds = %land.rhs.i.i230
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapcache.exit.i233:                   ; preds = %land.rhs.i.i230
  %103 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load volatile i32, ptr %call4, align 4
  %105 = and i32 %104, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.i.not.i232 = icmp eq i32 %105, 0
  br i1 %tobool.i.not.i232, label %folio_test_swapcache.exit.i233.if.end.i236_crit_edge, label %if.then.i235, !prof !284

folio_test_swapcache.exit.i233.if.end.i236_crit_edge: ; preds = %folio_test_swapcache.exit.i233
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i236

if.then.i235:                                     ; preds = %folio_test_swapcache.exit.i233
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i234 = tail call i32 @__page_file_index(ptr noundef nonnull %call4) #8
  br label %folio_index.exit

if.end.i236:                                      ; preds = %folio_test_swapcache.exit.i233.if.end.i236_crit_edge, %folio_test_swapbacked.exit.i.i227.if.end.i236_crit_edge
  %index.i = getelementptr inbounds %struct.anon.75, ptr %call4, i32 0, i32 3
  %106 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i236, %if.then.i235
  %retval.0.i237 = phi i32 [ %call2.i234, %if.then.i235 ], [ %107, %if.end.i236 ]
  %no_unlock_folio = getelementptr inbounds %struct.netfs_read_request, ptr %call28, i32 0, i32 14
  %108 = ptrtoint ptr %no_unlock_folio to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %retval.0.i237, ptr %no_unlock_folio, align 8
  %flags = getelementptr inbounds %struct.netfs_read_request, ptr %call28, i32 0, i32 16
  %109 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %flags, align 4
  %or.i = or i32 %110, 4
  store i32 %or.i, ptr %flags, align 4
  %begin_cache_operation = getelementptr inbounds %struct.netfs_read_request_ops, ptr %ops, i32 0, i32 2
  %111 = ptrtoint ptr %begin_cache_operation to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %begin_cache_operation, align 4
  %tobool38.not = icmp eq ptr %112, null
  br i1 %tobool38.not, label %folio_index.exit.if.end51_crit_edge, label %if.then39

folio_index.exit.if.end51_crit_edge:              ; preds = %folio_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then39:                                        ; preds = %folio_index.exit
  %call41 = tail call i32 %112(ptr noundef nonnull %call28) #8
  %113 = zext i32 %call41 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %call41, label %if.then39.if.end51_crit_edge [
    i32 -12, label %if.then39.error_put_crit_edge
    i32 -4, label %if.then39.error_put_crit_edge304
    i32 -512, label %if.then39.error_put_crit_edge305
  ]

if.then39.error_put_crit_edge305:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put

if.then39.error_put_crit_edge304:                 ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put

if.then39.error_put_crit_edge:                    ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_put

if.then39.if.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end51:                                         ; preds = %if.then39.if.end51_crit_edge, %folio_index.exit.if.end51_crit_edge
  %call.i.i.i238 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_write_begin, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_write_begin, i32 1, i32 3, i32 1) #8
  %114 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_write_begin, ptr nonnull @netfs_n_rh_write_begin, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_write_begin) #8, !srcloc !287
  tail call fastcc void @trace_netfs_read(ptr noundef nonnull %call28, i64 noundef %pos, i32 noundef %len, i32 noundef 3)
  %115 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load volatile i32, ptr %call4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %116)
  %cmp.i.not.i.i.i = icmp eq i32 %116, -1
  br i1 %cmp.i.not.i.i.i, label %if.then.i.i.i239, label %PageHead.exit.i.i, !prof !285

if.then.i.i.i239:                                 ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.101) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #8, !srcloc !313
  unreachable

PageHead.exit.i.i:                                ; preds = %if.end51
  %117 = ptrtoint ptr %call4 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %call4, align 4
  %119 = and i32 %118, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool.not.i.i240 = icmp eq i32 %119, 0
  br i1 %tobool.not.i.i240, label %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge, label %if.end.i.i

PageHead.exit.i.i.folio_nr_pages.exit_crit_edge:  ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_nr_pages.exit

if.end.i.i:                                       ; preds = %PageHead.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %compound_nr.i.i = getelementptr %struct.page, ptr %call4, i32 1, i32 1, i32 0, i32 2
  %120 = ptrtoint ptr %compound_nr.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %compound_nr.i.i, align 4
  br label %folio_nr_pages.exit

folio_nr_pages.exit:                              ; preds = %if.end.i.i, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge
  %retval.0.i.i = phi i32 [ %121, %if.end.i.i ], [ 1, %PageHead.exit.i.i.folio_nr_pages.exit_crit_edge ]
  %122 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %retval.0.i.i, ptr %7, align 4
  call fastcc void @netfs_rreq_expand(ptr noundef nonnull %call28, ptr noundef nonnull %ractl)
  %usage.i = getelementptr inbounds %struct.netfs_read_request, ptr %call28, i32 0, i32 15
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #8
  %123 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #8, !srcloc !308
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %123, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %folio_nr_pages.exit.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !285

folio_nr_pages.exit.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %folio_nr_pages.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %folio_nr_pages.exit
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %124 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %124)
  %.not.i.i.i.i = icmp sgt i32 %124, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.netfs_get_read_request.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !284

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.netfs_get_read_request.exit_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_get_read_request.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %folio_nr_pages.exit.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %folio_nr_pages.exit.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #8
  br label %netfs_get_read_request.exit

netfs_get_read_request.exit:                      ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.netfs_get_read_request.exit_crit_edge
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %call4, i32 0, i32 3
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #8
  %125 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i241 = add i32 %126, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i241)
  %cmp.i242 = icmp ult i32 %add.i241, 128
  br i1 %cmp.i242, label %if.then.i243, label %do.end5.i, !prof !285

if.then.i243:                                     ; preds = %netfs_get_read_request.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef nonnull %call4, ptr noundef nonnull @.str.102) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !323
  unreachable

do.end5.i:                                        ; preds = %netfs_get_read_request.exit
  %call.i.i.i.i9.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #8
  %127 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #8, !srcloc !287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@netfs_write_begin, %if.then.i.i.i244)) #8
          to label %while.cond [label %if.then.i.i.i244], !srcloc !292

if.then.i.i.i244:                                 ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__page_ref_mod(ptr noundef nonnull %call4, i32 noundef 1) #8
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %if.then.i.i.i244, %do.end5.i
  %call54 = call fastcc ptr @readahead_folio(ptr noundef nonnull %ractl)
  %tobool55.not = icmp eq ptr %call54, null
  br i1 %tobool55.not, label %while.end, label %while.cond.while.cond_crit_edge

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %nr_rd_ops = getelementptr inbounds %struct.netfs_read_request, ptr %call28, i32 0, i32 7
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  %128 = ptrtoint ptr %nr_rd_ops to i32
  call void @__asan_store4_noabort(i32 %128)
  store volatile i32 1, ptr %nr_rd_ops, align 4
  %submitted = getelementptr inbounds %struct.netfs_read_request, ptr %call28, i32 0, i32 9
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %while.end
  %call56 = call fastcc zeroext i1 @netfs_rreq_submit_slice(ptr noundef nonnull %call28, ptr noundef nonnull %debug_index)
  br i1 %call56, label %do.cond, label %do.body.do.end_crit_edge

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.cond:                                          ; preds = %do.body
  %129 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %submitted, align 8
  %131 = ptrtoint ptr %len36 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %len36, align 4
  %cmp60 = icmp ult i32 %130, %132
  br i1 %cmp60, label %do.cond.do.body_crit_edge, label %do.cond.do.end_crit_edge

do.cond.do.end_crit_edge:                         ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end:                                           ; preds = %do.cond.do.end_crit_edge, %do.body.do.end_crit_edge
  %133 = getelementptr inbounds %struct.wait_bit_queue_entry, ptr %__wbq_entry, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end93, %do.end
  call void @__might_sleep(ptr noundef nonnull @.str.30, i32 noundef 1168) #8
  %call.i.i210 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  %134 = ptrtoint ptr %nr_rd_ops to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load volatile i32, ptr %nr_rd_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %135)
  %cmp71 = icmp eq i32 %135, 1
  br i1 %cmp71, label %for.cond.do.end88_crit_edge, label %if.end74

for.cond.do.end88_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end88

if.end74:                                         ; preds = %for.cond
  %call76 = call ptr @__var_waitqueue(ptr noundef %nr_rd_ops) #8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %__wbq_entry) #8
  %136 = call ptr @memset(ptr %__wbq_entry, i32 255, i32 32)
  call void @init_wait_var_entry(ptr noundef nonnull %__wbq_entry, ptr noundef %nr_rd_ops, i32 noundef 0) #8
  %call79266 = call i32 @prepare_to_wait_event(ptr noundef %call76, ptr noundef %133, i32 noundef 2) #8
  %call.i.i211267 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  %137 = ptrtoint ptr %nr_rd_ops to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load volatile i32, ptr %nr_rd_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %138)
  %cmp82268 = icmp eq i32 %138, 1
  br i1 %cmp82268, label %if.end74.for.end_crit_edge, label %if.end74.cleanup_crit_edge

if.end74.cleanup_crit_edge:                       ; preds = %if.end74
  br label %cleanup

if.end74.for.end_crit_edge:                       ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end74.cleanup_crit_edge
  call void @schedule() #8
  %call79 = call i32 @prepare_to_wait_event(ptr noundef %call76, ptr noundef %133, i32 noundef 2) #8
  %call.i.i211 = call zeroext i1 @__kasan_check_read(ptr noundef %nr_rd_ops, i32 noundef 4) #8
  %139 = ptrtoint ptr %nr_rd_ops to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load volatile i32, ptr %nr_rd_ops, align 4
  %cmp82 = icmp eq i32 %140, 1
  br i1 %cmp82, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end74.for.end_crit_edge
  call void @finish_wait(ptr noundef %call76, ptr noundef %133) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %__wbq_entry) #8
  br label %do.end88

do.end88:                                         ; preds = %for.end, %for.cond.do.end88_crit_edge
  call fastcc void @netfs_rreq_assess(ptr noundef nonnull %call28, i1 noundef zeroext false)
  %141 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load volatile i32, ptr %flags, align 4
  %143 = and i32 %142, 32
  %tobool91.not = icmp eq i32 %143, 0
  br i1 %tobool91.not, label %for.end96, label %if.end93

if.end93:                                         ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #10
  call void @__might_resched(ptr noundef nonnull @.str.30, i32 noundef 1172, i32 noundef 0) #8
  %call.i = call i32 @__cond_resched() #8
  br label %for.cond

for.end96:                                        ; preds = %do.end88
  %error = getelementptr inbounds %struct.netfs_read_request, ptr %call28, i32 0, i32 11
  %144 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %error, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %cmp98 = icmp eq i16 %145, 0
  br i1 %cmp98, label %land.lhs.true100, label %if.end106

land.lhs.true100:                                 ; preds = %for.end96
  %146 = ptrtoint ptr %submitted to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %submitted, align 8
  %148 = ptrtoint ptr %len36 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %len36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %149)
  %cmp103 = icmp ult i32 %147, %149
  br i1 %cmp103, label %if.end106.thread, label %if.end106.thread257

if.end106.thread257:                              ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @netfs_put_read_request(ptr noundef nonnull %call28, i1 noundef zeroext false)
  br label %have_folio

if.end106.thread:                                 ; preds = %land.lhs.true100
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_netfs_failure(ptr noundef nonnull %call28, ptr noundef null, i32 noundef 0, i32 noundef 4)
  call fastcc void @netfs_put_read_request(ptr noundef nonnull %call28, i1 noundef zeroext false)
  br label %error121

if.end106:                                        ; preds = %for.end96
  %conv97 = sext i16 %145 to i32
  call fastcc void @netfs_put_read_request(ptr noundef nonnull %call28, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %145)
  %cmp107 = icmp slt i16 %145, 0
  br i1 %cmp107, label %if.end106.error121_crit_edge, label %if.end106.have_folio_crit_edge

if.end106.have_folio_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %have_folio

if.end106.error121_crit_edge:                     ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #10
  br label %error121

have_folio:                                       ; preds = %if.end106.have_folio_crit_edge, %if.end106.thread257, %folio_test_uptodate.exit.thread
  %netfs_priv.addr.0 = phi ptr [ null, %if.end106.have_folio_crit_edge ], [ %netfs_priv, %folio_test_uptodate.exit.thread ], [ null, %if.end106.thread257 ]
  %call.i245 = call i32 @folio_wait_private_2_killable(ptr noundef %call4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i245)
  %cmp112 = icmp slt i32 %call.i245, 0
  br i1 %cmp112, label %have_folio.error121_crit_edge, label %have_folio.have_folio_no_wait_crit_edge

have_folio.have_folio_no_wait_crit_edge:          ; preds = %have_folio
  call void @__sanitizer_cov_trace_pc() #10
  br label %have_folio_no_wait

have_folio.error121_crit_edge:                    ; preds = %have_folio
  call void @__sanitizer_cov_trace_pc() #10
  br label %error121

have_folio_no_wait:                               ; preds = %have_folio.have_folio_no_wait_crit_edge, %if.then26
  %netfs_priv.addr.1 = phi ptr [ %netfs_priv.addr.0, %have_folio.have_folio_no_wait_crit_edge ], [ %netfs_priv, %if.then26 ]
  %tobool116.not = icmp eq ptr %netfs_priv.addr.1, null
  br i1 %tobool116.not, label %have_folio_no_wait.if.end119_crit_edge, label %if.then117

have_folio_no_wait.if.end119_crit_edge:           ; preds = %have_folio_no_wait
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

if.then117:                                       ; preds = %have_folio_no_wait
  call void @__sanitizer_cov_trace_pc() #10
  %cleanup118 = getelementptr inbounds %struct.netfs_read_request_ops, ptr %ops, i32 0, i32 9
  %150 = ptrtoint ptr %cleanup118 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %cleanup118, align 4
  call void %151(ptr noundef %mapping, ptr noundef nonnull %netfs_priv.addr.1) #8
  br label %if.end119

if.end119:                                        ; preds = %if.then117, %have_folio_no_wait.if.end119_crit_edge
  %152 = ptrtoint ptr %_folio to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %call4, ptr %_folio, align 4
  br label %cleanup127

error_put:                                        ; preds = %if.then39.error_put_crit_edge, %if.then39.error_put_crit_edge304, %if.then39.error_put_crit_edge305
  tail call fastcc void @netfs_put_read_request(ptr noundef nonnull %call28, i1 noundef zeroext false)
  br label %error121

error121:                                         ; preds = %error_put, %have_folio.error121_crit_edge, %if.end106.error121_crit_edge, %if.end106.thread, %if.end27.error121_crit_edge, %if.then13.error121_crit_edge
  %ret.1 = phi i32 [ %call.i245, %have_folio.error121_crit_edge ], [ %call41, %error_put ], [ %conv97, %if.end106.error121_crit_edge ], [ -12, %if.end27.error121_crit_edge ], [ -5, %if.end106.thread ], [ %call11, %if.then13.error121_crit_edge ]
  %netfs_priv.addr.2 = phi ptr [ %netfs_priv.addr.0, %have_folio.error121_crit_edge ], [ null, %error_put ], [ null, %if.end106.error121_crit_edge ], [ %netfs_priv, %if.end27.error121_crit_edge ], [ null, %if.end106.thread ], [ %netfs_priv, %if.then13.error121_crit_edge ]
  call void @folio_unlock(ptr noundef nonnull %call4) #8
  %_refcount.i.i.i.i = getelementptr inbounds %struct.page, ptr %call4, i32 0, i32 3
  %call.i.i.i.i.i.i246 = call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  %153 = ptrtoint ptr %_refcount.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load volatile i32, ptr %_refcount.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %154)
  %cmp.i.i.i = icmp eq i32 %154, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i247, label %do.end5.i.i.i, !prof !285

if.then.i.i.i247:                                 ; preds = %error121
  call void @__sanitizer_cov_trace_pc() #10
  call void @dump_page(ptr noundef %call4, ptr noundef nonnull @.str.103) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 717, 0\0A.popsection", ""() #8, !srcloc !314
  unreachable

do.end5.i.i.i:                                    ; preds = %error121
  %call.i.i.i10.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @llvm.prefetch.p0(ptr %_refcount.i.i.i.i, i32 1, i32 3, i32 1) #8
  %155 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i.i, ptr %_refcount.i.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i.i) #8, !srcloc !289
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32 } %155, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod_and_test, i32 0, i32 1), ptr blockaddress(@netfs_write_begin, %if.then.i.i.i.i249)) #8
          to label %folio_put_testzero.exit.i [label %if.then.i.i.i.i249], !srcloc !292

if.then.i.i.i.i249:                               ; preds = %do.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i.i.i.i248 = zext i1 %cmp.i.i.i.i.i.i to i32
  call void @__page_ref_mod_and_test(ptr noundef %call4, i32 noundef -1, i32 noundef %conv.i.i.i.i248) #8
  br label %folio_put_testzero.exit.i

folio_put_testzero.exit.i:                        ; preds = %if.then.i.i.i.i249, %do.end5.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i250, label %folio_put_testzero.exit.i.folio_put.exit_crit_edge

folio_put_testzero.exit.i.folio_put.exit_crit_edge: ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %folio_put.exit

if.then.i250:                                     ; preds = %folio_put_testzero.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__put_page(ptr noundef %call4) #8
  br label %folio_put.exit

folio_put.exit:                                   ; preds = %if.then.i250, %folio_put_testzero.exit.i.folio_put.exit_crit_edge
  %tobool122.not = icmp eq ptr %netfs_priv.addr.2, null
  br i1 %tobool122.not, label %folio_put.exit.cleanup127_crit_edge, label %if.then123

folio_put.exit.cleanup127_crit_edge:              ; preds = %folio_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup127

if.then123:                                       ; preds = %folio_put.exit
  call void @__sanitizer_cov_trace_pc() #10
  %cleanup124 = getelementptr inbounds %struct.netfs_read_request_ops, ptr %ops, i32 0, i32 9
  %156 = ptrtoint ptr %cleanup124 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %cleanup124, align 4
  call void %157(ptr noundef %mapping, ptr noundef nonnull %netfs_priv.addr.2) #8
  br label %cleanup127

cleanup127:                                       ; preds = %if.then123, %folio_put.exit.cleanup127_crit_edge, %if.end119, %retry.cleanup127_crit_edge
  %retval.0 = phi i32 [ 0, %if.end119 ], [ %ret.1, %if.then123 ], [ %ret.1, %folio_put.exit.cleanup127_crit_edge ], [ -12, %retry.cleanup127_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ractl) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %debug_index) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__filemap_get_folio(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_resched(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_netfs_read(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %rreq = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rreq, align 8
  %what = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %what to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %what, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_netfs_read.symbols) #8
  %cookie = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cookie, align 4
  %netfs_inode = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %netfs_inode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %netfs_inode, align 8
  %start = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start, align 8
  %len = getelementptr inbounds %struct.trace_event_raw_netfs_read, ptr %1, i32 0, i32 4
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len, align 8
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.42, i32 noundef %3, ptr noundef %call1, i32 noundef %7, i32 noundef %9, i64 noundef %11, i32 noundef %13) #8
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_print_symbols_seq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_netfs_rreq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %rreq = getelementptr inbounds %struct.trace_event_raw_netfs_rreq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rreq, align 4
  %what = getelementptr inbounds %struct.trace_event_raw_netfs_rreq, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %what to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %what, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %5, ptr noundef nonnull @trace_raw_output_netfs_rreq.symbols) #8
  %flags2 = getelementptr inbounds %struct.trace_event_raw_netfs_rreq, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %flags2 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %flags2, align 4
  %conv = zext i16 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.50, i32 noundef %3, ptr noundef %call1, i32 noundef %conv) #8
  %call3 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_netfs_sreq(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %rreq = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rreq, align 8
  %index = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 4
  %conv = zext i16 %5 to i32
  %what = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %what to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %what, align 4
  %call1 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %7, ptr noundef nonnull @trace_raw_output_netfs_sreq.symbols) #8
  %source = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %source, align 2
  %conv3 = sext i8 %9 to i32
  %call4 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %conv3, ptr noundef nonnull @trace_raw_output_netfs_sreq.symbols.75) #8
  %flags5 = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %flags5 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %flags5, align 8
  %conv6 = zext i16 %11 to i32
  %start = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %1, i32 0, i32 9
  %12 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %start, align 8
  %transferred = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %transferred, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %1, i32 0, i32 7
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len, align 8
  %error = getelementptr inbounds %struct.trace_event_raw_netfs_sreq, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %error, align 2
  %conv7 = sext i16 %19 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.65, i32 noundef %3, i32 noundef %conv, ptr noundef %call1, ptr noundef %call4, i32 noundef %conv6, i64 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %conv7) #8
  %call8 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_netfs_failure(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %tmp_seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 12
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %rreq = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rreq, align 8
  %index = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %index to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %index, align 4
  %conv = zext i16 %5 to i32
  %source = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %1, i32 0, i32 5
  %6 = ptrtoint ptr %source to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %source, align 2
  %conv1 = sext i8 %7 to i32
  %call2 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %conv1, ptr noundef nonnull @trace_raw_output_netfs_failure.symbols) #8
  %flags3 = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags3, align 8
  %conv4 = zext i16 %9 to i32
  %start = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %start, align 8
  %transferred = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %1, i32 0, i32 8
  %12 = ptrtoint ptr %transferred to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %transferred, align 4
  %len = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %1, i32 0, i32 7
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %len, align 8
  %what = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %what to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %what, align 4
  %call6 = tail call ptr @trace_print_symbols_seq(ptr noundef %tmp_seq, i32 noundef %17, ptr noundef nonnull @trace_raw_output_netfs_failure.symbols.82) #8
  %error = getelementptr inbounds %struct.trace_event_raw_netfs_failure, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %error to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %error, align 2
  %conv7 = sext i16 %19 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.81, i32 noundef %3, i32 noundef %conv, ptr noundef %call2, i32 noundef %conv4, i64 noundef %11, i32 noundef %13, i32 noundef %15, ptr noundef %call6, i32 noundef %conv7) #8
  %call8 = tail call i32 @trace_handle_return(ptr noundef %seq) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run4(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iov_iter_xarray(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @iov_iter_zero(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @i_size_read(ptr noundef %inode) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %i_size_seqcount = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23
  %dep_map.c48.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 23, i32 1
  %i_size18 = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 14
  br label %do.body

do.body:                                          ; preds = %while.end.do.body_crit_edge, %entry
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #8, !srcloc !324
  %and.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %do.body24.critedge.i

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @trace_hardirqs_off() #8
  %1 = tail call ptr @llvm.returnaddress(i32 0) #8
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %2) #8
  tail call void @trace_hardirqs_on() #8
  br label %do.body24.i

do.body24.critedge.i:                             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = tail call ptr @llvm.returnaddress(i32 0) #8
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #8
  tail call void @lock_release(ptr noundef %dep_map.c48.i, i32 noundef %4) #8
  br label %do.body24.i

do.body24.i:                                      ; preds = %do.body24.critedge.i, %if.then.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #8, !srcloc !325
  %and.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool32.not.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool32.not.i, label %if.then36.i, label %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge, !prof !285

do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge: ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %seqcount_lockdep_reader_access.exit

if.then36.i:                                      ; preds = %do.body24.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @warn_bogus_irq_restore() #8
  br label %seqcount_lockdep_reader_access.exit

seqcount_lockdep_reader_access.exit:              ; preds = %if.then36.i, %do.body24.i.seqcount_lockdep_reader_access.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #8, !srcloc !326
  %6 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_size_seqcount, align 4
  %and29 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool.not30 = icmp eq i32 %and29, 0
  br i1 %tobool.not30, label %seqcount_lockdep_reader_access.exit.while.end_crit_edge, label %seqcount_lockdep_reader_access.exit.do.end_crit_edge

seqcount_lockdep_reader_access.exit.do.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  br label %do.end

seqcount_lockdep_reader_access.exit.while.end_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %seqcount_lockdep_reader_access.exit.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !327
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #8, !srcloc !328
  %8 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %i_size_seqcount, align 4
  %and = and i32 %9, 1
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %seqcount_lockdep_reader_access.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.while.end_crit_edge ], [ %9, %do.end.while.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !329
  %10 = ptrtoint ptr %i_size18 to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %i_size18, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !330
  %12 = ptrtoint ptr %i_size_seqcount to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %i_size_seqcount, align 4
  %cmp.i.i.not = icmp eq i32 %13, %.lcssa
  br i1 %cmp.i.i.not, label %do.end24, label %while.end.do.body_crit_edge

while.end.do.body_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.end24:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  ret i64 %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netfs_rreq_work(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @netfs_rreq_assess(ptr noundef %work, i1 noundef zeroext false)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @readahead_expand(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netfs_cache_read_terminated(ptr noundef %priv, i32 noundef %transferred_or_error, i1 noundef zeroext %was_async) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @netfs_subreq_terminated(ptr noundef %priv, i32 noundef %transferred_or_error, i1 noundef zeroext %was_async)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xa_load(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dump_page(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_netfs_rreq(ptr noundef %rreq, i32 noundef %what) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_rreq, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_netfs_rreq, %do.body)) #8
          to label %if.end48 [label %do.body], !srcloc !292

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !284

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !331
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_rreq, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %rreq, i32 noundef %what) #8
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !332
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !332
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !284

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.91, i32 noundef 108, i32 noundef 9, ptr noundef null) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !295
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_netfs_rreq, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_netfs_rreq.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @trace_netfs_rreq.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.89, i32 noundef 180, ptr noundef nonnull @.str.90) #8
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !296
  %38 = tail call i32 @llvm.read_register.i32(metadata !274) #8
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
declare dso_local void @wake_up_bit(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xas_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @folio_start_fscache(ptr noundef %folio) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %0, align 4
  %and.i.i.i = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %folio_test_private_2.exit, label %if.then.i.i, !prof !284

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_private_2.exit:                        ; preds = %entry
  %3 = ptrtoint ptr %folio to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %folio, align 4
  %5 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not = icmp eq i32 %5, 0
  br i1 %tobool.i.not, label %do.end5, label %if.then, !prof !284

if.then:                                          ; preds = %folio_test_private_2.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.98) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/netfs.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 41, 0\0A.popsection", ""() #8, !srcloc !333
  unreachable

do.end5:                                          ; preds = %folio_test_private_2.exit
  %_refcount.i.i.i = getelementptr inbounds %struct.page, ptr %folio, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %_refcount.i.i.i, i32 noundef 4) #8
  %6 = ptrtoint ptr %_refcount.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %_refcount.i.i.i, align 4
  %add.i = add i32 %7, 127
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %add.i)
  %cmp.i = icmp ult i32 %add.i, 128
  br i1 %cmp.i, label %if.then.i, label %do.end5.i, !prof !285

if.then.i:                                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.102) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/mm.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1160, 0\0A.popsection", ""() #8, !srcloc !323
  unreachable

do.end5.i:                                        ; preds = %do.end5
  %call.i.i.i.i9.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %_refcount.i.i.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %_refcount.i.i.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %_refcount.i.i.i, ptr %_refcount.i.i.i, i32 1, ptr elementtype(i32) %_refcount.i.i.i) #8, !srcloc !287
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_page_ref_mod, i32 0, i32 1), ptr blockaddress(@folio_start_fscache, %if.then.i.i.i)) #8
          to label %folio_get.exit [label %if.then.i.i.i], !srcloc !292

if.then.i.i.i:                                    ; preds = %do.end5.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__page_ref_mod(ptr noundef %folio, i32 noundef 1) #8
  br label %folio_get.exit

folio_get.exit:                                   ; preds = %if.then.i.i.i, %do.end5.i
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %0, align 4
  %and.i.i.i9 = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i9)
  %tobool.not.i.i10 = icmp eq i32 %and.i.i.i9, 0
  br i1 %tobool.not.i.i10, label %folio_set_private_2.exit, label %if.then.i.i11, !prof !284

if.then.i.i11:                                    ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dump_page(ptr noundef %folio, ptr noundef nonnull @.str.94) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_set_private_2.exit:                         ; preds = %folio_get.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 14, ptr noundef %folio) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_dcache_folio(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @xas_next_entry(ptr noundef %xas, i32 noundef %max) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %xa_node = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %0 = ptrtoint ptr %xa_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xa_node, align 4
  %2 = ptrtoint ptr %1 to i32
  %and.i = and i32 %2, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp ne i32 %and.i, 0
  %tobool1.not.i = icmp eq ptr %1, null
  %spec.select.i = or i1 %tobool1.not.i, %tobool.not.i
  br i1 %spec.select.i, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false, !prof !285

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %lor.rhs, label %lor.lhs.false.cleanup.sink.split_crit_edge, !prof !284

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.rhs:                                          ; preds = %lor.lhs.false
  %xa_offset = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 4
  %5 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %xa_offset, align 2
  %conv2 = zext i8 %6 to i32
  %xa_index = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %7 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %xa_index, align 4
  %and = and i32 %8, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %conv2)
  %cmp.not = icmp eq i32 %and, %conv2
  br i1 %cmp.not, label %lor.rhs.do.body_crit_edge, label %lor.rhs.cleanup.sink.split_crit_edge, !prof !284

lor.rhs.cleanup.sink.split_crit_edge:             ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

lor.rhs.do.body_crit_edge:                        ; preds = %lor.rhs
  br label %do.body

do.body:                                          ; preds = %if.end44.do.body_crit_edge, %lor.rhs.do.body_crit_edge
  %9 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xa_index, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %max)
  %cmp8.not = icmp ult i32 %10, %max
  br i1 %cmp8.not, label %if.end18, label %do.body.cleanup.sink.split_crit_edge, !prof !284

do.body.cleanup.sink.split_crit_edge:             ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end18:                                         ; preds = %do.body
  %11 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %xa_offset, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %12)
  %cmp21 = icmp eq i8 %12, 63
  br i1 %cmp21, label %if.end18.cleanup.sink.split_crit_edge, label %if.end31, !prof !285

if.end18.cleanup.sink.split_crit_edge:            ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end31:                                         ; preds = %if.end18
  %conv20 = zext i8 %12 to i32
  %13 = ptrtoint ptr %xas to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %xas, align 4
  %add = add nuw nsw i32 %conv20, 1
  %arrayidx.i = getelementptr %struct.xa_node, ptr %1, i32 0, i32 7, i32 %add
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %arrayidx.i, align 4
  %dep_map.i = getelementptr inbounds %struct.anon, ptr %14, i32 0, i32 1
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i73 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i73, label %lor.lhs.false.i, label %if.end31.xa_entry.exit_crit_edge

if.end31.xa_entry.exit_crit_edge:                 ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  br label %xa_entry.exit

lor.lhs.false.i:                                  ; preds = %if.end31
  %call4.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.xa_entry.exit_crit_edge

lor.lhs.false.i.xa_entry.exit_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xa_entry.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call6.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool7.not.i = icmp eq i32 %call6.i, 0
  br i1 %tobool7.not.i, label %land.lhs.true.i.xa_entry.exit_crit_edge, label %land.lhs.true8.i

land.lhs.true.i.xa_entry.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xa_entry.exit

land.lhs.true8.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @xa_entry.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true8.i.xa_entry.exit_crit_edge, label %if.then.i

land.lhs.true8.i.xa_entry.exit_crit_edge:         ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %xa_entry.exit

if.then.i:                                        ; preds = %land.lhs.true8.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @xa_entry.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.99, i32 noundef 1183, ptr noundef nonnull @.str.90) #8
  br label %xa_entry.exit

xa_entry.exit:                                    ; preds = %if.then.i, %land.lhs.true8.i.xa_entry.exit_crit_edge, %land.lhs.true.i.xa_entry.exit_crit_edge, %lor.lhs.false.i.xa_entry.exit_crit_edge, %if.end31.xa_entry.exit_crit_edge
  %17 = ptrtoint ptr %16 to i32
  %and.i74 = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i74)
  %cmp.i = icmp eq i32 %and.i74, 2
  br i1 %cmp.i, label %xa_entry.exit.cleanup.sink.split_crit_edge, label %if.end44, !prof !285

xa_entry.exit.cleanup.sink.split_crit_edge:       ; preds = %xa_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split

if.end44:                                         ; preds = %xa_entry.exit
  %18 = ptrtoint ptr %xa_offset to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %xa_offset, align 2
  %inc = add i8 %19, 1
  store i8 %inc, ptr %xa_offset, align 2
  %20 = ptrtoint ptr %xa_index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %xa_index, align 4
  %inc47 = add i32 %21, 1
  store i32 %inc47, ptr %xa_index, align 4
  %tobool48.not = icmp eq ptr %16, null
  br i1 %tobool48.not, label %if.end44.do.body_crit_edge, label %if.end44.cleanup_crit_edge

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end44.do.body_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

cleanup.sink.split:                               ; preds = %xa_entry.exit.cleanup.sink.split_crit_edge, %if.end18.cleanup.sink.split_crit_edge, %do.body.cleanup.sink.split_crit_edge, %lor.rhs.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %call43 = tail call ptr @xas_find(ptr noundef %xas, i32 noundef %max) #8
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end44.cleanup_crit_edge
  %retval.0 = phi ptr [ %call43, %cleanup.sink.split ], [ %16, %if.end44.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netfs_rreq_write_to_cache_work(ptr noundef %work) #0 align 64 {
entry:
  %iter.i = alloca %struct.iov_iter, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cache_resources.i = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %iter.i) #8
  %0 = call ptr @memset(ptr %iter.i, i32 255, i32 24)
  tail call fastcc void @trace_netfs_rreq(ptr noundef %work, i32 noundef 6) #8
  %nr_wr_ops.i = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_wr_ops.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %nr_wr_ops.i, i32 1, i32 3, i32 1) #8
  %1 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_wr_ops.i, ptr %nr_wr_ops.i, i32 1, ptr elementtype(i32) %nr_wr_ops.i) #8, !srcloc !287
  %subrequests.i = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 4
  %2 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %subrequests.i, align 8
  %cmp.not123.i = icmp eq ptr %3, %subrequests.i
  br i1 %cmp.not123.i, label %entry.for.cond19.preheader.i_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for.cond19.preheader.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond19.preheader.i

for.cond19.preheader.i:                           ; preds = %for.inc.i.for.cond19.preheader.i_crit_edge, %entry.for.cond19.preheader.i_crit_edge
  %4 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn110129.i = load ptr, ptr %subrequests.i, align 4
  %cmp22.not131.i = icmp eq ptr %.pn110129.i, %subrequests.i
  br i1 %cmp22.not131.i, label %for.cond19.preheader.i.for.end63.i_crit_edge, label %while.cond.preheader.lr.ph.i

for.cond19.preheader.i.for.end63.i_crit_edge:     ; preds = %for.cond19.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end63.i

while.cond.preheader.lr.ph.i:                     ; preds = %for.cond19.preheader.i
  %i_size.i = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 12
  %mapping.i = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 2
  br label %while.cond.preheader.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in124.i = phi ptr [ %.pn127.i, %for.inc.i.for.body.i_crit_edge ], [ %3, %entry.for.body.i_crit_edge ]
  %subreq.0126.i = getelementptr i8, ptr %.pn.in124.i, i32 -4
  %5 = ptrtoint ptr %.pn.in124.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %.pn127.i = load ptr, ptr %.pn.in124.i, align 4
  %flags.i = getelementptr i8, ptr %.pn.in124.i, i32 40
  %6 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %call.i.i114.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in124.i) #8
  br i1 %call.i.i114.i, label %if.end.i.i.i, label %if.then.i.list_del_init.exit.i_crit_edge

if.then.i.list_del_init.exit.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in124.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i.i, align 4
  %10 = ptrtoint ptr %.pn.in124.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %.pn.in124.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.then.i.list_del_init.exit.i_crit_edge
  %14 = ptrtoint ptr %.pn.in124.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %.pn.in124.i, ptr %.pn.in124.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in124.i, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %.pn.in124.i, ptr %prev.i3.i.i, align 4
  tail call fastcc void @netfs_put_subrequest(ptr noundef %subreq.0126.i, i1 noundef zeroext false) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %list_del_init.exit.i, %for.body.i.for.inc.i_crit_edge
  %cmp.not.i = icmp eq ptr %.pn127.i, %subrequests.i
  br i1 %cmp.not.i, label %for.inc.i.for.cond19.preheader.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.cond19.preheader.i_crit_edge:       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond19.preheader.i

while.cond.preheader.i:                           ; preds = %for.inc57.i.while.cond.preheader.i_crit_edge, %while.cond.preheader.lr.ph.i
  %.pn110132.i = phi ptr [ %.pn110129.i, %while.cond.preheader.lr.ph.i ], [ %.pn110.i, %for.inc57.i.while.cond.preheader.i_crit_edge ]
  %subreq.1134.i = getelementptr i8, ptr %.pn110132.i, i32 -4
  %16 = ptrtoint ptr %.pn110132.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %.pn110132.i, align 4
  %cmp.i.not128.i = icmp eq ptr %17, %subrequests.i
  br i1 %cmp.i.not128.i, label %while.cond.preheader.i.while.end.i_crit_edge, label %while.body.lr.ph.i

while.cond.preheader.i.while.end.i_crit_edge:     ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %while.cond.preheader.i
  %start35.i = getelementptr i8, ptr %.pn110132.i, i32 12
  %len.i = getelementptr i8, ptr %.pn110132.i, i32 20
  br label %while.body.i

while.body.i:                                     ; preds = %list_del_init.exit120.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %18 = phi ptr [ %17, %while.body.lr.ph.i ], [ %37, %list_del_init.exit120.i.while.body.i_crit_edge ]
  %start.i = getelementptr i8, ptr %18, i32 12
  %19 = ptrtoint ptr %start.i to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %start.i, align 8
  %21 = ptrtoint ptr %start35.i to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %start35.i, align 8
  %23 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i, align 8
  %conv.i = zext i32 %24 to i64
  %add.i = add i64 %22, %conv.i
  call void @__sanitizer_cov_trace_cmp8(i64 %20, i64 %add.i)
  %cmp36.not.i = icmp eq i64 %20, %add.i
  br i1 %cmp36.not.i, label %if.end39.i, label %while.body.i.while.end.i_crit_edge

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

if.end39.i:                                       ; preds = %while.body.i
  %add.ptr34.i = getelementptr i8, ptr %18, i32 -4
  %len40.i = getelementptr i8, ptr %18, i32 20
  %25 = ptrtoint ptr %len40.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len40.i, align 8
  %add42.i = add i32 %26, %24
  %27 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %add42.i, ptr %len.i, align 8
  %call.i.i115.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %18) #8
  br i1 %call.i.i115.i, label %if.end.i.i118.i, label %if.end39.i.list_del_init.exit120.i_crit_edge

if.end39.i.list_del_init.exit120.i_crit_edge:     ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del_init.exit120.i

if.end.i.i118.i:                                  ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i116.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i116.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i116.i, align 4
  %30 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %18, align 4
  %prev1.i.i.i117.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i117.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del_init.exit120.i

list_del_init.exit120.i:                          ; preds = %if.end.i.i118.i, %if.end39.i.list_del_init.exit120.i_crit_edge
  %34 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %18, ptr %18, align 4
  %prev.i3.i119.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i3.i119.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %18, ptr %prev.i3.i119.i, align 4
  call fastcc void @netfs_put_subrequest(ptr noundef %add.ptr34.i, i1 noundef zeroext false) #8
  %36 = ptrtoint ptr %.pn110132.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %.pn110132.i, align 4
  %cmp.i.not.i = icmp eq ptr %37, %subrequests.i
  br i1 %cmp.i.not.i, label %list_del_init.exit120.i.while.end.i_crit_edge, label %list_del_init.exit120.i.while.body.i_crit_edge

list_del_init.exit120.i.while.body.i_crit_edge:   ; preds = %list_del_init.exit120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

list_del_init.exit120.i.while.end.i_crit_edge:    ; preds = %list_del_init.exit120.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end.i

while.end.i:                                      ; preds = %list_del_init.exit120.i.while.end.i_crit_edge, %while.body.i.while.end.i_crit_edge, %while.cond.preheader.i.while.end.i_crit_edge
  %38 = ptrtoint ptr %cache_resources.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cache_resources.i, align 4
  %prepare_write.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %prepare_write.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prepare_write.i, align 4
  %start44.i = getelementptr i8, ptr %.pn110132.i, i32 12
  %len45.i = getelementptr i8, ptr %.pn110132.i, i32 20
  %42 = ptrtoint ptr %i_size.i to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %i_size.i, align 8
  %call46.i = call i32 %41(ptr noundef %cache_resources.i, ptr noundef %start44.i, ptr noundef %len45.i, i64 noundef %43, i1 noundef zeroext true) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46.i)
  %cmp47.i = icmp slt i32 %call46.i, 0
  br i1 %cmp47.i, label %if.then49.i, label %if.end50.i

if.then49.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @trace_netfs_failure(ptr noundef %work, ptr noundef %subreq.1134.i, i32 noundef %call46.i, i32 noundef 5) #8
  call fastcc void @trace_netfs_sreq(ptr noundef %subreq.1134.i, i32 noundef 7) #8
  br label %for.inc57.i

if.end50.i:                                       ; preds = %while.end.i
  %44 = ptrtoint ptr %mapping.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %mapping.i, align 8
  %i_pages.i = getelementptr inbounds %struct.address_space, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %start44.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %start44.i, align 8
  %48 = ptrtoint ptr %len45.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %len45.i, align 8
  call void @iov_iter_xarray(ptr noundef nonnull %iter.i, i32 noundef 1, ptr noundef %i_pages.i, i64 noundef %47, i32 noundef %49) #8
  %call.i.i112.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_wr_ops.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %nr_wr_ops.i, i32 1, i32 3, i32 1) #8
  %50 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_wr_ops.i, ptr %nr_wr_ops.i, i32 1, ptr elementtype(i32) %nr_wr_ops.i) #8, !srcloc !287
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_write, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_write, i32 1, i32 3, i32 1) #8
  %51 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_write, ptr nonnull @netfs_n_rh_write, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_write) #8, !srcloc !287
  %usage.i.i = getelementptr i8, ptr %.pn110132.i, i32 28
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #8
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #8
  %52 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #8, !srcloc !308
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %52, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end50.i.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !285

if.end50.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end50.i
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %53 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %53)
  %.not.i.i.i.i.i = icmp sgt i32 %53, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.netfs_get_read_subrequest.exit.i_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !284

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.netfs_get_read_subrequest.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_get_read_subrequest.exit.i

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end50.i.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end50.i.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef %.sink.i.i.i.i.i) #8
  br label %netfs_get_read_subrequest.exit.i

netfs_get_read_subrequest.exit.i:                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.netfs_get_read_subrequest.exit.i_crit_edge
  call fastcc void @trace_netfs_sreq(ptr noundef %subreq.1134.i, i32 noundef 6) #8
  %54 = ptrtoint ptr %cache_resources.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cache_resources.i, align 4
  %write.i = getelementptr inbounds %struct.netfs_cache_ops, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write.i, align 4
  %58 = ptrtoint ptr %start44.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %start44.i, align 8
  %call56.i = call i32 %57(ptr noundef %cache_resources.i, i64 noundef %59, ptr noundef nonnull %iter.i, ptr noundef nonnull @netfs_rreq_copy_terminated, ptr noundef %subreq.1134.i) #8
  br label %for.inc57.i

for.inc57.i:                                      ; preds = %netfs_get_read_subrequest.exit.i, %if.then49.i
  %60 = ptrtoint ptr %.pn110132.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %.pn110.i = load ptr, ptr %.pn110132.i, align 4
  %cmp22.not.i = icmp eq ptr %.pn110.i, %subrequests.i
  br i1 %cmp22.not.i, label %for.inc57.i.for.end63.i_crit_edge, label %for.inc57.i.while.cond.preheader.i_crit_edge

for.inc57.i.while.cond.preheader.i_crit_edge:     ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond.preheader.i

for.inc57.i.for.end63.i_crit_edge:                ; preds = %for.inc57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end63.i

for.end63.i:                                      ; preds = %for.inc57.i.for.end63.i_crit_edge, %for.cond19.preheader.i.for.end63.i_crit_edge
  %call.i.i113.i = call zeroext i1 @__kasan_check_write(ptr noundef %nr_wr_ops.i, i32 noundef 4) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !288
  call void @llvm.prefetch.p0(ptr %nr_wr_ops.i, i32 1, i32 3, i32 1) #8
  %61 = call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_wr_ops.i, ptr %nr_wr_ops.i, i32 1, ptr elementtype(i32) %nr_wr_ops.i) #8, !srcloc !289
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %61, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then66.i, label %for.end63.i.netfs_rreq_do_write_to_cache.exit_crit_edge

for.end63.i.netfs_rreq_do_write_to_cache.exit_crit_edge: ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_do_write_to_cache.exit

if.then66.i:                                      ; preds = %for.end63.i
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @netfs_rreq_unmark_after_write(ptr noundef %work, i1 noundef zeroext false) #8
  br label %netfs_rreq_do_write_to_cache.exit

netfs_rreq_do_write_to_cache.exit:                ; preds = %if.then66.i, %for.end63.i.netfs_rreq_do_write_to_cache.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %iter.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netfs_rreq_copy_terminated(ptr noundef %priv, i32 noundef %transferred_or_error, i1 noundef zeroext %was_async) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %transferred_or_error)
  %cmp = icmp ugt i32 %transferred_or_error, -4096
  br i1 %cmp, label %if.then, label %if.else, !prof !285

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_write_failed, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_write_failed, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_write_failed, ptr nonnull @netfs_n_rh_write_failed, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_write_failed) #8, !srcloc !287
  tail call fastcc void @trace_netfs_failure(ptr noundef %1, ptr noundef %priv, i32 noundef %transferred_or_error, i32 noundef 1)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_write_done, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_write_done, i32 1, i32 3, i32 1) #8
  %3 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_write_done, ptr nonnull @netfs_n_rh_write_done, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_write_done) #8, !srcloc !287
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  tail call fastcc void @trace_netfs_sreq(ptr noundef %priv, i32 noundef 8)
  %nr_wr_ops = getelementptr inbounds %struct.netfs_read_request, ptr %1, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_wr_ops, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !288
  tail call void @llvm.prefetch.p0(ptr %nr_wr_ops, i32 1, i32 3, i32 1) #8
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_wr_ops, ptr %nr_wr_ops, i32 1, ptr elementtype(i32) %nr_wr_ops) #8, !srcloc !289
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %4, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !290
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then3, label %if.end.if.end5_crit_edge

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @netfs_rreq_unmark_after_write(ptr noundef %1, i1 noundef zeroext %was_async)
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  tail call fastcc void @netfs_put_subrequest(ptr noundef %priv, i1 noundef zeroext %was_async)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @netfs_rreq_unmark_after_write(ptr noundef %rreq, i1 noundef zeroext %was_async) unnamed_addr #0 align 64 {
entry:
  %xas = alloca %struct.xa_state, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !315
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.96, i32 noundef 696, ptr noundef nonnull @.str.97) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %subrequests = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 4
  %4 = ptrtoint ptr %subrequests to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn92 = load ptr, ptr %subrequests, align 4
  %cmp.not93 = icmp eq ptr %.pn92, %subrequests
  br i1 %cmp.not93, label %rcu_read_lock.exit.for.end28_crit_edge, label %for.body.lr.ph

rcu_read_lock.exit.for.end28_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.body.lr.ph:                                   ; preds = %rcu_read_lock.exit
  %5 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 1
  %6 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 2
  %7 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 6
  %8 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 7
  %9 = getelementptr inbounds %struct.xa_state, ptr %xas, i32 0, i32 8
  %mapping = getelementptr inbounds %struct.netfs_read_request, ptr %rreq, i32 0, i32 2
  %10 = getelementptr inbounds i8, ptr %xas, i32 4
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %.pn96 = phi ptr [ %.pn92, %for.body.lr.ph ], [ %.pn, %for.end.for.body_crit_edge ]
  %unlocked.095 = phi i32 [ 0, %for.body.lr.ph ], [ %unlocked.1.lcssa, %for.end.for.body_crit_edge ]
  %have_unlocked.0.off094 = phi i1 [ false, %for.body.lr.ph ], [ %have_unlocked.1.off0.lcssa, %for.end.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %xas) #8
  %11 = call ptr @memset(ptr %10, i32 255, i32 20)
  %12 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mapping, align 8
  %i_pages = getelementptr inbounds %struct.address_space, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %xas to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %i_pages, ptr %xas, align 4
  %start = getelementptr i8, ptr %.pn96, i32 12
  %15 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %start, align 8
  %div = sdiv i64 %16, 4096
  %conv = trunc i64 %div to i32
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv, ptr %5, align 4
  %18 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %6, align 4
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 3 to ptr), ptr %7, align 4
  %20 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %8, align 4
  %21 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %9, align 4
  %22 = load i64, ptr %start, align 8
  %len = getelementptr i8, ptr %.pn96, i32 20
  %23 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len, align 8
  %conv3 = zext i32 %24 to i64
  %add = add i64 %22, -1
  %sub = add i64 %add, %conv3
  %div4 = sdiv i64 %sub, 4096
  %conv5 = trunc i64 %div4 to i32
  %call = call ptr @xas_find(ptr noundef nonnull %xas, i32 noundef %conv5) #8
  %tobool.not85 = icmp eq ptr %call, null
  br i1 %tobool.not85, label %for.body.for.end_crit_edge, label %for.body7.preheader

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body7.preheader:                              ; preds = %for.body
  br i1 %have_unlocked.0.off094, label %land.lhs.true.peel, label %for.body7.preheader.if.end.peel_crit_edge

for.body7.preheader.if.end.peel_crit_edge:        ; preds = %for.body7.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.peel

land.lhs.true.peel:                               ; preds = %for.body7.preheader
  %25 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i.i45.peel = and i32 %27, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i45.peel)
  %tobool.not.i.i.i.i.peel = icmp eq i32 %and.i.i.i.i.i45.peel, 0
  br i1 %tobool.not.i.i.i.i.peel, label %folio_test_swapbacked.exit.i.i.peel, label %land.lhs.true.peel.if.then.i.i.i.i_crit_edge, !prof !284

land.lhs.true.peel.if.then.i.i.i.i_crit_edge:     ; preds = %land.lhs.true.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i

folio_test_swapbacked.exit.i.i.peel:              ; preds = %land.lhs.true.peel
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %call, align 4
  %30 = and i32 %29, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.i.not.i.i.peel = icmp eq i32 %30, 0
  br i1 %tobool.i.not.i.i.peel, label %folio_test_swapbacked.exit.i.i.peel.if.end.i.peel_crit_edge, label %land.rhs.i.i.peel

folio_test_swapbacked.exit.i.i.peel.if.end.i.peel_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.peel

land.rhs.i.i.peel:                                ; preds = %folio_test_swapbacked.exit.i.i.peel
  %31 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %25, align 4
  %and.i.i.i.i.peel = and i32 %32, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.peel)
  %tobool.not.i.i.i.peel = icmp eq i32 %and.i.i.i.i.peel, 0
  br i1 %tobool.not.i.i.i.peel, label %folio_test_swapcache.exit.i.peel, label %land.rhs.i.i.peel.if.then.i.i.i_crit_edge, !prof !284

land.rhs.i.i.peel.if.then.i.i.i_crit_edge:        ; preds = %land.rhs.i.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

folio_test_swapcache.exit.i.peel:                 ; preds = %land.rhs.i.i.peel
  %33 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %call, align 4
  %35 = and i32 %34, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.i.not.i.peel = icmp eq i32 %35, 0
  br i1 %tobool.i.not.i.peel, label %folio_test_swapcache.exit.i.peel.if.end.i.peel_crit_edge, label %if.then.i46.peel, !prof !284

folio_test_swapcache.exit.i.peel.if.end.i.peel_crit_edge: ; preds = %folio_test_swapcache.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.peel

if.then.i46.peel:                                 ; preds = %folio_test_swapcache.exit.i.peel
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i.peel = call i32 @__page_file_index(ptr noundef nonnull %call) #8
  br label %folio_index.exit.peel

if.end.i.peel:                                    ; preds = %folio_test_swapcache.exit.i.peel.if.end.i.peel_crit_edge, %folio_test_swapbacked.exit.i.i.peel.if.end.i.peel_crit_edge
  %index.i.peel = getelementptr inbounds %struct.anon.75, ptr %call, i32 0, i32 3
  %36 = ptrtoint ptr %index.i.peel to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index.i.peel, align 4
  br label %folio_index.exit.peel

folio_index.exit.peel:                            ; preds = %if.end.i.peel, %if.then.i46.peel
  %retval.0.i.peel = phi i32 [ %call2.i.peel, %if.then.i46.peel ], [ %37, %if.end.i.peel ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i.peel, i32 %unlocked.095)
  %cmp11.not.peel = icmp ugt i32 %retval.0.i.peel, %unlocked.095
  br i1 %cmp11.not.peel, label %folio_index.exit.peel.if.end.peel_crit_edge, label %folio_index.exit.peel.for.inc.peel_crit_edge

folio_index.exit.peel.for.inc.peel_crit_edge:     ; preds = %folio_index.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.peel

folio_index.exit.peel.if.end.peel_crit_edge:      ; preds = %folio_index.exit.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.peel

if.end.peel:                                      ; preds = %folio_index.exit.peel.if.end.peel_crit_edge, %for.body7.preheader.if.end.peel_crit_edge
  %38 = getelementptr inbounds %struct.page, ptr %call, i32 0, i32 1
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  %and.i.i.i.i.i47.peel = and i32 %40, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i47.peel)
  %tobool.not.i.i.i.i48.peel = icmp eq i32 %and.i.i.i.i.i47.peel, 0
  br i1 %tobool.not.i.i.i.i48.peel, label %folio_test_swapbacked.exit.i.i51.peel, label %if.end.peel.if.then.i.i.i.i49_crit_edge, !prof !284

if.end.peel.if.then.i.i.i.i49_crit_edge:          ; preds = %if.end.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i49

folio_test_swapbacked.exit.i.i51.peel:            ; preds = %if.end.peel
  %41 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %call, align 4
  %43 = and i32 %42, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.i.i50.peel = icmp eq i32 %43, 0
  br i1 %tobool.i.not.i.i50.peel, label %folio_test_swapbacked.exit.i.i51.peel.if.end.i61.peel_crit_edge, label %land.rhs.i.i54.peel

folio_test_swapbacked.exit.i.i51.peel.if.end.i61.peel_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i51.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i61.peel

land.rhs.i.i54.peel:                              ; preds = %folio_test_swapbacked.exit.i.i51.peel
  %44 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %38, align 4
  %and.i.i.i.i52.peel = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i52.peel)
  %tobool.not.i.i.i53.peel = icmp eq i32 %and.i.i.i.i52.peel, 0
  br i1 %tobool.not.i.i.i53.peel, label %folio_test_swapcache.exit.i57.peel, label %land.rhs.i.i54.peel.if.then.i.i.i55_crit_edge, !prof !284

land.rhs.i.i54.peel.if.then.i.i.i55_crit_edge:    ; preds = %land.rhs.i.i54.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i55

folio_test_swapcache.exit.i57.peel:               ; preds = %land.rhs.i.i54.peel
  %46 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %call, align 4
  %48 = and i32 %47, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.i56.peel = icmp eq i32 %48, 0
  br i1 %tobool.i.not.i56.peel, label %folio_test_swapcache.exit.i57.peel.if.end.i61.peel_crit_edge, label %if.then.i59.peel, !prof !284

folio_test_swapcache.exit.i57.peel.if.end.i61.peel_crit_edge: ; preds = %folio_test_swapcache.exit.i57.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i61.peel

if.then.i59.peel:                                 ; preds = %folio_test_swapcache.exit.i57.peel
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i58.peel = call i32 @__page_file_index(ptr noundef nonnull %call) #8
  br label %folio_index.exit63.peel

if.end.i61.peel:                                  ; preds = %folio_test_swapcache.exit.i57.peel.if.end.i61.peel_crit_edge, %folio_test_swapbacked.exit.i.i51.peel.if.end.i61.peel_crit_edge
  %index.i60.peel = getelementptr inbounds %struct.anon.75, ptr %call, i32 0, i32 3
  %49 = ptrtoint ptr %index.i60.peel to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index.i60.peel, align 4
  br label %folio_index.exit63.peel

folio_index.exit63.peel:                          ; preds = %if.end.i61.peel, %if.then.i59.peel
  %retval.0.i62.peel = phi i32 [ %call2.i58.peel, %if.then.i59.peel ], [ %50, %if.end.i61.peel ]
  call void @folio_end_private_2(ptr noundef nonnull %call) #8
  br label %for.inc.peel

for.inc.peel:                                     ; preds = %folio_index.exit63.peel, %folio_index.exit.peel.for.inc.peel_crit_edge
  %unlocked.2.peel = phi i32 [ %unlocked.095, %folio_index.exit.peel.for.inc.peel_crit_edge ], [ %retval.0.i62.peel, %folio_index.exit63.peel ]
  %51 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %start, align 8
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 8
  %conv16.peel = zext i32 %54 to i64
  %add17.peel = add i64 %52, -1
  %sub18.peel = add i64 %add17.peel, %conv16.peel
  %div19.peel = sdiv i64 %sub18.peel, 4096
  %conv20.peel = trunc i64 %div19.peel to i32
  %call21.peel = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas, i32 noundef %conv20.peel)
  %tobool.not.peel = icmp eq ptr %call21.peel, null
  br i1 %tobool.not.peel, label %for.inc.peel.for.end_crit_edge, label %for.inc.peel.land.lhs.true_crit_edge

for.inc.peel.land.lhs.true_crit_edge:             ; preds = %for.inc.peel
  br label %land.lhs.true

for.inc.peel.for.end_crit_edge:                   ; preds = %for.inc.peel
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true:                                    ; preds = %for.inc.land.lhs.true_crit_edge, %for.inc.peel.land.lhs.true_crit_edge
  %folio.088 = phi ptr [ %call21, %for.inc.land.lhs.true_crit_edge ], [ %call21.peel, %for.inc.peel.land.lhs.true_crit_edge ]
  %unlocked.187 = phi i32 [ %unlocked.2, %for.inc.land.lhs.true_crit_edge ], [ %unlocked.2.peel, %for.inc.peel.land.lhs.true_crit_edge ]
  %55 = getelementptr inbounds %struct.page, ptr %folio.088, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  %and.i.i.i.i.i45 = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i45)
  %tobool.not.i.i.i.i = icmp eq i32 %and.i.i.i.i.i45, 0
  br i1 %tobool.not.i.i.i.i, label %folio_test_swapbacked.exit.i.i, label %land.lhs.true.if.then.i.i.i.i_crit_edge, !prof !284

land.lhs.true.if.then.i.i.i.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true.if.then.i.i.i.i_crit_edge, %land.lhs.true.peel.if.then.i.i.i.i_crit_edge
  %folio.088.lcssa = phi ptr [ %folio.088, %land.lhs.true.if.then.i.i.i.i_crit_edge ], [ %call, %land.lhs.true.peel.if.then.i.i.i.i_crit_edge ]
  call void @dump_page(ptr noundef nonnull %folio.088.lcssa, ptr noundef nonnull @.str.94) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i:                   ; preds = %land.lhs.true
  %58 = ptrtoint ptr %folio.088 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %folio.088, align 4
  %60 = and i32 %59, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.i.not.i.i = icmp eq i32 %60, 0
  br i1 %tobool.i.not.i.i, label %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge, label %land.rhs.i.i

folio_test_swapbacked.exit.i.i.if.end.i_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.rhs.i.i:                                     ; preds = %folio_test_swapbacked.exit.i.i
  %61 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %55, align 4
  %and.i.i.i.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %folio_test_swapcache.exit.i, label %land.rhs.i.i.if.then.i.i.i_crit_edge, !prof !284

land.rhs.i.i.if.then.i.i.i_crit_edge:             ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.if.then.i.i.i_crit_edge, %land.rhs.i.i.peel.if.then.i.i.i_crit_edge
  %folio.088.lcssa97 = phi ptr [ %folio.088, %land.rhs.i.i.if.then.i.i.i_crit_edge ], [ %call, %land.rhs.i.i.peel.if.then.i.i.i_crit_edge ]
  call void @dump_page(ptr noundef nonnull %folio.088.lcssa97, ptr noundef nonnull @.str.94) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapcache.exit.i:                      ; preds = %land.rhs.i.i
  %63 = ptrtoint ptr %folio.088 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %folio.088, align 4
  %65 = and i32 %64, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool.i.not.i = icmp eq i32 %65, 0
  br i1 %tobool.i.not.i, label %folio_test_swapcache.exit.i.if.end.i_crit_edge, label %if.then.i46, !prof !284

folio_test_swapcache.exit.i.if.end.i_crit_edge:   ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i46:                                      ; preds = %folio_test_swapcache.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = call i32 @__page_file_index(ptr noundef nonnull %folio.088) #8
  br label %folio_index.exit

if.end.i:                                         ; preds = %folio_test_swapcache.exit.i.if.end.i_crit_edge, %folio_test_swapbacked.exit.i.i.if.end.i_crit_edge
  %index.i = getelementptr inbounds %struct.anon.75, ptr %folio.088, i32 0, i32 3
  %66 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index.i, align 4
  br label %folio_index.exit

folio_index.exit:                                 ; preds = %if.end.i, %if.then.i46
  %retval.0.i = phi i32 [ %call2.i, %if.then.i46 ], [ %67, %if.end.i ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %unlocked.187)
  %cmp11.not = icmp ugt i32 %retval.0.i, %unlocked.187
  br i1 %cmp11.not, label %if.end, label %folio_index.exit.for.inc_crit_edge

folio_index.exit.for.inc_crit_edge:               ; preds = %folio_index.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %folio_index.exit
  %68 = getelementptr inbounds %struct.page, ptr %folio.088, i32 0, i32 1
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile i32, ptr %68, align 4
  %and.i.i.i.i.i47 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i47)
  %tobool.not.i.i.i.i48 = icmp eq i32 %and.i.i.i.i.i47, 0
  br i1 %tobool.not.i.i.i.i48, label %folio_test_swapbacked.exit.i.i51, label %if.end.if.then.i.i.i.i49_crit_edge, !prof !284

if.end.if.then.i.i.i.i49_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i49

if.then.i.i.i.i49:                                ; preds = %if.end.if.then.i.i.i.i49_crit_edge, %if.end.peel.if.then.i.i.i.i49_crit_edge
  %folio.088.lcssa98 = phi ptr [ %folio.088, %if.end.if.then.i.i.i.i49_crit_edge ], [ %call, %if.end.peel.if.then.i.i.i.i49_crit_edge ]
  call void @dump_page(ptr noundef nonnull %folio.088.lcssa98, ptr noundef nonnull @.str.94) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapbacked.exit.i.i51:                 ; preds = %if.end
  %71 = ptrtoint ptr %folio.088 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %folio.088, align 4
  %73 = and i32 %72, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.i.not.i.i50 = icmp eq i32 %73, 0
  br i1 %tobool.i.not.i.i50, label %folio_test_swapbacked.exit.i.i51.if.end.i61_crit_edge, label %land.rhs.i.i54

folio_test_swapbacked.exit.i.i51.if.end.i61_crit_edge: ; preds = %folio_test_swapbacked.exit.i.i51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i61

land.rhs.i.i54:                                   ; preds = %folio_test_swapbacked.exit.i.i51
  %74 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %68, align 4
  %and.i.i.i.i52 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i52)
  %tobool.not.i.i.i53 = icmp eq i32 %and.i.i.i.i52, 0
  br i1 %tobool.not.i.i.i53, label %folio_test_swapcache.exit.i57, label %land.rhs.i.i54.if.then.i.i.i55_crit_edge, !prof !284

land.rhs.i.i54.if.then.i.i.i55_crit_edge:         ; preds = %land.rhs.i.i54
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i55

if.then.i.i.i55:                                  ; preds = %land.rhs.i.i54.if.then.i.i.i55_crit_edge, %land.rhs.i.i54.peel.if.then.i.i.i55_crit_edge
  %folio.088.lcssa99 = phi ptr [ %folio.088, %land.rhs.i.i54.if.then.i.i.i55_crit_edge ], [ %call, %land.rhs.i.i54.peel.if.then.i.i.i55_crit_edge ]
  call void @dump_page(ptr noundef nonnull %folio.088.lcssa99, ptr noundef nonnull @.str.94) #8
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/page-flags.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 260, 0\0A.popsection", ""() #8, !srcloc !311
  unreachable

folio_test_swapcache.exit.i57:                    ; preds = %land.rhs.i.i54
  %76 = ptrtoint ptr %folio.088 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %folio.088, align 4
  %78 = and i32 %77, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i.not.i56 = icmp eq i32 %78, 0
  br i1 %tobool.i.not.i56, label %folio_test_swapcache.exit.i57.if.end.i61_crit_edge, label %if.then.i59, !prof !284

folio_test_swapcache.exit.i57.if.end.i61_crit_edge: ; preds = %folio_test_swapcache.exit.i57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i61

if.then.i59:                                      ; preds = %folio_test_swapcache.exit.i57
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i58 = call i32 @__page_file_index(ptr noundef nonnull %folio.088) #8
  br label %folio_index.exit63

if.end.i61:                                       ; preds = %folio_test_swapcache.exit.i57.if.end.i61_crit_edge, %folio_test_swapbacked.exit.i.i51.if.end.i61_crit_edge
  %index.i60 = getelementptr inbounds %struct.anon.75, ptr %folio.088, i32 0, i32 3
  %79 = ptrtoint ptr %index.i60 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %index.i60, align 4
  br label %folio_index.exit63

folio_index.exit63:                               ; preds = %if.end.i61, %if.then.i59
  %retval.0.i62 = phi i32 [ %call2.i58, %if.then.i59 ], [ %80, %if.end.i61 ]
  call void @folio_end_private_2(ptr noundef nonnull %folio.088) #8
  br label %for.inc

for.inc:                                          ; preds = %folio_index.exit63, %folio_index.exit.for.inc_crit_edge
  %unlocked.2 = phi i32 [ %unlocked.187, %folio_index.exit.for.inc_crit_edge ], [ %retval.0.i62, %folio_index.exit63 ]
  %81 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %start, align 8
  %83 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len, align 8
  %conv16 = zext i32 %84 to i64
  %add17 = add i64 %82, -1
  %sub18 = add i64 %add17, %conv16
  %div19 = sdiv i64 %sub18, 4096
  %conv20 = trunc i64 %div19 to i32
  %call21 = call fastcc ptr @xas_next_entry(ptr noundef nonnull %xas, i32 noundef %conv20)
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.land.lhs.true_crit_edge, !llvm.loop !334

for.inc.land.lhs.true_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.inc.peel.for.end_crit_edge, %for.body.for.end_crit_edge
  %have_unlocked.1.off0.lcssa = phi i1 [ %have_unlocked.0.off094, %for.body.for.end_crit_edge ], [ true, %for.inc.peel.for.end_crit_edge ], [ true, %for.inc.for.end_crit_edge ]
  %unlocked.1.lcssa = phi i32 [ %unlocked.095, %for.body.for.end_crit_edge ], [ %unlocked.2.peel, %for.inc.peel.for.end_crit_edge ], [ %unlocked.2, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %xas) #8
  %85 = ptrtoint ptr %.pn96 to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn = load ptr, ptr %.pn96, align 4
  %cmp.not = icmp eq ptr %.pn, %subrequests
  br i1 %cmp.not, label %for.end.for.end28_crit_edge, label %for.end.for.body_crit_edge

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.for.end28_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end28

for.end28:                                        ; preds = %for.end.for.end28_crit_edge, %rcu_read_lock.exit.for.end28_crit_edge
  %call.i64 = call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i64, label %for.end28.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i67

for.end28.rcu_read_unlock.exit_crit_edge:         ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i67:                                ; preds = %for.end28
  %call1.i65 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i65)
  %tobool.not.i66 = icmp eq i32 %call1.i65, 0
  br i1 %tobool.not.i66, label %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i69

land.lhs.true.i67.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i67
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i69:                               ; preds = %land.lhs.true.i67
  %.b4.i68 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i68, label %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, label %if.then.i70

land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i70:                                      ; preds = %land.lhs.true2.i69
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.96, i32 noundef 724, ptr noundef nonnull @.str.100) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i70, %land.lhs.true2.i69.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i67.rcu_read_unlock.exit_crit_edge, %for.end28.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #8, !srcloc !317
  %86 = call i32 @llvm.read_register.i32(metadata !274) #8
  %and.i.i.i.i.i71 = and i32 %86, -16384
  %87 = inttoptr i32 %and.i.i.i.i.i71 to ptr
  %preempt_count.i.i.i.i72 = getelementptr inbounds %struct.thread_info, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %preempt_count.i.i.i.i72 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %preempt_count.i.i.i.i72, align 4
  %sub.i.i.i = add i32 %89, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i72, align 4
  call void @rcu_read_unlock_strict() #8
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  call fastcc void @trace_netfs_rreq(ptr noundef %rreq, i32 noundef 1) #8
  %90 = ptrtoint ptr %subrequests to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %subrequests, align 4
  %cmp.i.not5.i.i = icmp eq ptr %91, %subrequests
  br i1 %cmp.i.not5.i.i, label %rcu_read_unlock.exit.netfs_rreq_completed.exit_crit_edge, label %rcu_read_unlock.exit.while.body.i.i_crit_edge

rcu_read_unlock.exit.while.body.i.i_crit_edge:    ; preds = %rcu_read_unlock.exit
  br label %while.body.i.i

rcu_read_unlock.exit.netfs_rreq_completed.exit_crit_edge: ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_completed.exit

while.body.i.i:                                   ; preds = %list_del.exit.i.i.while.body.i.i_crit_edge, %rcu_read_unlock.exit.while.body.i.i_crit_edge
  %92 = phi ptr [ %102, %list_del.exit.i.i.while.body.i.i_crit_edge ], [ %91, %rcu_read_unlock.exit.while.body.i.i_crit_edge ]
  %add.ptr.i.i = getelementptr i8, ptr %92, i32 -4
  %call.i.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %92) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %while.body.i.i.list_del.exit.i.i_crit_edge

while.body.i.i.list_del.exit.i.i_crit_edge:       ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i.i.i, align 4
  %95 = ptrtoint ptr %92 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %92, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %while.body.i.i.list_del.exit.i.i_crit_edge
  %99 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %92, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  call fastcc void @netfs_put_subrequest(ptr noundef %add.ptr.i.i, i1 noundef zeroext %was_async) #8
  %101 = ptrtoint ptr %subrequests to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile ptr, ptr %subrequests, align 4
  %cmp.i.not.i.i = icmp eq ptr %102, %subrequests
  br i1 %cmp.i.not.i.i, label %list_del.exit.i.i.netfs_rreq_completed.exit_crit_edge, label %list_del.exit.i.i.while.body.i.i_crit_edge

list_del.exit.i.i.while.body.i.i_crit_edge:       ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i.i

list_del.exit.i.i.netfs_rreq_completed.exit_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_completed.exit

netfs_rreq_completed.exit:                        ; preds = %list_del.exit.i.i.netfs_rreq_completed.exit_crit_edge, %rcu_read_unlock.exit.netfs_rreq_completed.exit_crit_edge
  call fastcc void @netfs_put_read_request(ptr noundef %rreq, i1 noundef zeroext %was_async) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @folio_end_private_2(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netfs_free_read_request(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %subrequests.i = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 4
  %0 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %subrequests.i, align 4
  %cmp.i.not5.i = icmp eq ptr %1, %subrequests.i
  br i1 %cmp.i.not5.i, label %entry.netfs_rreq_clear_subreqs.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.netfs_rreq_clear_subreqs.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_clear_subreqs.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %2, i32 -4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call fastcc void @netfs_put_subrequest(ptr noundef %add.ptr.i, i1 noundef zeroext false) #8
  %11 = ptrtoint ptr %subrequests.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %subrequests.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %subrequests.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.netfs_rreq_clear_subreqs.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

list_del.exit.i.netfs_rreq_clear_subreqs.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netfs_rreq_clear_subreqs.exit

netfs_rreq_clear_subreqs.exit:                    ; preds = %list_del.exit.i.netfs_rreq_clear_subreqs.exit_crit_edge, %entry.netfs_rreq_clear_subreqs.exit_crit_edge
  %netfs_priv = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 5
  %13 = ptrtoint ptr %netfs_priv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %netfs_priv, align 8
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %netfs_rreq_clear_subreqs.exit.if.end_crit_edge, label %if.then

netfs_rreq_clear_subreqs.exit.if.end_crit_edge:   ; preds = %netfs_rreq_clear_subreqs.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %netfs_rreq_clear_subreqs.exit
  call void @__sanitizer_cov_trace_pc() #10
  %netfs_ops = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 17
  %15 = ptrtoint ptr %netfs_ops to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %netfs_ops, align 4
  %cleanup = getelementptr inbounds %struct.netfs_read_request_ops, ptr %16, i32 0, i32 9
  %17 = ptrtoint ptr %cleanup to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cleanup, align 4
  %mapping = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 2
  %19 = ptrtoint ptr %mapping to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mapping, align 8
  tail call void %18(ptr noundef %20, ptr noundef nonnull %14) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %netfs_rreq_clear_subreqs.exit.if.end_crit_edge
  tail call fastcc void @trace_netfs_rreq(ptr noundef %work, i32 noundef 2)
  %cache_resources = getelementptr inbounds %struct.netfs_read_request, ptr %work, i32 0, i32 3
  %21 = ptrtoint ptr %cache_resources to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cache_resources, align 4
  %tobool2.not = icmp eq ptr %22, null
  br i1 %tobool2.not, label %if.end.if.end7_crit_edge, label %if.then3

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  tail call void %24(ptr noundef %cache_resources) #8
  br label %if.end7

if.end7:                                          ; preds = %if.then3, %if.end.if.end7_crit_edge
  tail call void @kfree(ptr noundef %work) #8
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull @netfs_n_rh_rreq, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull @netfs_n_rh_rreq, i32 1, i32 3, i32 1) #8
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) @netfs_n_rh_rreq, ptr nonnull @netfs_n_rh_rreq, i32 1, ptr nonnull elementtype(i32) @netfs_n_rh_rreq) #8, !srcloc !302
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @swapcache_mapping(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__page_file_index(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @zero_user_segments(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cond_resched() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @folio_wait_private_2_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__page_ref_mod_and_test(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 127)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !129, !131, !133, !134, !136, !137, !139, !141, !142, !144, !146, !148, !150, !152, !153, !154, !155, !156, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !238, !239, !240, !241, !243, !245, !246, !247, !248, !250, !252, !254, !255, !256, !258, !259, !260, !262, !264, !265, !267, !268, !270, !272}
!llvm.named.register.sp = !{!274}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280, !281, !282}
!llvm.ident = !{!283}

!0 = !{ptr @__tracepoint_netfs_read, !1, !"__tracepoint_netfs_read", i1 false, i1 false}
!1 = !{!"../include/trace/events/netfs.h", i32 125, i32 1}
!2 = !{ptr @__tracepoint_ptr_netfs_read, !1, !"__tracepoint_ptr_netfs_read", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_netfs_read, !1, !"__SCK__tp_func_netfs_read", i1 false, i1 false}
!4 = !{ptr @__tracepoint_netfs_rreq, !5, !"__tracepoint_netfs_rreq", i1 false, i1 false}
!5 = !{!"../include/trace/events/netfs.h", i32 158, i32 1}
!6 = !{ptr @__tracepoint_ptr_netfs_rreq, !5, !"__tracepoint_ptr_netfs_rreq", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_netfs_rreq, !5, !"__SCK__tp_func_netfs_rreq", i1 false, i1 false}
!8 = !{ptr @__tracepoint_netfs_sreq, !9, !"__tracepoint_netfs_sreq", i1 false, i1 false}
!9 = !{!"../include/trace/events/netfs.h", i32 182, i32 1}
!10 = !{ptr @__tracepoint_ptr_netfs_sreq, !9, !"__tracepoint_ptr_netfs_sreq", i1 false, i1 false}
!11 = !{ptr @__SCK__tp_func_netfs_sreq, !9, !"__SCK__tp_func_netfs_sreq", i1 false, i1 false}
!12 = !{ptr @__tracepoint_netfs_failure, !13, !"__tracepoint_netfs_failure", i1 false, i1 false}
!13 = !{!"../include/trace/events/netfs.h", i32 221, i32 1}
!14 = !{ptr @__tracepoint_ptr_netfs_failure, !13, !"__tracepoint_ptr_netfs_failure", i1 false, i1 false}
!15 = !{ptr @__SCK__tp_func_netfs_failure, !13, !"__SCK__tp_func_netfs_failure", i1 false, i1 false}
!16 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../include/trace/events/netfs.h", i32 110, i32 1}
!18 = !{ptr @__TRACE_SYSTEM_netfs_read_trace_expanded, !17, !"__TRACE_SYSTEM_netfs_read_trace_expanded", i1 false, i1 false}
!19 = !{ptr @TRACE_SYSTEM_netfs_read_trace_expanded, !17, !"TRACE_SYSTEM_netfs_read_trace_expanded", i1 false, i1 false}
!20 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @__TRACE_SYSTEM_netfs_read_trace_readahead, !17, !"__TRACE_SYSTEM_netfs_read_trace_readahead", i1 false, i1 false}
!22 = !{ptr @TRACE_SYSTEM_netfs_read_trace_readahead, !17, !"TRACE_SYSTEM_netfs_read_trace_readahead", i1 false, i1 false}
!23 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @__TRACE_SYSTEM_netfs_read_trace_readpage, !17, !"__TRACE_SYSTEM_netfs_read_trace_readpage", i1 false, i1 false}
!25 = !{ptr @TRACE_SYSTEM_netfs_read_trace_readpage, !17, !"TRACE_SYSTEM_netfs_read_trace_readpage", i1 false, i1 false}
!26 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @__TRACE_SYSTEM_netfs_read_trace_write_begin, !17, !"__TRACE_SYSTEM_netfs_read_trace_write_begin", i1 false, i1 false}
!28 = !{ptr @TRACE_SYSTEM_netfs_read_trace_write_begin, !17, !"TRACE_SYSTEM_netfs_read_trace_write_begin", i1 false, i1 false}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../include/trace/events/netfs.h", i32 111, i32 1}
!31 = !{ptr @__TRACE_SYSTEM_netfs_rreq_trace_assess, !30, !"__TRACE_SYSTEM_netfs_rreq_trace_assess", i1 false, i1 false}
!32 = !{ptr @TRACE_SYSTEM_netfs_rreq_trace_assess, !30, !"TRACE_SYSTEM_netfs_rreq_trace_assess", i1 false, i1 false}
!33 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @__TRACE_SYSTEM_netfs_rreq_trace_done, !30, !"__TRACE_SYSTEM_netfs_rreq_trace_done", i1 false, i1 false}
!35 = !{ptr @TRACE_SYSTEM_netfs_rreq_trace_done, !30, !"TRACE_SYSTEM_netfs_rreq_trace_done", i1 false, i1 false}
!36 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @__TRACE_SYSTEM_netfs_rreq_trace_free, !30, !"__TRACE_SYSTEM_netfs_rreq_trace_free", i1 false, i1 false}
!38 = !{ptr @TRACE_SYSTEM_netfs_rreq_trace_free, !30, !"TRACE_SYSTEM_netfs_rreq_trace_free", i1 false, i1 false}
!39 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__TRACE_SYSTEM_netfs_rreq_trace_resubmit, !30, !"__TRACE_SYSTEM_netfs_rreq_trace_resubmit", i1 false, i1 false}
!41 = !{ptr @TRACE_SYSTEM_netfs_rreq_trace_resubmit, !30, !"TRACE_SYSTEM_netfs_rreq_trace_resubmit", i1 false, i1 false}
!42 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @__TRACE_SYSTEM_netfs_rreq_trace_unlock, !30, !"__TRACE_SYSTEM_netfs_rreq_trace_unlock", i1 false, i1 false}
!44 = !{ptr @TRACE_SYSTEM_netfs_rreq_trace_unlock, !30, !"TRACE_SYSTEM_netfs_rreq_trace_unlock", i1 false, i1 false}
!45 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__TRACE_SYSTEM_netfs_rreq_trace_unmark, !30, !"__TRACE_SYSTEM_netfs_rreq_trace_unmark", i1 false, i1 false}
!47 = !{ptr @TRACE_SYSTEM_netfs_rreq_trace_unmark, !30, !"TRACE_SYSTEM_netfs_rreq_trace_unmark", i1 false, i1 false}
!48 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @__TRACE_SYSTEM_netfs_rreq_trace_write, !30, !"__TRACE_SYSTEM_netfs_rreq_trace_write", i1 false, i1 false}
!50 = !{ptr @TRACE_SYSTEM_netfs_rreq_trace_write, !30, !"TRACE_SYSTEM_netfs_rreq_trace_write", i1 false, i1 false}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../include/trace/events/netfs.h", i32 112, i32 1}
!53 = !{ptr @__TRACE_SYSTEM_NETFS_FILL_WITH_ZEROES, !52, !"__TRACE_SYSTEM_NETFS_FILL_WITH_ZEROES", i1 false, i1 false}
!54 = !{ptr @TRACE_SYSTEM_NETFS_FILL_WITH_ZEROES, !52, !"TRACE_SYSTEM_NETFS_FILL_WITH_ZEROES", i1 false, i1 false}
!55 = !{ptr @.str.12, !52, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__TRACE_SYSTEM_NETFS_DOWNLOAD_FROM_SERVER, !52, !"__TRACE_SYSTEM_NETFS_DOWNLOAD_FROM_SERVER", i1 false, i1 false}
!57 = !{ptr @TRACE_SYSTEM_NETFS_DOWNLOAD_FROM_SERVER, !52, !"TRACE_SYSTEM_NETFS_DOWNLOAD_FROM_SERVER", i1 false, i1 false}
!58 = !{ptr @.str.13, !52, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @__TRACE_SYSTEM_NETFS_READ_FROM_CACHE, !52, !"__TRACE_SYSTEM_NETFS_READ_FROM_CACHE", i1 false, i1 false}
!60 = !{ptr @TRACE_SYSTEM_NETFS_READ_FROM_CACHE, !52, !"TRACE_SYSTEM_NETFS_READ_FROM_CACHE", i1 false, i1 false}
!61 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__TRACE_SYSTEM_NETFS_INVALID_READ, !52, !"__TRACE_SYSTEM_NETFS_INVALID_READ", i1 false, i1 false}
!63 = !{ptr @TRACE_SYSTEM_NETFS_INVALID_READ, !52, !"TRACE_SYSTEM_NETFS_INVALID_READ", i1 false, i1 false}
!64 = !{ptr @.str.15, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../include/trace/events/netfs.h", i32 113, i32 1}
!66 = !{ptr @__TRACE_SYSTEM_netfs_sreq_trace_download_instead, !65, !"__TRACE_SYSTEM_netfs_sreq_trace_download_instead", i1 false, i1 false}
!67 = !{ptr @TRACE_SYSTEM_netfs_sreq_trace_download_instead, !65, !"TRACE_SYSTEM_netfs_sreq_trace_download_instead", i1 false, i1 false}
!68 = !{ptr @.str.16, !65, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @__TRACE_SYSTEM_netfs_sreq_trace_free, !65, !"__TRACE_SYSTEM_netfs_sreq_trace_free", i1 false, i1 false}
!70 = !{ptr @TRACE_SYSTEM_netfs_sreq_trace_free, !65, !"TRACE_SYSTEM_netfs_sreq_trace_free", i1 false, i1 false}
!71 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__TRACE_SYSTEM_netfs_sreq_trace_prepare, !65, !"__TRACE_SYSTEM_netfs_sreq_trace_prepare", i1 false, i1 false}
!73 = !{ptr @TRACE_SYSTEM_netfs_sreq_trace_prepare, !65, !"TRACE_SYSTEM_netfs_sreq_trace_prepare", i1 false, i1 false}
!74 = !{ptr @.str.18, !65, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__TRACE_SYSTEM_netfs_sreq_trace_resubmit_short, !65, !"__TRACE_SYSTEM_netfs_sreq_trace_resubmit_short", i1 false, i1 false}
!76 = !{ptr @TRACE_SYSTEM_netfs_sreq_trace_resubmit_short, !65, !"TRACE_SYSTEM_netfs_sreq_trace_resubmit_short", i1 false, i1 false}
!77 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @__TRACE_SYSTEM_netfs_sreq_trace_submit, !65, !"__TRACE_SYSTEM_netfs_sreq_trace_submit", i1 false, i1 false}
!79 = !{ptr @TRACE_SYSTEM_netfs_sreq_trace_submit, !65, !"TRACE_SYSTEM_netfs_sreq_trace_submit", i1 false, i1 false}
!80 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @__TRACE_SYSTEM_netfs_sreq_trace_terminated, !65, !"__TRACE_SYSTEM_netfs_sreq_trace_terminated", i1 false, i1 false}
!82 = !{ptr @TRACE_SYSTEM_netfs_sreq_trace_terminated, !65, !"TRACE_SYSTEM_netfs_sreq_trace_terminated", i1 false, i1 false}
!83 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @__TRACE_SYSTEM_netfs_sreq_trace_write, !65, !"__TRACE_SYSTEM_netfs_sreq_trace_write", i1 false, i1 false}
!85 = !{ptr @TRACE_SYSTEM_netfs_sreq_trace_write, !65, !"TRACE_SYSTEM_netfs_sreq_trace_write", i1 false, i1 false}
!86 = !{ptr @.str.22, !65, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @__TRACE_SYSTEM_netfs_sreq_trace_write_skip, !65, !"__TRACE_SYSTEM_netfs_sreq_trace_write_skip", i1 false, i1 false}
!88 = !{ptr @TRACE_SYSTEM_netfs_sreq_trace_write_skip, !65, !"TRACE_SYSTEM_netfs_sreq_trace_write_skip", i1 false, i1 false}
!89 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @__TRACE_SYSTEM_netfs_sreq_trace_write_term, !65, !"__TRACE_SYSTEM_netfs_sreq_trace_write_term", i1 false, i1 false}
!91 = !{ptr @TRACE_SYSTEM_netfs_sreq_trace_write_term, !65, !"TRACE_SYSTEM_netfs_sreq_trace_write_term", i1 false, i1 false}
!92 = !{ptr @.str.24, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../include/trace/events/netfs.h", i32 114, i32 1}
!94 = !{ptr @__TRACE_SYSTEM_netfs_fail_check_write_begin, !93, !"__TRACE_SYSTEM_netfs_fail_check_write_begin", i1 false, i1 false}
!95 = !{ptr @TRACE_SYSTEM_netfs_fail_check_write_begin, !93, !"TRACE_SYSTEM_netfs_fail_check_write_begin", i1 false, i1 false}
!96 = !{ptr @.str.25, !93, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @__TRACE_SYSTEM_netfs_fail_copy_to_cache, !93, !"__TRACE_SYSTEM_netfs_fail_copy_to_cache", i1 false, i1 false}
!98 = !{ptr @TRACE_SYSTEM_netfs_fail_copy_to_cache, !93, !"TRACE_SYSTEM_netfs_fail_copy_to_cache", i1 false, i1 false}
!99 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @__TRACE_SYSTEM_netfs_fail_read, !93, !"__TRACE_SYSTEM_netfs_fail_read", i1 false, i1 false}
!101 = !{ptr @TRACE_SYSTEM_netfs_fail_read, !93, !"TRACE_SYSTEM_netfs_fail_read", i1 false, i1 false}
!102 = !{ptr @.str.27, !93, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @__TRACE_SYSTEM_netfs_fail_short_readpage, !93, !"__TRACE_SYSTEM_netfs_fail_short_readpage", i1 false, i1 false}
!104 = !{ptr @TRACE_SYSTEM_netfs_fail_short_readpage, !93, !"TRACE_SYSTEM_netfs_fail_short_readpage", i1 false, i1 false}
!105 = !{ptr @.str.28, !93, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @__TRACE_SYSTEM_netfs_fail_short_write_begin, !93, !"__TRACE_SYSTEM_netfs_fail_short_write_begin", i1 false, i1 false}
!107 = !{ptr @TRACE_SYSTEM_netfs_fail_short_write_begin, !93, !"TRACE_SYSTEM_netfs_fail_short_write_begin", i1 false, i1 false}
!108 = !{ptr @.str.29, !93, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @__TRACE_SYSTEM_netfs_fail_prepare_write, !93, !"__TRACE_SYSTEM_netfs_fail_prepare_write", i1 false, i1 false}
!110 = !{ptr @TRACE_SYSTEM_netfs_fail_prepare_write, !93, !"TRACE_SYSTEM_netfs_fail_prepare_write", i1 false, i1 false}
!111 = !{ptr @event_class_netfs_read, !1, !"event_class_netfs_read", i1 false, i1 false}
!112 = !{ptr @event_netfs_read, !1, !"event_netfs_read", i1 false, i1 false}
!113 = !{ptr @__event_netfs_read, !1, !"__event_netfs_read", i1 false, i1 false}
!114 = !{ptr @event_class_netfs_rreq, !5, !"event_class_netfs_rreq", i1 false, i1 false}
!115 = !{ptr @event_netfs_rreq, !5, !"event_netfs_rreq", i1 false, i1 false}
!116 = !{ptr @__event_netfs_rreq, !5, !"__event_netfs_rreq", i1 false, i1 false}
!117 = !{ptr @event_class_netfs_sreq, !9, !"event_class_netfs_sreq", i1 false, i1 false}
!118 = !{ptr @event_netfs_sreq, !9, !"event_netfs_sreq", i1 false, i1 false}
!119 = !{ptr @__event_netfs_sreq, !9, !"__event_netfs_sreq", i1 false, i1 false}
!120 = !{ptr @event_class_netfs_failure, !13, !"event_class_netfs_failure", i1 false, i1 false}
!121 = !{ptr @event_netfs_failure, !13, !"event_netfs_failure", i1 false, i1 false}
!122 = !{ptr @__event_netfs_failure, !13, !"__event_netfs_failure", i1 false, i1 false}
!123 = !{ptr @__bpf_trace_tp_map_netfs_read, !1, !"__bpf_trace_tp_map_netfs_read", i1 false, i1 false}
!124 = !{ptr @__bpf_trace_tp_map_netfs_rreq, !5, !"__bpf_trace_tp_map_netfs_rreq", i1 false, i1 false}
!125 = !{ptr @__bpf_trace_tp_map_netfs_sreq, !9, !"__bpf_trace_tp_map_netfs_sreq", i1 false, i1 false}
!126 = !{ptr @__bpf_trace_tp_map_netfs_failure, !13, !"__bpf_trace_tp_map_netfs_failure", i1 false, i1 false}
!127 = !{ptr @__UNIQUE_ID_description297, !128, !"__UNIQUE_ID_description297", i1 false, i1 false}
!128 = !{!"../fs/netfs/read_helper.c", i32 22, i32 1}
!129 = !{ptr @__UNIQUE_ID_author298, !130, !"__UNIQUE_ID_author298", i1 false, i1 false}
!130 = !{!"../fs/netfs/read_helper.c", i32 23, i32 1}
!131 = !{ptr @__UNIQUE_ID_file299, !132, !"__UNIQUE_ID_file299", i1 false, i1 false}
!132 = !{!"../fs/netfs/read_helper.c", i32 24, i32 1}
!133 = !{ptr @__UNIQUE_ID_license300, !132, !"__UNIQUE_ID_license300", i1 false, i1 false}
!134 = !{ptr @__param_debug, !135, !"__param_debug", i1 false, i1 false}
!135 = !{!"../fs/netfs/read_helper.c", i32 27, i32 1}
!136 = !{ptr @__UNIQUE_ID_debugtype301, !135, !"__UNIQUE_ID_debugtype301", i1 false, i1 false}
!137 = !{ptr @__UNIQUE_ID_netfs_debug302, !138, !"__UNIQUE_ID_netfs_debug302", i1 false, i1 false}
!138 = !{!"../fs/netfs/read_helper.c", i32 28, i32 1}
!139 = !{ptr @.str.30, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../fs/netfs/read_helper.c", i32 632, i32 6}
!141 = !{ptr @.str.31, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @__ksymtab_netfs_subreq_terminated, !143, !"__ksymtab_netfs_subreq_terminated", i1 false, i1 false}
!143 = !{!"../fs/netfs/read_helper.c", i32 692, i32 1}
!144 = !{ptr @__ksymtab_netfs_readahead, !145, !"__ksymtab_netfs_readahead", i1 false, i1 false}
!145 = !{!"../fs/netfs/read_helper.c", i32 926, i32 1}
!146 = !{ptr @__ksymtab_netfs_readpage, !147, !"__ksymtab_netfs_readpage", i1 false, i1 false}
!147 = !{!"../fs/netfs/read_helper.c", i32 1005, i32 1}
!148 = !{ptr @__ksymtab_netfs_write_begin, !149, !"__ksymtab_netfs_write_begin", i1 false, i1 false}
!149 = !{!"../fs/netfs/read_helper.c", i32 1205, i32 1}
!150 = !{ptr @netfs_debug, !151, !"netfs_debug", i1 false, i1 false}
!151 = !{!"../fs/netfs/read_helper.c", i32 26, i32 10}
!152 = !{ptr @__tpstrtab_netfs_read, !1, !"__tpstrtab_netfs_read", i1 false, i1 false}
!153 = !{ptr @__tpstrtab_netfs_rreq, !5, !"__tpstrtab_netfs_rreq", i1 false, i1 false}
!154 = !{ptr @__tpstrtab_netfs_sreq, !9, !"__tpstrtab_netfs_sreq", i1 false, i1 false}
!155 = !{ptr @__tpstrtab_netfs_failure, !13, !"__tpstrtab_netfs_failure", i1 false, i1 false}
!156 = !{ptr @str__netfs__trace_system_name, !157, !"str__netfs__trace_system_name", i1 false, i1 false}
!157 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!158 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @.str.38, !1, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @.str.39, !1, !"<string literal>", i1 false, i1 false}
!166 = !{ptr @.str.40, !1, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.41, !1, !"<string literal>", i1 false, i1 false}
!168 = !{ptr @trace_event_fields_netfs_read, !1, !"trace_event_fields_netfs_read", i1 false, i1 false}
!169 = !{ptr @trace_event_type_funcs_netfs_read, !1, !"trace_event_type_funcs_netfs_read", i1 false, i1 false}
!170 = !{ptr @.str.42, !1, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @.str.43, !1, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @.str.44, !1, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @.str.45, !1, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.46, !1, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @trace_raw_output_netfs_read.symbols, !1, !"symbols", i1 false, i1 false}
!176 = !{ptr @print_fmt_netfs_read, !1, !"print_fmt_netfs_read", i1 false, i1 false}
!177 = !{ptr @.str.47, !5, !"<string literal>", i1 false, i1 false}
!178 = !{ptr @.str.48, !5, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @.str.49, !5, !"<string literal>", i1 false, i1 false}
!180 = !{ptr @trace_event_fields_netfs_rreq, !5, !"trace_event_fields_netfs_rreq", i1 false, i1 false}
!181 = !{ptr @trace_event_type_funcs_netfs_rreq, !5, !"trace_event_type_funcs_netfs_rreq", i1 false, i1 false}
!182 = !{ptr @.str.50, !5, !"<string literal>", i1 false, i1 false}
!183 = !{ptr @.str.51, !5, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.52, !5, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @.str.53, !5, !"<string literal>", i1 false, i1 false}
!186 = !{ptr @.str.54, !5, !"<string literal>", i1 false, i1 false}
!187 = !{ptr @.str.55, !5, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.56, !5, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @.str.57, !5, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @trace_raw_output_netfs_rreq.symbols, !5, !"symbols", i1 false, i1 false}
!191 = !{ptr @print_fmt_netfs_rreq, !5, !"print_fmt_netfs_rreq", i1 false, i1 false}
!192 = !{ptr @.str.58, !9, !"<string literal>", i1 false, i1 false}
!193 = !{ptr @.str.59, !9, !"<string literal>", i1 false, i1 false}
!194 = !{ptr @.str.60, !9, !"<string literal>", i1 false, i1 false}
!195 = !{ptr @.str.61, !9, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @.str.62, !9, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.63, !9, !"<string literal>", i1 false, i1 false}
!198 = !{ptr @.str.64, !9, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @trace_event_fields_netfs_sreq, !9, !"trace_event_fields_netfs_sreq", i1 false, i1 false}
!200 = !{ptr @trace_event_type_funcs_netfs_sreq, !9, !"trace_event_type_funcs_netfs_sreq", i1 false, i1 false}
!201 = !{ptr @.str.65, !9, !"<string literal>", i1 false, i1 false}
!202 = !{ptr @.str.66, !9, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.67, !9, !"<string literal>", i1 false, i1 false}
!204 = !{ptr @.str.68, !9, !"<string literal>", i1 false, i1 false}
!205 = !{ptr @.str.69, !9, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.70, !9, !"<string literal>", i1 false, i1 false}
!207 = !{ptr @.str.71, !9, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.72, !9, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.73, !9, !"<string literal>", i1 false, i1 false}
!210 = !{ptr @.str.74, !9, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @trace_raw_output_netfs_sreq.symbols, !9, !"symbols", i1 false, i1 false}
!212 = !{ptr @.str.76, !9, !"<string literal>", i1 false, i1 false}
!213 = !{ptr @.str.77, !9, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.78, !9, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.79, !9, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @trace_raw_output_netfs_sreq.symbols.75, !9, !"symbols", i1 false, i1 false}
!217 = !{ptr @print_fmt_netfs_sreq, !9, !"print_fmt_netfs_sreq", i1 false, i1 false}
!218 = !{ptr @.str.80, !13, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @trace_event_fields_netfs_failure, !13, !"trace_event_fields_netfs_failure", i1 false, i1 false}
!220 = !{ptr @trace_event_type_funcs_netfs_failure, !13, !"trace_event_type_funcs_netfs_failure", i1 false, i1 false}
!221 = !{ptr @.str.81, !13, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @trace_raw_output_netfs_failure.symbols, !13, !"symbols", i1 false, i1 false}
!223 = !{ptr @.str.83, !13, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.84, !13, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.85, !13, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.86, !13, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.87, !13, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.88, !13, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @trace_raw_output_netfs_failure.symbols.82, !13, !"symbols", i1 false, i1 false}
!230 = !{ptr @print_fmt_netfs_failure, !13, !"print_fmt_netfs_failure", i1 false, i1 false}
!231 = !{ptr @__param_str_debug, !135, !"__param_str_debug", i1 false, i1 false}
!232 = distinct !{null, !13, !"__already_done", i1 false, i1 false}
!233 = !{ptr @.str.89, !13, !"<string literal>", i1 false, i1 false}
!234 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!235 = !{ptr @.str.90, !13, !"<string literal>", i1 false, i1 false}
!236 = distinct !{null, !237, !"__already_done", i1 false, i1 false}
!237 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!238 = !{ptr @.str.91, !237, !"<string literal>", i1 false, i1 false}
!239 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!240 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!241 = !{ptr @netfs_alloc_read_request.debug_ids, !242, !"debug_ids", i1 false, i1 false}
!242 = !{!"../fs/netfs/read_helper.c", i32 44, i32 18}
!243 = !{ptr @netfs_alloc_read_request.__key, !244, !"__key", i1 false, i1 false}
!244 = !{!"../fs/netfs/read_helper.c", i32 55, i32 3}
!245 = !{ptr @.str.92, !244, !"<string literal>", i1 false, i1 false}
!246 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!247 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!248 = !{ptr @.str.93, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../include/linux/pagemap.h", i32 1096, i32 2}
!250 = !{ptr @.str.94, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../include/linux/page-flags.h", i32 260, i32 2}
!252 = distinct !{null, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../include/linux/page-flags.h", i32 261, i32 2}
!254 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!255 = distinct !{null, !5, !"__warned", i1 false, i1 false}
!256 = distinct !{null, !257, !"__warned", i1 false, i1 false}
!257 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!258 = !{ptr @.str.96, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @.str.97, !257, !"<string literal>", i1 false, i1 false}
!260 = !{ptr @.str.98, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../include/linux/netfs.h", i32 41, i32 2}
!262 = distinct !{null, !263, !"__warned", i1 false, i1 false}
!263 = !{!"../include/linux/xarray.h", i32 1182, i32 9}
!264 = !{ptr @.str.99, !263, !"<string literal>", i1 false, i1 false}
!265 = distinct !{null, !266, !"__warned", i1 false, i1 false}
!266 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!267 = !{ptr @.str.100, !266, !"<string literal>", i1 false, i1 false}
!268 = !{ptr @.str.101, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../include/linux/page-flags.h", i32 698, i32 1}
!270 = !{ptr @.str.102, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../include/linux/mm.h", i32 1160, i32 2}
!272 = !{ptr @.str.103, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../include/linux/mm.h", i32 717, i32 2}
!274 = !{!"sp"}
!275 = !{i32 1, !"wchar_size", i32 2}
!276 = !{i32 1, !"min_enum_size", i32 4}
!277 = !{i32 8, !"branch-target-enforcement", i32 0}
!278 = !{i32 8, !"sign-return-address", i32 0}
!279 = !{i32 8, !"sign-return-address-all", i32 0}
!280 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!281 = !{i32 7, !"uwtable", i32 1}
!282 = !{i32 7, !"frame-pointer", i32 2}
!283 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!284 = !{!"branch_weights", i32 2000, i32 1}
!285 = !{!"branch_weights", i32 1, i32 2000}
!286 = !{!"auto-init"}
!287 = !{i64 2148373692, i64 2148373718, i64 2148373747, i64 2148373781, i64 2148373812, i64 2148373835}
!288 = !{i64 2148462168}
!289 = !{i64 2148376877, i64 2148376909, i64 2148376938, i64 2148376972, i64 2148377003, i64 2148377026}
!290 = !{i64 2148462397}
!291 = !{i64 2156009905, i64 2156010392, i64 2156009942, i64 2156009998, i64 2156010032, i64 2156010056, i64 2156010097, i64 2156010118, i64 2156010146, i64 2156010180}
!292 = !{i64 2148987069, i64 2148987074, i64 2148987087, i64 2148987131, i64 2148987165, i64 2148987186}
!293 = !{i64 2154413169}
!294 = !{i64 2154413404}
!295 = !{i64 2149398410}
!296 = !{i64 2149399446}
!297 = !{i64 2154391759}
!298 = !{i64 2154391962}
!299 = !{i64 2148463247}
!300 = !{i64 2148377687, i64 2148377719, i64 2148377748, i64 2148377782, i64 2148377813, i64 2148377836}
!301 = !{i64 2149339361}
!302 = !{i64 2148376157, i64 2148376183, i64 2148376212, i64 2148376246, i64 2148376277, i64 2148376300}
!303 = !{i64 2148459127}
!304 = !{i64 2148374412, i64 2148374444, i64 2148374473, i64 2148374507, i64 2148374538, i64 2148374561}
!305 = !{i64 2148459356}
!306 = !{i64 2154358759}
!307 = !{i64 2154358986}
!308 = !{i64 2148375222, i64 2148375254, i64 2148375283, i64 2148375317, i64 2148375348, i64 2148375371}
!309 = !{i64 2156020258, i64 2156020745, i64 2156020295, i64 2156020351, i64 2156020385, i64 2156020409, i64 2156020450, i64 2156020471, i64 2156020499, i64 2156020533}
!310 = !{i64 2153896034, i64 2153896523, i64 2153896071, i64 2153896127, i64 2153896161, i64 2153896185, i64 2153896226, i64 2153896247, i64 2153896275, i64 2153896309}
!311 = !{i64 2150195647, i64 2150196138, i64 2150195684, i64 2150195740, i64 2150195774, i64 2150195798, i64 2150195839, i64 2150195860, i64 2150195888, i64 2150195922}
!312 = !{i64 2153897880, i64 2153898369, i64 2153897917, i64 2153897973, i64 2153898007, i64 2153898031, i64 2153898072, i64 2153898093, i64 2153898121, i64 2153898155}
!313 = !{i64 2150962433, i64 2150962924, i64 2150962470, i64 2150962526, i64 2150962560, i64 2150962584, i64 2150962625, i64 2150962646, i64 2150962674, i64 2150962708}
!314 = !{i64 2153350559, i64 2153351042, i64 2153350596, i64 2153350652, i64 2153350686, i64 2153350710, i64 2153350751, i64 2153350772, i64 2153350800, i64 2153350834}
!315 = !{i64 2149389851}
!316 = !{i64 2150950671}
!317 = !{i64 2149390117}
!318 = !{i64 2148470542}
!319 = !{i64 2148380937, i64 2148380969, i64 2148380998, i64 2148381032, i64 2148381063, i64 2148381086}
!320 = !{i64 2155985330, i64 2155985817, i64 2155985367, i64 2155985423, i64 2155985457, i64 2155985481, i64 2155985522, i64 2155985543, i64 2155985571, i64 2155985605}
!321 = !{i64 2155967383, i64 2155967870, i64 2155967420, i64 2155967476, i64 2155967510, i64 2155967534, i64 2155967575, i64 2155967596, i64 2155967624, i64 2155967658}
!322 = !{i64 2150949600}
!323 = !{i64 2153370471, i64 2153370955, i64 2153370508, i64 2153370564, i64 2153370598, i64 2153370622, i64 2153370663, i64 2153370684, i64 2153370712, i64 2153370746}
!324 = !{i64 777392, i64 777453}
!325 = !{i64 780124}
!326 = !{i64 780409}
!327 = !{i64 2152736816}
!328 = !{i64 2152736658}
!329 = !{i64 2152736986}
!330 = !{i64 2150005518}
!331 = !{i64 2154375319}
!332 = !{i64 2154375522}
!333 = !{i64 2154061743, i64 2154062228, i64 2154061780, i64 2154061836, i64 2154061870, i64 2154061894, i64 2154061935, i64 2154061956, i64 2154061984, i64 2154062018}
!334 = distinct !{!334, !335}
!335 = !{!"llvm.loop.peeled.count", i32 1}
