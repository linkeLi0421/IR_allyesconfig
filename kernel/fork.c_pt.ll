; ModuleID = '/llk/IR_all_yes/kernel/fork.c_pt.bc'
source_filename = "../kernel/fork.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+lockdep_tasklist_lock_is_held\22, \22a\22\09"
module asm "\09.weak\09__crc_lockdep_tasklist_lock_is_held\09\09\09\09"
module asm "\09.long\09__crc_lockdep_tasklist_lock_is_held\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lockdep_tasklist_lock_is_held:\09\09\09\09\09"
module asm "\09.asciz \09\22lockdep_tasklist_lock_is_held\22\09\09\09\09\09"
module asm "__kstrtabns_lockdep_tasklist_lock_is_held:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+free_task\22, \22a\22\09"
module asm "\09.weak\09__crc_free_task\09\09\09\09"
module asm "\09.long\09__crc_free_task\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_free_task:\09\09\09\09\09"
module asm "\09.asciz \09\22free_task\22\09\09\09\09\09"
module asm "__kstrtabns_free_task:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__mmdrop\22, \22a\22\09"
module asm "\09.weak\09__crc___mmdrop\09\09\09\09"
module asm "\09.long\09__crc___mmdrop\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___mmdrop:\09\09\09\09\09"
module asm "\09.asciz \09\22__mmdrop\22\09\09\09\09\09"
module asm "__kstrtabns___mmdrop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+__put_task_struct\22, \22a\22\09"
module asm "\09.weak\09__crc___put_task_struct\09\09\09\09"
module asm "\09.long\09__crc___put_task_struct\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab___put_task_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22__put_task_struct\22\09\09\09\09\09"
module asm "__kstrtabns___put_task_struct:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+mmput\22, \22a\22\09"
module asm "\09.weak\09__crc_mmput\09\09\09\09"
module asm "\09.long\09__crc_mmput\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmput:\09\09\09\09\09"
module asm "\09.asciz \09\22mmput\22\09\09\09\09\09"
module asm "__kstrtabns_mmput:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+get_task_mm\22, \22a\22\09"
module asm "\09.weak\09__crc_get_task_mm\09\09\09\09"
module asm "\09.long\09__crc_get_task_mm\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_get_task_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22get_task_mm\22\09\09\09\09\09"
module asm "__kstrtabns_get_task_mm:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.static_call_key = type { ptr }
%struct.atomic_t = type { i32 }
%struct.trace_event_fields = type { ptr, %union.anon.33 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { ptr, i32, i32, i32, i32 }
%struct.trace_event_class = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr }
%struct.list_head = type { ptr, ptr }
%struct.trace_event_functions = type { ptr, ptr, ptr, ptr }
%struct.trace_event_call = type { %struct.list_head, ptr, %union.anon.35, %struct.trace_event, ptr, ptr, %union.anon.36, ptr, i32, i32, ptr, ptr, ptr }
%union.anon.35 = type { ptr }
%struct.trace_event = type { %struct.hlist_node, %struct.list_head, i32, ptr }
%struct.hlist_node = type { ptr, ptr }
%union.anon.36 = type { ptr }
%union.anon.114 = type { %struct.bpf_raw_event_map }
%struct.bpf_raw_event_map = type { ptr, ptr, i32, i32, [16 x i8] }
%union.anon.115 = type { %struct.bpf_raw_event_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.mm_struct = type { %struct.anon.3, [0 x i32] }
%struct.anon.3 = type { ptr, %struct.rb_root, i64, ptr, i32, i32, i32, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i32, i32, i32, i32, %struct.atomic64_t, i32, i32, i32, i32, %struct.seqcount, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [42 x i32], %struct.mm_rss_stat, ptr, %struct.mm_context_t, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, %struct.atomic_t, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.mm_rss_stat = type { [4 x %struct.atomic_t] }
%struct.mm_context_t = type { %struct.atomic64_t, i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon.10 }
%union.anon.10 = type { %struct.raw_spinlock }
%struct.uprobes_state = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.task_struct = type { i32, ptr, %struct.refcount_struct, i32, i32, i32, %struct.__call_single_node, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, [56 x i8], %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, ptr, %struct.rb_node, i32, i32, ptr, [2 x %struct.uclamp_se], [2 x %struct.uclamp_se], [116 x i8], %struct.sched_statistics, i32, i32, i32, ptr, ptr, %struct.cpumask, ptr, i16, i16, i32, i8, i8, i32, %struct.list_head, i32, i32, %union.rcu_special, i8, %struct.list_head, %struct.sched_info, %struct.list_head, %struct.plist_node, %struct.rb_node, ptr, ptr, %struct.vmacache, %struct.task_rss_stat, i32, i32, i32, i32, i32, i32, i8, [3 x i8], i16, i32, %struct.restart_block, i32, i32, i32, ptr, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, i64, i64, i64, %struct.prev_cputime, i32, i32, i64, i64, i32, i32, %struct.posix_cputimers, ptr, ptr, ptr, ptr, [16 x i8], ptr, %struct.sysv_sem, %struct.sysv_shm, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i32, i32, i32, ptr, %struct.kuid_t, i32, %struct.seccomp, %struct.syscall_user_dispatch, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, ptr, ptr, ptr, i32, %struct.irqtrace_events, i32, i64, i32, i32, i32, i64, i32, i32, [48 x %struct.held_lock], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.task_io_accounting, i32, i64, i64, i64, %struct.nodemask_t, %struct.seqcount_spinlock, i32, i32, ptr, %struct.list_head, ptr, %struct.list_head, ptr, %struct.mutex, i32, [2 x ptr], %struct.mutex, %struct.list_head, ptr, i32, i32, %struct.tlbflush_unmap_batch, %union.anon.102, ptr, %struct.page_frag, ptr, i32, i32, i32, i32, i32, i32, [32 x %struct.latency_record], i64, i64, i32, ptr, i32, i32, i32, i32, ptr, ptr, i64, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, i32, i32, %struct.kmap_ctrl, i32, i32, ptr, ptr, ptr, ptr, %struct.llist_head, %struct.thread_struct, [84 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
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
%struct.restart_block = type { i32, ptr, %union.anon.89 }
%union.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { ptr, i32, i32, i32, i64, ptr }
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
%struct.irqtrace_events = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.held_lock = type { i64, i32, ptr, ptr, i64, i64, i32, i32 }
%struct.task_io_accounting = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.nodemask_t = type { [1 x i32] }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tlbflush_unmap_batch = type {}
%union.anon.102 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.page_frag = type { ptr, i16, i16 }
%struct.latency_record = type { [12 x i32], i32, i32, i32 }
%struct.kmap_ctrl = type { i32, [33 x i32] }
%struct.llist_head = type { ptr }
%struct.thread_struct = type { i32, i32, i32, %struct.debug_info }
%struct.debug_info = type { [32 x ptr] }
%struct.user_namespace = type { %struct.uid_gid_map, %struct.uid_gid_map, %struct.uid_gid_map, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.ns_common, i32, i8, %struct.list_head, ptr, %struct.rw_semaphore, ptr, %struct.work_struct, %struct.ctl_table_set, ptr, ptr, [16 x i32] }
%struct.uid_gid_map = type { i32, %union.anon.18 }
%union.anon.18 = type { [5 x %struct.uid_gid_extent] }
%struct.uid_gid_extent = type { i32, i32, i32 }
%struct.kgid_t = type { i32 }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.28, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.28 = type { %struct.anon.29 }
%struct.anon.29 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.obs_kernel_param = type { ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.syscall_metadata = type { ptr, i32, i32, ptr, ptr, %struct.list_head, ptr, ptr }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.upid = type { i32, ptr }
%struct.vm_operations_struct = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.user_struct = type { %struct.refcount_struct, %struct.percpu_counter, i32, %struct.atomic_t, %struct.hlist_node, %struct.kuid_t, %struct.atomic_t, %struct.atomic_t, %struct.ratelimit_state }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.trace_event_buffer = type { ptr, ptr, ptr, ptr, i32, ptr }
%struct.trace_event_file = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, %struct.atomic_t, %struct.atomic_t }
%struct.trace_event_raw_task_newtask = type { %struct.trace_entry, i32, [16 x i8], i32, i16, [0 x i8] }
%struct.trace_entry = type { i16, i8, i8, i32 }
%struct.signal_struct = type { %struct.refcount_struct, %struct.atomic_t, i32, %struct.list_head, %struct.wait_queue_head, ptr, %struct.sigpending, %struct.hlist_head, i32, i32, ptr, i32, i32, ptr, i8, i32, %struct.list_head, %struct.hrtimer, i64, [2 x %struct.cpu_itimer], %struct.thread_group_cputimer, %struct.posix_cputimers, [4 x ptr], ptr, i32, ptr, ptr, %struct.seqlock_t, i64, i64, i64, i64, i64, i64, %struct.prev_cputime, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.task_io_accounting, i64, [16 x %struct.rlimit], %struct.pacct_struct, ptr, i32, ptr, i8, i16, i16, ptr, %struct.mutex, %struct.rw_semaphore }
%struct.cpu_itimer = type { i64, i64 }
%struct.thread_group_cputimer = type { %struct.task_cputime_atomic }
%struct.task_cputime_atomic = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.rlimit = type { i32, i32 }
%struct.pacct_struct = type { i32, i32, i32, i64, i64, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.trace_event_raw_task_rename = type { %struct.trace_entry, i32, [16 x i8], [16 x i8], i16, [0 x i8] }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.4, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.4 = type { %struct.anon.5 }
%struct.anon.5 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.anon_vma_name = type { %struct.kref, [0 x i8] }
%struct.kref = type { %struct.refcount_struct }
%struct.page = type { i32, %union.anon.8, %union.anon.76, %struct.atomic_t, i32 }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.76 = type { %struct.atomic_t }
%struct.cred = type { %struct.atomic_t, %struct.atomic_t, ptr, i32, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, %struct.kuid_t, %struct.kgid_t, i32, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, %struct.kernel_cap_struct, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %union.anon.30 }
%struct.kernel_cap_struct = type { [2 x i32] }
%union.anon.30 = type { %struct.callback_head }
%struct.file = type { %union.anon.12, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.12 = type { %struct.callback_head }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.108, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.109, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.110, ptr, %struct.address_space, %struct.list_head, %union.anon.111, i32, i32, ptr, ptr, ptr, ptr }
%union.anon.108 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%union.anon.109 = type { %struct.callback_head }
%union.anon.110 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%union.anon.111 = type { ptr }
%struct.linux_binfmt = type { %struct.list_head, ptr, ptr, ptr, ptr, i32 }
%struct.sighand_struct = type { %struct.spinlock, %struct.refcount_struct, %struct.wait_queue_head, [64 x %struct.k_sigaction] }
%struct.k_sigaction = type { %struct.sigaction }
%struct.sigaction = type { ptr, i32, ptr, %struct.sigset_t }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.super_block = type { %struct.list_head, i32, i8, i32, i64, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, %struct.rw_semaphore, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, i16, %struct.hlist_bl_head, %struct.list_head, ptr, ptr, ptr, %struct.hlist_node, i32, %struct.quota_info, %struct.sb_writers, ptr, i32, i64, i64, i32, ptr, [32 x i8], %struct.uuid_t, i32, i32, %struct.mutex, ptr, ptr, %struct.shrinker, %struct.atomic_t, %struct.atomic_t, i32, i32, ptr, %struct.hlist_head, ptr, %struct.list_lru, %struct.list_lru, %struct.callback_head, %struct.work_struct, %struct.mutex, i32, [24 x i8], %struct.spinlock, %struct.list_head, %struct.spinlock, %struct.list_head, [24 x i8] }
%struct.hlist_bl_head = type { ptr }
%struct.quota_info = type { i32, %struct.rw_semaphore, [3 x ptr], [3 x %struct.mem_dqinfo], [3 x ptr] }
%struct.mem_dqinfo = type { ptr, i32, %struct.list_head, i32, i32, i32, i64, i64, ptr }
%struct.sb_writers = type { i32, %struct.wait_queue_head, [3 x %struct.percpu_rw_semaphore] }
%struct.percpu_rw_semaphore = type { %struct.rcu_sync, ptr, %struct.rcuwait, %struct.wait_queue_head, %struct.atomic_t, %struct.lockdep_map }
%struct.rcu_sync = type { i32, i32, %struct.wait_queue_head, %struct.callback_head }
%struct.rcuwait = type { ptr }
%struct.uuid_t = type { [16 x i8] }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, i32, ptr }
%struct.list_lru = type { ptr, %struct.list_head, i32, i8 }
%struct.pid_namespace = type { %struct.idr, %struct.callback_head, i32, ptr, ptr, i32, ptr, ptr, ptr, ptr, i32, %struct.ns_common }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.kernel_clone_args = type { i64, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr }
%struct.multiprocess_signals = type { %struct.sigset_t, %struct.hlist_node }
%struct.nsproxy = type { %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.fs_struct = type { i32, %struct.spinlock, %struct.seqcount_spinlock, i32, i32, %struct.path, %struct.path }
%struct.ctl_table = type { ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr }
%struct.trace_iterator = type { ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, ptr, i32, ptr, i32, %struct.trace_seq, ptr, i8, %struct.trace_seq, ptr, i32, i32, i32, i32, i64, i64, i32 }
%struct.trace_seq = type { [4096 x i8], %struct.seq_buf, i32 }
%struct.seq_buf = type { ptr, i32, i32, i64 }
%struct.tty_struct = type { i32, %struct.kref, ptr, ptr, ptr, i32, %struct.ld_semaphore, ptr, %struct.mutex, %struct.mutex, %struct.mutex, %struct.rw_semaphore, %struct.mutex, %struct.ktermios, %struct.ktermios, [64 x i8], i32, i32, %struct.winsize, %struct.anon.95, %struct.anon.96, i32, i32, i32, ptr, ptr, %struct.wait_queue_head, %struct.wait_queue_head, %struct.work_struct, ptr, ptr, %struct.spinlock, %struct.list_head, i32, ptr, i32, %struct.work_struct, ptr }
%struct.ld_semaphore = type { %struct.atomic_t, %struct.raw_spinlock, i32, %struct.list_head, %struct.list_head, %struct.lockdep_map }
%struct.ktermios = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%struct.winsize = type { i16, i16, i16, i16 }
%struct.anon.95 = type { %struct.spinlock, i8, i8, [0 x i32] }
%struct.anon.96 = type { %struct.spinlock, ptr, ptr, i8, i8, [0 x i32] }
%struct.clone_args = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@__tpstrtab_task_newtask = internal constant [13 x i8] c"task_newtask\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_task_newtask = dso_local global %struct.static_call_key { ptr @__traceiter_task_newtask }, align 4
@__tracepoint_task_newtask = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_task_newtask, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_task_newtask, ptr null, ptr @__traceiter_task_newtask, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_task_newtask = internal constant ptr @__tracepoint_task_newtask, section "__tracepoints_ptrs", align 4
@__tpstrtab_task_rename = internal constant [12 x i8] c"task_rename\00", section "__tracepoints_strings", align 1
@__SCK__tp_func_task_rename = dso_local global %struct.static_call_key { ptr @__traceiter_task_rename }, align 4
@__tracepoint_task_rename = dso_local global { ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr } { ptr @__tpstrtab_task_rename, { %struct.atomic_t, { ptr } } zeroinitializer, ptr @__SCK__tp_func_task_rename, ptr null, ptr @__traceiter_task_rename, ptr null, ptr null, ptr null }, section "__tracepoints", align 4
@__tracepoint_ptr_task_rename = internal constant ptr @__tracepoint_task_rename, section "__tracepoints_ptrs", align 4
@str__task__trace_system_name = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"task\00", [27 x i8] zeroinitializer }, align 32
@trace_event_fields_task_newtask = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.33 { %struct.anon.34 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.33 { %struct.anon.34 { ptr @.str.35, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.36, %union.anon.33 { %struct.anon.34 { ptr @.str.37, i32 4, i32 4, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.33 { %struct.anon.34 { ptr @.str.39, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_task_newtask = internal global %struct.trace_event_class { ptr @str__task__trace_system_name, ptr @trace_event_raw_event_task_newtask, ptr @perf_trace_task_newtask, ptr @trace_event_reg, ptr @trace_event_fields_task_newtask, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_task_newtask, i64 24), ptr getelementptr (i8, ptr @event_class_task_newtask, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_task_newtask = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_task_newtask, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_task_newtask = internal global { [110 x i8], [50 x i8] } { [110 x i8] c"\22pid=%d comm=%s clone_flags=%lx oom_score_adj=%hd\22, REC->pid, REC->comm, REC->clone_flags, REC->oom_score_adj\00", [50 x i8] zeroinitializer }, align 32
@event_task_newtask = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_task_newtask, %union.anon.35 { ptr @__tracepoint_task_newtask }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_task_newtask }, ptr @print_fmt_task_newtask, ptr null, %union.anon.36 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_task_newtask = internal global ptr @event_task_newtask, section "_ftrace_events", align 4
@trace_event_fields_task_rename = internal global { [5 x %struct.trace_event_fields], [40 x i8] } { [5 x %struct.trace_event_fields] [%struct.trace_event_fields { ptr @.str.32, %union.anon.33 { %struct.anon.34 { ptr @.str.33, i32 4, i32 4, i32 1, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.33 { %struct.anon.34 { ptr @.str.41, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.34, %union.anon.33 { %struct.anon.34 { ptr @.str.42, i32 16, i32 1, i32 0, i32 0 } } }, %struct.trace_event_fields { ptr @.str.38, %union.anon.33 { %struct.anon.34 { ptr @.str.39, i32 2, i32 2, i32 1, i32 0 } } }, %struct.trace_event_fields zeroinitializer], [40 x i8] zeroinitializer }, align 32
@event_class_task_rename = internal global %struct.trace_event_class { ptr @str__task__trace_system_name, ptr @trace_event_raw_event_task_rename, ptr @perf_trace_task_rename, ptr @trace_event_reg, ptr @trace_event_fields_task_rename, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @event_class_task_rename, i64 24), ptr getelementptr (i8, ptr @event_class_task_rename, i64 24) }, ptr @trace_event_raw_init }, section ".ref.data", align 4
@trace_event_type_funcs_task_rename = internal global { %struct.trace_event_functions, [16 x i8] } { %struct.trace_event_functions { ptr @trace_raw_output_task_rename, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@print_fmt_task_rename = internal global { [107 x i8], [53 x i8] } { [107 x i8] c"\22pid=%d oldcomm=%s newcomm=%s oom_score_adj=%hd\22, REC->pid, REC->oldcomm, REC->newcomm, REC->oom_score_adj\00", [53 x i8] zeroinitializer }, align 32
@event_task_rename = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_task_rename, %union.anon.35 { ptr @__tracepoint_task_rename }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @trace_event_type_funcs_task_rename }, ptr @print_fmt_task_rename, ptr null, %union.anon.36 zeroinitializer, ptr null, i32 16, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_task_rename = internal global ptr @event_task_rename, section "_ftrace_events", align 4
@__bpf_trace_tp_map_task_newtask = internal global %union.anon.114 { %struct.bpf_raw_event_map { ptr @__tracepoint_task_newtask, ptr @__bpf_trace_task_newtask, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@__bpf_trace_tp_map_task_rename = internal global %union.anon.115 { %struct.bpf_raw_event_map { ptr @__tracepoint_task_rename, ptr @__bpf_trace_task_rename, i32 2, i32 0, [16 x i8] undef } }, section "__bpf_raw_tp_map", align 32
@process_counts = weak dso_local global i32 0, section ".data..percpu", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tasklist_lock\00", [18 x i8] zeroinitializer }, align 32
@tasklist_lock = dso_local global %struct.rwlock_t { %struct.arch_rwlock_t zeroinitializer, i32 -558948627, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } }, section ".data..cacheline_aligned", align 128
@__kstrtab_lockdep_tasklist_lock_is_held = external dso_local constant [0 x i8], align 1
@__kstrtabns_lockdep_tasklist_lock_is_held = external dso_local constant [0 x i8], align 1
@__ksymtab_lockdep_tasklist_lock_is_held = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lockdep_tasklist_lock_is_held to i32), ptr @__kstrtab_lockdep_tasklist_lock_is_held, ptr @__kstrtabns_lockdep_tasklist_lock_is_held }, section "___ksymtab_gpl+lockdep_tasklist_lock_is_held", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@vm_area_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_free_task = external dso_local constant [0 x i8], align 1
@__kstrtabns_free_task = external dso_local constant [0 x i8], align 1
@__ksymtab_free_task = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @free_task to i32), ptr @__kstrtab_free_task, ptr @__kstrtabns_free_task }, section "___ksymtab+free_task", align 4
@init_mm = external dso_local global %struct.mm_struct, align 8
@__mmdrop.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"kernel/fork.c\00", [18 x i8] zeroinitializer }, align 32
@__mmdrop.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@mm_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab___mmdrop = external dso_local constant [0 x i8], align 1
@__kstrtabns___mmdrop = external dso_local constant [0 x i8], align 1
@__ksymtab___mmdrop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__mmdrop to i32), ptr @__kstrtab___mmdrop, ptr @__kstrtabns___mmdrop }, section "___ksymtab_gpl+__mmdrop", align 4
@__kstrtab___put_task_struct = external dso_local constant [0 x i8], align 1
@__kstrtabns___put_task_struct = external dso_local constant [0 x i8], align 1
@__ksymtab___put_task_struct = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @__put_task_struct to i32), ptr @__kstrtab___put_task_struct, ptr @__kstrtabns___put_task_struct }, section "___ksymtab_gpl+__put_task_struct", align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"task_struct\00", [20 x i8] zeroinitializer }, align 32
@task_struct_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@max_threads = internal global { i32, [28 x i8] } zeroinitializer, align 32
@init_task = external dso_local global %struct.task_struct, align 128
@init_user_ns = external dso_local local_unnamed_addr global %struct.user_namespace, align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmlist_lock\00", [20 x i8] zeroinitializer }, align 32
@mmlist_lock = dso_local global %struct.spinlock { %union.anon.10 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.4, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, section ".data..cacheline_aligned", align 128
@__setup_str_coredump_filter_setup = internal constant [17 x i8] c"coredump_filter=\00", section ".init.rodata", align 1
@__setup_coredump_filter_setup = internal global %struct.obs_kernel_param { ptr @__setup_str_coredump_filter_setup, ptr @coredump_filter_setup, i32 0 }, section ".init.setup", align 4
@__kstrtab_mmput = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmput = external dso_local constant [0 x i8], align 1
@__ksymtab_mmput = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmput to i32), ptr @__kstrtab_mmput, ptr @__kstrtabns_mmput }, section "___ksymtab_gpl+mmput", align 4
@mmput_async.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"(work_completion)(&mm->async_put_work)\00", [57 x i8] zeroinitializer }, align 32
@get_mm_exe_file.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@__kstrtab_get_task_mm = external dso_local constant [0 x i8], align 1
@__kstrtabns_get_task_mm = external dso_local constant [0 x i8], align 1
@__ksymtab_get_task_mm = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @get_task_mm to i32), ptr @__kstrtab_get_task_mm, ptr @__kstrtabns_get_task_mm }, section "___ksymtab_gpl+get_task_mm", align 4
@sighand_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@event_class_syscall_enter = external dso_local global %struct.trace_event_class, align 4
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sys_enter_set_tid_address\00", [38 x i8] zeroinitializer }, align 32
@enter_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@__syscall_meta__set_tid_address = internal global %struct.syscall_metadata { ptr @.str.9, i32 -1, i32 1, ptr @types__set_tid_address, ptr @args__set_tid_address, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__set_tid_address, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__set_tid_address, i64 20) }, ptr @event_enter__set_tid_address, ptr @event_exit__set_tid_address }, align 4
@event_enter__set_tid_address = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.35 { ptr @.str.7 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__set_tid_address, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__set_tid_address = internal global ptr @event_enter__set_tid_address, section "_ftrace_events", align 4
@event_class_syscall_exit = external dso_local global %struct.trace_event_class, align 4
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sys_exit_set_tid_address\00", [39 x i8] zeroinitializer }, align 32
@exit_syscall_print_funcs = external dso_local global %struct.trace_event_functions, align 4
@event_exit__set_tid_address = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.35 { ptr @.str.8 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__set_tid_address, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__set_tid_address = internal global ptr @event_exit__set_tid_address, section "_ftrace_events", align 4
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sys_set_tid_address\00", [44 x i8] zeroinitializer }, align 32
@types__set_tid_address = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.63], [28 x i8] zeroinitializer }, align 32
@args__set_tid_address = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.64], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__set_tid_address = internal global ptr @__syscall_meta__set_tid_address, section "__syscalls_metadata", align 4
@pidfd_fops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pidfd_poll, ptr null, ptr null, ptr null, i32 0, ptr null, ptr null, ptr @pidfd_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pidfd_show_fdinfo, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@init_struct_pid = external dso_local global %struct.pid, align 4
@.str.10 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_enter_fork\00", [17 x i8] zeroinitializer }, align 32
@__syscall_meta__fork = internal global %struct.syscall_metadata { ptr @.str.12, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__fork, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__fork, i64 20) }, ptr @event_enter__fork, ptr @event_exit__fork }, align 4
@event_enter__fork = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.35 { ptr @.str.10 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__fork, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__fork = internal global ptr @event_enter__fork, section "_ftrace_events", align 4
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sys_exit_fork\00", [18 x i8] zeroinitializer }, align 32
@event_exit__fork = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.35 { ptr @.str.11 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__fork, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__fork = internal global ptr @event_exit__fork, section "_ftrace_events", align 4
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sys_fork\00", [23 x i8] zeroinitializer }, align 32
@__p_syscall_meta__fork = internal global ptr @__syscall_meta__fork, section "__syscalls_metadata", align 4
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_vfork\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__vfork = internal global %struct.syscall_metadata { ptr @.str.15, i32 -1, i32 0, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__vfork, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__vfork, i64 20) }, ptr @event_enter__vfork, ptr @event_exit__vfork }, align 4
@event_enter__vfork = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.35 { ptr @.str.13 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__vfork, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__vfork = internal global ptr @event_enter__vfork, section "_ftrace_events", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_vfork\00", [17 x i8] zeroinitializer }, align 32
@event_exit__vfork = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.35 { ptr @.str.14 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__vfork, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__vfork = internal global ptr @event_exit__vfork, section "_ftrace_events", align 4
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_vfork\00", [22 x i8] zeroinitializer }, align 32
@__p_syscall_meta__vfork = internal global ptr @__syscall_meta__vfork, section "__syscalls_metadata", align 4
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_enter_clone\00", [16 x i8] zeroinitializer }, align 32
@__syscall_meta__clone = internal global %struct.syscall_metadata { ptr @.str.18, i32 -1, i32 5, ptr @types__clone, ptr @args__clone, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clone, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clone, i64 20) }, ptr @event_enter__clone, ptr @event_exit__clone }, align 4
@event_enter__clone = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.35 { ptr @.str.16 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__clone, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clone = internal global ptr @event_enter__clone, section "_ftrace_events", align 4
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sys_exit_clone\00", [17 x i8] zeroinitializer }, align 32
@event_exit__clone = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.35 { ptr @.str.17 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__clone, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clone = internal global ptr @event_exit__clone, section "_ftrace_events", align 4
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sys_clone\00", [22 x i8] zeroinitializer }, align 32
@types__clone = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.36, ptr @.str.36, ptr @.str.63, ptr @.str.36, ptr @.str.63], [44 x i8] zeroinitializer }, align 32
@args__clone = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.37, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99], [44 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clone = internal global ptr @__syscall_meta__clone, section "__syscalls_metadata", align 4
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_enter_clone3\00", [47 x i8] zeroinitializer }, align 32
@__syscall_meta__clone3 = internal global %struct.syscall_metadata { ptr @.str.21, i32 -1, i32 2, ptr @types__clone3, ptr @args__clone3, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__clone3, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__clone3, i64 20) }, ptr @event_enter__clone3, ptr @event_exit__clone3 }, align 4
@event_enter__clone3 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.35 { ptr @.str.19 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__clone3, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__clone3 = internal global ptr @event_enter__clone3, section "_ftrace_events", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_exit_clone3\00", [16 x i8] zeroinitializer }, align 32
@event_exit__clone3 = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.35 { ptr @.str.20 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__clone3, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__clone3 = internal global ptr @event_exit__clone3, section "_ftrace_events", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sys_clone3\00", [21 x i8] zeroinitializer }, align 32
@types__clone3 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.100, ptr @.str.101], [24 x i8] zeroinitializer }, align 32
@args__clone3 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.102, ptr @.str.103], [24 x i8] zeroinitializer }, align 32
@__p_syscall_meta__clone3 = internal global ptr @__syscall_meta__clone3, section "__syscalls_metadata", align 4
@walk_process_tree.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.22 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"sighand_cache\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"signal_cache\00", [19 x i8] zeroinitializer }, align 32
@signal_cachep = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"files_cache\00", [20 x i8] zeroinitializer }, align 32
@files_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fs_cache\00", [23 x i8] zeroinitializer }, align 32
@fs_cachep = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mm_struct\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vm_area_struct\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sys_enter_unshare\00", [46 x i8] zeroinitializer }, align 32
@__syscall_meta__unshare = internal global %struct.syscall_metadata { ptr @.str.31, i32 -1, i32 1, ptr @types__unshare, ptr @args__unshare, %struct.list_head { ptr getelementptr (i8, ptr @__syscall_meta__unshare, i64 20), ptr getelementptr (i8, ptr @__syscall_meta__unshare, i64 20) }, ptr @event_enter__unshare, ptr @event_exit__unshare }, align 4
@event_enter__unshare = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_enter, %union.anon.35 { ptr @.str.29 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @enter_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__unshare, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_enter__unshare = internal global ptr @event_enter__unshare, section "_ftrace_events", align 4
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sys_exit_unshare\00", [47 x i8] zeroinitializer }, align 32
@event_exit__unshare = internal global { %struct.trace_event_call, [52 x i8] } { %struct.trace_event_call { %struct.list_head zeroinitializer, ptr @event_class_syscall_exit, %union.anon.35 { ptr @.str.30 }, %struct.trace_event { %struct.hlist_node zeroinitializer, %struct.list_head zeroinitializer, i32 0, ptr @exit_syscall_print_funcs }, ptr null, ptr null, %union.anon.36 zeroinitializer, ptr @__syscall_meta__unshare, i32 2, i32 0, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@__event_exit__unshare = internal global ptr @event_exit__unshare, section "_ftrace_events", align 4
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_unshare\00", [20 x i8] zeroinitializer }, align 32
@types__unshare = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.36], [28 x i8] zeroinitializer }, align 32
@args__unshare = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.111], [28 x i8] zeroinitializer }, align 32
@__p_syscall_meta__unshare = internal global ptr @__syscall_meta__unshare, section "__syscalls_metadata", align 4
@total_forks = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@nr_threads = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__pcpu_scope_process_counts = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__pcpu_unique_process_counts = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@.str.32 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pid_t\00", [26 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pid\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"char[TASK_COMM_LEN]\00", [44 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"comm\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unsigned long\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clone_flags\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"short\00", [26 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"oom_score_adj\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"pid=%d comm=%s clone_flags=%lx oom_score_adj=%hd\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"oldcomm\00", [24 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"newcomm\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"pid=%d oldcomm=%s newcomm=%s oom_score_adj=%hd\0A\00", [48 x i8] zeroinitializer }, align 32
@vma_init.dummy_vm_ops = internal constant { %struct.vm_operations_struct, [40 x i8] } zeroinitializer, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@check_mm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.1, i32 676, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\011BUG: Bad rss-counter state mm:%p type:%s val:%ld\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"check_mm\00", [23 x i8] zeroinitializer }, align 32
@check_mm._entry_ptr = internal global ptr @check_mm._entry, section ".printk_index", align 4
@check_mm._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.1, i32 681, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\011BUG: non-zero pgtables_bytes on freeing mm: %ld\0A\00", [45 x i8] zeroinitializer }, align 32
@check_mm._entry_ptr.48 = internal global ptr @check_mm._entry.46, section ".printk_index", align 4
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MM_FILEPAGES\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"MM_ANONPAGES\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"MM_SWAPENTS\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"MM_SHMEMPAGES\00", [18 x i8] zeroinitializer }, align 32
@delayacct_cache = external dso_local local_unnamed_addr global ptr, align 4
@taskstats_cache = external dso_local local_unnamed_addr global ptr, align 4
@mmdrop_async.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@_totalram_pages = external dso_local global %struct.atomic_t, align 4
@default_dump_filter = internal global { i32, [28 x i8] } { i32 204, [28 x i8] zeroinitializer }, align 32
@mm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&mm->write_protect_seq\00", [41 x i8] zeroinitializer }, align 32
@mm_init.__key.54 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.55 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&mm->page_table_lock\00", [43 x i8] zeroinitializer }, align 32
@mm_init.__key.56 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mm->arg_lock\00", [18 x i8] zeroinitializer }, align 32
@mmap_init_lock.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&mm->mmap_lock\00", [17 x i8] zeroinitializer }, align 32
@mm_init_aio.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.59 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&mm->ioctx_lock\00", [16 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__tracepoint_mmap_lock_start_locking = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_acquire_returned = external dso_local global %struct.tracepoint, align 4
@__tracepoint_mmap_lock_released = external dso_local global %struct.tracepoint, align 4
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.60 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.62 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"int *\00", [26 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tidptr\00", [25 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Pid:\09\00", [26 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\0ANSpid:\09\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\09\00", [30 x i8] zeroinitializer }, align 32
@copy_process.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"!p->softirqs_enabled\00", [43 x i8] zeroinitializer }, align 32
@copy_process.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@root_user = external dso_local global %struct.user_struct, align 8
@copy_process.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.70 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&p->alloc_lock\00", [17 x i8] zeroinitializer }, align 32
@copy_process.__key.71 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.72 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&____s->seqcount\00", [47 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"[pidfd]\00", [24 x i8] zeroinitializer }, align 32
@copy_process.__warned.75 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rt_mutex_init_task.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&p->pi_lock\00", [20 x i8] zeroinitializer }, align 32
@delayacct_on = external dso_local local_unnamed_addr global i32, align 4
@prev_cputime_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&prev->lock\00", [20 x i8] zeroinitializer }, align 32
@copy_signal.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.79 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&sig->wait_chldexit\00", [44 x i8] zeroinitializer }, align 32
@copy_signal.__key.80 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.81 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&(&sig->stats_lock)->lock\00", [38 x i8] zeroinitializer }, align 32
@copy_signal.__key.82 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@copy_signal.__key.83 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&sig->cred_guard_mutex\00", [41 x i8] zeroinitializer }, align 32
@copy_signal.__key.85 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.86 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&sig->exec_update_lock\00", [41 x i8] zeroinitializer }, align 32
@futex_init_task.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.87 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&tsk->futex_exit_mutex\00", [41 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/trace/events/task.h\00", [36 x i8] zeroinitializer }, align 32
@trace_task_newtask.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.89 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@oom_adj_mutex = external dso_local global %struct.mutex, align 4
@dup_mm_exe_file.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@dup_mm_exe_file._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.91, ptr @.str.1, i32 487, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014deny_write_access() failed in %s\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dup_mm_exe_file\00", [16 x i8] zeroinitializer }, align 32
@dup_mm_exe_file._entry_ptr = internal global ptr @dup_mm_exe_file._entry, section ".printk_index", align 4
@vm_committed_as = external dso_local global %struct.percpu_counter, align 8
@vm_committed_as_batch = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_sched_process_fork = external dso_local global %struct.tracepoint, align 4
@.str.92 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/trace/events/sched.h\00", [35 x i8] zeroinitializer }, align 32
@trace_sched_process_fork.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@ptrace_event_pid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/ptrace.h\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/freezer.h\00", [40 x i8] zeroinitializer }, align 32
@system_freezing_cnt = external dso_local global %struct.atomic_t, align 4
@.str.96 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"newsp\00", [26 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"parent_tidptr\00", [18 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"tls\00", [28 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"child_tidptr\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"struct clone_args *\00", [44 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"size_t\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uargs\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"size\00", [27 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.104 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@sighand_ctor.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.107 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&sighand->siglock\00", [46 x i8] zeroinitializer }, align 32
@sighand_ctor.__key.108 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.109 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&sighand->signalfd_wqh\00", [41 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"include/linux/cred.h\00", [43 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"unshare_flags\00", [18 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.112 = private unnamed_addr constant [29 x i8] c"str__task__trace_system_name\00", align 1
@___asan_gen_.113 = private unnamed_addr constant [32 x i8] c"../include/trace/trace_events.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 36, i32 1 }
@___asan_gen_.115 = private unnamed_addr constant [32 x i8] c"trace_event_fields_task_newtask\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [36 x i8] c"trace_event_type_funcs_task_newtask\00", align 1
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"print_fmt_task_newtask\00", align 1
@___asan_gen_.124 = private unnamed_addr constant [19 x i8] c"event_task_newtask\00", align 1
@___asan_gen_.127 = private unnamed_addr constant [31 x i8] c"trace_event_fields_task_rename\00", align 1
@___asan_gen_.130 = private unnamed_addr constant [35 x i8] c"trace_event_type_funcs_task_rename\00", align 1
@___asan_gen_.133 = private unnamed_addr constant [22 x i8] c"print_fmt_task_rename\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"event_task_rename\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 141, i32 21 }
@___asan_gen_.142 = private unnamed_addr constant [15 x i8] c"vm_area_cachep\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 340, i32 27 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 699, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant [10 x i8] c"mm_cachep\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 343, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 824, i32 50 }
@___asan_gen_.154 = private unnamed_addr constant [19 x i8] c"task_struct_cachep\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 167, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"max_threads\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 128, i32 12 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 982, i32 28 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1151, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1259, i32 13 }
@___asan_gen_.172 = private unnamed_addr constant [15 x i8] c"sighand_cachep\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 331, i32 20 }
@___asan_gen_.178 = private unnamed_addr constant [29 x i8] c"event_enter__set_tid_address\00", align 1
@___asan_gen_.184 = private unnamed_addr constant [28 x i8] c"event_exit__set_tid_address\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [23 x i8] c"types__set_tid_address\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [22 x i8] c"args__set_tid_address\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"pidfd_fops\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1852, i32 30 }
@___asan_gen_.202 = private unnamed_addr constant [18 x i8] c"event_enter__fork\00", align 1
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"event_exit__fork\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2621, i32 1 }
@___asan_gen_.217 = private unnamed_addr constant [19 x i8] c"event_enter__vfork\00", align 1
@___asan_gen_.223 = private unnamed_addr constant [18 x i8] c"event_exit__vfork\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2637, i32 1 }
@___asan_gen_.232 = private unnamed_addr constant [19 x i8] c"event_enter__clone\00", align 1
@___asan_gen_.238 = private unnamed_addr constant [18 x i8] c"event_exit__clone\00", align 1
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"types__clone\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [12 x i8] c"args__clone\00", align 1
@___asan_gen_.253 = private unnamed_addr constant [20 x i8] c"event_enter__clone3\00", align 1
@___asan_gen_.259 = private unnamed_addr constant [19 x i8] c"event_exit__clone3\00", align 1
@___asan_gen_.265 = private unnamed_addr constant [14 x i8] c"types__clone3\00", align 1
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"args__clone3\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2852, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2892, i32 37 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2896, i32 36 }
@___asan_gen_.280 = private unnamed_addr constant [14 x i8] c"signal_cachep\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 328, i32 27 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2900, i32 35 }
@___asan_gen_.286 = private unnamed_addr constant [13 x i8] c"files_cachep\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 334, i32 20 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2904, i32 32 }
@___asan_gen_.292 = private unnamed_addr constant [10 x i8] c"fs_cachep\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 337, i32 20 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2916, i32 41 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2922, i32 19 }
@___asan_gen_.304 = private unnamed_addr constant [21 x i8] c"event_enter__unshare\00", align 1
@___asan_gen_.310 = private unnamed_addr constant [20 x i8] c"event_exit__unshare\00", align 1
@___asan_gen_.316 = private unnamed_addr constant [15 x i8] c"types__unshare\00", align 1
@___asan_gen_.319 = private unnamed_addr constant [14 x i8] c"args__unshare\00", align 1
@___asan_gen_.322 = private unnamed_addr constant [12 x i8] c"total_forks\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 125, i32 15 }
@___asan_gen_.325 = private unnamed_addr constant [11 x i8] c"nr_threads\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 126, i32 5 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 34, i32 1 }
@___asan_gen_.364 = private unnamed_addr constant [13 x i8] c"dummy_vm_ops\00", align 1
@___asan_gen_.365 = private unnamed_addr constant [22 x i8] c"../include/linux/mm.h\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.365, i32 610, i32 43 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 675, i32 4 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 680, i32 3 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 133, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 134, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 135, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 136, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 721, i32 3 }
@___asan_gen_.397 = private unnamed_addr constant [20 x i8] c"default_dump_filter\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 984, i32 22 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1044, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1052, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1053, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant [29 x i8] c"../include/linux/mmap_lock.h\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.422, i32 65, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1001, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 695, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.437, i32 723, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1693, i32 1 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1811, i32 24 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1814, i32 24 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1824, i32 26 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2022, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2052, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2105, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2200, i32 32 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1702, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant [33 x i8] c"../include/linux/sched/cputime.h\00", align 1
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.485, i32 185, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1629, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1633, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1654, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 1655, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant [25 x i8] c"../include/linux/futex.h\00", align 1
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.518, i32 71, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant [31 x i8] c"../include/trace/events/task.h\00", align 1
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.521, i32 9, i32 1 }
@___asan_gen_.524 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 108, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 487, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant [32 x i8] c"../include/trace/events/sched.h\00", align 1
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.536, i32 369, i32 1 }
@___asan_gen_.542 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.542, i32 87, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant [26 x i8] c"../include/linux/ptrace.h\00", align 1
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.545, i32 190, i32 26 }
@___asan_gen_.548 = private unnamed_addr constant [27 x i8] c"../include/linux/freezer.h\00", align 1
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.548, i32 57, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2650, i32 1 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2824, i32 1 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 230, i32 6 }
@___asan_gen_.578 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.578, i32 214, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.581, i32 156, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2884, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 2885, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant [24 x i8] c"../include/linux/cred.h\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 286, i32 3 }
@___asan_gen_.598 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.599 = private constant [17 x i8] c"../kernel/fork.c\00", align 1
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.599, i32 3127, i32 1 }
@llvm.compiler.used = appending global [207 x ptr] [ptr @__bpf_trace_tp_map_task_newtask, ptr @__bpf_trace_tp_map_task_rename, ptr @__event_enter__clone, ptr @__event_enter__clone3, ptr @__event_enter__fork, ptr @__event_enter__set_tid_address, ptr @__event_enter__unshare, ptr @__event_enter__vfork, ptr @__event_exit__clone, ptr @__event_exit__clone3, ptr @__event_exit__fork, ptr @__event_exit__set_tid_address, ptr @__event_exit__unshare, ptr @__event_exit__vfork, ptr @__event_task_newtask, ptr @__event_task_rename, ptr @__ksymtab___mmdrop, ptr @__ksymtab___put_task_struct, ptr @__ksymtab_free_task, ptr @__ksymtab_get_task_mm, ptr @__ksymtab_lockdep_tasklist_lock_is_held, ptr @__ksymtab_mmput, ptr @__p_syscall_meta__clone, ptr @__p_syscall_meta__clone3, ptr @__p_syscall_meta__fork, ptr @__p_syscall_meta__set_tid_address, ptr @__p_syscall_meta__unshare, ptr @__p_syscall_meta__vfork, ptr @__setup_coredump_filter_setup, ptr @__syscall_meta__clone, ptr @__syscall_meta__clone3, ptr @__syscall_meta__fork, ptr @__syscall_meta__set_tid_address, ptr @__syscall_meta__unshare, ptr @__syscall_meta__vfork, ptr @__tracepoint_ptr_task_newtask, ptr @__tracepoint_ptr_task_rename, ptr @__tracepoint_task_newtask, ptr @__tracepoint_task_rename, ptr @check_mm._entry, ptr @check_mm._entry.46, ptr @check_mm._entry_ptr, ptr @check_mm._entry_ptr.48, ptr @dup_mm_exe_file._entry, ptr @dup_mm_exe_file._entry_ptr, ptr @event_class_task_newtask, ptr @event_class_task_rename, ptr @event_enter__clone, ptr @event_enter__clone3, ptr @event_enter__fork, ptr @event_enter__set_tid_address, ptr @event_enter__unshare, ptr @event_enter__vfork, ptr @event_exit__clone, ptr @event_exit__clone3, ptr @event_exit__fork, ptr @event_exit__set_tid_address, ptr @event_exit__unshare, ptr @event_exit__vfork, ptr @event_task_newtask, ptr @event_task_rename, ptr @str__task__trace_system_name, ptr @trace_event_fields_task_newtask, ptr @trace_event_type_funcs_task_newtask, ptr @print_fmt_task_newtask, ptr @trace_event_fields_task_rename, ptr @trace_event_type_funcs_task_rename, ptr @print_fmt_task_rename, ptr @.str, ptr @vm_area_cachep, ptr @.str.1, ptr @mm_cachep, ptr @.str.3, ptr @task_struct_cachep, ptr @max_threads, ptr @.str.4, ptr @mmput_async.__key, ptr @.str.5, ptr @.str.6, ptr @sighand_cachep, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @types__set_tid_address, ptr @args__set_tid_address, ptr @pidfd_fops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @types__clone, ptr @args__clone, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @types__clone3, ptr @args__clone3, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @signal_cachep, ptr @.str.25, ptr @files_cachep, ptr @.str.26, ptr @fs_cachep, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @types__unshare, ptr @args__unshare, ptr @total_forks, ptr @nr_threads, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @vma_init.dummy_vm_ops, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @mmdrop_async.__key, ptr @default_dump_filter, ptr @mm_init.__key, ptr @.str.53, ptr @mm_init.__key.54, ptr @.str.55, ptr @mm_init.__key.56, ptr @.str.57, ptr @mmap_init_lock.__key, ptr @.str.58, ptr @mm_init_aio.__key, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @copy_process.__key, ptr @.str.70, ptr @copy_process.__key.71, ptr @.str.72, ptr @.str.73, ptr @rt_mutex_init_task.__key, ptr @.str.77, ptr @prev_cputime_init.__key, ptr @.str.78, ptr @copy_signal.__key, ptr @.str.79, ptr @copy_signal.__key.80, ptr @.str.81, ptr @copy_signal.__key.82, ptr @copy_signal.__key.83, ptr @.str.84, ptr @copy_signal.__key.85, ptr @.str.86, ptr @futex_init_task.__key, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @init_completion.__key, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @sighand_ctor.__key, ptr @.str.107, ptr @sighand_ctor.__key.108, ptr @.str.109, ptr @.str.110, ptr @.str.111], section "llvm.metadata"
@0 = internal global [163 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @str__task__trace_system_name to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_task_newtask to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_task_newtask to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_task_newtask to i32), i32 110, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_task_newtask to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_fields_task_rename to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_event_type_funcs_task_rename to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @print_fmt_task_rename to i32), i32 107, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_task_rename to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vm_area_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @task_struct_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_threads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmput_async.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sighand_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__set_tid_address to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__set_tid_address to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__set_tid_address to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__set_tid_address to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pidfd_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__fork to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__fork to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__vfork to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__vfork to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clone to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clone to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clone to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clone to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__clone3 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__clone3 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__clone3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__clone3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @signal_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @files_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fs_cachep to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_enter__unshare to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @event_exit__unshare to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @types__unshare to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @args__unshare to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @total_forks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_threads to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vma_init.dummy_vm_ops to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_mm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_mm._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmdrop_async.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_dump_filter to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_init.__key.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_init.__key.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmap_init_lock.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_init_aio.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_process.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_process.__key.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt_mutex_init_task.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @prev_cputime_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_signal.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_signal.__key.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_signal.__key.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_signal.__key.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @copy_signal.__key.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @futex_init_task.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dup_mm_exe_file._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sighand_ctor.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sighand_ctor.__key.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

@sys_set_tid_address = dso_local alias i32 (ptr), ptr @__se_sys_set_tid_address
@sys_clone = dso_local alias i32 (i32, i32, ptr, i32, ptr), ptr @__se_sys_clone
@sys_clone3 = dso_local alias i32 (ptr, i32), ptr @__se_sys_clone3
@sys_unshare = dso_local alias i32 (i32), ptr @__se_sys_unshare

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_task_newtask(ptr nocapture readnone %__data, ptr noundef %task, i32 noundef %clone_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_task_newtask, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
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
  tail call void %2(ptr noundef %4, ptr noundef %task, i32 noundef %clone_flags) #16
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__traceiter_task_rename(ptr nocapture readnone %__data, ptr noundef %task, ptr noundef %comm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_task_rename, i32 0, i32 7), align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %entry.do.body2_crit_edge

entry.do.body2_crit_edge:                         ; preds = %entry
  br label %do.body2

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
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
  tail call void %2(ptr noundef %4, ptr noundef %task, ptr noundef %comm) #16
  %incdec.ptr = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0, i32 1
  %5 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %incdec.ptr, align 4
  %tobool9.not = icmp eq ptr %6, null
  br i1 %tobool9.not, label %do.body2.if.end_crit_edge, label %do.body2.do.body2_crit_edge

do.body2.do.body2_crit_edge:                      ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2

do.body2.if.end_crit_edge:                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end:                                           ; preds = %do.body2.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_task_newtask(ptr noundef %__data, ptr nocapture noundef readonly %task, i32 noundef %clone_flags) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #16
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !339

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !340

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #16
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 36) #16
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %3 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pid, align 8
  %pid6 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %pid6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pid6, align 4
  %comm = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %call3, i32 0, i32 2
  %comm7 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 101
  %6 = call ptr @memcpy(ptr %comm, ptr %comm7, i32 16)
  %clone_flags9 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %call3, i32 0, i32 3
  %7 = ptrtoint ptr %clone_flags9 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %clone_flags, ptr %clone_flags9, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 57
  %10 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %oom_score_adj, align 2
  %oom_score_adj10 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %call3, i32 0, i32 4
  %12 = ptrtoint ptr %oom_score_adj10 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %oom_score_adj10, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_task_newtask(ptr noundef %__data, ptr nocapture noundef readonly %task, i32 noundef %clone_flags) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #16
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #16
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !341
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 36, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #16
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #16
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !329) #16
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid, align 8
  %pid17 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pid17, align 4
  %comm = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %call13, i32 0, i32 2
  %comm18 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 101
  %30 = call ptr @memcpy(ptr %comm, ptr %comm18, i32 16)
  %clone_flags20 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %call13, i32 0, i32 3
  %31 = ptrtoint ptr %clone_flags20 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %clone_flags, ptr %clone_flags20, align 4
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %32 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %33, i32 0, i32 57
  %34 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %oom_score_adj, align 2
  %oom_score_adj21 = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %call13, i32 0, i32 4
  %36 = ptrtoint ptr %oom_score_adj21 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %oom_score_adj21, align 4
  %37 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rctx, align 4
  %39 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 36, i32 noundef %38, ptr noundef %__data, i64 noundef 1, ptr noundef %40, ptr noundef %11, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_reg(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_event_raw_init(ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_event_raw_event_task_rename(ptr noundef %__data, ptr nocapture noundef readonly %task, ptr noundef %comm) #0 align 64 {
entry:
  %fbuffer = alloca %struct.trace_event_buffer, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %fbuffer) #16
  %flags.i = getelementptr inbounds %struct.trace_event_file, ptr %__data, i32 0, i32 7
  %0 = call ptr @memset(ptr %fbuffer, i32 255, i32 24)
  %1 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %2, 704
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %if.end.i, !prof !339

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end.i:                                         ; preds = %entry
  %and4.i = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %trace_trigger_soft_disabled.exit, label %if.end.i.if.end_crit_edge, !prof !340

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

trace_trigger_soft_disabled.exit:                 ; preds = %if.end.i
  %call.i = tail call zeroext i1 @__trace_trigger_soft_disabled(ptr noundef %__data) #16
  br i1 %call.i, label %trace_trigger_soft_disabled.exit.cleanup_crit_edge, label %trace_trigger_soft_disabled.exit.if.end_crit_edge

trace_trigger_soft_disabled.exit.if.end_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

trace_trigger_soft_disabled.exit.cleanup_crit_edge: ; preds = %trace_trigger_soft_disabled.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %trace_trigger_soft_disabled.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %entry.if.end_crit_edge
  %call3 = call ptr @trace_event_buffer_reserve(ptr noundef nonnull %fbuffer, ptr noundef %__data, i32 noundef 48) #16
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %3 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pid, align 8
  %pid6 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %call3, i32 0, i32 1
  %5 = ptrtoint ptr %pid6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %pid6, align 4
  %oldcomm = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %call3, i32 0, i32 2
  %comm7 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 101
  %6 = call ptr @memcpy(ptr %oldcomm, ptr %comm7, i32 16)
  %newcomm = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %call3, i32 0, i32 3
  %call10 = call i32 @strlcpy(ptr noundef %newcomm, ptr noundef %comm, i32 noundef 16) #16
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %7 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %8, i32 0, i32 57
  %9 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %oom_score_adj, align 2
  %oom_score_adj11 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %call3, i32 0, i32 4
  %11 = ptrtoint ptr %oom_score_adj11 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %oom_score_adj11, align 4
  call void @trace_event_buffer_commit(ptr noundef nonnull %fbuffer) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %trace_trigger_soft_disabled.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %fbuffer) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @perf_trace_task_rename(ptr noundef %__data, ptr nocapture noundef readonly %task, ptr noundef %comm) #0 align 64 {
entry:
  %__regs = alloca ptr, align 4
  %rctx = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %__regs) #16
  %0 = ptrtoint ptr %__regs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %__regs, align 4, !annotation !341
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rctx) #16
  %1 = ptrtoint ptr %rctx to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %rctx, align 4, !annotation !341
  %perf_events = getelementptr inbounds %struct.trace_event_call, ptr %__data, i32 0, i32 10
  %2 = ptrtoint ptr %perf_events to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %perf_events, align 4
  %4 = ptrtoint ptr %3 to i32
  %5 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true7:                                   ; preds = %entry
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %11, align 4
  %tobool.not.i.not = icmp eq ptr %15, null
  br i1 %tobool.not.i.not, label %land.lhs.true7.cleanup_crit_edge, label %land.lhs.true7.if.end_crit_edge

land.lhs.true7.if.end_crit_edge:                  ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true7.cleanup_crit_edge:                 ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true7.if.end_crit_edge, %entry.if.end_crit_edge
  %call13 = call ptr @perf_trace_buf_alloc(i32 noundef 52, ptr noundef nonnull %__regs, ptr noundef nonnull %rctx) #16
  %tobool14.not = icmp eq ptr %call13, null
  br i1 %tobool14.not, label %if.end.cleanup_crit_edge, label %if.end16

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end16:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__regs, align 4
  %18 = call ptr @llvm.returnaddress(i32 0) #16
  %19 = ptrtoint ptr %18 to i32
  %arrayidx.i = getelementptr [18 x i32], ptr %17, i32 0, i32 15
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx.i, align 4
  %21 = call ptr @llvm.frameaddress.p0(i32 0) #16
  %22 = ptrtoint ptr %21 to i32
  %arrayidx2.i = getelementptr [18 x i32], ptr %17, i32 0, i32 11
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %arrayidx2.i, align 4
  %24 = call i32 @llvm.read_register.i32(metadata !329) #16
  %arrayidx4.i = getelementptr [18 x i32], ptr %17, i32 0, i32 13
  %25 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx4.i, align 4
  %arrayidx6.i = getelementptr [18 x i32], ptr %17, i32 0, i32 16
  %26 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 19, ptr %arrayidx6.i, align 4
  %pid = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 68
  %27 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pid, align 8
  %pid17 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %call13, i32 0, i32 1
  %29 = ptrtoint ptr %pid17 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %pid17, align 4
  %oldcomm = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %call13, i32 0, i32 2
  %comm18 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 101
  %30 = call ptr @memcpy(ptr %oldcomm, ptr %comm18, i32 16)
  %newcomm = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %call13, i32 0, i32 3
  %call21 = call i32 @strlcpy(ptr noundef %newcomm, ptr noundef %comm, i32 noundef 16) #16
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %31 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %32, i32 0, i32 57
  %33 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %oom_score_adj, align 2
  %oom_score_adj22 = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %call13, i32 0, i32 4
  %35 = ptrtoint ptr %oom_score_adj22 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %oom_score_adj22, align 4
  %36 = ptrtoint ptr %rctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %rctx, align 4
  %38 = ptrtoint ptr %__regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__regs, align 4
  call void @perf_trace_run_bpf_submit(ptr noundef nonnull %call13, i32 noundef 52, i32 noundef %37, ptr noundef %__data, i64 noundef 1, ptr noundef %39, ptr noundef %11, ptr noundef null) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end.cleanup_crit_edge, %land.lhs.true7.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rctx) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %__regs) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_task_newtask(ptr noundef %__data, ptr noundef %task, i32 noundef %clone_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  %conv4 = zext i32 %clone_flags to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__bpf_trace_task_rename(ptr noundef %__data, ptr noundef %task, ptr noundef %comm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = ptrtoint ptr %task to i32
  %conv = zext i32 %0 to i64
  %1 = ptrtoint ptr %comm to i32
  %conv4 = zext i32 %1 to i64
  tail call void @bpf_trace_run2(ptr noundef %__data, i64 noundef %conv, i64 noundef %conv4) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @lockdep_tasklist_lock_is_held() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @lock_is_held_type(ptr noundef getelementptr inbounds (%struct.rwlock_t, ptr @tasklist_lock, i32 0, i32 4), i32 noundef -1) #16
  ret i32 %call.i
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nr_processes() local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %call6 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %0)
  %cmp7 = icmp ult i32 %call6, %0
  br i1 %cmp7, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry.do.body_crit_edge
  %call9 = phi i32 [ %call, %do.body.do.body_crit_edge ], [ %call6, %entry.do.body_crit_edge ]
  %total.08 = phi i32 [ %add2, %do.body.do.body_crit_edge ], [ 0, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call9
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @process_counts to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add2 = add i32 %5, %total.08
  %call = tail call i32 @cpumask_next(i32 noundef %call9, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp = icmp ult i32 %call, %0
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %total.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %add2, %do.body.for.end_crit_edge ]
  ret i32 %total.0.lcssa
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_release_task_struct(ptr noundef %tsk) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vm_area_alloc(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vm_area_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = call ptr @memset(ptr %call, i32 0, i32 96)
  %vm_mm.i = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 6
  %2 = ptrtoint ptr %vm_mm.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %mm, ptr %vm_mm.i, align 8
  %vm_ops.i = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 12
  %3 = ptrtoint ptr %vm_ops.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @vma_init.dummy_vm_ops, ptr %vm_ops.i, align 8
  %anon_vma_chain.i = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 10
  %4 = ptrtoint ptr %anon_vma_chain.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %anon_vma_chain.i, ptr %anon_vma_chain.i, align 4
  %prev.i.i = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 10, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %anon_vma_chain.i, ptr %prev.i.i, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kmem_cache_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @vm_area_dup(ptr noundef %orig) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @vm_area_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %1 = call ptr @memcpy(ptr %call, ptr %orig, i32 96)
  %anon_vma_chain = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 10
  %2 = ptrtoint ptr %anon_vma_chain to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %anon_vma_chain, ptr %anon_vma_chain, align 4
  %prev.i = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %anon_vma_chain, ptr %prev.i, align 8
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %vm_prev to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vm_prev, align 4
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 2
  %5 = ptrtoint ptr %vm_next to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %vm_next, align 8
  %call.i = tail call ptr @anon_vma_name(ptr noundef %orig) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.if.end_crit_edge, label %if.then.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i:                                        ; preds = %if.then
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call.i, i32 noundef 4) #16
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %7)
  %cmp.i.i = icmp ult i32 %7, 2147483647
  br i1 %cmp.i.i, label %if.then.i.i.i, label %if.end.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %call.i, i32 1, i32 3, i32 1) #16
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %call.i, ptr nonnull %call.i, i32 1, ptr nonnull elementtype(i32) %call.i) #16, !srcloc !342
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i.i.i, label %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i.i.i, !prof !340

if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i:                            ; preds = %if.then.i.i.i
  %add.i.i.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  %9 = or i32 %add.i.i.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %.not.i.i.i.i.i.i.i = icmp sgt i32 %9, -1
  br i1 %.not.i.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i.i.anon_vma_name_reuse.exit.i_crit_edge, label %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, !prof !339

if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i.i.i.i

if.else.i.i.i.i.i.i.i.anon_vma_name_reuse.exit.i_crit_edge: ; preds = %if.else.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %anon_vma_name_reuse.exit.i

if.end15.sink.split.i.i.i.i.i.i.i:                ; preds = %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i.i.i = phi i32 [ 2, %if.then.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %call.i, i32 noundef %.sink.i.i.i.i.i.i.i) #16
  br label %anon_vma_name_reuse.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %name.i.i = getelementptr inbounds %struct.anon_vma_name, ptr %call.i, i32 0, i32 1
  %call1.i.i = tail call ptr @anon_vma_name_alloc(ptr noundef %name.i.i) #16
  br label %anon_vma_name_reuse.exit.i

anon_vma_name_reuse.exit.i:                       ; preds = %if.end.i.i, %if.end15.sink.split.i.i.i.i.i.i.i, %if.else.i.i.i.i.i.i.i.anon_vma_name_reuse.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %call1.i.i, %if.end.i.i ], [ %call.i, %if.else.i.i.i.i.i.i.i.anon_vma_name_reuse.exit.i_crit_edge ], [ %call.i, %if.end15.sink.split.i.i.i.i.i.i.i ]
  %10 = getelementptr inbounds %struct.vm_area_struct, ptr %call, i32 0, i32 9
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %retval.0.i.i, ptr %10, align 4
  br label %if.end

if.end:                                           ; preds = %anon_vma_name_reuse.exit.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @vm_area_free(ptr noundef %vma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %vm_file.i = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 14
  %0 = ptrtoint ptr %vm_file.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vm_file.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.free_anon_vma_name.exit_crit_edge

entry.free_anon_vma_name.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_anon_vma_name.exit

if.then.i:                                        ; preds = %entry
  %2 = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 9
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  br i1 %tobool.not.i.i, label %if.then.i.free_anon_vma_name.exit_crit_edge, label %if.then.i.i

if.then.i.free_anon_vma_name.exit_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_anon_vma_name.exit

if.then.i.i:                                      ; preds = %if.then.i
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !343
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #16, !srcloc !344
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.free_anon_vma_name.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !339

if.end5.i.i.i.i.i.i.free_anon_vma_name.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_anon_vma_name.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef 3) #16
  br label %free_anon_vma_name.exit

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !345
  tail call void @anon_vma_name_free(ptr noundef nonnull %4) #16
  br label %free_anon_vma_name.exit

free_anon_vma_name.exit:                          ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.free_anon_vma_name.exit_crit_edge, %if.then.i.free_anon_vma_name.exit_crit_edge, %entry.free_anon_vma_name.exit_crit_edge
  %6 = load ptr, ptr @vm_area_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %6, ptr noundef %vma) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmem_cache_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @free_task(ptr noundef %tsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @release_user_cpus_ptr(ptr noundef %tsk) #16
  %0 = ptrtoint ptr %tsk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tsk, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %1)
  %cmp.not.i = icmp eq i32 %1, 128
  br i1 %cmp.not.i, label %if.end25.critedge.i, label %do.end10.i, !prof !339

do.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 430, i32 noundef 9, ptr noundef null) #16
  br label %release_task_stack.exit

if.end25.critedge.i:                              ; preds = %entry
  %stack1.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 1
  %2 = ptrtoint ptr %stack1.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stack1.i.i, align 4
  %4 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !346
  %and.i.i.i.i = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then21.i.i.i, label %do.end11.i.i.i

do.end11.i.i.i:                                   ; preds = %if.end25.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mod_lruvec_kmem_state(ptr noundef %3, i32 noundef 37, i32 noundef -16) #16
  br label %do.body23.i.i.i

if.then21.i.i.i:                                  ; preds = %if.end25.critedge.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  tail call void @__mod_lruvec_kmem_state(ptr noundef %3, i32 noundef 37, i32 noundef -16) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body23.i.i.i

do.body23.i.i.i:                                  ; preds = %if.then21.i.i.i, %do.end11.i.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !347
  %and.i.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool32.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool32.not.i.i.i, label %if.then36.i.i.i, label %do.body23.i.i.i.account_kernel_stack.exit.i_crit_edge, !prof !340

do.body23.i.i.i.account_kernel_stack.exit.i_crit_edge: ; preds = %do.body23.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %account_kernel_stack.exit.i

if.then36.i.i.i:                                  ; preds = %do.body23.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %account_kernel_stack.exit.i

account_kernel_stack.exit.i:                      ; preds = %if.then36.i.i.i, %do.body23.i.i.i.account_kernel_stack.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %4) #16, !srcloc !348
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %6 = load ptr, ptr @mem_map, align 4
  %7 = ptrtoint ptr %stack1.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %stack1.i.i, align 4
  %9 = ptrtoint ptr %8 to i32
  %sub.i.i = add i32 %9, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %6, i32 %shr.i.i
  tail call void @__free_pages(ptr noundef %add.ptr.i.i, i32 noundef 2) #16
  %10 = ptrtoint ptr %stack1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %stack1.i.i, align 4
  br label %release_task_stack.exit

release_task_stack.exit:                          ; preds = %account_kernel_stack.exit.i, %do.end10.i
  tail call void @rt_mutex_debug_task_free(ptr noundef %tsk) #16
  tail call void @arch_release_task_struct(ptr noundef %tsk)
  %flags = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 3
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags, align 4
  %and = and i32 %12, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %release_task_stack.exit.if.end_crit_edge, label %if.then

release_task_stack.exit.if.end_crit_edge:         ; preds = %release_task_stack.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %release_task_stack.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @free_kthread_struct(ptr noundef %tsk) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %release_task_stack.exit.if.end_crit_edge
  %13 = load ptr, ptr @task_struct_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %13, ptr noundef %tsk) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_user_cpus_ptr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rt_mutex_debug_task_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_kthread_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__mmdrop(ptr noundef %mm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %mm, @init_mm
  br i1 %cmp, label %do.body2, label %do.end5, !prof !340

do.body2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/fork.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 698, 0\0A.popsection", ""() #16, !srcloc !349
  unreachable

do.end5:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %mm6 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 53
  %4 = ptrtoint ptr %mm6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mm6, align 8
  %cmp7 = icmp eq ptr %5, %mm
  br i1 %cmp7, label %land.rhs, label %do.end5.if.end46_crit_edge

do.end5.if.end46_crit_edge:                       ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

land.rhs:                                         ; preds = %do.end5
  %.b124 = load i1, ptr @__mmdrop.__already_done, align 1
  br i1 %.b124, label %land.rhs.if.end46_crit_edge, label %if.then22, !prof !339

land.rhs.if.end46_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end46

if.then22:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__mmdrop.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 699, i32 noundef 9, ptr noundef null) #16
  br label %if.end46

if.end46:                                         ; preds = %if.then22, %land.rhs.if.end46_crit_edge, %do.end5.if.end46_crit_edge
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %active_mm = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 54
  %8 = ptrtoint ptr %active_mm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_mm, align 4
  %cmp57 = icmp eq ptr %9, %mm
  br i1 %cmp57, label %land.rhs64, label %if.end46.if.end102_crit_edge

if.end46.if.end102_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

land.rhs64:                                       ; preds = %if.end46
  %.b122123 = load i1, ptr @__mmdrop.__already_done.2, align 1
  br i1 %.b122123, label %land.rhs64.if.end102_crit_edge, label %if.then75, !prof !339

land.rhs64.if.end102_crit_edge:                   ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end102

if.then75:                                        ; preds = %land.rhs64
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__mmdrop.__already_done.2, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 700, i32 noundef 9, ptr noundef null) #16
  br label %if.end102

if.end102:                                        ; preds = %if.then75, %land.rhs64.if.end102_crit_edge, %if.end46.if.end102_crit_edge
  %pgd.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 8
  %10 = ptrtoint ptr %pgd.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pgd.i, align 4
  tail call void @pgd_free(ptr noundef %mm, ptr noundef %11) #16
  %notifier_subscriptions.i.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 49
  %12 = ptrtoint ptr %notifier_subscriptions.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %notifier_subscriptions.i.i, align 8
  %tobool.i.not.i = icmp eq ptr %13, null
  br i1 %tobool.i.not.i, label %if.end102.mmu_notifier_subscriptions_destroy.exit_crit_edge, label %if.then.i

if.end102.mmu_notifier_subscriptions_destroy.exit_crit_edge: ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %mmu_notifier_subscriptions_destroy.exit

if.then.i:                                        ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mmu_notifier_subscriptions_destroy(ptr noundef %mm) #16
  br label %mmu_notifier_subscriptions_destroy.exit

mmu_notifier_subscriptions_destroy.exit:          ; preds = %if.then.i, %if.end102.mmu_notifier_subscriptions_destroy.exit_crit_edge
  %rss_stat.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 40
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i, i32 noundef 4) #16
  %14 = ptrtoint ptr %rss_stat.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %rss_stat.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %mmu_notifier_subscriptions_destroy.exit.if.end.i_crit_edge, label %do.end5.i, !prof !339

mmu_notifier_subscriptions_destroy.exit.if.end.i_crit_edge: ; preds = %mmu_notifier_subscriptions_destroy.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

do.end5.i:                                        ; preds = %mmu_notifier_subscriptions_destroy.exit
  call void @__sanitizer_cov_trace_pc() #18
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %mm, ptr noundef nonnull @.str.49, i32 noundef %15) #20
  br label %if.end.i

if.end.i:                                         ; preds = %do.end5.i, %mmu_notifier_subscriptions_destroy.exit.if.end.i_crit_edge
  %arrayidx.1.i = getelementptr %struct.anon.3, ptr %mm, i32 0, i32 40, i32 0, i32 1
  %call.i.i.1.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.1.i, i32 noundef 4) #16
  %16 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %arrayidx.1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.1.i = icmp eq i32 %17, 0
  br i1 %tobool.not.1.i, label %if.end.i.if.end.1.i_crit_edge, label %do.end5.1.i, !prof !339

if.end.i.if.end.1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.1.i

do.end5.1.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call7.1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %mm, ptr noundef nonnull @.str.50, i32 noundef %17) #20
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %do.end5.1.i, %if.end.i.if.end.1.i_crit_edge
  %arrayidx.2.i = getelementptr %struct.anon.3, ptr %mm, i32 0, i32 40, i32 0, i32 2
  %call.i.i.2.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.2.i, i32 noundef 4) #16
  %18 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %arrayidx.2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.2.i = icmp eq i32 %19, 0
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %do.end5.2.i, !prof !339

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.2.i

do.end5.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #18
  %call7.2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %mm, ptr noundef nonnull @.str.51, i32 noundef %19) #20
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %do.end5.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %arrayidx.3.i = getelementptr %struct.anon.3, ptr %mm, i32 0, i32 40, i32 0, i32 3
  %call.i.i.3.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.3.i, i32 noundef 4) #16
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %arrayidx.3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not.3.i = icmp eq i32 %21, 0
  br i1 %tobool.not.3.i, label %if.end.2.i.if.end.3.i_crit_edge, label %do.end5.3.i, !prof !339

if.end.2.i.if.end.3.i_crit_edge:                  ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.3.i

do.end5.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #18
  %call7.3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, ptr noundef %mm, ptr noundef nonnull @.str.52, i32 noundef %21) #20
  br label %if.end.3.i

if.end.3.i:                                       ; preds = %do.end5.3.i, %if.end.2.i.if.end.3.i_crit_edge
  %pgtables_bytes.i.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 12
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pgtables_bytes.i.i, i32 noundef 4) #16
  %22 = ptrtoint ptr %pgtables_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile i32, ptr %pgtables_bytes.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool9.not.i = icmp eq i32 %23, 0
  br i1 %tobool9.not.i, label %if.end.3.i.check_mm.exit_crit_edge, label %do.end13.i

if.end.3.i.check_mm.exit_crit_edge:               ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %check_mm.exit

do.end13.i:                                       ; preds = %if.end.3.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i26.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pgtables_bytes.i.i, i32 noundef 4) #16
  %24 = ptrtoint ptr %pgtables_bytes.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %pgtables_bytes.i.i, align 4
  %call16.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %25) #20
  br label %check_mm.exit

check_mm.exit:                                    ; preds = %do.end13.i, %if.end.3.i.check_mm.exit_crit_edge
  %user_ns = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 47
  %26 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %user_ns, align 8
  %tobool.not.i125 = icmp eq ptr %27, null
  br i1 %tobool.not.i125, label %check_mm.exit.put_user_ns.exit_crit_edge, label %land.lhs.true.i

check_mm.exit.put_user_ns.exit_crit_edge:         ; preds = %check_mm.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_user_ns.exit

land.lhs.true.i:                                  ; preds = %check_mm.exit
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %27, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !343
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %28 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !344
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %28, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i126, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, label %if.then10.i.i.i.i, !prof !339

if.end5.i.i.i.i.put_user_ns.exit_crit_edge:       ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_user_ns.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 3) #16
  br label %put_user_ns.exit

if.then.i126:                                     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !345
  tail call void @__put_user_ns(ptr noundef nonnull %27) #16
  br label %put_user_ns.exit

put_user_ns.exit:                                 ; preds = %if.then.i126, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_user_ns.exit_crit_edge, %check_mm.exit.put_user_ns.exit_crit_edge
  %29 = load ptr, ptr @mm_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %29, ptr noundef %mm) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__put_task_struct(ptr noundef %tsk) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %exit_state = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 57
  %0 = ptrtoint ptr %exit_state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %exit_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !340

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 747, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %usage = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %usage, i32 noundef 4) #16
  %2 = ptrtoint ptr %usage to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool22.not = icmp eq i32 %3, 0
  br i1 %tobool22.not, label %if.end.if.end44_crit_edge, label %do.end38, !prof !339

if.end.if.end44_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

do.end38:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 748, i32 noundef 9, ptr noundef null) #16
  br label %if.end44

if.end44:                                         ; preds = %do.end38, %if.end.if.end44_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %cmp = icmp eq ptr %7, %tsk
  br i1 %cmp, label %do.end69, label %if.end44.if.end75_crit_edge, !prof !340

if.end44.if.end75_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end75

do.end69:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 749, i32 noundef 9, ptr noundef null) #16
  br label %if.end75

if.end75:                                         ; preds = %do.end69, %if.end44.if.end75_crit_edge
  %io_uring.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 109
  %8 = ptrtoint ptr %io_uring.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_uring.i, align 8
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end75.io_uring_free.exit_crit_edge, label %if.then.i

if.end75.io_uring_free.exit_crit_edge:            ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  br label %io_uring_free.exit

if.then.i:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__io_uring_free(ptr noundef %tsk) #16
  br label %io_uring_free.exit

io_uring_free.exit:                               ; preds = %if.then.i, %if.end75.io_uring_free.exit_crit_edge
  tail call void @cgroup_free(ptr noundef %tsk) #16
  tail call void @security_task_free(ptr noundef %tsk) #16
  tail call void @bpf_task_storage_free(ptr noundef %tsk) #16
  tail call void @exit_creds(ptr noundef %tsk) #16
  %delays.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 181
  %10 = ptrtoint ptr %delays.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %delays.i, align 8
  %tobool.not.i98 = icmp eq ptr %11, null
  br i1 %tobool.not.i98, label %io_uring_free.exit.delayacct_tsk_free.exit_crit_edge, label %if.then.i99

io_uring_free.exit.delayacct_tsk_free.exit_crit_edge: ; preds = %io_uring_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %delayacct_tsk_free.exit

if.then.i99:                                      ; preds = %io_uring_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @delayacct_cache to i32))
  %12 = load ptr, ptr @delayacct_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %12, ptr noundef nonnull %11) #16
  br label %delayacct_tsk_free.exit

delayacct_tsk_free.exit:                          ; preds = %if.then.i99, %io_uring_free.exit.delayacct_tsk_free.exit_crit_edge
  %13 = ptrtoint ptr %delays.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %delays.i, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %14 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %signal, align 16
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !343
  tail call void @llvm.prefetch.p0(ptr %15, i32 1, i32 3, i32 1) #16
  %16 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %15, ptr %15, i32 1, ptr elementtype(i32) %15) #16, !srcloc !344
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %16, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i100, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %delayacct_tsk_free.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.put_signal_struct.exit_crit_edge, label %if.then10.i.i.i.i, !prof !339

if.end5.i.i.i.i.put_signal_struct.exit_crit_edge: ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %put_signal_struct.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %15, i32 noundef 3) #16
  br label %put_signal_struct.exit

if.then.i100:                                     ; preds = %delayacct_tsk_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !345
  tail call fastcc void @free_signal_struct(ptr noundef %15) #16
  br label %put_signal_struct.exit

put_signal_struct.exit:                           ; preds = %if.then.i100, %if.then10.i.i.i.i, %if.end5.i.i.i.i.put_signal_struct.exit_crit_edge
  tail call void @sched_core_free(ptr noundef %tsk) #16
  tail call void @free_task(ptr noundef %tsk)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @security_task_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_task_storage_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_core_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define weak dso_local void @arch_task_cache_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @fork_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.3, i32 noundef 7168, i32 noundef 128, i32 noundef 67371008, i32 noundef 0, i32 noundef 0, ptr noundef null) #16
  store ptr %call, ptr @task_struct_cachep, align 4
  tail call void @arch_task_cache_init() #21
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull @_totalram_pages, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @_totalram_pages to i32))
  %0 = load volatile i32, ptr @_totalram_pages, align 4
  %conv.i = zext i32 %0 to i64
  %mul.i = shl nuw nsw i64 %conv.i, 12
  %call5.i = tail call i64 @div64_u64(i64 noundef %mul.i, i64 noundef 131072) #16
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741823, i64 %call5.i)
  %cmp7.i = icmp ugt i64 %call5.i, 1073741823
  br i1 %cmp7.i, label %entry.set_max_threads.exit_crit_edge, label %1

entry.set_max_threads.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_max_threads.exit

1:                                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp8(i64 20, i64 %call5.i)
  %cmp12.i = icmp ugt i64 %call5.i, 20
  br i1 %cmp12.i, label %2, label %..thread4.i_crit_edge

..thread4.i_crit_edge:                            ; preds = %1
  call void @__sanitizer_cov_trace_pc() #18
  br label %.thread4.i

2:                                                ; preds = %1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1073741823, i64 %call5.i)
  %cmp15.i = icmp ult i64 %call5.i, 1073741823
  %extract.t.i = trunc i64 %call5.i to i32
  br i1 %cmp15.i, label %..thread4.i_crit_edge16, label %.set_max_threads.exit_crit_edge

.set_max_threads.exit_crit_edge:                  ; preds = %2
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_max_threads.exit

..thread4.i_crit_edge16:                          ; preds = %2
  call void @__sanitizer_cov_trace_pc() #18
  br label %.thread4.i

.thread4.i:                                       ; preds = %..thread4.i_crit_edge16, %..thread4.i_crit_edge
  %extract.t7.i = phi i32 [ %extract.t.i, %..thread4.i_crit_edge16 ], [ 20, %..thread4.i_crit_edge ]
  br label %set_max_threads.exit

set_max_threads.exit:                             ; preds = %.thread4.i, %.set_max_threads.exit_crit_edge, %entry.set_max_threads.exit_crit_edge
  %3 = phi i32 [ %extract.t7.i, %.thread4.i ], [ 1073741823, %.set_max_threads.exit_crit_edge ], [ 1073741823, %entry.set_max_threads.exit_crit_edge ]
  store i32 %3, ptr @max_threads, align 4
  %div1314 = lshr i32 %3, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 111) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 111), align 16
  %arrayidx = getelementptr %struct.signal_struct, ptr %4, i32 0, i32 51, i32 6
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %div1314, ptr %arrayidx, align 8
  %6 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 111), align 16
  %rlim_max = getelementptr %struct.signal_struct, ptr %6, i32 0, i32 51, i32 6, i32 1
  %7 = ptrtoint ptr %rlim_max to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div1314, ptr %rlim_max, align 4
  %8 = load ptr, ptr getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 111), align 16
  %arrayidx5 = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 51, i32 11
  %arrayidx7 = getelementptr %struct.signal_struct, ptr %8, i32 0, i32 51, i32 6
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %arrayidx7, align 8
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %arrayidx5, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %set_max_threads.exit
  %i.015 = phi i32 [ 0, %set_max_threads.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx9 = getelementptr %struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 %i.015
  %12 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %div1314, ptr %arrayidx9, align 4
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 12) to i32))
  store i32 2147483647, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 12), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 13) to i32))
  store i32 2147483647, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 13), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 14) to i32))
  store i32 2147483647, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 14), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 15) to i32))
  store i32 2147483647, ptr getelementptr inbounds (%struct.user_namespace, ptr @init_user_ns, i32 0, i32 18, i32 15), align 4
  tail call void @lockdep_init_task(ptr noundef nonnull @init_task) #16
  tail call void @uprobes_init() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create_usercopy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @uprobes_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define weak dso_local i32 @arch_dup_task_struct(ptr noundef %dst, ptr noundef %src) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memcpy(ptr %dst, ptr %src, i32 7168)
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @set_task_stack_end_magic(ptr nocapture noundef readonly %tsk) local_unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 1
  %0 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stack.i, align 4
  %add.ptr.i = getelementptr %struct.thread_info, ptr %1, i32 1
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1470918301, ptr %add.ptr.i, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @coredump_filter_setup(ptr noundef %s) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @simple_strtoul(ptr noundef %s, ptr noundef null, i32 noundef 0) #16
  %shl = shl i32 %call, 2
  %and = and i32 %shl, 2044
  store i32 %and, ptr @default_dump_filter, align 4
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mm_alloc() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mm_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %1 = call ptr @memset(ptr %call, i32 0, i32 720)
  %2 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %task, align 8
  %cred = getelementptr inbounds %struct.task_struct, ptr %5, i32 0, i32 99
  %6 = ptrtoint ptr %cred to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cred, align 16
  %user_ns = getelementptr inbounds %struct.cred, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %user_ns, align 4
  %call5 = tail call fastcc ptr @mm_init(ptr noundef nonnull %call, ptr noundef %5, ptr noundef %9)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call5, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mm_init(ptr noundef %mm, ptr noundef %p, ptr noundef %user_ns) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mm_users = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 10
  %0 = call ptr @memset(ptr %mm, i32 0, i32 16)
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users, i32 noundef 4) #16
  %1 = ptrtoint ptr %mm_users to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile i32 1, ptr %mm_users, align 4
  %mm_count = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 11
  %call.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count, i32 noundef 4) #16
  %2 = ptrtoint ptr %mm_count to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %mm_count, align 4
  %write_protect_seq = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 26
  %dep_map.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 26, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @mm_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %3 = ptrtoint ptr %write_protect_seq to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %write_protect_seq, align 4
  %mmap_lock.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 15
  tail call void @__init_rwsem(ptr noundef %mmap_lock.i, ptr noundef nonnull @.str.58, ptr noundef nonnull @mmap_init_lock.__key) #16
  %mmlist = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 16
  %4 = ptrtoint ptr %mmlist to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %mmlist, ptr %mmlist, align 4
  %prev.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 16, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mmlist, ptr %prev.i, align 4
  %pgtables_bytes.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pgtables_bytes.i, i32 noundef 4) #16
  %6 = ptrtoint ptr %pgtables_bytes.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile i32 0, ptr %pgtables_bytes.i, align 4
  %map_count = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 13
  %7 = ptrtoint ptr %map_count to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %map_count, align 8
  %locked_vm = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 20
  %8 = ptrtoint ptr %locked_vm to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %locked_vm, align 4
  %pinned_vm = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 21
  %call.i.i72 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pinned_vm, i32 noundef 8) #16
  tail call void @generic_atomic64_set(ptr noundef %pinned_vm, i64 noundef 0) #16
  %rss_stat = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 40
  %9 = call ptr @memset(ptr %rss_stat, i32 0, i32 16)
  %page_table_lock = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 14
  tail call void @__raw_spin_lock_init(ptr noundef %page_table_lock, ptr noundef nonnull @.str.55, ptr noundef nonnull @mm_init.__key.54, i16 noundef signext 3) #16
  %arg_lock = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 27
  tail call void @__raw_spin_lock_init(ptr noundef %arg_lock, ptr noundef nonnull @.str.57, ptr noundef nonnull @mm_init.__key.56, i16 noundef signext 3) #16
  %10 = ptrtoint ptr %mm to i32
  %add.i = add i32 %10, 720
  %11 = inttoptr i32 %add.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %12, 31
  %13 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %13, 536870908
  %14 = call ptr @memset(ptr %11, i32 0, i32 %mul.i.i.i)
  %ioctx_lock.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 44
  tail call void @__raw_spin_lock_init(ptr noundef %ioctx_lock.i, ptr noundef nonnull @.str.59, ptr noundef nonnull @mm_init_aio.__key, i16 noundef signext 3) #16
  %ioctx_table.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 45
  %15 = ptrtoint ptr %ioctx_table.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %ioctx_table.i, align 8
  %owner.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 46
  %16 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %p, ptr %owner.i, align 4
  %pasid.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 53
  %17 = ptrtoint ptr %pasid.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %pasid.i, align 8
  %exe_file = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 48
  %18 = ptrtoint ptr %exe_file to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr null, ptr %exe_file, align 4
  %notifier_subscriptions.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 49
  %19 = ptrtoint ptr %notifier_subscriptions.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %notifier_subscriptions.i, align 8
  %tlb_flush_pending.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 50
  %call.i.i.i73 = tail call zeroext i1 @__kasan_check_write(ptr noundef %tlb_flush_pending.i, i32 noundef 4) #16
  %20 = ptrtoint ptr %tlb_flush_pending.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 0, ptr %tlb_flush_pending.i, align 4
  %uprobes_state.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 51
  %21 = ptrtoint ptr %uprobes_state.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %uprobes_state.i, align 8
  %22 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task, align 8
  %mm15 = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 53
  %26 = ptrtoint ptr %mm15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mm15, align 8
  %tobool.not = icmp eq ptr %27, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %flags = getelementptr inbounds %struct.anon.3, ptr %27, i32 0, i32 43
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and = and i32 %29, 16779263
  %flags19 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 43
  %30 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and, ptr %flags19, align 8
  %31 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %task, align 8
  %mm22 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 53
  %33 = ptrtoint ptr %mm22 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %mm22, align 8
  %def_flags = getelementptr inbounds %struct.anon.3, ptr %34, i32 0, i32 25
  %35 = ptrtoint ptr %def_flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %def_flags, align 4
  %and23 = and i32 %36, 1073741824
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %37 = load i32, ptr @default_dump_filter, align 4
  %flags25 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 43
  %38 = ptrtoint ptr %flags25 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %flags25, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %and23.sink = phi i32 [ 0, %if.else ], [ %and23, %if.then ]
  %39 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 25
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %and23.sink, ptr %39, align 4
  %call.i = tail call ptr @pgd_alloc(ptr noundef %mm) #16
  %pgd.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 8
  %41 = ptrtoint ptr %pgd.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %pgd.i, align 4
  %tobool.not.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.not.i.not, label %fail_nopgd, label %if.end30

if.end30:                                         ; preds = %if.end
  %context.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 42
  %call.i.i.i74 = tail call zeroext i1 @__kasan_check_write(ptr noundef %context.i, i32 noundef 8) #16
  tail call void @generic_atomic64_set(ptr noundef %context.i, i64 noundef 0) #16
  %tobool.not.i75 = icmp eq ptr %user_ns, null
  br i1 %tobool.not.i75, label %if.end30.get_user_ns.exit_crit_edge, label %if.then.i

if.end30.get_user_ns.exit_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_user_ns.exit

if.then.i:                                        ; preds = %if.end30
  %count.i = getelementptr inbounds %struct.user_namespace, ptr %user_ns, i32 0, i32 7, i32 3
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #16
  %42 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 1, ptr elementtype(i32) %count.i) #16, !srcloc !342
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %42, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !340

if.then.i.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %43 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %.not.i.i.i.i = icmp sgt i32 %43, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.get_user_ns.exit_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !339

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.get_user_ns.exit_crit_edge:       ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_user_ns.exit

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef %.sink.i.i.i.i) #16
  br label %get_user_ns.exit

get_user_ns.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.get_user_ns.exit_crit_edge, %if.end30.get_user_ns.exit_crit_edge
  %user_ns36 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 47
  %44 = ptrtoint ptr %user_ns36 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %user_ns, ptr %user_ns36, align 8
  br label %return

fail_nopgd:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %45 = load ptr, ptr @mm_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %45, ptr noundef %mm) #16
  br label %return

return:                                           ; preds = %fail_nopgd, %get_user_ns.exit
  %retval.0 = phi ptr [ null, %fail_nopgd ], [ %mm, %get_user_ns.exit ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmput(ptr noundef %mm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1132) #16
  %mm_users = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !350
  tail call void @llvm.prefetch.p0(ptr %mm_users, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_users, ptr %mm_users, i32 1, ptr elementtype(i32) %mm_users) #16, !srcloc !351
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__mmput(ptr noundef %mm)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__mmput(ptr noundef %mm) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %mm_users = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users, i32 noundef 4) #16
  %0 = ptrtoint ptr %mm_users to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %mm_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end6, label %do.body3, !prof !339

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/fork.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1108, 0\0A.popsection", ""() #16, !srcloc !353
  unreachable

do.end6:                                          ; preds = %entry
  tail call void @uprobe_clear_state(ptr noundef %mm) #16
  tail call void @exit_aio(ptr noundef %mm) #16
  %flags.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 43
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %flags.i, align 4
  %4 = and i32 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %do.end6.ksm_exit.exit_crit_edge, label %if.then.i

do.end6.ksm_exit.exit_crit_edge:                  ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #18
  br label %ksm_exit.exit

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__ksm_exit(ptr noundef %mm) #16
  br label %ksm_exit.exit

ksm_exit.exit:                                    ; preds = %if.then.i, %do.end6.ksm_exit.exit_crit_edge
  tail call void @exit_mmap(ptr noundef %mm) #16
  %exe_file.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 48
  %5 = ptrtoint ptr %exe_file.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %exe_file.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !354
  %7 = ptrtoint ptr %exe_file.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr null, ptr %exe_file.i, align 4
  %tobool45.not.i = icmp eq ptr %6, null
  br i1 %tobool45.not.i, label %ksm_exit.exit.set_mm_exe_file.exit_crit_edge, label %allow_write_access.exit.i

ksm_exit.exit.set_mm_exe_file.exit_crit_edge:     ; preds = %ksm_exit.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %set_mm_exe_file.exit

allow_write_access.exit.i:                        ; preds = %ksm_exit.exit
  call void @__sanitizer_cov_trace_pc() #18
  %f_inode.i.i55.i = getelementptr inbounds %struct.file, ptr %6, i32 0, i32 2
  %8 = ptrtoint ptr %f_inode.i.i55.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %f_inode.i.i55.i, align 8
  %i_writecount.i56.i = getelementptr inbounds %struct.inode, ptr %9, i32 0, i32 42
  %call.i.i.i57.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i56.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i56.i, i32 1, i32 3, i32 1) #16
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i56.i, ptr %i_writecount.i56.i, i32 1, ptr elementtype(i32) %i_writecount.i56.i) #16, !srcloc !355
  tail call void @fput(ptr noundef nonnull %6) #16
  br label %set_mm_exe_file.exit

set_mm_exe_file.exit:                             ; preds = %allow_write_access.exit.i, %ksm_exit.exit.set_mm_exe_file.exit_crit_edge
  %mmlist = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 16
  %11 = ptrtoint ptr %mmlist to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %mmlist, align 4
  %cmp.i.not = icmp eq ptr %12, %mmlist
  br i1 %cmp.i.not, label %set_mm_exe_file.exit.if.end12_crit_edge, label %if.then10

set_mm_exe_file.exit.if.end12_crit_edge:          ; preds = %set_mm_exe_file.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end12

if.then10:                                        ; preds = %set_mm_exe_file.exit
  tail call void @_raw_spin_lock(ptr noundef nonnull @mmlist_lock) #16
  %call.i.i29 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %mmlist) #16
  br i1 %call.i.i29, label %if.end.i.i, label %if.then10.list_del.exit_crit_edge

if.then10.list_del.exit_crit_edge:                ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 16, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %mmlist to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mmlist, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then10.list_del.exit_crit_edge
  %19 = ptrtoint ptr %mmlist to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %mmlist, align 4
  %prev.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef nonnull @mmlist_lock) #16
  br label %if.end12

if.end12:                                         ; preds = %list_del.exit, %set_mm_exe_file.exit.if.end12_crit_edge
  %binfmt = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 41
  %21 = ptrtoint ptr %binfmt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %binfmt, align 8
  %tobool13.not = icmp eq ptr %22, null
  br i1 %tobool13.not, label %if.end12.if.end16_crit_edge, label %if.then14

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #18
  %module = getelementptr inbounds %struct.linux_binfmt, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %module, align 4
  tail call void @module_put(ptr noundef %24) #16
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end12.if.end16_crit_edge
  %mm_count.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !350
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #16
  %25 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #16, !srcloc !351
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %25, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i30, label %if.end16.mmdrop.exit_crit_edge, !prof !340

if.end16.mmdrop.exit_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  br label %mmdrop.exit

if.then.i30:                                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mmdrop(ptr noundef %mm) #16
  br label %mmdrop.exit

mmdrop.exit:                                      ; preds = %if.then.i30, %if.end16.mmdrop.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmput_async(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mm_users = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !350
  tail call void @llvm.prefetch.p0(ptr %mm_users, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_users, ptr %mm_users, i32 1, ptr elementtype(i32) %mm_users) #16, !srcloc !351
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %do.body, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %async_put_work = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 52
  tail call void @__init_work(ptr noundef %async_put_work, i32 noundef 0) #16
  %1 = ptrtoint ptr %async_put_work to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %async_put_work, align 4
  %lockdep_map = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 52, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.5, ptr noundef nonnull @mmput_async.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry4 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 52, i32 1
  %2 = ptrtoint ptr %entry4 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry4, ptr %entry4, align 4
  %prev.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 52, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry4, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 52, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @mmput_async_fn, ptr %func, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %5 = load ptr, ptr @system_wq, align 4
  %call.i.i14 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %5, ptr noundef %async_put_work) #16
  br label %if.end

if.end:                                           ; preds = %do.body, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmput_async_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -668
  tail call fastcc void @__mmput(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @set_mm_exe_file(ptr noundef %mm, ptr noundef %new_exe_file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %exe_file = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 48
  %0 = ptrtoint ptr %exe_file to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %exe_file, align 4
  %tobool.not = icmp eq ptr %new_exe_file, null
  br i1 %tobool.not, label %entry.do.body8_crit_edge, label %if.then

entry.do.body8_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body8

if.then:                                          ; preds = %entry
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %new_exe_file, i32 0, i32 2
  %2 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %f_inode.i.i, align 8
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %3, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #16
  %4 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %i_writecount.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.then
  %c.0.i.i.i = phi i32 [ %5, %if.then ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !340

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %6 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %i_writecount.i) #16, !srcloc !357
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %6, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !358
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !339

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i.i

if.end:                                           ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %f_count.i = getelementptr inbounds %struct.file, ptr %new_exe_file, i32 0, i32 6
  %call.i.i.i54 = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #16, !srcloc !355
  br label %do.body8

do.body8:                                         ; preds = %if.end, %entry.do.body8_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !354
  %8 = ptrtoint ptr %exe_file to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %new_exe_file, ptr %exe_file, align 4
  %tobool45.not = icmp eq ptr %1, null
  br i1 %tobool45.not, label %do.body8.cleanup_crit_edge, label %allow_write_access.exit

do.body8.cleanup_crit_edge:                       ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

allow_write_access.exit:                          ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #18
  %f_inode.i.i55 = getelementptr inbounds %struct.file, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %f_inode.i.i55 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %f_inode.i.i55, align 8
  %i_writecount.i56 = getelementptr inbounds %struct.inode, ptr %10, i32 0, i32 42
  %call.i.i.i57 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i56, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i56, i32 1, i32 3, i32 1) #16
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i56, ptr %i_writecount.i56, i32 1, ptr elementtype(i32) %i_writecount.i56) #16, !srcloc !355
  tail call void @fput(ptr noundef nonnull %1) #16
  br label %cleanup

cleanup:                                          ; preds = %allow_write_access.exit, %do.body8.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %allow_write_access.exit ], [ 0, %do.body8.cleanup_crit_edge ], [ -13, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fput(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @replace_mm_exe_file(ptr noundef %mm, ptr noundef %new_exe_file) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @get_mm_exe_file(ptr noundef %mm)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@replace_mm_exe_file, %if.then.i.i)) #16
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !359

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #16
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %if.then
  %mmap_lock.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@replace_mm_exe_file, %if.then.i3.i)) #16
          to label %mmap_read_lock.exit [label %if.then.i3.i], !srcloc !359

if.then.i3.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #16
  br label %mmap_read_lock.exit

mmap_read_lock.exit:                              ; preds = %if.then.i3.i, %__mmap_lock_trace_start_locking.exit.i
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %vma.078 = load ptr, ptr %mm, align 4
  %tobool1.not79.not = icmp eq ptr %vma.078, null
  br i1 %tobool1.not79.not, label %mmap_read_lock.exit.for.end_crit_edge, label %for.body.lr.ph

mmap_read_lock.exit.for.end_crit_edge:            ; preds = %mmap_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %mmap_read_lock.exit
  %f_path6 = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 1
  %dentry2.i = getelementptr inbounds %struct.file, ptr %call, i32 0, i32 1, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %vma.080 = phi ptr [ %vma.078, %for.body.lr.ph ], [ %vma.0, %for.inc.for.body_crit_edge ]
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %vma.080, i32 0, i32 14
  %1 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vm_file, align 4
  %tobool3.not = icmp eq ptr %2, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.end:                                           ; preds = %for.body
  %f_path = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %f_path to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %f_path, align 4
  %5 = ptrtoint ptr %f_path6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %f_path6, align 4
  %cmp.i = icmp eq ptr %4, %6
  br i1 %cmp.i, label %path_equal.exit, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

path_equal.exit:                                  ; preds = %if.end
  %dentry.i = getelementptr inbounds %struct.file, ptr %2, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dentry.i, align 4
  %9 = ptrtoint ptr %dentry2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dentry2.i, align 4
  %cmp3.i.not = icmp eq ptr %8, %10
  br i1 %cmp3.i.not, label %path_equal.exit.for.end_crit_edge, label %path_equal.exit.for.inc_crit_edge

path_equal.exit.for.inc_crit_edge:                ; preds = %path_equal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

path_equal.exit.for.end_crit_edge:                ; preds = %path_equal.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.inc:                                          ; preds = %path_equal.exit.for.inc_crit_edge, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %vma.080, i32 0, i32 2
  %11 = ptrtoint ptr %vm_next to i32
  call void @__asan_load4_noabort(i32 %11)
  %vma.0 = load ptr, ptr %vm_next, align 4
  %tobool1.not.not = icmp eq ptr %vma.0, null
  br i1 %tobool1.not.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %path_equal.exit.for.end_crit_edge, %mmap_read_lock.exit.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %mmap_read_lock.exit.for.end_crit_edge ], [ -16, %path_equal.exit.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  %tobool2.not.lcssa = phi i1 [ true, %mmap_read_lock.exit.for.end_crit_edge ], [ false, %path_equal.exit.for.end_crit_edge ], [ true, %for.inc.for.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@replace_mm_exe_file, %if.then.i.i61)) #16
          to label %mmap_read_unlock.exit [label %if.then.i.i61], !srcloc !359

if.then.i.i61:                                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #16
  br label %mmap_read_unlock.exit

mmap_read_unlock.exit:                            ; preds = %if.then.i.i61, %for.end
  tail call void @up_read(ptr noundef %mmap_lock.i) #16
  tail call void @fput(ptr noundef nonnull %call) #16
  br i1 %tobool2.not.lcssa, label %mmap_read_unlock.exit.if.end14_crit_edge, label %mmap_read_unlock.exit.cleanup_crit_edge

mmap_read_unlock.exit.cleanup_crit_edge:          ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

mmap_read_unlock.exit.if.end14_crit_edge:         ; preds = %mmap_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.end14:                                         ; preds = %mmap_read_unlock.exit.if.end14_crit_edge, %entry.if.end14_crit_edge
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %new_exe_file, i32 0, i32 2
  %12 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %f_inode.i.i, align 8
  %i_writecount.i = getelementptr inbounds %struct.inode, ptr %13, i32 0, i32 42
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i, i32 noundef 4) #16
  %14 = ptrtoint ptr %i_writecount.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %i_writecount.i, align 4
  br label %do.body1.i.i.i

do.body1.i.i.i:                                   ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, %if.end14
  %c.0.i.i.i = phi i32 [ %15, %if.end14 ], [ %asmresult3.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i)
  %cmp.i.i.i = icmp sgt i32 %c.0.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body1.i.i.i.cleanup_crit_edge, label %do.cond3.i.i.i, !prof !340

do.body1.i.i.i.cleanup_crit_edge:                 ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.cond3.i.i.i:                                   ; preds = %do.body1.i.i.i
  %sub.i.i.i = add i32 %c.0.i.i.i, -1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !356
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i

do.body.i.i.i.i.i.i:                              ; preds = %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i
  %16 = tail call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i, ptr %i_writecount.i, i32 %c.0.i.i.i, i32 %sub.i.i.i, ptr elementtype(i32) %i_writecount.i) #16, !srcloc !357
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 0
  %tobool.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i, label %do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.do.body.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i:                 ; preds = %do.body.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i = extractvalue { i32, i32 } %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !358
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i, %c.0.i.i.i
  br i1 %cmp.not.i.i.i.i, label %if.end18, label %arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge, !prof !339

arch_atomic_cmpxchg.exit.i.i.i.i.do.body1.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i.i

if.end18:                                         ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i
  %f_count.i = getelementptr inbounds %struct.file, ptr %new_exe_file, i32 0, i32 6
  %call.i.i.i63 = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #16
  %17 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #16, !srcloc !355
  %exe_file = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 48
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %exe_file, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !360
  %18 = ptrtoint ptr %new_exe_file to i32
  tail call void @llvm.prefetch.p0(ptr %exe_file, i32 1, i32 3, i32 1) #16
  %19 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %18, ptr %exe_file) #16, !srcloc !361
  %asmresult.i = extractvalue { i32, i32 } %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !362
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i)
  %tobool35.not = icmp eq i32 %asmresult.i, 0
  br i1 %tobool35.not, label %if.end18.cleanup_crit_edge, label %if.then36

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then36:                                        ; preds = %if.end18
  %20 = inttoptr i32 %asmresult.i to ptr
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@replace_mm_exe_file, %if.then.i.i64)) #16
          to label %__mmap_lock_trace_start_locking.exit.i66 [label %if.then.i.i64], !srcloc !359

if.then.i.i64:                                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext false) #16
  br label %__mmap_lock_trace_start_locking.exit.i66

__mmap_lock_trace_start_locking.exit.i66:         ; preds = %if.then.i.i64, %if.then36
  %mmap_lock.i65 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 15
  tail call void @down_read(ptr noundef %mmap_lock.i65) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@replace_mm_exe_file, %if.then.i3.i67)) #16
          to label %allow_write_access.exit [label %if.then.i3.i67], !srcloc !359

if.then.i3.i67:                                   ; preds = %__mmap_lock_trace_start_locking.exit.i66
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext false, i1 noundef zeroext true) #16
  br label %allow_write_access.exit

allow_write_access.exit:                          ; preds = %if.then.i3.i67, %__mmap_lock_trace_start_locking.exit.i66
  %f_inode.i.i69 = getelementptr inbounds %struct.file, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %f_inode.i.i69 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %f_inode.i.i69, align 8
  %i_writecount.i70 = getelementptr inbounds %struct.inode, ptr %22, i32 0, i32 42
  %call.i.i.i71 = tail call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i70, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %i_writecount.i70, i32 1, i32 3, i32 1) #16
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i70, ptr %i_writecount.i70, i32 1, ptr elementtype(i32) %i_writecount.i70) #16, !srcloc !355
  tail call void @fput(ptr noundef nonnull %20) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@replace_mm_exe_file, %if.then.i.i72)) #16
          to label %mmap_read_unlock.exit74 [label %if.then.i.i72], !srcloc !359

if.then.i.i72:                                    ; preds = %allow_write_access.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext false) #16
  br label %mmap_read_unlock.exit74

mmap_read_unlock.exit74:                          ; preds = %if.then.i.i72, %allow_write_access.exit
  tail call void @up_read(ptr noundef %mmap_lock.i65) #16
  br label %cleanup

cleanup:                                          ; preds = %mmap_read_unlock.exit74, %if.end18.cleanup_crit_edge, %do.body1.i.i.i.cleanup_crit_edge, %mmap_read_unlock.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.lcssa, %mmap_read_unlock.exit.cleanup_crit_edge ], [ 0, %mmap_read_unlock.exit74 ], [ 0, %if.end18.cleanup_crit_edge ], [ -13, %do.body1.i.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_mm_exe_file(ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !363
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 696, ptr noundef nonnull @.str.61) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %exe_file1 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 48
  %4 = ptrtoint ptr %exe_file1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %exe_file1, align 4
  %call = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @get_mm_exe_file.__warned, align 1
  br i1 %.b17, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @get_mm_exe_file.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 1259, ptr noundef nonnull @.str.6) #16
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.if.end14_crit_edge, label %land.lhs.true11

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

land.lhs.true11:                                  ; preds = %do.end8
  %f_count = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %f_count, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !364
  tail call void @llvm.prefetch.p0(ptr %f_count, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %f_count, ptr %f_count, i32 0, i32 1, ptr elementtype(i32) %f_count) #16, !srcloc !365
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %land.lhs.true11.if.end14_crit_edge, label %do.end11.i.i.i.i

land.lhs.true11.if.end14_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

do.end11.i.i.i.i:                                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !366
  br label %if.end14

if.end14:                                         ; preds = %do.end11.i.i.i.i, %land.lhs.true11.if.end14_crit_edge, %do.end8.if.end14_crit_edge
  %exe_file.0 = phi ptr [ null, %do.end8.if.end14_crit_edge ], [ null, %land.lhs.true11.if.end14_crit_edge ], [ %5, %do.end11.i.i.i.i ]
  %call.i18 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i18, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i21

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i21:                                ; preds = %if.end14
  %call1.i19 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i19)
  %tobool.not.i20 = icmp eq i32 %call1.i19, 0
  br i1 %tobool.not.i20, label %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i23

land.lhs.true.i21.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i21
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i23:                               ; preds = %land.lhs.true.i21
  %.b4.i22 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i22, label %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, label %if.then.i24

land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i24:                                      ; preds = %land.lhs.true2.i23
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 724, ptr noundef nonnull @.str.62) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i24, %land.lhs.true2.i23.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i21.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !367
  %7 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i.i25 = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i25 to ptr
  %preempt_count.i.i.i.i26 = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %preempt_count.i.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %preempt_count.i.i.i.i26, align 4
  %sub.i.i.i = add i32 %10, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i26, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  ret ptr %exe_file.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_read_unlock() unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b4 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 724, ptr noundef nonnull @.str.62) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !367
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %3, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_task_exe_file(ptr noundef %task) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #16
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 53
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.then3, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call ptr @get_mm_exe_file(ptr noundef nonnull %1)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %exe_file.0 = phi ptr [ null, %if.then.if.end4_crit_edge ], [ %call, %if.then3 ], [ null, %entry.if.end4_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #16
  ret ptr %exe_file.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @get_task_mm(ptr noundef %task) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #16
  %mm1 = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 53
  %0 = ptrtoint ptr %mm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %if.else, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %mm_users.i = getelementptr inbounds %struct.anon.3, ptr %1, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #16
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 1, ptr elementtype(i32) %mm_users.i) #16, !srcloc !355
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then.if.end4_crit_edge, %entry.if.end4_crit_edge
  %mm.0 = phi ptr [ %1, %if.else ], [ null, %entry.if.end4_crit_edge ], [ null, %if.then.if.end4_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #16
  ret ptr %mm.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @mm_access(ptr noundef %task, i32 noundef %mode) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %signal = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 111
  %0 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %signal, align 16
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, ptr %1, i32 0, i32 61
  %call = tail call i32 @down_read_killable(ptr noundef %exec_update_lock) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = inttoptr i32 %call to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #16
  %mm1.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 53
  %3 = ptrtoint ptr %mm1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mm1.i, align 8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.get_task_mm.exit.thread_crit_edge, label %if.then.i

if.end.get_task_mm.exit.thread_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_task_mm.exit.thread

if.then.i:                                        ; preds = %if.end
  %flags.i = getelementptr inbounds %struct.task_struct, ptr %task, i32 0, i32 3
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true, label %if.then.i.get_task_mm.exit.thread_crit_edge

if.then.i.get_task_mm.exit.thread_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %get_task_mm.exit.thread

get_task_mm.exit.thread:                          ; preds = %if.then.i.get_task_mm.exit.thread_crit_edge, %if.end.get_task_mm.exit.thread_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i) #16
  br label %if.end11

land.lhs.true:                                    ; preds = %if.then.i
  %mm_users.i.i = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %mm_users.i.i, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i.i, ptr %mm_users.i.i, i32 1, ptr elementtype(i32) %mm_users.i.i) #16, !srcloc !355
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i) #16
  %8 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i22 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i22 to ptr
  %task5 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task5, align 8
  %mm6 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %mm6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm6, align 8
  %cmp.not = icmp eq ptr %4, %13
  br i1 %cmp.not, label %land.lhs.true.if.end11_crit_edge, label %land.lhs.true7

land.lhs.true.if.end11_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

land.lhs.true7:                                   ; preds = %land.lhs.true
  %call8 = tail call zeroext i1 @ptrace_may_access(ptr noundef %task, i32 noundef %mode) #16
  br i1 %call8, label %land.lhs.true7.if.end11_crit_edge, label %if.then9

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true7
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1132) #16
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !350
  tail call void @llvm.prefetch.p0(ptr %mm_users.i.i, i32 1, i32 3, i32 1) #16
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i.i, ptr %mm_users.i.i, i32 1, ptr elementtype(i32) %mm_users.i.i) #16, !srcloc !351
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i23, label %if.then9.if.end11_crit_edge

if.then9.if.end11_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then.i23:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__mmput(ptr noundef nonnull %4) #16
  br label %if.end11

if.end11:                                         ; preds = %if.then.i23, %if.then9.if.end11_crit_edge, %land.lhs.true7.if.end11_crit_edge, %land.lhs.true.if.end11_crit_edge, %get_task_mm.exit.thread
  %mm.0 = phi ptr [ %4, %land.lhs.true7.if.end11_crit_edge ], [ %4, %land.lhs.true.if.end11_crit_edge ], [ null, %get_task_mm.exit.thread ], [ inttoptr (i32 -13 to ptr), %if.then9.if.end11_crit_edge ], [ inttoptr (i32 -13 to ptr), %if.then.i23 ]
  %15 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %signal, align 16
  %exec_update_lock13 = getelementptr inbounds %struct.signal_struct, ptr %16, i32 0, i32 61
  tail call void @up_read(ptr noundef %exec_update_lock13) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then
  %retval.0 = phi ptr [ %2, %if.then ], [ %mm.0, %if.end11 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_read_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @ptrace_may_access(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exit_mm_release(ptr noundef %tsk, ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @futex_exit_release(ptr noundef %tsk) #16
  tail call fastcc void @mm_release(ptr noundef %tsk, ptr noundef %mm)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_exit_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mm_release(ptr noundef %tsk, ptr noundef %mm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @uprobe_free_utask(ptr noundef %tsk) #16
  %clear_child_tid = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 84
  %0 = ptrtoint ptr %clear_child_tid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clear_child_tid, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

if.then:                                          ; preds = %entry
  %mm_users = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 10
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %mm_users, i32 noundef 4) #16
  %2 = ptrtoint ptr %mm_users to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %mm_users, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  br i1 %cmp, label %if.then1, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %4 = ptrtoint ptr %clear_child_tid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clear_child_tid, align 4
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 1399) #16
  %6 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 4
  %8 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !368
  %and.i = and i32 %8, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  %9 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %5, i32 0, i32 -1226833921) #16, !srcloc !371
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %8) #16, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  %10 = ptrtoint ptr %clear_child_tid to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clear_child_tid, align 4
  %call6 = tail call i32 @do_futex(ptr noundef %11, i32 noundef 1, i32 noundef 1, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 0) #16
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  %12 = ptrtoint ptr %clear_child_tid to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %clear_child_tid, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %vfork_done = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 82
  %13 = ptrtoint ptr %vfork_done to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %vfork_done, align 4
  %tobool9.not = icmp eq ptr %14, null
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #16
  %15 = ptrtoint ptr %vfork_done to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %vfork_done, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then10.complete_vfork_done.exit_crit_edge, label %if.then.i, !prof !340

if.then10.complete_vfork_done.exit_crit_edge:     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  br label %complete_vfork_done.exit

if.then.i:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #18
  %17 = ptrtoint ptr %vfork_done to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %vfork_done, align 4
  tail call void @complete(ptr noundef nonnull %16) #16
  br label %complete_vfork_done.exit

complete_vfork_done.exit:                         ; preds = %if.then.i, %if.then10.complete_vfork_done.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i) #16
  br label %if.end11

if.end11:                                         ; preds = %complete_vfork_done.exit, %if.end8.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @exec_mm_release(ptr noundef %tsk, ptr noundef %mm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @futex_exec_release(ptr noundef %tsk) #16
  tail call fastcc void @mm_release(ptr noundef %tsk, ptr noundef %mm)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @futex_exec_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @__cleanup_sighand(ptr noundef %sighand) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr inbounds %struct.sighand_struct, ptr %sighand, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !343
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #16, !srcloc !344
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end_crit_edge, label %if.then10.i.i.i, !prof !339

if.end5.i.i.i.if.end_crit_edge:                   ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef 3) #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !345
  tail call void @signalfd_cleanup(ptr noundef %sighand) #16
  %1 = load ptr, ptr @sighand_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %1, ptr noundef %sighand) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %if.then10.i.i.i, %if.end5.i.i.i.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @signalfd_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_set_tid_address(i32 noundef %tidptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %tidptr to ptr
  %1 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task.i, align 8
  %clear_child_tid.i = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 84
  %5 = ptrtoint ptr %clear_child_tid.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %0, ptr %clear_child_tid.i, align 4
  %6 = load ptr, ptr %task.i, align 8
  %call.i.i = tail call i32 @__task_pid_nr_ns(ptr noundef %6, i32 noundef 0, ptr noundef null) #16
  ret i32 %call.i.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @pidfd_pid(ptr nocapture noundef readonly %file) local_unnamed_addr #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %f_op = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 3
  %0 = ptrtoint ptr %f_op to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %f_op, align 4
  %cmp = icmp eq ptr %1, @pidfd_fops
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %2 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private_data, align 4
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi ptr [ %3, %if.then ], [ inttoptr (i32 -9 to ptr), %entry.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidfd_poll(ptr noundef %file, ptr noundef %pts) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait_pidfd = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 5
  %tobool.not.i = icmp eq ptr %pts, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %pts to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pts, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait_pidfd, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait_pidfd, ptr noundef nonnull %pts) #16
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %call = tail call zeroext i1 @thread_group_exited(ptr noundef %1) #16
  %spec.select = select i1 %call, i32 65, i32 0
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pidfd_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  store ptr null, ptr %private_data, align 4
  tail call void @put_pid(ptr noundef %1) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pidfd_show_fdinfo(ptr noundef %m, ptr nocapture noundef readonly %f) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %f, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %tasks.i = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %tasks.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %tasks.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.not, label %entry.if.end_crit_edge, label %if.then, !prof !340

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %file = getelementptr inbounds %struct.seq_file, ptr %m, i32 0, i32 10
  %4 = ptrtoint ptr %file to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %file, align 4
  %f_inode.i = getelementptr inbounds %struct.file, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %f_inode.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %f_inode.i, align 8
  %i_sb = getelementptr inbounds %struct.inode, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %i_sb to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %i_sb, align 4
  %s_fs_info.i.i = getelementptr inbounds %struct.super_block, ptr %9, i32 0, i32 33
  %10 = ptrtoint ptr %s_fs_info.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s_fs_info.i.i, align 16
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call4 = tail call i32 @pid_nr_ns(ptr noundef %1, ptr noundef %13) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ns.0 = phi ptr [ %13, %if.then ], [ inttoptr (i32 -1 to ptr), %entry.if.end_crit_edge ]
  %nr.0 = phi i32 [ %call4, %if.then ], [ -1, %entry.if.end_crit_edge ]
  %conv = sext i32 %nr.0 to i64
  tail call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.65, i64 noundef %conv) #16
  tail call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.66, i64 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr.0)
  %cmp = icmp sgt i32 %nr.0, 0
  br i1 %cmp, label %if.then7, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.then7:                                         ; preds = %if.end
  %level = getelementptr inbounds %struct.pid_namespace, ptr %ns.0, i32 0, i32 5
  %14 = ptrtoint ptr %level to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %level, align 4
  %level8 = getelementptr inbounds %struct.pid, ptr %1, i32 0, i32 1
  %i.026 = add i32 %15, 1
  %16 = ptrtoint ptr %level8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %level8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.026, i32 %17)
  %cmp9.not27 = icmp ugt i32 %i.026, %17
  br i1 %cmp9.not27, label %if.then7.if.end13_crit_edge, label %if.then7.for.body_crit_edge

if.then7.for.body_crit_edge:                      ; preds = %if.then7
  br label %for.body

if.then7.if.end13_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then7.for.body_crit_edge
  %i.028 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.026, %if.then7.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.pid, ptr %1, i32 0, i32 7, i32 %i.028
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %conv12 = sext i32 %19 to i64
  tail call void @seq_put_decimal_ll(ptr noundef %m, ptr noundef nonnull @.str.67, i64 noundef %conv12) #16
  %i.0 = add i32 %i.028, 1
  %20 = ptrtoint ptr %level8 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %level8, align 4
  %cmp9.not = icmp ugt i32 %i.0, %21
  br i1 %cmp9.not, label %for.body.if.end13_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.body.if.end13_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end13

if.end13:                                         ; preds = %for.body.if.end13_crit_edge, %if.then7.if.end13_crit_edge, %if.end.if.end13_crit_edge
  tail call void @seq_putc(ptr noundef %m, i8 noundef zeroext 10) #16
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @fork_idle(i32 noundef %cpu) local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  %args = alloca %struct.kernel_clone_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %0 = getelementptr inbounds i8, ptr %args, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 256, ptr %args, align 8
  %call = call fastcc ptr @copy_process(ptr noundef nonnull @init_struct_pid, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 111
  %arrayidx.i = getelementptr %struct.task_struct, ptr %call, i32 0, i32 79, i32 0
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %arrayidx.i, align 4
  %pprev.i.i = getelementptr %struct.task_struct, ptr %call, i32 0, i32 79, i32 0, i32 1
  %4 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %pprev.i.i, align 4
  %thread_pid.i.i = getelementptr inbounds %struct.task_struct, ptr %call, i32 0, i32 78
  %5 = ptrtoint ptr %thread_pid.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @init_struct_pid, ptr %thread_pid.i.i, align 16
  %arrayidx.1.i = getelementptr %struct.task_struct, ptr %call, i32 0, i32 79, i32 1
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx.1.i, align 4
  %pprev.i.1.i = getelementptr %struct.task_struct, ptr %call, i32 0, i32 79, i32 1, i32 1
  %7 = ptrtoint ptr %pprev.i.1.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %pprev.i.1.i, align 4
  %8 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.1.i = getelementptr %struct.signal_struct, ptr %9, i32 0, i32 22, i32 1
  %10 = ptrtoint ptr %arrayidx.i.1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @init_struct_pid, ptr %arrayidx.i.1.i, align 4
  %arrayidx.2.i = getelementptr %struct.task_struct, ptr %call, i32 0, i32 79, i32 2
  %11 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %arrayidx.2.i, align 4
  %pprev.i.2.i = getelementptr %struct.task_struct, ptr %call, i32 0, i32 79, i32 2, i32 1
  %12 = ptrtoint ptr %pprev.i.2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %pprev.i.2.i, align 4
  %13 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.2.i = getelementptr %struct.signal_struct, ptr %13, i32 0, i32 22, i32 2
  %14 = ptrtoint ptr %arrayidx.i.2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @init_struct_pid, ptr %arrayidx.i.2.i, align 4
  %arrayidx.3.i = getelementptr %struct.task_struct, ptr %call, i32 0, i32 79, i32 3
  %15 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %arrayidx.3.i, align 4
  %pprev.i.3.i = getelementptr %struct.task_struct, ptr %call, i32 0, i32 79, i32 3, i32 1
  %16 = ptrtoint ptr %pprev.i.3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %pprev.i.3.i, align 4
  %17 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.3.i = getelementptr %struct.signal_struct, ptr %17, i32 0, i32 22, i32 3
  %18 = ptrtoint ptr %arrayidx.i.3.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @init_struct_pid, ptr %arrayidx.i.3.i, align 4
  call void @init_idle(ptr noundef %call, i32 noundef %cpu) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @copy_process(ptr noundef readnone %pid, i32 noundef %trace, i32 noundef %node, ptr noundef %args) #0 align 64 {
entry:
  %delayed = alloca %struct.multiprocess_signals, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %delayed) #16
  %0 = getelementptr inbounds %struct.multiprocess_signals, ptr %delayed, i32 0, i32 1
  %1 = getelementptr inbounds %struct.multiprocess_signals, ptr %delayed, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %args, align 8
  %4 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i996 = and i32 %4, -16384
  %5 = inttoptr i32 %and.i996 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %nsproxy = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 110
  %8 = ptrtoint ptr %nsproxy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %nsproxy, align 4
  %and = and i64 %3, 131584
  call void @__sanitizer_cov_trace_const_cmp8(i64 131584, i64 %and)
  %cmp = icmp eq i64 %and, 131584
  %and3 = and i64 %3, 268435968
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435968, i64 %and3)
  %cmp4 = icmp eq i64 %and3, 268435968
  %or.cond1085 = or i1 %cmp, %cmp4
  br i1 %or.cond1085, label %entry.cleanup_crit_edge, label %if.end7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %entry
  %and8 = and i64 %3, 65536
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and8)
  %tobool.not = icmp eq i64 %and8, 0
  %tobool.not.not = xor i1 %tobool.not, true
  %and9 = and i64 %3, 2048
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  %or.cond = select i1 %tobool.not.not, i1 %tobool10.not, i1 false
  %10 = and i64 %3, 2304
  call void @__sanitizer_cov_trace_const_cmp8(i64 2048, i64 %10)
  %11 = icmp eq i64 %10, 2048
  %or.cond1087 = select i1 %or.cond, i1 true, i1 %11
  br i1 %or.cond1087, label %if.end7.cleanup_crit_edge, label %if.end21

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end21:                                         ; preds = %if.end7
  %and22 = and i64 %3, 32768
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool23.not = icmp eq i64 %and22, 0
  br i1 %tobool23.not, label %if.end21.if.end32_crit_edge, label %land.lhs.true24

if.end21.if.end32_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

land.lhs.true24:                                  ; preds = %if.end21
  %signal = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %12 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal, align 16
  %flags27 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %flags27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags27, align 8
  %and28 = and i32 %15, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %land.lhs.true24.if.end32_crit_edge, label %land.lhs.true24.cleanup_crit_edge

land.lhs.true24.cleanup_crit_edge:                ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true24.if.end32_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end32

if.end32:                                         ; preds = %land.lhs.true24.if.end32_crit_edge, %if.end21.if.end32_crit_edge
  br i1 %tobool.not, label %if.end32.if.end45_crit_edge, label %if.then35

if.end32.if.end45_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then35:                                        ; preds = %if.end32
  %and36 = and i64 %3, 805306368
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and36)
  %tobool37.not = icmp eq i64 %and36, 0
  br i1 %tobool37.not, label %lor.lhs.false, label %if.then35.cleanup_crit_edge

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then35
  %call40 = tail call ptr @task_active_pid_ns(ptr noundef %7) #16
  %pid_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %pid_ns_for_children to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pid_ns_for_children, align 4
  %cmp41.not = icmp eq ptr %call40, %17
  br i1 %cmp41.not, label %lor.lhs.false.if.end45_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.lhs.false.if.end45_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.end45:                                         ; preds = %lor.lhs.false.if.end45_crit_edge, %if.end32.if.end45_crit_edge
  %and46 = and i64 %3, 65792
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and46)
  %tobool47.not = icmp eq i64 %and46, 0
  br i1 %tobool47.not, label %if.end45.if.end53_crit_edge, label %if.then48

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then48:                                        ; preds = %if.end45
  %time_ns = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 6
  %18 = ptrtoint ptr %time_ns to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %time_ns, align 4
  %time_ns_for_children = getelementptr inbounds %struct.nsproxy, ptr %9, i32 0, i32 7
  %20 = ptrtoint ptr %time_ns_for_children to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %time_ns_for_children, align 4
  %cmp49.not = icmp eq ptr %19, %21
  br i1 %cmp49.not, label %if.then48.if.end53_crit_edge, label %if.then48.cleanup_crit_edge

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then48.if.end53_crit_edge:                     ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.end53:                                         ; preds = %if.then48.if.end53_crit_edge, %if.end45.if.end53_crit_edge
  %and54 = and i64 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and54)
  %tobool55.not = icmp eq i64 %and54, 0
  %and57 = and i64 %3, 4259840
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and57)
  %tobool58.not = icmp eq i64 %and57, 0
  %or.cond972 = or i1 %tobool55.not, %tobool58.not
  br i1 %or.cond972, label %if.end62, label %if.end53.cleanup_crit_edge

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end62:                                         ; preds = %if.end53
  %22 = call ptr @memset(ptr %delayed, i32 0, i32 16)
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 112
  %25 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %sighand, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %26) #16
  br i1 %tobool.not, label %if.then69, label %if.end62.if.end74_crit_edge

if.end62.if.end74_crit_edge:                      ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end74

if.then69:                                        ; preds = %if.end62
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %signal73 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 111
  %29 = ptrtoint ptr %signal73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %signal73, align 16
  %multiprocess = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %multiprocess to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %multiprocess, align 4
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %32, ptr %0, align 8
  %tobool.not.i997 = icmp eq ptr %32, null
  br i1 %tobool.not.i997, label %if.then69.hlist_add_head.exit_crit_edge, label %do.body12.i

if.then69.hlist_add_head.exit_crit_edge:          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #18
  %pprev.i998 = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %pprev.i998 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %0, ptr %pprev.i998, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.then69.hlist_add_head.exit_crit_edge
  %35 = ptrtoint ptr %multiprocess to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %0, ptr %multiprocess, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %multiprocess, ptr %1, align 4
  br label %if.end74

if.end74:                                         ; preds = %hlist_add_head.exit, %if.end62.if.end74_crit_edge
  call void @recalc_sigpending() #16
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %sighand77 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 112
  %39 = ptrtoint ptr %sighand77 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %sighand77, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %40) #16
  %41 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %task, align 8
  %stack.i.i = getelementptr inbounds %struct.task_struct, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %stack.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %stack.i.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %44, align 4
  %and1.i.i.i.i = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i)
  %tobool82.not = icmp eq i32 %and1.i.i.i.i, 0
  br i1 %tobool82.not, label %if.end84, label %if.end74.fork_out_crit_edge

if.end74.fork_out_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #18
  br label %fork_out

if.end84:                                         ; preds = %if.end74
  %call87 = call fastcc ptr @dup_task_struct(ptr noundef %42, i32 noundef %node)
  %tobool88.not = icmp eq ptr %call87, null
  br i1 %tobool88.not, label %if.end84.fork_out_crit_edge, label %if.end90

if.end84.fork_out_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #18
  br label %fork_out

if.end90:                                         ; preds = %if.end84
  %io_thread = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 11
  %47 = ptrtoint ptr %io_thread to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %io_thread, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool91.not = icmp eq i32 %48, 0
  br i1 %tobool91.not, label %if.end90.if.end94_crit_edge, label %if.then92

if.end90.if.end94_crit_edge:                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

if.then92:                                        ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #18
  %flags93 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 3
  %49 = ptrtoint ptr %flags93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %flags93, align 4
  %or = or i32 %50, 16
  store i32 %or, ptr %flags93, align 4
  %blocked = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 113
  %51 = ptrtoint ptr %blocked to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -262401, ptr %blocked, align 4
  %arrayidx2.i = getelementptr %struct.task_struct, ptr %call87, i32 0, i32 113, i32 0, i32 1
  %52 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 -1, ptr %arrayidx2.i, align 4
  br label %if.end94

if.end94:                                         ; preds = %if.then92, %if.end90.if.end94_crit_edge
  %and95 = and i64 %3, 16777216
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and95)
  %tobool96.not = icmp eq i64 %and95, 0
  br i1 %tobool96.not, label %if.end94.cond.end_crit_edge, label %cond.true

if.end94.cond.end_crit_edge:                      ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end

cond.true:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  %child_tid = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 2
  %53 = ptrtoint ptr %child_tid to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %child_tid, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end94.cond.end_crit_edge
  %cond = phi ptr [ %54, %cond.true ], [ null, %if.end94.cond.end_crit_edge ]
  %set_child_tid = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 83
  %55 = ptrtoint ptr %set_child_tid to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %cond, ptr %set_child_tid, align 8
  %and97 = and i64 %3, 2097152
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and97)
  %tobool98.not = icmp eq i64 %and97, 0
  br i1 %tobool98.not, label %cond.end.cond.end102_crit_edge, label %cond.true99

cond.end.cond.end102_crit_edge:                   ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cond.end102

cond.true99:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #18
  %child_tid100 = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 2
  %56 = ptrtoint ptr %child_tid100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %child_tid100, align 4
  br label %cond.end102

cond.end102:                                      ; preds = %cond.true99, %cond.end.cond.end102_crit_edge
  %cond103 = phi ptr [ %57, %cond.true99 ], [ null, %cond.end.cond.end102_crit_edge ]
  %clear_child_tid = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 84
  %58 = ptrtoint ptr %clear_child_tid to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %cond103, ptr %clear_child_tid, align 4
  %pi_lock.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 128
  call void @__raw_spin_lock_init(ptr noundef %pi_lock.i, ptr noundef nonnull @.str.77, ptr noundef nonnull @rt_mutex_init_task.__key, i16 noundef signext 2) #16
  %pi_waiters.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 130
  %59 = call ptr @memset(ptr %pi_waiters.i, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %60 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool104.not = icmp eq i32 %60, 0
  br i1 %tobool104.not, label %cond.end102.if.end195_crit_edge, label %land.lhs.true105

cond.end102.if.end195_crit_edge:                  ; preds = %cond.end102
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end195

land.lhs.true105:                                 ; preds = %cond.end102
  %61 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i = and i32 %61, -16384
  %62 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %64, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !372
  %cpu = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %65 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %66
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  %add = add i32 %68, ptrtoint (ptr @lockdep_recursion to i32)
  %69 = inttoptr i32 %add to ptr
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %69, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !373
  %72 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i976 = and i32 %72, -16384
  %73 = inttoptr i32 %and.i.i.i976 to ptr
  %preempt_count.i.i977 = getelementptr inbounds %struct.thread_info, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %preempt_count.i.i977 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile i32, ptr %preempt_count.i.i977, align 4
  %sub.i = add i32 %75, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i977, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool126.not = icmp eq i32 %71, 0
  br i1 %tobool126.not, label %land.rhs, label %land.lhs.true105.if.end195_crit_edge

land.lhs.true105.if.end195_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end195

land.rhs:                                         ; preds = %land.lhs.true105
  %76 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i978 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i.i978 to ptr
  %preempt_count.i.i979 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %preempt_count.i.i979 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load volatile i32, ptr %preempt_count.i.i979, align 4
  %add.i980 = add i32 %79, 1
  store volatile i32 %add.i980, ptr %preempt_count.i.i979, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !374
  %80 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %cpu, align 4
  %arrayidx150 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %81
  %82 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx150, align 4
  %add151 = add i32 %83, ptrtoint (ptr @hardirqs_enabled to i32)
  %84 = inttoptr i32 %add151 to ptr
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load volatile i32, ptr %84, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !375
  %87 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i981 = and i32 %87, -16384
  %88 = inttoptr i32 %and.i.i.i981 to ptr
  %preempt_count.i.i982 = getelementptr inbounds %struct.thread_info, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %preempt_count.i.i982 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %preempt_count.i.i982, align 4
  %sub.i983 = add i32 %90, -1
  store volatile i32 %sub.i983, ptr %preempt_count.i.i982, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool158.not = icmp eq i32 %86, 0
  br i1 %tobool158.not, label %land.rhs162, label %land.rhs.if.end195_crit_edge

land.rhs.if.end195_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end195

land.rhs162:                                      ; preds = %land.rhs
  %.b970 = load i1, ptr @copy_process.__already_done, align 1
  br i1 %.b970, label %land.rhs162.if.end195_crit_edge, label %if.then169, !prof !339

land.rhs162.if.end195_crit_edge:                  ; preds = %land.rhs162
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end195

if.then169:                                       ; preds = %land.rhs162
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @copy_process.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2020, i32 noundef 9, ptr noundef null) #16
  br label %if.end195

if.end195:                                        ; preds = %if.then169, %land.rhs162.if.end195_crit_edge, %land.rhs.if.end195_crit_edge, %land.lhs.true105.if.end195_crit_edge, %cond.end102.if.end195_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %91 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool206.not = icmp eq i32 %91, 0
  br i1 %tobool206.not, label %land.lhs.true207, label %if.end195.if.end256_crit_edge

if.end195.if.end256_crit_edge:                    ; preds = %if.end195
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end256

land.lhs.true207:                                 ; preds = %if.end195
  %softirqs_enabled = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 138
  %92 = ptrtoint ptr %softirqs_enabled to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %softirqs_enabled, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool208.not = icmp eq i32 %93, 0
  br i1 %tobool208.not, label %do.end220, label %land.lhs.true207.if.end256_crit_edge, !prof !340

land.lhs.true207.if.end256_crit_edge:             ; preds = %land.lhs.true207
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end256

do.end220:                                        ; preds = %land.lhs.true207
  %call221 = call i32 @debug_locks_off() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call221)
  %tobool222.not = icmp eq i32 %call221, 0
  br i1 %tobool222.not, label %do.end220.if.end256_crit_edge, label %land.lhs.true223

do.end220.if.end256_crit_edge:                    ; preds = %do.end220
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end256

land.lhs.true223:                                 ; preds = %do.end220
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %94 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool224.not = icmp eq i32 %94, 0
  br i1 %tobool224.not, label %do.end238, label %land.lhs.true223.if.end256_crit_edge

land.lhs.true223.if.end256_crit_edge:             ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end256

do.end238:                                        ; preds = %land.lhs.true223
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 2022, i32 noundef 9, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69) #16
  br label %if.end256

if.end256:                                        ; preds = %do.end238, %land.lhs.true223.if.end256_crit_edge, %do.end220.if.end256_crit_edge, %land.lhs.true207.if.end256_crit_edge, %if.end195.if.end256_crit_edge
  %conv = trunc i64 %3 to i32
  %call258 = call i32 @copy_creds(ptr noundef nonnull %call87, i32 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %cmp259 = icmp slt i32 %call258, 0
  br i1 %cmp259, label %if.end256.do.body684_crit_edge, label %if.end262

if.end256.do.body684_crit_edge:                   ; preds = %if.end256
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body684

if.end262:                                        ; preds = %if.end256
  %95 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i.i = and i32 %95, -16384
  %96 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %98, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !363
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end262.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end262.rcu_read_lock.exit_crit_edge:           ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end262
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 696, ptr noundef nonnull @.str.61) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end262.rcu_read_lock.exit_crit_edge
  %real_cred = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 98
  %99 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %real_cred, align 4
  %call268 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call268)
  %tobool269.not = icmp eq i32 %call268, 0
  br i1 %tobool269.not, label %land.lhs.true270, label %rcu_read_lock.exit.do.end278_crit_edge

rcu_read_lock.exit.do.end278_crit_edge:           ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end278

land.lhs.true270:                                 ; preds = %rcu_read_lock.exit
  %call271 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call271)
  %tobool272.not = icmp eq i32 %call271, 0
  br i1 %tobool272.not, label %land.lhs.true270.do.end278_crit_edge, label %land.lhs.true273

land.lhs.true270.do.end278_crit_edge:             ; preds = %land.lhs.true270
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end278

land.lhs.true273:                                 ; preds = %land.lhs.true270
  %.b966969 = load i1, ptr @copy_process.__warned, align 1
  br i1 %.b966969, label %land.lhs.true273.do.end278_crit_edge, label %if.then275

land.lhs.true273.do.end278_crit_edge:             ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end278

if.then275:                                       ; preds = %land.lhs.true273
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @copy_process.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2029, ptr noundef nonnull @.str.6) #16
  br label %do.end278

do.end278:                                        ; preds = %if.then275, %land.lhs.true273.do.end278_crit_edge, %land.lhs.true270.do.end278_crit_edge, %rcu_read_lock.exit.do.end278_crit_edge
  %ucounts = getelementptr inbounds %struct.cred, ptr %100, i32 0, i32 26
  %101 = ptrtoint ptr %ucounts to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %ucounts, align 4
  call fastcc void @rcu_read_unlock()
  %103 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i = and i32 %103, -16384
  %104 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %104, i32 0, i32 2
  %105 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %task.i, align 8
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %106, i32 0, i32 111
  %107 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %signal.i.i, align 16
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %108, i32 0, i32 51, i32 6
  %109 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load volatile i32, ptr %arrayidx.i.i, align 8
  %call282 = call zeroext i1 @is_ucounts_overlimit(ptr noundef %102, i32 noundef 12, i32 noundef %110) #16
  br i1 %call282, label %if.then283, label %do.end278.if.end293_crit_edge

do.end278.if.end293_crit_edge:                    ; preds = %do.end278
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end293

if.then283:                                       ; preds = %do.end278
  %111 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %real_cred, align 4
  %user = getelementptr inbounds %struct.cred, ptr %112, i32 0, i32 24
  %113 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %user, align 4
  %cmp285.not = icmp eq ptr %114, @root_user
  br i1 %cmp285.not, label %if.then283.if.end293_crit_edge, label %land.lhs.true287

if.then283.if.end293_crit_edge:                   ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end293

land.lhs.true287:                                 ; preds = %if.then283
  %call288 = call zeroext i1 @capable(i32 noundef 24) #16
  br i1 %call288, label %land.lhs.true287.if.end293_crit_edge, label %land.lhs.true289

land.lhs.true287.if.end293_crit_edge:             ; preds = %land.lhs.true287
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end293

land.lhs.true289:                                 ; preds = %land.lhs.true287
  %call290 = call zeroext i1 @capable(i32 noundef 21) #16
  br i1 %call290, label %land.lhs.true289.if.end293_crit_edge, label %land.lhs.true289.bad_fork_cleanup_count_crit_edge

land.lhs.true289.bad_fork_cleanup_count_crit_edge: ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_count

land.lhs.true289.if.end293_crit_edge:             ; preds = %land.lhs.true289
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end293

if.end293:                                        ; preds = %land.lhs.true289.if.end293_crit_edge, %land.lhs.true287.if.end293_crit_edge, %if.then283.if.end293_crit_edge, %do.end278.if.end293_crit_edge
  %115 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %task, align 8
  %flags296 = getelementptr inbounds %struct.task_struct, ptr %116, i32 0, i32 3
  %117 = ptrtoint ptr %flags296 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %flags296, align 4
  %and297 = and i32 %118, -4097
  store i32 %and297, ptr %flags296, align 4
  %119 = load i32, ptr @nr_threads, align 4
  %120 = load i32, ptr @max_threads, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %119, i32 %120)
  %cmp299.not = icmp slt i32 %119, %120
  br i1 %cmp299.not, label %if.end304, label %if.end293.bad_fork_cleanup_count_crit_edge

if.end293.bad_fork_cleanup_count_crit_edge:       ; preds = %if.end293
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_count

if.end304:                                        ; preds = %if.end293
  %delays.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 181
  %121 = ptrtoint ptr %delays.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr null, ptr %delays.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @delayacct_on to i32))
  %122 = load i32, ptr @delayacct_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool.not.i999 = icmp eq i32 %122, 0
  br i1 %tobool.not.i999, label %if.end304.delayacct_tsk_init.exit_crit_edge, label %if.then.i1000

if.end304.delayacct_tsk_init.exit_crit_edge:      ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #18
  br label %delayacct_tsk_init.exit

if.then.i1000:                                    ; preds = %if.end304
  call void @__sanitizer_cov_trace_pc() #18
  call void @__delayacct_tsk_init(ptr noundef nonnull %call87) #16
  br label %delayacct_tsk_init.exit

delayacct_tsk_init.exit:                          ; preds = %if.then.i1000, %if.end304.delayacct_tsk_init.exit_crit_edge
  %flags305 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 3
  %123 = ptrtoint ptr %flags305 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %flags305, align 4
  %and306 = and i32 %124, -67109219
  %or308 = or i32 %and306, 64
  store i32 %or308, ptr %flags305, align 4
  %children = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 73
  %125 = ptrtoint ptr %children to i32
  call void @__asan_store4_noabort(i32 %125)
  store volatile ptr %children, ptr %children, align 4
  %prev.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 73, i32 1
  %126 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %children, ptr %prev.i, align 4
  %sibling = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 74
  %127 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %127)
  store volatile ptr %sibling, ptr %sibling, align 4
  %prev.i1001 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 74, i32 1
  %128 = ptrtoint ptr %prev.i1001 to i32
  call void @__asan_store4_noabort(i32 %128)
  store ptr %sibling, ptr %prev.i1001, align 4
  %rcu_tasks_holdout.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 40
  %129 = ptrtoint ptr %rcu_tasks_holdout.i to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %rcu_tasks_holdout.i, align 4
  %rcu_tasks_holdout_list.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 43
  %130 = ptrtoint ptr %rcu_tasks_holdout_list.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store volatile ptr %rcu_tasks_holdout_list.i, ptr %rcu_tasks_holdout_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 43, i32 1
  %131 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %rcu_tasks_holdout_list.i, ptr %prev.i.i, align 4
  %rcu_tasks_idle_cpu.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 42
  %132 = ptrtoint ptr %rcu_tasks_idle_cpu.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 -1, ptr %rcu_tasks_idle_cpu.i, align 8
  %trc_reader_nesting.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 44
  %133 = ptrtoint ptr %trc_reader_nesting.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %trc_reader_nesting.i, align 4
  %trc_reader_special.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 46
  %134 = ptrtoint ptr %trc_reader_special.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 0, ptr %trc_reader_special.i, align 4
  %trc_holdout_list.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 48
  %135 = ptrtoint ptr %trc_holdout_list.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %trc_holdout_list.i, ptr %trc_holdout_list.i, align 4
  %prev.i6.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 48, i32 1
  %136 = ptrtoint ptr %prev.i6.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %trc_holdout_list.i, ptr %prev.i6.i, align 4
  %vfork_done = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 82
  %137 = ptrtoint ptr %vfork_done to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr null, ptr %vfork_done, align 4
  %alloc_lock = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 127
  call void @__raw_spin_lock_init(ptr noundef %alloc_lock, ptr noundef nonnull @.str.70, ptr noundef nonnull @copy_process.__key, i16 noundef signext 3) #16
  %pending = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 116
  %signal.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 116, i32 1
  %arrayidx.i.i1002 = getelementptr %struct.task_struct, ptr %call87, i32 0, i32 116, i32 1, i32 0, i32 1
  %138 = ptrtoint ptr %arrayidx.i.i1002 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %arrayidx.i.i1002, align 4
  %139 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 0, ptr %signal.i, align 4
  %140 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %140)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i.i1003 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 116, i32 0, i32 1
  %141 = ptrtoint ptr %prev.i.i1003 to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %pending, ptr %prev.i.i1003, align 4
  %utime = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 86
  %lock.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 89, i32 2
  %142 = call ptr @memset(ptr %utime, i32 0, i32 40)
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @prev_cputime_init.__key, i16 noundef signext 2) #16
  %io_uring = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 109
  %143 = ptrtoint ptr %io_uring to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr null, ptr %io_uring, align 8
  %rss_stat = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 56
  %144 = call ptr @memset(ptr %rss_stat, i32 0, i32 20)
  %145 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %task, align 8
  %timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %146, i32 0, i32 189
  %147 = ptrtoint ptr %timer_slack_ns to i32
  call void @__asan_load8_noabort(i32 %147)
  %148 = load i64, ptr %timer_slack_ns, align 8
  %default_timer_slack_ns = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 190
  %149 = ptrtoint ptr %default_timer_slack_ns to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 %148, ptr %default_timer_slack_ns, align 32
  %ioac = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 155
  %150 = call ptr @memset(ptr %ioac, i32 0, i32 60)
  call void @acct_clear_integrals(ptr noundef nonnull %call87) #16
  %posix_cputimers = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 96
  %151 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 96, i32 0, i32 0, i32 1
  %152 = call ptr @memset(ptr %151, i32 0, i32 48)
  %153 = ptrtoint ptr %posix_cputimers to i32
  call void @__asan_store8_noabort(i32 %153)
  store i64 -1, ptr %posix_cputimers, align 8
  %arrayidx2.i1004 = getelementptr %struct.task_struct, ptr %call87, i32 0, i32 96, i32 0, i32 1
  %154 = ptrtoint ptr %arrayidx2.i1004 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 -1, ptr %arrayidx2.i1004, align 8
  %arrayidx5.i = getelementptr %struct.task_struct, ptr %call87, i32 0, i32 96, i32 0, i32 2
  %155 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store8_noabort(i32 %155)
  store i64 -1, ptr %arrayidx5.i, align 8
  %io_context = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 151
  %156 = ptrtoint ptr %io_context to i32
  call void @__asan_store4_noabort(i32 %156)
  store ptr null, ptr %io_context, align 8
  call void @cgroup_fork(ptr noundef nonnull %call87) #16
  %157 = ptrtoint ptr %flags305 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %flags305, align 4
  %and316 = and i32 %158, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and316)
  %tobool317.not = icmp eq i32 %and316, 0
  br i1 %tobool317.not, label %delayacct_tsk_init.exit.if.end322_crit_edge, label %if.then318

delayacct_tsk_init.exit.if.end322_crit_edge:      ; preds = %delayacct_tsk_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end322

if.then318:                                       ; preds = %delayacct_tsk_init.exit
  %call319 = call zeroext i1 @set_kthread_struct(ptr noundef nonnull %call87) #16
  br i1 %call319, label %if.then318.if.end322_crit_edge, label %if.then318.bad_fork_cleanup_delayacct_crit_edge

if.then318.bad_fork_cleanup_delayacct_crit_edge:  ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_delayacct

if.then318.if.end322_crit_edge:                   ; preds = %if.then318
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end322

if.end322:                                        ; preds = %if.then318.if.end322_crit_edge, %delayacct_tsk_init.exit.if.end322_crit_edge
  %cpuset_mem_spread_rotor = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 162
  %159 = ptrtoint ptr %cpuset_mem_spread_rotor to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 -1, ptr %cpuset_mem_spread_rotor, align 8
  %cpuset_slab_spread_rotor = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 163
  %160 = ptrtoint ptr %cpuset_slab_spread_rotor to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 -1, ptr %cpuset_slab_spread_rotor, align 4
  %mems_allowed_seq = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 161
  %dep_map.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 161, i32 0, i32 1
  call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @copy_process.__key.71, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %161 = ptrtoint ptr %mems_allowed_seq to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %mems_allowed_seq, align 4
  %lock = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 161, i32 1
  %162 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %alloc_lock, ptr %lock, align 4
  %irqtrace = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 135
  %163 = call ptr @memset(ptr %irqtrace, i32 0, i32 36)
  br label %__here

__here:                                           ; preds = %if.end322
  %hardirq_disable_ip = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 135, i32 2
  %164 = ptrtoint ptr %hardirq_disable_ip to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 ptrtoint (ptr blockaddress(@copy_process, %__here) to i32), ptr %hardirq_disable_ip, align 4
  br label %__here332

__here332:                                        ; preds = %__here
  %softirq_enable_ip = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 135, i32 6
  %165 = ptrtoint ptr %softirq_enable_ip to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 ptrtoint (ptr blockaddress(@copy_process, %__here332) to i32), ptr %softirq_enable_ip, align 4
  %softirqs_enabled335 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 138
  %166 = ptrtoint ptr %softirqs_enabled335 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 1, ptr %softirqs_enabled335, align 32
  %softirq_context = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 139
  %167 = ptrtoint ptr %softirq_context to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 0, ptr %softirq_context, align 4
  %pagefault_disabled = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 213
  %168 = ptrtoint ptr %pagefault_disabled to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 0, ptr %pagefault_disabled, align 8
  call void @lockdep_init_task(ptr noundef nonnull %call87) #16
  %blocked_on = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 133
  %169 = ptrtoint ptr %blocked_on to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr null, ptr %blocked_on, align 4
  %sequential_io = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 209
  %170 = ptrtoint ptr %sequential_io to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 0, ptr %sequential_io, align 4
  %sequential_io_avg = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 210
  %171 = ptrtoint ptr %sequential_io_avg to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 0, ptr %sequential_io_avg, align 8
  %bpf_storage = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 216
  %172 = ptrtoint ptr %bpf_storage to i32
  call void @__asan_store4_noabort(i32 %172)
  store volatile ptr null, ptr %bpf_storage, align 4
  %bpf_ctx = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 217
  %173 = ptrtoint ptr %bpf_ctx to i32
  call void @__asan_store4_noabort(i32 %173)
  store ptr null, ptr %bpf_ctx, align 8
  %call349 = call i32 @sched_fork(i32 noundef %conv, ptr noundef nonnull %call87) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call349)
  %tobool350.not = icmp eq i32 %call349, 0
  br i1 %tobool350.not, label %if.end352, label %__here332.bad_fork_cleanup_delayacct_crit_edge

__here332.bad_fork_cleanup_delayacct_crit_edge:   ; preds = %__here332
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_delayacct

if.end352:                                        ; preds = %__here332
  %call353 = call i32 @perf_event_init_task(ptr noundef nonnull %call87, i64 noundef %3) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call353)
  %tobool354.not = icmp eq i32 %call353, 0
  br i1 %tobool354.not, label %if.end356, label %if.end352.bad_fork_cleanup_delayacct_crit_edge

if.end352.bad_fork_cleanup_delayacct_crit_edge:   ; preds = %if.end352
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_delayacct

if.end356:                                        ; preds = %if.end352
  %sysvshm = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 104
  %174 = ptrtoint ptr %sysvshm to i32
  call void @__asan_store4_noabort(i32 %174)
  store volatile ptr %sysvshm, ptr %sysvshm, align 4
  %prev.i1005 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 104, i32 0, i32 1
  %175 = ptrtoint ptr %prev.i1005 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %sysvshm, ptr %prev.i1005, align 4
  %call362 = call i32 @security_task_alloc(ptr noundef nonnull %call87, i32 noundef %conv) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call362)
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %if.end365, label %if.end356.bad_fork_cleanup_audit_crit_edge

if.end356.bad_fork_cleanup_audit_crit_edge:       ; preds = %if.end356
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_audit

if.end365:                                        ; preds = %if.end356
  %call367 = call i32 @copy_semundo(i32 noundef %conv, ptr noundef nonnull %call87) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %tobool368.not = icmp eq i32 %call367, 0
  br i1 %tobool368.not, label %if.end370, label %if.end365.bad_fork_cleanup_security_crit_edge

if.end365.bad_fork_cleanup_security_crit_edge:    ; preds = %if.end365
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_security

if.end370:                                        ; preds = %if.end365
  %call372 = call fastcc i32 @copy_files(i32 noundef %conv, ptr noundef nonnull %call87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call372)
  %tobool373.not = icmp eq i32 %call372, 0
  br i1 %tobool373.not, label %if.end375, label %if.end370.bad_fork_cleanup_semundo_crit_edge

if.end370.bad_fork_cleanup_semundo_crit_edge:     ; preds = %if.end370
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_semundo

if.end375:                                        ; preds = %if.end370
  %call377 = call fastcc i32 @copy_fs(i32 noundef %conv, ptr noundef nonnull %call87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call377)
  %tobool378.not = icmp eq i32 %call377, 0
  br i1 %tobool378.not, label %if.end380, label %if.end375.bad_fork_cleanup_files_crit_edge

if.end375.bad_fork_cleanup_files_crit_edge:       ; preds = %if.end375
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_files

if.end380:                                        ; preds = %if.end375
  %call382 = call fastcc i32 @copy_sighand(i32 noundef %conv, ptr noundef nonnull %call87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call382)
  %tobool383.not = icmp eq i32 %call382, 0
  br i1 %tobool383.not, label %if.end385, label %if.end380.bad_fork_cleanup_fs_crit_edge

if.end380.bad_fork_cleanup_fs_crit_edge:          ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_fs

if.end385:                                        ; preds = %if.end380
  %call387 = call fastcc i32 @copy_signal(i32 noundef %conv, ptr noundef nonnull %call87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call387)
  %tobool388.not = icmp eq i32 %call387, 0
  br i1 %tobool388.not, label %if.end390, label %if.end385.bad_fork_cleanup_sighand_crit_edge

if.end385.bad_fork_cleanup_sighand_crit_edge:     ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_sighand

if.end390:                                        ; preds = %if.end385
  %call392 = call fastcc i32 @copy_mm(i32 noundef %conv, ptr noundef nonnull %call87)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392)
  %tobool393.not = icmp eq i32 %call392, 0
  br i1 %tobool393.not, label %if.end395, label %if.end390.bad_fork_cleanup_signal_crit_edge

if.end390.bad_fork_cleanup_signal_crit_edge:      ; preds = %if.end390
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_signal

if.end395:                                        ; preds = %if.end390
  %call397 = call i32 @copy_namespaces(i32 noundef %conv, ptr noundef nonnull %call87) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call397)
  %tobool398.not = icmp eq i32 %call397, 0
  br i1 %tobool398.not, label %if.end400, label %if.end395.bad_fork_cleanup_mm_crit_edge

if.end395.bad_fork_cleanup_mm_crit_edge:          ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_mm

if.end400:                                        ; preds = %if.end395
  %176 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i1006 = and i32 %176, -16384
  %177 = inttoptr i32 %and.i.i1006 to ptr
  %task.i1007 = getelementptr inbounds %struct.thread_info, ptr %177, i32 0, i32 2
  %178 = ptrtoint ptr %task.i1007 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %task.i1007, align 8
  %io_context.i = getelementptr inbounds %struct.task_struct, ptr %179, i32 0, i32 151
  %180 = ptrtoint ptr %io_context.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %io_context.i, align 8
  %tobool.not.i1008 = icmp eq ptr %181, null
  br i1 %tobool.not.i1008, label %if.end400.if.end405_crit_edge, label %copy_io.exit

if.end400.if.end405_crit_edge:                    ; preds = %if.end400
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end405

copy_io.exit:                                     ; preds = %if.end400
  %call1.i1009 = call i32 @__copy_io(i32 noundef %conv, ptr noundef nonnull %call87) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i1009)
  %tobool403.not = icmp eq i32 %call1.i1009, 0
  br i1 %tobool403.not, label %copy_io.exit.if.end405_crit_edge, label %copy_io.exit.bad_fork_cleanup_namespaces_crit_edge

copy_io.exit.bad_fork_cleanup_namespaces_crit_edge: ; preds = %copy_io.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_namespaces

copy_io.exit.if.end405_crit_edge:                 ; preds = %copy_io.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end405

if.end405:                                        ; preds = %copy_io.exit.if.end405_crit_edge, %if.end400.if.end405_crit_edge
  %stack = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 5
  %182 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %stack, align 8
  %stack_size = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 6
  %184 = ptrtoint ptr %stack_size to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %stack_size, align 4
  %tls = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 7
  %186 = ptrtoint ptr %tls to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %tls, align 8
  %call407 = call i32 @copy_thread(i32 noundef %conv, i32 noundef %183, i32 noundef %185, ptr noundef nonnull %call87, i32 noundef %187) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call407)
  %tobool408.not = icmp eq i32 %call407, 0
  br i1 %tobool408.not, label %if.end410, label %if.end405.bad_fork_cleanup_io_crit_edge

if.end405.bad_fork_cleanup_io_crit_edge:          ; preds = %if.end405
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_io

if.end410:                                        ; preds = %if.end405
  %cmp411.not = icmp eq ptr %pid, @init_struct_pid
  br i1 %cmp411.not, label %if.end410.if.end421_crit_edge, label %if.then413

if.end410.if.end421_crit_edge:                    ; preds = %if.end410
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end421

if.then413:                                       ; preds = %if.end410
  %nsproxy414 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 110
  %188 = ptrtoint ptr %nsproxy414 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %nsproxy414, align 4
  %pid_ns_for_children415 = getelementptr inbounds %struct.nsproxy, ptr %189, i32 0, i32 4
  %190 = ptrtoint ptr %pid_ns_for_children415 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %pid_ns_for_children415, align 4
  %set_tid = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 8
  %192 = ptrtoint ptr %set_tid to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %set_tid, align 4
  %set_tid_size = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 9
  %194 = ptrtoint ptr %set_tid_size to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %set_tid_size, align 8
  %call416 = call ptr @alloc_pid(ptr noundef %191, ptr noundef %193, i32 noundef %195) #16
  %cmp.i1010 = icmp ugt ptr %call416, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1010, label %if.then418, label %if.then413.if.end421_crit_edge

if.then413.if.end421_crit_edge:                   ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end421

if.then418:                                       ; preds = %if.then413
  call void @__sanitizer_cov_trace_pc() #18
  %196 = ptrtoint ptr %call416 to i32
  br label %bad_fork_cleanup_thread

if.end421:                                        ; preds = %if.then413.if.end421_crit_edge, %if.end410.if.end421_crit_edge
  %pid.addr.0 = phi ptr [ %call416, %if.then413.if.end421_crit_edge ], [ @init_struct_pid, %if.end410.if.end421_crit_edge ]
  br i1 %tobool55.not, label %if.end421.if.end446_crit_edge, label %if.then424

if.end421.if.end446_crit_edge:                    ; preds = %if.end421
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end446

if.then424:                                       ; preds = %if.end421
  %call425 = call i32 @get_unused_fd_flags(i32 noundef 524290) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call425)
  %cmp426 = icmp slt i32 %call425, 0
  br i1 %cmp426, label %if.then424.bad_fork_free_pid_crit_edge, label %if.end429

if.then424.bad_fork_free_pid_crit_edge:           ; preds = %if.then424
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_free_pid

if.end429:                                        ; preds = %if.then424
  %call430 = call ptr @anon_inode_getfile(ptr noundef nonnull @.str.73, ptr noundef nonnull @pidfd_fops, ptr noundef %pid.addr.0, i32 noundef 524290) #16
  %cmp.i1011 = icmp ugt ptr %call430, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1011, label %if.then432, label %if.end434

if.then432:                                       ; preds = %if.end429
  call void @__sanitizer_cov_trace_pc() #18
  call void @put_unused_fd(i32 noundef %call425) #16
  %197 = ptrtoint ptr %call430 to i32
  br label %bad_fork_free_pid

if.end434:                                        ; preds = %if.end429
  call fastcc void @get_pid(ptr noundef %pid.addr.0)
  %pidfd437 = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 1
  %198 = ptrtoint ptr %pidfd437 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %pidfd437, align 8
  call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 2209) #16
  %200 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i984 = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i.i984 to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 4
  %202 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !368
  %and.i = and i32 %202, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  %203 = call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %199, i32 %call425, i32 -1226833921) #16, !srcloc !376
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %202) #16, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %tobool443.not = icmp eq i32 %203, 0
  br i1 %tobool443.not, label %if.end434.if.end446_crit_edge, label %if.end434.if.then637_crit_edge

if.end434.if.then637_crit_edge:                   ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then637

if.end434.if.end446_crit_edge:                    ; preds = %if.end434
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end446

if.end446:                                        ; preds = %if.end434.if.end446_crit_edge, %if.end421.if.end446_crit_edge
  %pidfile.0 = phi ptr [ %call430, %if.end434.if.end446_crit_edge ], [ null, %if.end421.if.end446_crit_edge ]
  %pidfd.0 = phi i32 [ %call425, %if.end434.if.end446_crit_edge ], [ -1, %if.end421.if.end446_crit_edge ]
  %plug = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 148
  %204 = ptrtoint ptr %plug to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr null, ptr %plug, align 4
  %robust_list.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 166
  %205 = ptrtoint ptr %robust_list.i to i32
  call void @__asan_store4_noabort(i32 %205)
  store ptr null, ptr %robust_list.i, align 4
  %pi_state_list.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 167
  %206 = ptrtoint ptr %pi_state_list.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store volatile ptr %pi_state_list.i, ptr %pi_state_list.i, align 4
  %prev.i.i1012 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 167, i32 1
  %207 = ptrtoint ptr %prev.i.i1012 to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %pi_state_list.i, ptr %prev.i.i1012, align 4
  %pi_state_cache.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 168
  %208 = ptrtoint ptr %pi_state_cache.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store ptr null, ptr %pi_state_cache.i, align 8
  %futex_state.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 170
  %209 = ptrtoint ptr %futex_state.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 0, ptr %futex_state.i, align 8
  %futex_exit_mutex.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 169
  call void @__mutex_init(ptr noundef %futex_exit_mutex.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @futex_init_task.__key) #16
  %and447 = and i64 %3, 16640
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %and447)
  %cmp448 = icmp eq i64 %and447, 256
  br i1 %cmp448, label %if.then450, label %if.end446.if.end451_crit_edge

if.end446.if.end451_crit_edge:                    ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end451

if.then450:                                       ; preds = %if.end446
  call void @__sanitizer_cov_trace_pc() #18
  %sas_ss_sp.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 117
  %210 = ptrtoint ptr %sas_ss_sp.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 0, ptr %sas_ss_sp.i, align 64
  %sas_ss_size.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 118
  %211 = ptrtoint ptr %sas_ss_size.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 0, ptr %sas_ss_size.i, align 4
  %sas_ss_flags.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 119
  %212 = ptrtoint ptr %sas_ss_flags.i to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 2, ptr %sas_ss_flags.i, align 8
  br label %if.end451

if.end451:                                        ; preds = %if.then450, %if.end446.if.end451_crit_edge
  %stack452 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 1
  %213 = ptrtoint ptr %stack452 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %stack452, align 4
  call void @_clear_bit(i32 noundef 4, ptr noundef %214) #16
  call void @clear_tsk_latency_tracing(ptr noundef nonnull %call87) #16
  %tobool.not.i1013 = icmp eq ptr %pid.addr.0, null
  br i1 %tobool.not.i1013, label %if.end451.pid_nr.exit_crit_edge, label %if.then.i1014

if.end451.pid_nr.exit_crit_edge:                  ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #18
  br label %pid_nr.exit

if.then.i1014:                                    ; preds = %if.end451
  call void @__sanitizer_cov_trace_pc() #18
  %numbers.i = getelementptr inbounds %struct.pid, ptr %pid.addr.0, i32 0, i32 7
  %215 = ptrtoint ptr %numbers.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %numbers.i, align 4
  br label %pid_nr.exit

pid_nr.exit:                                      ; preds = %if.then.i1014, %if.end451.pid_nr.exit_crit_edge
  %nr.0.i = phi i32 [ %216, %if.then.i1014 ], [ 0, %if.end451.pid_nr.exit_crit_edge ]
  %pid454 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 68
  %217 = ptrtoint ptr %pid454 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 %nr.0.i, ptr %pid454, align 8
  br i1 %tobool.not, label %if.else, label %if.then457

if.then457:                                       ; preds = %pid_nr.exit
  call void @__sanitizer_cov_trace_pc() #18
  %218 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %task, align 8
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %219, i32 0, i32 75
  %220 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %group_leader, align 4
  %group_leader460 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 75
  %222 = ptrtoint ptr %group_leader460 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %221, ptr %group_leader460, align 4
  %223 = load ptr, ptr %task, align 8
  %tgid = getelementptr inbounds %struct.task_struct, ptr %223, i32 0, i32 69
  %224 = ptrtoint ptr %tgid to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %tgid, align 4
  br label %if.end467

if.else:                                          ; preds = %pid_nr.exit
  call void @__sanitizer_cov_trace_pc() #18
  %group_leader464 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 75
  %226 = ptrtoint ptr %group_leader464 to i32
  call void @__asan_store4_noabort(i32 %226)
  store ptr %call87, ptr %group_leader464, align 4
  br label %if.end467

if.end467:                                        ; preds = %if.else, %if.then457
  %.sink = phi i32 [ %nr.0.i, %if.else ], [ %225, %if.then457 ]
  %227 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 69
  %228 = ptrtoint ptr %227 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %.sink, ptr %227, align 4
  %nr_dirtied = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 184
  %229 = ptrtoint ptr %nr_dirtied to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 0, ptr %nr_dirtied, align 4
  %nr_dirtied_pause = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 185
  %230 = ptrtoint ptr %nr_dirtied_pause to i32
  call void @__asan_store4_noabort(i32 %230)
  store i32 32, ptr %nr_dirtied_pause, align 8
  %dirty_paused_when = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 186
  %231 = ptrtoint ptr %dirty_paused_when to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 0, ptr %dirty_paused_when, align 4
  %pdeath_signal = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 60
  %232 = ptrtoint ptr %pdeath_signal to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 0, ptr %pdeath_signal, align 8
  %thread_group = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 80
  %233 = ptrtoint ptr %thread_group to i32
  call void @__asan_store4_noabort(i32 %233)
  store volatile ptr %thread_group, ptr %thread_group, align 4
  %prev.i1016 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 80, i32 1
  %234 = ptrtoint ptr %prev.i1016 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %thread_group, ptr %prev.i1016, align 4
  %task_works = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 120
  %235 = ptrtoint ptr %task_works to i32
  call void @__asan_store4_noabort(i32 %235)
  store ptr null, ptr %task_works, align 4
  %kretprobe_instances = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 218
  %236 = ptrtoint ptr %kretprobe_instances to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr null, ptr %kretprobe_instances, align 4
  %call468 = call i32 @cgroup_can_fork(ptr noundef nonnull %call87, ptr noundef %args) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call468)
  %tobool469.not = icmp eq i32 %call468, 0
  br i1 %tobool469.not, label %if.end471, label %if.end467.bad_fork_put_pidfd_crit_edge

if.end467.bad_fork_put_pidfd_crit_edge:           ; preds = %if.end467
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_put_pidfd

if.end471:                                        ; preds = %if.end467
  call void @sched_cgroup_fork(ptr noundef nonnull %call87, ptr noundef %args) #16
  %call.i1017 = call i64 @ktime_get() #16
  %start_time = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 92
  %237 = ptrtoint ptr %start_time to i32
  call void @__asan_store8_noabort(i32 %237)
  store i64 %call.i1017, ptr %start_time, align 8
  %call.i.i1018 = call i64 @ktime_get_with_offset(i32 noundef 1) #16
  %start_boottime = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 93
  %238 = ptrtoint ptr %start_boottime to i32
  call void @__asan_store8_noabort(i32 %238)
  store i64 %call.i.i1018, ptr %start_boottime, align 128
  call void @_raw_write_lock_irq(ptr noundef nonnull @tasklist_lock) #16
  %and474 = and i64 %3, 98304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and474)
  %tobool475.not = icmp eq i64 %and474, 0
  %239 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %task, align 8
  br i1 %tobool475.not, label %if.else493, label %if.then476

if.then476:                                       ; preds = %if.end471
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %240, i32 0, i32 71
  %241 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %real_parent, align 4
  %real_parent479 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 71
  %243 = ptrtoint ptr %real_parent479 to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %242, ptr %real_parent479, align 4
  %244 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load ptr, ptr %task, align 8
  %parent_exec_id = getelementptr inbounds %struct.task_struct, ptr %245, i32 0, i32 125
  %246 = ptrtoint ptr %parent_exec_id to i32
  call void @__asan_load8_noabort(i32 %246)
  %247 = load i64, ptr %parent_exec_id, align 8
  %parent_exec_id482 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 125
  %248 = ptrtoint ptr %parent_exec_id482 to i32
  call void @__asan_store8_noabort(i32 %248)
  store i64 %247, ptr %parent_exec_id482, align 8
  br i1 %tobool.not, label %if.else486, label %if.then476.if.end502_crit_edge

if.then476.if.end502_crit_edge:                   ; preds = %if.then476
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end502

if.else486:                                       ; preds = %if.then476
  call void @__sanitizer_cov_trace_pc() #18
  %249 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %task, align 8
  %group_leader489 = getelementptr inbounds %struct.task_struct, ptr %250, i32 0, i32 75
  %251 = ptrtoint ptr %group_leader489 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %group_leader489, align 4
  %exit_signal490 = getelementptr inbounds %struct.task_struct, ptr %252, i32 0, i32 59
  br label %if.end502.sink.split

if.else493:                                       ; preds = %if.end471
  call void @__sanitizer_cov_trace_pc() #18
  %real_parent496 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 71
  %253 = ptrtoint ptr %real_parent496 to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr %240, ptr %real_parent496, align 4
  %254 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %task, align 8
  %self_exec_id = getelementptr inbounds %struct.task_struct, ptr %255, i32 0, i32 126
  %256 = ptrtoint ptr %self_exec_id to i32
  call void @__asan_load8_noabort(i32 %256)
  %257 = load i64, ptr %self_exec_id, align 16
  %parent_exec_id499 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 125
  %258 = ptrtoint ptr %parent_exec_id499 to i32
  call void @__asan_store8_noabort(i32 %258)
  store i64 %257, ptr %parent_exec_id499, align 8
  %exit_signal500 = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 4
  br label %if.end502.sink.split

if.end502.sink.split:                             ; preds = %if.else493, %if.else486
  %exit_signal490.sink = phi ptr [ %exit_signal490, %if.else486 ], [ %exit_signal500, %if.else493 ]
  %259 = ptrtoint ptr %exit_signal490.sink to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load i32, ptr %exit_signal490.sink, align 4
  br label %if.end502

if.end502:                                        ; preds = %if.end502.sink.split, %if.then476.if.end502_crit_edge
  %.sink1088 = phi i32 [ -1, %if.then476.if.end502_crit_edge ], [ %260, %if.end502.sink.split ]
  %exit_signal = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 59
  %261 = ptrtoint ptr %exit_signal to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 %.sink1088, ptr %exit_signal, align 4
  call void @sched_core_fork(ptr noundef nonnull %call87) #16
  %262 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %task, align 8
  %sighand505 = getelementptr inbounds %struct.task_struct, ptr %263, i32 0, i32 112
  %264 = ptrtoint ptr %sighand505 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load ptr, ptr %sighand505, align 4
  call void @_raw_spin_lock(ptr noundef %265) #16
  call fastcc void @copy_seccomp(ptr noundef nonnull %call87)
  %and.i1019 = and i32 %conv, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i1019)
  %tobool.not.i1020 = icmp eq i32 %and.i1019, 0
  br i1 %tobool.not.i1020, label %if.else.i, label %if.then.i1021

if.then.i1021:                                    ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #18
  %rseq.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 174
  %266 = ptrtoint ptr %rseq.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store ptr null, ptr %rseq.i, align 8
  %rseq_sig.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 175
  %267 = ptrtoint ptr %rseq_sig.i to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 0, ptr %rseq_sig.i, align 4
  br label %rseq_fork.exit

if.else.i:                                        ; preds = %if.end502
  call void @__sanitizer_cov_trace_pc() #18
  %268 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i1022 = and i32 %268, -16384
  %269 = inttoptr i32 %and.i.i1022 to ptr
  %task.i1023 = getelementptr inbounds %struct.thread_info, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %task.i1023 to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load ptr, ptr %task.i1023, align 8
  %rseq1.i = getelementptr inbounds %struct.task_struct, ptr %271, i32 0, i32 174
  %272 = ptrtoint ptr %rseq1.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %rseq1.i, align 8
  %rseq2.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 174
  %274 = ptrtoint ptr %rseq2.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store ptr %273, ptr %rseq2.i, align 8
  %275 = load ptr, ptr %task.i1023, align 8
  %rseq_sig5.i = getelementptr inbounds %struct.task_struct, ptr %275, i32 0, i32 175
  %276 = ptrtoint ptr %rseq_sig5.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %rseq_sig5.i, align 4
  %rseq_sig6.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 175
  %278 = ptrtoint ptr %rseq_sig6.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %277, ptr %rseq_sig6.i, align 4
  %279 = load ptr, ptr %task.i1023, align 8
  %rseq_event_mask9.i = getelementptr inbounds %struct.task_struct, ptr %279, i32 0, i32 176
  %280 = ptrtoint ptr %rseq_event_mask9.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load i32, ptr %rseq_event_mask9.i, align 32
  br label %rseq_fork.exit

rseq_fork.exit:                                   ; preds = %if.else.i, %if.then.i1021
  %.sink.i = phi i32 [ %281, %if.else.i ], [ 0, %if.then.i1021 ]
  %282 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 176
  %283 = ptrtoint ptr %282 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %.sink.i, ptr %282, align 32
  br i1 %tobool.not.i1013, label %rseq_fork.exit.ns_of_pid.exit_crit_edge, label %if.then.i1026

rseq_fork.exit.ns_of_pid.exit_crit_edge:          ; preds = %rseq_fork.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %ns_of_pid.exit

if.then.i1026:                                    ; preds = %rseq_fork.exit
  call void @__sanitizer_cov_trace_pc() #18
  %level.i = getelementptr inbounds %struct.pid, ptr %pid.addr.0, i32 0, i32 1
  %284 = ptrtoint ptr %level.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %level.i, align 4
  %ns1.i = getelementptr %struct.pid, ptr %pid.addr.0, i32 0, i32 7, i32 %285, i32 1
  %286 = ptrtoint ptr %ns1.i to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %ns1.i, align 4
  br label %ns_of_pid.exit

ns_of_pid.exit:                                   ; preds = %if.then.i1026, %rseq_fork.exit.ns_of_pid.exit_crit_edge
  %ns.0.i = phi ptr [ %287, %if.then.i1026 ], [ null, %rseq_fork.exit.ns_of_pid.exit_crit_edge ]
  %pid_allocated = getelementptr inbounds %struct.pid_namespace, ptr %ns.0.i, i32 0, i32 2
  %288 = ptrtoint ptr %pid_allocated to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load i32, ptr %pid_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %289)
  %tobool510.not = icmp sgt i32 %289, -1
  br i1 %tobool510.not, label %ns_of_pid.exit.bad_fork_cancel_cgroup_crit_edge, label %if.end520, !prof !340

ns_of_pid.exit.bad_fork_cancel_cgroup_crit_edge:  ; preds = %ns_of_pid.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cancel_cgroup

if.end520:                                        ; preds = %ns_of_pid.exit
  %290 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %291, i32 0, i32 1
  %292 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %stack.i.i.i, align 4
  %294 = ptrtoint ptr %293 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load volatile i32, ptr %293, align 4
  %and1.i.i.i.i.i = and i32 %295, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i1028 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i1028, label %if.end520.if.end526_crit_edge, label %fatal_signal_pending.exit

if.end520.if.end526_crit_edge:                    ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end526

fatal_signal_pending.exit:                        ; preds = %if.end520
  %signal.i.i1029 = getelementptr inbounds %struct.task_struct, ptr %291, i32 0, i32 116, i32 1
  %296 = ptrtoint ptr %signal.i.i1029 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load i32, ptr %signal.i.i1029, align 4
  %298 = and i32 %297, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %298)
  %tobool524.not = icmp eq i32 %298, 0
  br i1 %tobool524.not, label %fatal_signal_pending.exit.if.end526_crit_edge, label %fatal_signal_pending.exit.bad_fork_cancel_cgroup_crit_edge

fatal_signal_pending.exit.bad_fork_cancel_cgroup_crit_edge: ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cancel_cgroup

fatal_signal_pending.exit.if.end526_crit_edge:    ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end526

if.end526:                                        ; preds = %fatal_signal_pending.exit.if.end526_crit_edge, %if.end520.if.end526_crit_edge
  %uglygep.i = getelementptr i8, ptr %call87, i32 1364
  %299 = call ptr @memset(ptr %uglygep.i, i32 0, i32 32)
  %300 = ptrtoint ptr %pid454 to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load i32, ptr %pid454, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %301)
  %tobool528.not = icmp eq i32 %301, 0
  br i1 %tobool528.not, label %if.end526.if.end619_crit_edge, label %if.then535, !prof !340

if.end526.if.end619_crit_edge:                    ; preds = %if.end526
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end619

if.then535:                                       ; preds = %if.end526
  %and536 = and i64 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and536)
  %tobool537.not = icmp ne i64 %and536, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trace)
  %tobool538 = icmp ne i32 %trace, 0
  %spec.select = or i1 %tobool538, %tobool537.not
  call fastcc void @ptrace_init_task(ptr noundef nonnull %call87, i1 noundef zeroext %spec.select)
  %thread_pid.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 78
  %302 = ptrtoint ptr %thread_pid.i to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %pid.addr.0, ptr %thread_pid.i, align 16
  %exit_signal.i = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 59
  %303 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load i32, ptr %exit_signal.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %304)
  %cmp.i1032 = icmp sgt i32 %304, -1
  br i1 %cmp.i1032, label %if.then540, label %if.else603

if.then540:                                       ; preds = %if.then535
  %signal.i1033 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 111
  %305 = ptrtoint ptr %signal.i1033 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load ptr, ptr %signal.i1033, align 16
  %arrayidx.i1034 = getelementptr %struct.signal_struct, ptr %306, i32 0, i32 22, i32 1
  %307 = ptrtoint ptr %arrayidx.i1034 to i32
  call void @__asan_store4_noabort(i32 %307)
  store ptr %pid.addr.0, ptr %arrayidx.i1034, align 4
  %308 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %task, align 8
  %signal.i1037 = getelementptr inbounds %struct.task_struct, ptr %309, i32 0, i32 111
  %310 = ptrtoint ptr %signal.i1037 to i32
  call void @__asan_load4_noabort(i32 %310)
  %311 = load ptr, ptr %signal.i1037, align 16
  %arrayidx.i1038 = getelementptr %struct.signal_struct, ptr %311, i32 0, i32 22, i32 2
  %312 = ptrtoint ptr %arrayidx.i1038 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %arrayidx.i1038, align 8
  %314 = load ptr, ptr %signal.i1033, align 16
  %arrayidx.i1040 = getelementptr %struct.signal_struct, ptr %314, i32 0, i32 22, i32 2
  %315 = ptrtoint ptr %arrayidx.i1040 to i32
  call void @__asan_store4_noabort(i32 %315)
  store ptr %313, ptr %arrayidx.i1040, align 4
  %316 = load ptr, ptr %task, align 8
  %signal.i1043 = getelementptr inbounds %struct.task_struct, ptr %316, i32 0, i32 111
  %317 = ptrtoint ptr %signal.i1043 to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %signal.i1043, align 16
  %arrayidx.i1044 = getelementptr %struct.signal_struct, ptr %318, i32 0, i32 22, i32 3
  %319 = ptrtoint ptr %arrayidx.i1044 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %arrayidx.i1044, align 4
  %321 = load ptr, ptr %signal.i1033, align 16
  %arrayidx.i1046 = getelementptr %struct.signal_struct, ptr %321, i32 0, i32 22, i32 3
  %322 = ptrtoint ptr %arrayidx.i1046 to i32
  call void @__asan_store4_noabort(i32 %322)
  store ptr %320, ptr %arrayidx.i1046, align 4
  %level.i1049 = getelementptr inbounds %struct.pid, ptr %pid.addr.0, i32 0, i32 1
  %323 = ptrtoint ptr %level.i1049 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %level.i1049, align 4
  %arrayidx.i1050 = getelementptr %struct.pid, ptr %pid.addr.0, i32 0, i32 7, i32 %324
  %325 = ptrtoint ptr %arrayidx.i1050 to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load i32, ptr %arrayidx.i1050, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %326)
  %cmp.i1051 = icmp eq i32 %326, 1
  br i1 %cmp.i1051, label %if.then548, label %if.then540.if.end553_crit_edge

if.then540.if.end553_crit_edge:                   ; preds = %if.then540
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end553

if.then548:                                       ; preds = %if.then540
  br i1 %tobool.not.i1013, label %if.then548.ns_of_pid.exit1058_crit_edge, label %if.then.i1055

if.then548.ns_of_pid.exit1058_crit_edge:          ; preds = %if.then548
  call void @__sanitizer_cov_trace_pc() #18
  br label %ns_of_pid.exit1058

if.then.i1055:                                    ; preds = %if.then548
  call void @__sanitizer_cov_trace_pc() #18
  %ns1.i1054 = getelementptr %struct.pid, ptr %pid.addr.0, i32 0, i32 7, i32 %324, i32 1
  %327 = ptrtoint ptr %ns1.i1054 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %ns1.i1054, align 4
  br label %ns_of_pid.exit1058

ns_of_pid.exit1058:                               ; preds = %if.then.i1055, %if.then548.ns_of_pid.exit1058_crit_edge
  %ns.0.i1056 = phi ptr [ %328, %if.then.i1055 ], [ null, %if.then548.ns_of_pid.exit1058_crit_edge ]
  %child_reaper = getelementptr inbounds %struct.pid_namespace, ptr %ns.0.i1056, i32 0, i32 3
  %329 = ptrtoint ptr %child_reaper to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr %call87, ptr %child_reaper, align 4
  %330 = ptrtoint ptr %signal.i1033 to i32
  call void @__asan_load4_noabort(i32 %330)
  %331 = load ptr, ptr %signal.i1033, align 16
  %flags551 = getelementptr inbounds %struct.signal_struct, ptr %331, i32 0, i32 12
  %332 = ptrtoint ptr %flags551 to i32
  call void @__asan_load4_noabort(i32 %332)
  %333 = load i32, ptr %flags551, align 8
  %or552 = or i32 %333, 64
  store i32 %or552, ptr %flags551, align 8
  br label %if.end553

if.end553:                                        ; preds = %ns_of_pid.exit1058, %if.then540.if.end553_crit_edge
  %334 = ptrtoint ptr %signal.i1033 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %signal.i1033, align 16
  %signal555 = getelementptr inbounds %struct.signal_struct, ptr %335, i32 0, i32 6, i32 1
  %336 = ptrtoint ptr %delayed to i32
  call void @__asan_load8_noabort(i32 %336)
  %337 = load i64, ptr %delayed, align 8
  %338 = ptrtoint ptr %signal555 to i32
  call void @__asan_storeN_noabort(i32 %338, i32 8)
  store i64 %337, ptr %signal555, align 4
  %339 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load ptr, ptr %task, align 8
  %signal559 = getelementptr inbounds %struct.task_struct, ptr %340, i32 0, i32 111
  %341 = ptrtoint ptr %signal559 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %signal559, align 16
  %tty = getelementptr inbounds %struct.signal_struct, ptr %342, i32 0, i32 25
  %343 = ptrtoint ptr %tty to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load ptr, ptr %tty, align 8
  %call560 = call fastcc ptr @tty_kref_get(ptr noundef %344)
  %345 = ptrtoint ptr %signal.i1033 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %signal.i1033, align 16
  %tty562 = getelementptr inbounds %struct.signal_struct, ptr %346, i32 0, i32 25
  %347 = ptrtoint ptr %tty562 to i32
  call void @__asan_store4_noabort(i32 %347)
  store ptr %344, ptr %tty562, align 8
  %real_parent563 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 71
  %348 = ptrtoint ptr %real_parent563 to i32
  call void @__asan_load4_noabort(i32 %348)
  %349 = load ptr, ptr %real_parent563, align 4
  %signal564 = getelementptr inbounds %struct.task_struct, ptr %349, i32 0, i32 111
  %350 = ptrtoint ptr %signal564 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %signal564, align 16
  %has_child_subreaper = getelementptr inbounds %struct.signal_struct, ptr %351, i32 0, i32 14
  %352 = ptrtoint ptr %has_child_subreaper to i32
  call void @__asan_load1_noabort(i32 %352)
  %bf.load = load i8, ptr %has_child_subreaper, align 8
  %353 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %353)
  %tobool565.not = icmp eq i8 %353, 0
  %354 = lshr i8 %bf.load, 1
  %355 = and i8 %354, 64
  %356 = select i1 %tobool565.not, i8 %355, i8 64
  %357 = ptrtoint ptr %signal.i1033 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %signal.i1033, align 16
  %has_child_subreaper575 = getelementptr inbounds %struct.signal_struct, ptr %358, i32 0, i32 14
  %359 = ptrtoint ptr %has_child_subreaper575 to i32
  call void @__asan_load1_noabort(i32 %359)
  %bf.load576 = load i8, ptr %has_child_subreaper575, align 8
  %bf.clear577 = and i8 %bf.load576, -65
  %bf.set = or i8 %bf.clear577, %356
  store i8 %bf.set, ptr %has_child_subreaper575, align 8
  %360 = ptrtoint ptr %real_parent563 to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load ptr, ptr %real_parent563, align 4
  %children580 = getelementptr inbounds %struct.task_struct, ptr %361, i32 0, i32 73
  %prev.i1059 = getelementptr inbounds %struct.task_struct, ptr %361, i32 0, i32 73, i32 1
  %362 = ptrtoint ptr %prev.i1059 to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load ptr, ptr %prev.i1059, align 4
  %call.i.i1060 = call zeroext i1 @__list_add_valid(ptr noundef %sibling, ptr noundef %363, ptr noundef %children580) #16
  br i1 %call.i.i1060, label %if.end.i.i, label %if.end553.list_add_tail.exit_crit_edge

if.end553.list_add_tail.exit_crit_edge:           ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end553
  call void @__sanitizer_cov_trace_pc() #18
  %364 = ptrtoint ptr %prev.i1059 to i32
  call void @__asan_store4_noabort(i32 %364)
  store ptr %sibling, ptr %prev.i1059, align 4
  %365 = ptrtoint ptr %sibling to i32
  call void @__asan_store4_noabort(i32 %365)
  store ptr %children580, ptr %sibling, align 4
  %366 = ptrtoint ptr %prev.i1001 to i32
  call void @__asan_store4_noabort(i32 %366)
  store ptr %363, ptr %prev.i1001, align 4
  %367 = ptrtoint ptr %363 to i32
  call void @__asan_store4_noabort(i32 %367)
  store volatile ptr %sibling, ptr %363, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end553.list_add_tail.exit_crit_edge
  %tasks = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 50
  call fastcc void @list_add_tail_rcu(ptr noundef %tasks, ptr noundef getelementptr inbounds (%struct.task_struct, ptr @init_task, i32 0, i32 50))
  call void @attach_pid(ptr noundef nonnull %call87, i32 noundef 1) #16
  call void @attach_pid(ptr noundef nonnull %call87, i32 noundef 2) #16
  call void @attach_pid(ptr noundef nonnull %call87, i32 noundef 3) #16
  %cpu595 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 3
  %368 = ptrtoint ptr %cpu595 to i32
  call void @__asan_load4_noabort(i32 %368)
  %369 = load i32, ptr %cpu595, align 4
  %arrayidx596 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %369
  %370 = ptrtoint ptr %arrayidx596 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %arrayidx596, align 4
  %add597 = add i32 %371, ptrtoint (ptr @process_counts to i32)
  %372 = inttoptr i32 %add597 to ptr
  %373 = ptrtoint ptr %372 to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %372, align 4
  %add598 = add i32 %374, 1
  store i32 %add598, ptr %372, align 4
  br label %if.end617

if.else603:                                       ; preds = %if.then535
  call void @__sanitizer_cov_trace_pc() #18
  %375 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %375)
  %376 = load ptr, ptr %task, align 8
  %signal606 = getelementptr inbounds %struct.task_struct, ptr %376, i32 0, i32 111
  %377 = ptrtoint ptr %signal606 to i32
  call void @__asan_load4_noabort(i32 %377)
  %378 = load ptr, ptr %signal606, align 16
  %nr_threads = getelementptr inbounds %struct.signal_struct, ptr %378, i32 0, i32 2
  %379 = ptrtoint ptr %nr_threads to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load i32, ptr %nr_threads, align 8
  %inc = add i32 %380, 1
  store i32 %inc, ptr %nr_threads, align 8
  %381 = load ptr, ptr %task, align 8
  %signal609 = getelementptr inbounds %struct.task_struct, ptr %381, i32 0, i32 111
  %382 = ptrtoint ptr %signal609 to i32
  call void @__asan_load4_noabort(i32 %382)
  %383 = load ptr, ptr %signal609, align 16
  %live = getelementptr inbounds %struct.signal_struct, ptr %383, i32 0, i32 1
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %live, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %live, i32 1, i32 3, i32 1) #16
  %384 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %live, ptr %live, i32 1, ptr elementtype(i32) %live) #16, !srcloc !355
  %385 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %385)
  %386 = load ptr, ptr %task, align 8
  %signal612 = getelementptr inbounds %struct.task_struct, ptr %386, i32 0, i32 111
  %387 = ptrtoint ptr %signal612 to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load ptr, ptr %signal612, align 16
  call fastcc void @refcount_inc(ptr noundef %388)
  call void @task_join_group_stop(ptr noundef nonnull %call87) #16
  %group_leader614 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 75
  %389 = ptrtoint ptr %group_leader614 to i32
  call void @__asan_load4_noabort(i32 %389)
  %390 = load ptr, ptr %group_leader614, align 4
  %thread_group615 = getelementptr inbounds %struct.task_struct, ptr %390, i32 0, i32 80
  call fastcc void @list_add_tail_rcu(ptr noundef %thread_group, ptr noundef %thread_group615)
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 81
  %signal616 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 111
  %391 = ptrtoint ptr %signal616 to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load ptr, ptr %signal616, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %392, i32 0, i32 3
  call fastcc void @list_add_tail_rcu(ptr noundef %thread_node, ptr noundef %thread_head)
  br label %if.end617

if.end617:                                        ; preds = %if.else603, %list_add_tail.exit
  call void @attach_pid(ptr noundef nonnull %call87, i32 noundef 0) #16
  %393 = load i32, ptr @nr_threads, align 4
  %inc618 = add i32 %393, 1
  store i32 %inc618, ptr @nr_threads, align 4
  br label %if.end619

if.end619:                                        ; preds = %if.end617, %if.end526.if.end619_crit_edge
  %394 = load i32, ptr @total_forks, align 4
  %inc620 = add i32 %394, 1
  store i32 %inc620, ptr @total_forks, align 4
  %395 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %1, align 4
  %tobool.not.i.not.i = icmp eq ptr %396, null
  br i1 %tobool.not.i.not.i, label %if.end619.hlist_del_init.exit_crit_edge, label %if.then.i1061

if.end619.hlist_del_init.exit_crit_edge:          ; preds = %if.end619
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del_init.exit

if.then.i1061:                                    ; preds = %if.end619
  %397 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %0, align 8
  %399 = ptrtoint ptr %396 to i32
  call void @__asan_store4_noabort(i32 %399)
  store volatile ptr %398, ptr %396, align 4
  %tobool.not.i3.i = icmp eq ptr %398, null
  br i1 %tobool.not.i3.i, label %if.then.i1061.__hlist_del.exit.i_crit_edge, label %do.body13.i.i

if.then.i1061.__hlist_del.exit.i_crit_edge:       ; preds = %if.then.i1061
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i

do.body13.i.i:                                    ; preds = %if.then.i1061
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %398, i32 0, i32 1
  %400 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %400)
  store volatile ptr %396, ptr %pprev14.i.i, align 4
  br label %__hlist_del.exit.i

__hlist_del.exit.i:                               ; preds = %do.body13.i.i, %if.then.i1061.__hlist_del.exit.i_crit_edge
  %401 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr null, ptr %0, align 8
  %402 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %402)
  store ptr null, ptr %1, align 4
  br label %hlist_del_init.exit

hlist_del_init.exit:                              ; preds = %__hlist_del.exit.i, %if.end619.hlist_del_init.exit_crit_edge
  %403 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load ptr, ptr %task, align 8
  %sighand624 = getelementptr inbounds %struct.task_struct, ptr %404, i32 0, i32 112
  %405 = ptrtoint ptr %sighand624 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load ptr, ptr %sighand624, align 4
  call void @_raw_spin_unlock(ptr noundef %406) #16
  call fastcc void @syscall_tracepoint_update(ptr noundef nonnull %call87)
  call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #16
  %tobool626.not = icmp eq ptr %pidfile.0, null
  br i1 %tobool626.not, label %hlist_del_init.exit.if.end628_crit_edge, label %if.then627

hlist_del_init.exit.if.end628_crit_edge:          ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end628

if.then627:                                       ; preds = %hlist_del_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @fd_install(i32 noundef %pidfd.0, ptr noundef nonnull %pidfile.0) #16
  br label %if.end628

if.end628:                                        ; preds = %if.then627, %hlist_del_init.exit.if.end628_crit_edge
  call void @proc_fork_connector(ptr noundef nonnull %call87) #16
  call void @sched_post_fork(ptr noundef nonnull %call87) #16
  call void @cgroup_post_fork(ptr noundef nonnull %call87, ptr noundef %args) #16
  call void @perf_event_fork(ptr noundef nonnull %call87) #16
  call fastcc void @trace_task_newtask(ptr noundef nonnull %call87, i32 noundef %conv)
  call void @uprobe_copy_process(ptr noundef nonnull %call87, i32 noundef %conv) #16
  call fastcc void @copy_oom_score_adj(i64 noundef %3, ptr noundef nonnull %call87)
  br label %cleanup

bad_fork_cancel_cgroup:                           ; preds = %fatal_signal_pending.exit.bad_fork_cancel_cgroup_crit_edge, %ns_of_pid.exit.bad_fork_cancel_cgroup_crit_edge
  %retval1.0 = phi i32 [ -12, %ns_of_pid.exit.bad_fork_cancel_cgroup_crit_edge ], [ -4, %fatal_signal_pending.exit.bad_fork_cancel_cgroup_crit_edge ]
  call void @sched_core_free(ptr noundef nonnull %call87) #16
  %407 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %task, align 8
  %sighand633 = getelementptr inbounds %struct.task_struct, ptr %408, i32 0, i32 112
  %409 = ptrtoint ptr %sighand633 to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %sighand633, align 4
  call void @_raw_spin_unlock(ptr noundef %410) #16
  call void @_raw_write_unlock_irq(ptr noundef nonnull @tasklist_lock) #16
  call void @cgroup_cancel_fork(ptr noundef nonnull %call87, ptr noundef %args) #16
  br label %bad_fork_put_pidfd

bad_fork_put_pidfd:                               ; preds = %bad_fork_cancel_cgroup, %if.end467.bad_fork_put_pidfd_crit_edge
  %retval1.1 = phi i32 [ %call468, %if.end467.bad_fork_put_pidfd_crit_edge ], [ %retval1.0, %bad_fork_cancel_cgroup ]
  br i1 %tobool55.not, label %bad_fork_put_pidfd.bad_fork_free_pid_crit_edge, label %bad_fork_put_pidfd.if.then637_crit_edge

bad_fork_put_pidfd.if.then637_crit_edge:          ; preds = %bad_fork_put_pidfd
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then637

bad_fork_put_pidfd.bad_fork_free_pid_crit_edge:   ; preds = %bad_fork_put_pidfd
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_free_pid

if.then637:                                       ; preds = %bad_fork_put_pidfd.if.then637_crit_edge, %if.end434.if.then637_crit_edge
  %pidfd.11084 = phi i32 [ %pidfd.0, %bad_fork_put_pidfd.if.then637_crit_edge ], [ %call425, %if.end434.if.then637_crit_edge ]
  %retval1.11083 = phi i32 [ %retval1.1, %bad_fork_put_pidfd.if.then637_crit_edge ], [ %203, %if.end434.if.then637_crit_edge ]
  %pidfile.11082 = phi ptr [ %pidfile.0, %bad_fork_put_pidfd.if.then637_crit_edge ], [ %call430, %if.end434.if.then637_crit_edge ]
  call void @fput(ptr noundef %pidfile.11082) #16
  call void @put_unused_fd(i32 noundef %pidfd.11084) #16
  br label %bad_fork_free_pid

bad_fork_free_pid:                                ; preds = %if.then637, %bad_fork_put_pidfd.bad_fork_free_pid_crit_edge, %if.then432, %if.then424.bad_fork_free_pid_crit_edge
  %retval1.2 = phi i32 [ %call425, %if.then424.bad_fork_free_pid_crit_edge ], [ %197, %if.then432 ], [ %retval1.11083, %if.then637 ], [ %retval1.1, %bad_fork_put_pidfd.bad_fork_free_pid_crit_edge ]
  %cmp639.not = icmp eq ptr %pid.addr.0, @init_struct_pid
  br i1 %cmp639.not, label %bad_fork_free_pid.bad_fork_cleanup_thread_crit_edge, label %if.then641

bad_fork_free_pid.bad_fork_cleanup_thread_crit_edge: ; preds = %bad_fork_free_pid
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_thread

if.then641:                                       ; preds = %bad_fork_free_pid
  call void @__sanitizer_cov_trace_pc() #18
  call void @free_pid(ptr noundef %pid.addr.0) #16
  br label %bad_fork_cleanup_thread

bad_fork_cleanup_thread:                          ; preds = %if.then641, %bad_fork_free_pid.bad_fork_cleanup_thread_crit_edge, %if.then418
  %retval1.3 = phi i32 [ %196, %if.then418 ], [ %retval1.2, %if.then641 ], [ %retval1.2, %bad_fork_free_pid.bad_fork_cleanup_thread_crit_edge ]
  call void @exit_thread(ptr noundef nonnull %call87) #16
  br label %bad_fork_cleanup_io

bad_fork_cleanup_io:                              ; preds = %bad_fork_cleanup_thread, %if.end405.bad_fork_cleanup_io_crit_edge
  %retval1.4 = phi i32 [ %call407, %if.end405.bad_fork_cleanup_io_crit_edge ], [ %retval1.3, %bad_fork_cleanup_thread ]
  %411 = ptrtoint ptr %io_context to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %io_context, align 8
  %tobool644.not = icmp eq ptr %412, null
  br i1 %tobool644.not, label %bad_fork_cleanup_io.bad_fork_cleanup_namespaces_crit_edge, label %if.then645

bad_fork_cleanup_io.bad_fork_cleanup_namespaces_crit_edge: ; preds = %bad_fork_cleanup_io
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_namespaces

if.then645:                                       ; preds = %bad_fork_cleanup_io
  call void @__sanitizer_cov_trace_pc() #18
  call void @exit_io_context(ptr noundef nonnull %call87) #16
  br label %bad_fork_cleanup_namespaces

bad_fork_cleanup_namespaces:                      ; preds = %if.then645, %bad_fork_cleanup_io.bad_fork_cleanup_namespaces_crit_edge, %copy_io.exit.bad_fork_cleanup_namespaces_crit_edge
  %retval1.5 = phi i32 [ %call1.i1009, %copy_io.exit.bad_fork_cleanup_namespaces_crit_edge ], [ %retval1.4, %if.then645 ], [ %retval1.4, %bad_fork_cleanup_io.bad_fork_cleanup_namespaces_crit_edge ]
  call void @exit_task_namespaces(ptr noundef nonnull %call87) #16
  br label %bad_fork_cleanup_mm

bad_fork_cleanup_mm:                              ; preds = %bad_fork_cleanup_namespaces, %if.end395.bad_fork_cleanup_mm_crit_edge
  %retval1.6 = phi i32 [ %call397, %if.end395.bad_fork_cleanup_mm_crit_edge ], [ %retval1.5, %bad_fork_cleanup_namespaces ]
  %mm = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 53
  %413 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %mm, align 8
  %tobool647.not = icmp eq ptr %414, null
  br i1 %tobool647.not, label %bad_fork_cleanup_mm.bad_fork_cleanup_signal_crit_edge, label %if.then648

bad_fork_cleanup_mm.bad_fork_cleanup_signal_crit_edge: ; preds = %bad_fork_cleanup_mm
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_signal

if.then648:                                       ; preds = %bad_fork_cleanup_mm
  %owner.i = getelementptr inbounds %struct.anon.3, ptr %414, i32 0, i32 46
  %415 = ptrtoint ptr %owner.i to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %owner.i, align 4
  %cmp.i = icmp eq ptr %416, %call87
  br i1 %cmp.i, label %do.body2.i, label %if.then648.mm_clear_owner.exit_crit_edge

if.then648.mm_clear_owner.exit_crit_edge:         ; preds = %if.then648
  call void @__sanitizer_cov_trace_pc() #18
  br label %mm_clear_owner.exit

do.body2.i:                                       ; preds = %if.then648
  call void @__sanitizer_cov_trace_pc() #18
  %417 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %417)
  store volatile ptr null, ptr %owner.i, align 4
  br label %mm_clear_owner.exit

mm_clear_owner.exit:                              ; preds = %do.body2.i, %if.then648.mm_clear_owner.exit_crit_edge
  %418 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %mm, align 8
  call void @mmput(ptr noundef %419)
  br label %bad_fork_cleanup_signal

bad_fork_cleanup_signal:                          ; preds = %mm_clear_owner.exit, %bad_fork_cleanup_mm.bad_fork_cleanup_signal_crit_edge, %if.end390.bad_fork_cleanup_signal_crit_edge
  %retval1.7 = phi i32 [ %call392, %if.end390.bad_fork_cleanup_signal_crit_edge ], [ %retval1.6, %mm_clear_owner.exit ], [ %retval1.6, %bad_fork_cleanup_mm.bad_fork_cleanup_signal_crit_edge ]
  br i1 %tobool.not, label %if.then654, label %bad_fork_cleanup_signal.bad_fork_cleanup_sighand_crit_edge

bad_fork_cleanup_signal.bad_fork_cleanup_sighand_crit_edge: ; preds = %bad_fork_cleanup_signal
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_fork_cleanup_sighand

if.then654:                                       ; preds = %bad_fork_cleanup_signal
  call void @__sanitizer_cov_trace_pc() #18
  %signal655 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 111
  %420 = ptrtoint ptr %signal655 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load ptr, ptr %signal655, align 16
  call fastcc void @free_signal_struct(ptr noundef %421)
  br label %bad_fork_cleanup_sighand

bad_fork_cleanup_sighand:                         ; preds = %if.then654, %bad_fork_cleanup_signal.bad_fork_cleanup_sighand_crit_edge, %if.end385.bad_fork_cleanup_sighand_crit_edge
  %retval1.8 = phi i32 [ %call387, %if.end385.bad_fork_cleanup_sighand_crit_edge ], [ %retval1.7, %bad_fork_cleanup_signal.bad_fork_cleanup_sighand_crit_edge ], [ %retval1.7, %if.then654 ]
  %sighand657 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 112
  %422 = ptrtoint ptr %sighand657 to i32
  call void @__asan_load4_noabort(i32 %422)
  %423 = load ptr, ptr %sighand657, align 4
  call void @__cleanup_sighand(ptr noundef %423)
  br label %bad_fork_cleanup_fs

bad_fork_cleanup_fs:                              ; preds = %bad_fork_cleanup_sighand, %if.end380.bad_fork_cleanup_fs_crit_edge
  %retval1.9 = phi i32 [ %call382, %if.end380.bad_fork_cleanup_fs_crit_edge ], [ %retval1.8, %bad_fork_cleanup_sighand ]
  call void @exit_fs(ptr noundef nonnull %call87) #16
  br label %bad_fork_cleanup_files

bad_fork_cleanup_files:                           ; preds = %bad_fork_cleanup_fs, %if.end375.bad_fork_cleanup_files_crit_edge
  %retval1.10 = phi i32 [ %call377, %if.end375.bad_fork_cleanup_files_crit_edge ], [ %retval1.9, %bad_fork_cleanup_fs ]
  call void @exit_files(ptr noundef nonnull %call87) #16
  br label %bad_fork_cleanup_semundo

bad_fork_cleanup_semundo:                         ; preds = %bad_fork_cleanup_files, %if.end370.bad_fork_cleanup_semundo_crit_edge
  %retval1.11 = phi i32 [ %call372, %if.end370.bad_fork_cleanup_semundo_crit_edge ], [ %retval1.10, %bad_fork_cleanup_files ]
  call void @exit_sem(ptr noundef nonnull %call87) #16
  br label %bad_fork_cleanup_security

bad_fork_cleanup_security:                        ; preds = %bad_fork_cleanup_semundo, %if.end365.bad_fork_cleanup_security_crit_edge
  %retval1.12 = phi i32 [ %call367, %if.end365.bad_fork_cleanup_security_crit_edge ], [ %retval1.11, %bad_fork_cleanup_semundo ]
  call void @security_task_free(ptr noundef nonnull %call87) #16
  br label %bad_fork_cleanup_audit

bad_fork_cleanup_audit:                           ; preds = %bad_fork_cleanup_security, %if.end356.bad_fork_cleanup_audit_crit_edge
  %retval1.13 = phi i32 [ %call362, %if.end356.bad_fork_cleanup_audit_crit_edge ], [ %retval1.12, %bad_fork_cleanup_security ]
  call void @perf_event_free_task(ptr noundef nonnull %call87) #16
  br label %bad_fork_cleanup_delayacct

bad_fork_cleanup_delayacct:                       ; preds = %bad_fork_cleanup_audit, %if.end352.bad_fork_cleanup_delayacct_crit_edge, %__here332.bad_fork_cleanup_delayacct_crit_edge, %if.then318.bad_fork_cleanup_delayacct_crit_edge
  %retval1.16 = phi i32 [ -11, %if.then318.bad_fork_cleanup_delayacct_crit_edge ], [ %call349, %__here332.bad_fork_cleanup_delayacct_crit_edge ], [ %call353, %if.end352.bad_fork_cleanup_delayacct_crit_edge ], [ %retval1.13, %bad_fork_cleanup_audit ]
  %424 = ptrtoint ptr %delays.i to i32
  call void @__asan_load4_noabort(i32 %424)
  %425 = load ptr, ptr %delays.i, align 8
  %tobool.not.i1064 = icmp eq ptr %425, null
  br i1 %tobool.not.i1064, label %bad_fork_cleanup_delayacct.delayacct_tsk_free.exit_crit_edge, label %if.then.i1065

bad_fork_cleanup_delayacct.delayacct_tsk_free.exit_crit_edge: ; preds = %bad_fork_cleanup_delayacct
  call void @__sanitizer_cov_trace_pc() #18
  br label %delayacct_tsk_free.exit

if.then.i1065:                                    ; preds = %bad_fork_cleanup_delayacct
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @delayacct_cache to i32))
  %426 = load ptr, ptr @delayacct_cache, align 4
  call void @kmem_cache_free(ptr noundef %426, ptr noundef nonnull %425) #16
  br label %delayacct_tsk_free.exit

delayacct_tsk_free.exit:                          ; preds = %if.then.i1065, %bad_fork_cleanup_delayacct.delayacct_tsk_free.exit_crit_edge
  %427 = ptrtoint ptr %delays.i to i32
  call void @__asan_store4_noabort(i32 %427)
  store ptr null, ptr %delays.i, align 8
  br label %bad_fork_cleanup_count

bad_fork_cleanup_count:                           ; preds = %delayacct_tsk_free.exit, %if.end293.bad_fork_cleanup_count_crit_edge, %land.lhs.true289.bad_fork_cleanup_count_crit_edge
  %retval1.17 = phi i32 [ -11, %if.end293.bad_fork_cleanup_count_crit_edge ], [ %retval1.16, %delayacct_tsk_free.exit ], [ -11, %land.lhs.true289.bad_fork_cleanup_count_crit_edge ]
  %428 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i.i985 = and i32 %428, -16384
  %429 = inttoptr i32 %and.i.i.i.i.i985 to ptr
  %preempt_count.i.i.i.i986 = getelementptr inbounds %struct.thread_info, ptr %429, i32 0, i32 1
  %430 = ptrtoint ptr %preempt_count.i.i.i.i986 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load volatile i32, ptr %preempt_count.i.i.i.i986, align 4
  %add.i.i.i987 = add i32 %431, 1
  store volatile i32 %add.i.i.i987, ptr %preempt_count.i.i.i.i986, align 4
  call void asm sideeffect "", "~{memory}"() #16, !srcloc !363
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i988 = call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i988, label %bad_fork_cleanup_count.rcu_read_lock.exit995_crit_edge, label %land.lhs.true.i991

bad_fork_cleanup_count.rcu_read_lock.exit995_crit_edge: ; preds = %bad_fork_cleanup_count
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit995

land.lhs.true.i991:                               ; preds = %bad_fork_cleanup_count
  %call1.i989 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i989)
  %tobool.not.i990 = icmp eq i32 %call1.i989, 0
  br i1 %tobool.not.i990, label %land.lhs.true.i991.rcu_read_lock.exit995_crit_edge, label %land.lhs.true2.i993

land.lhs.true.i991.rcu_read_lock.exit995_crit_edge: ; preds = %land.lhs.true.i991
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit995

land.lhs.true2.i993:                              ; preds = %land.lhs.true.i991
  %.b4.i992 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i992, label %land.lhs.true2.i993.rcu_read_lock.exit995_crit_edge, label %if.then.i994

land.lhs.true2.i993.rcu_read_lock.exit995_crit_edge: ; preds = %land.lhs.true2.i993
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit995

if.then.i994:                                     ; preds = %land.lhs.true2.i993
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 696, ptr noundef nonnull @.str.61) #16
  br label %rcu_read_lock.exit995

rcu_read_lock.exit995:                            ; preds = %if.then.i994, %land.lhs.true2.i993.rcu_read_lock.exit995_crit_edge, %land.lhs.true.i991.rcu_read_lock.exit995_crit_edge, %bad_fork_cleanup_count.rcu_read_lock.exit995_crit_edge
  %432 = ptrtoint ptr %real_cred to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load volatile ptr, ptr %real_cred, align 4
  %call665 = call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call665)
  %tobool666.not = icmp eq i32 %call665, 0
  br i1 %tobool666.not, label %land.lhs.true667, label %rcu_read_lock.exit995.do.end675_crit_edge

rcu_read_lock.exit995.do.end675_crit_edge:        ; preds = %rcu_read_lock.exit995
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end675

land.lhs.true667:                                 ; preds = %rcu_read_lock.exit995
  %call668 = call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call668)
  %tobool669.not = icmp eq i32 %call668, 0
  br i1 %tobool669.not, label %land.lhs.true667.do.end675_crit_edge, label %land.lhs.true670

land.lhs.true667.do.end675_crit_edge:             ; preds = %land.lhs.true667
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end675

land.lhs.true670:                                 ; preds = %land.lhs.true667
  %.b967968 = load i1, ptr @copy_process.__warned.75, align 1
  br i1 %.b967968, label %land.lhs.true670.do.end675_crit_edge, label %if.then672

land.lhs.true670.do.end675_crit_edge:             ; preds = %land.lhs.true670
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end675

if.then672:                                       ; preds = %land.lhs.true670
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @copy_process.__warned.75, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2450, ptr noundef nonnull @.str.6) #16
  br label %do.end675

do.end675:                                        ; preds = %if.then672, %land.lhs.true670.do.end675_crit_edge, %land.lhs.true667.do.end675_crit_edge, %rcu_read_lock.exit995.do.end675_crit_edge
  %ucounts677 = getelementptr inbounds %struct.cred, ptr %433, i32 0, i32 26
  %434 = ptrtoint ptr %ucounts677 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %ucounts677, align 4
  call fastcc void @rcu_read_unlock()
  %call679 = call zeroext i1 @dec_rlimit_ucounts(ptr noundef %435, i32 noundef 12, i32 noundef 1) #16
  call void @exit_creds(ptr noundef nonnull %call87) #16
  br label %do.body684

do.body684:                                       ; preds = %do.end675, %if.end256.do.body684_crit_edge
  %retval1.18 = phi i32 [ %call258, %if.end256.do.body684_crit_edge ], [ %retval1.17, %do.end675 ]
  %436 = ptrtoint ptr %call87 to i32
  call void @__asan_store4_noabort(i32 %436)
  store volatile i32 128, ptr %call87, align 128
  %437 = getelementptr inbounds %struct.task_struct, ptr %call87, i32 0, i32 178
  call void @call_rcu(ptr noundef %437, ptr noundef nonnull @__delayed_free_task) #16
  br label %fork_out

fork_out:                                         ; preds = %do.body684, %if.end84.fork_out_crit_edge, %if.end74.fork_out_crit_edge
  %retval1.19 = phi i32 [ -513, %if.end74.fork_out_crit_edge ], [ %retval1.18, %do.body684 ], [ -12, %if.end84.fork_out_crit_edge ]
  %438 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %438)
  %439 = load ptr, ptr %task, align 8
  %sighand691 = getelementptr inbounds %struct.task_struct, ptr %439, i32 0, i32 112
  %440 = ptrtoint ptr %sighand691 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load ptr, ptr %sighand691, align 4
  call void @_raw_spin_lock_irq(ptr noundef %441) #16
  %442 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load ptr, ptr %1, align 4
  %tobool.not.i.not.i1068 = icmp eq ptr %443, null
  br i1 %tobool.not.i.not.i1068, label %fork_out.hlist_del_init.exit1075_crit_edge, label %if.then.i1070

fork_out.hlist_del_init.exit1075_crit_edge:       ; preds = %fork_out
  call void @__sanitizer_cov_trace_pc() #18
  br label %hlist_del_init.exit1075

if.then.i1070:                                    ; preds = %fork_out
  %444 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %0, align 8
  %446 = ptrtoint ptr %443 to i32
  call void @__asan_store4_noabort(i32 %446)
  store volatile ptr %445, ptr %443, align 4
  %tobool.not.i3.i1069 = icmp eq ptr %445, null
  br i1 %tobool.not.i3.i1069, label %if.then.i1070.__hlist_del.exit.i1073_crit_edge, label %do.body13.i.i1072

if.then.i1070.__hlist_del.exit.i1073_crit_edge:   ; preds = %if.then.i1070
  call void @__sanitizer_cov_trace_pc() #18
  br label %__hlist_del.exit.i1073

do.body13.i.i1072:                                ; preds = %if.then.i1070
  call void @__sanitizer_cov_trace_pc() #18
  %pprev14.i.i1071 = getelementptr inbounds %struct.hlist_node, ptr %445, i32 0, i32 1
  %447 = ptrtoint ptr %pprev14.i.i1071 to i32
  call void @__asan_store4_noabort(i32 %447)
  store volatile ptr %443, ptr %pprev14.i.i1071, align 4
  br label %__hlist_del.exit.i1073

__hlist_del.exit.i1073:                           ; preds = %do.body13.i.i1072, %if.then.i1070.__hlist_del.exit.i1073_crit_edge
  %448 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %448)
  store ptr null, ptr %0, align 8
  %449 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr null, ptr %1, align 4
  br label %hlist_del_init.exit1075

hlist_del_init.exit1075:                          ; preds = %__hlist_del.exit.i1073, %fork_out.hlist_del_init.exit1075_crit_edge
  %450 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %task, align 8
  %sighand696 = getelementptr inbounds %struct.task_struct, ptr %451, i32 0, i32 112
  %452 = ptrtoint ptr %sighand696 to i32
  call void @__asan_load4_noabort(i32 %452)
  %453 = load ptr, ptr %sighand696, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %453) #16
  %454 = inttoptr i32 %retval1.19 to ptr
  br label %cleanup

cleanup:                                          ; preds = %hlist_del_init.exit1075, %if.end628, %if.end53.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %land.lhs.true24.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %454, %hlist_del_init.exit1075 ], [ %call87, %if.end628 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end7.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %land.lhs.true24.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then35.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then48.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end53.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %delayed) #16
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @copy_init_mm() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @dup_mm(ptr noundef null, ptr noundef nonnull @init_mm)
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dup_mm(ptr noundef %tsk, ptr noundef %oldmm) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mm_cachep, align 4
  %call = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = call ptr @memcpy(ptr %call, ptr %oldmm, i32 720)
  %user_ns = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 47
  %2 = ptrtoint ptr %user_ns to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %user_ns, align 8
  %call1 = tail call fastcc ptr @mm_init(ptr noundef nonnull %call, ptr noundef %tsk, ptr noundef %3)
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc i32 @dup_mmap(ptr noundef nonnull %call, ptr noundef %oldmm)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.free_pt_crit_edge

if.end4.free_pt_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_pt

if.end8:                                          ; preds = %if.end4
  %rss_stat.i.i = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 40
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %rss_stat.i.i, i32 noundef 4) #16
  %4 = ptrtoint ptr %rss_stat.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %rss_stat.i.i, align 8
  %6 = tail call i32 @llvm.smax.i32(i32 %5, i32 0) #16
  %arrayidx.i.i = getelementptr %struct.anon.3, ptr %call, i32 0, i32 40, i32 0, i32 1
  %call.i.i.i7.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i.i, i32 noundef 4) #16
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i.i, align 4
  %9 = tail call i32 @llvm.smax.i32(i32 %8, i32 0) #16
  %add.i = add nuw i32 %9, %6
  %arrayidx.i9.i = getelementptr %struct.anon.3, ptr %call, i32 0, i32 40, i32 0, i32 3
  %call.i.i.i10.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx.i9.i, i32 noundef 4) #16
  %10 = ptrtoint ptr %arrayidx.i9.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %arrayidx.i9.i, align 4
  %12 = tail call i32 @llvm.smax.i32(i32 %11, i32 0) #16
  %add3.i = add i32 %add.i, %12
  %hiwater_rss = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 17
  %13 = ptrtoint ptr %hiwater_rss to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add3.i, ptr %hiwater_rss, align 8
  %total_vm = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 19
  %14 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %total_vm, align 8
  %hiwater_vm = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 18
  %16 = ptrtoint ptr %hiwater_vm to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hiwater_vm, align 4
  %binfmt = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 41
  %17 = ptrtoint ptr %binfmt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %binfmt, align 8
  %tobool10.not = icmp eq ptr %18, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end8
  %module = getelementptr inbounds %struct.linux_binfmt, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %module to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %module, align 4
  %call12 = tail call zeroext i1 @try_module_get(ptr noundef %20) #16
  br i1 %call12, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.free_pt_crit_edge

land.lhs.true.free_pt_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_pt

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

free_pt:                                          ; preds = %land.lhs.true.free_pt_crit_edge, %if.end4.free_pt_crit_edge
  %binfmt15 = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 41
  %21 = ptrtoint ptr %binfmt15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %binfmt15, align 8
  %owner.i = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 46
  %22 = ptrtoint ptr %owner.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %owner.i, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.1, i32 noundef 1132) #16
  %mm_users.i = getelementptr inbounds %struct.anon.3, ptr %call, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !350
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #16
  %23 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 1, ptr elementtype(i32) %mm_users.i) #16, !srcloc !351
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %23, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %if.then.i, label %free_pt.cleanup_crit_edge

free_pt.cleanup_crit_edge:                        ; preds = %free_pt
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i:                                        ; preds = %free_pt
  call void @__sanitizer_cov_trace_pc() #18
  tail call fastcc void @__mmput(ptr noundef nonnull %call) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %free_pt.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end8.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %free_pt.cleanup_crit_edge ], [ null, %if.then.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @create_io_thread(ptr noundef %fn, ptr noundef %arg, i32 noundef %node) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.kernel_clone_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %0 = getelementptr inbounds i8, ptr %args, i32 56
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !341
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 2155941632, ptr %args, align 8
  %pidfd = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 1
  %stack = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 5
  %3 = ptrtoint ptr %fn to i32
  %4 = call ptr @memset(ptr %pidfd, i32 0, i32 16)
  %5 = ptrtoint ptr %stack to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %3, ptr %stack, align 8
  %stack_size = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 6
  %6 = ptrtoint ptr %arg to i32
  %7 = ptrtoint ptr %stack_size to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %stack_size, align 4
  %tls = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 7
  %io_thread = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 11
  %8 = call ptr @memset(ptr %tls, i32 0, i32 16)
  %9 = ptrtoint ptr %io_thread to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %io_thread, align 8
  %cgrp = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 12
  %10 = ptrtoint ptr %cgrp to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %cgrp, align 4
  %cset = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 13
  %11 = ptrtoint ptr %cset to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %cset, align 8
  %call = call fastcc ptr @copy_process(ptr noundef null, i32 noundef 0, i32 noundef %node, ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_clone(ptr noundef %args) local_unnamed_addr #0 align 64 {
entry:
  %vfork = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %args, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %vfork) #16
  %2 = call ptr @memset(ptr %vfork, i32 255, i32 56)
  %and3 = and i64 %1, 1048576
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and3)
  %tobool4.not = icmp eq i64 %and3, 0
  %3 = and i64 %1, 1052672
  call void @__sanitizer_cov_trace_const_cmp8(i64 1052672, i64 %3)
  %.not = icmp eq i64 %3, 1052672
  br i1 %.not, label %land.lhs.true5, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true5:                                   ; preds = %entry
  %pidfd = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 1
  %4 = ptrtoint ptr %pidfd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pidfd, align 8
  %parent_tid = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 3
  %6 = ptrtoint ptr %parent_tid to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent_tid, align 8
  %cmp = icmp eq ptr %5, %7
  br i1 %cmp, label %land.lhs.true5.cleanup_crit_edge, label %land.lhs.true5.if.end_crit_edge

land.lhs.true5.if.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

land.lhs.true5.cleanup_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true5.if.end_crit_edge, %entry.if.end_crit_edge
  %and6 = and i64 %1, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and6)
  %tobool7.not = icmp eq i64 %and6, 0
  br i1 %tobool7.not, label %if.then8, label %if.end.if.end23_crit_edge

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23

if.then8:                                         ; preds = %if.end
  %and9 = and i64 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and9)
  %tobool10.not = icmp eq i64 %and9, 0
  br i1 %tobool10.not, label %if.else, label %if.then8.if.end16_crit_edge

if.then8.if.end16_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end16

if.else:                                          ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #18
  %exit_signal = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 4
  %8 = ptrtoint ptr %exit_signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exit_signal, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %9)
  %cmp12.not = icmp eq i32 %9, 17
  %. = select i1 %cmp12.not, i32 1, i32 3
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then8.if.end16_crit_edge
  %trace.0 = phi i32 [ 2, %if.then8.if.end16_crit_edge ], [ %., %if.else ]
  %10 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i92 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i92 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %task, align 8
  %ptrace.i = getelementptr inbounds %struct.task_struct, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %ptrace.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ptrace.i, align 16
  %shl.i = shl nuw nsw i32 8, %trace.0
  %and.i93 = and i32 %15, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i93)
  %tobool.i.not = icmp eq i32 %and.i93, 0
  %spec.select = select i1 %tobool.i.not, i32 0, i32 %trace.0, !prof !339
  br label %if.end23

if.end23:                                         ; preds = %if.end16, %if.end.if.end23_crit_edge
  %trace.1 = phi i32 [ 0, %if.end.if.end23_crit_edge ], [ %spec.select, %if.end16 ]
  %call24 = tail call fastcc ptr @copy_process(ptr noundef null, i32 noundef %trace.1, i32 noundef -1, ptr noundef %args)
  %cmp.i = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #18
  %16 = ptrtoint ptr %call24 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end23
  %17 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i94 = and i32 %17, -16384
  %18 = inttoptr i32 %and.i94 to ptr
  %task30 = getelementptr inbounds %struct.thread_info, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %task30 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %task30, align 8
  tail call fastcc void @trace_sched_process_fork(ptr noundef %20, ptr noundef %call24)
  %call31 = tail call ptr @get_task_pid(ptr noundef %call24, i32 noundef 0) #16
  %call32 = tail call i32 @pid_vnr(ptr noundef %call31) #16
  br i1 %tobool4.not, label %if.end28.if.end39_crit_edge, label %if.then35

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end39

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #18
  %parent_tid36 = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 3
  %21 = ptrtoint ptr %parent_tid36 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent_tid36, align 8
  tail call void @__might_fault(ptr noundef nonnull @.str.1, i32 noundef 2581) #16
  %23 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #12, !srcloc !368
  %and.i = and i32 %25, -13
  %or.i = or i32 %and.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #16, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  %26 = tail call i32 asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r2; .ifnc $2r2,fpr11; .ifnc $2r2,r11fp; .ifnc $2r2,ipr12; .ifnc $2r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__put_user_4", "=&{r0},{r0},{r2},{r1},~{r12},~{lr},~{cc}"(ptr %22, i32 %call32, i32 -1226833921) #16, !srcloc !377
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #16, !srcloc !369
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end28.if.end39_crit_edge
  %and40 = and i64 %1, 16384
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40)
  %tobool41.not = icmp eq i64 %and40, 0
  br i1 %tobool41.not, label %if.end39.if.end44_crit_edge, label %if.then42

if.end39.if.end44_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.then42:                                        ; preds = %if.end39
  %vfork_done = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 82
  %27 = ptrtoint ptr %vfork_done to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %vfork, ptr %vfork_done, align 4
  %28 = ptrtoint ptr %vfork to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %vfork, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %vfork, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.93, ptr noundef nonnull @init_completion.__key) #16
  %usage.i = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 2
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %usage.i, i32 1, i32 3, i32 1) #16
  %29 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i, ptr %usage.i, i32 1, ptr elementtype(i32) %usage.i) #16, !srcloc !342
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then42.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !340

if.then42.if.end15.sink.split.i.i.i.i_crit_edge:  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then42
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %30 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %30)
  %.not.i.i.i.i = icmp sgt i32 %30, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end44_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !339

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end44_crit_edge:               ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end44

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then42.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then42.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  call void @refcount_warn_saturate(ptr noundef %usage.i, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end44

if.end44:                                         ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end44_crit_edge, %if.end39.if.end44_crit_edge
  call void @wake_up_new_task(ptr noundef %call24) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %trace.1)
  %tobool45.not = icmp eq i32 %trace.1, 0
  br i1 %tobool45.not, label %if.end44.if.end53_crit_edge, label %if.then52, !prof !339

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end53

if.then52:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @ptrace_event_pid(i32 noundef %trace.1, ptr noundef %call31)
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end44.if.end53_crit_edge
  br i1 %tobool41.not, label %if.end53.if.end61_crit_edge, label %if.then56

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then56:                                        ; preds = %if.end53
  %31 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i95 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i95 to ptr
  %task.i.i = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags.i.i, align 4
  %or.i.i = or i32 %36, 1073741824
  store i32 %or.i.i, ptr %flags.i.i, align 4
  call void @cgroup_enter_frozen() #16
  %call.i = call i32 @wait_for_completion_killable(ptr noundef nonnull %vfork) #16
  call void @cgroup_leave_frozen(i1 noundef zeroext false) #16
  %37 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i5.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i5.i to ptr
  %task.i6.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %task.i6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %task.i6.i, align 8
  %flags.i7.i = getelementptr inbounds %struct.task_struct, ptr %40, i32 0, i32 3
  %41 = ptrtoint ptr %flags.i7.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags.i7.i, align 4
  %and.i.i = and i32 %42, -1073741825
  store i32 %and.i.i, ptr %flags.i7.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !378
  %43 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i to ptr
  %task.i.i.i = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %task.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %task.i.i.i, align 8
  %flags.i.i.i = getelementptr inbounds %struct.task_struct, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags.i.i.i, align 4
  %and.i4.i.i = and i32 %48, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i4.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then56.if.end.i.i.i_crit_edge

if.then56.if.end.i.i.i_crit_edge:                 ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #18
  call void @debug_check_no_locks_held() #16
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.then56.if.end.i.i.i_crit_edge
  call void @__might_sleep(ptr noundef nonnull @.str.95, i32 noundef 57) #16
  %49 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i.i = and i32 %49, -16384
  %50 = inttoptr i32 %and.i.i.i.i.i to ptr
  %task.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %task.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %task.i.i.i.i, align 8
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @system_freezing_cnt, i32 noundef 4) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_freezing_cnt to i32))
  %53 = load volatile i32, ptr @system_freezing_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i.i.i.i.i = icmp eq i32 %53, 0
  br i1 %tobool.not.i.i.i.i.i, label %if.end.i.i.i.freezer_count.exit.i_crit_edge, label %freezing.exit.i.i.i.i, !prof !339

if.end.i.i.i.freezer_count.exit.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %freezer_count.exit.i

freezing.exit.i.i.i.i:                            ; preds = %if.end.i.i.i
  %call4.i.i.i.i.i = call zeroext i1 @freezing_slow_path(ptr noundef %52) #16
  br i1 %call4.i.i.i.i.i, label %if.end.i.i.i.i, label %freezing.exit.i.i.i.i.freezer_count.exit.i_crit_edge, !prof !340

freezing.exit.i.i.i.i.freezer_count.exit.i_crit_edge: ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %freezer_count.exit.i

if.end.i.i.i.i:                                   ; preds = %freezing.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call6.i.i.i.i = call zeroext i1 @__refrigerator(i1 noundef zeroext false) #16
  br label %freezer_count.exit.i

freezer_count.exit.i:                             ; preds = %if.end.i.i.i.i, %freezing.exit.i.i.i.i.freezer_count.exit.i_crit_edge, %if.end.i.i.i.freezer_count.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %freezer_count.exit.i.if.end.i_crit_edge, label %if.then.i

freezer_count.exit.i.if.end.i_crit_edge:          ; preds = %freezer_count.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i:                                        ; preds = %freezer_count.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %alloc_lock.i.i = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 127
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i.i) #16
  %vfork_done.i = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 82
  %54 = ptrtoint ptr %vfork_done.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %vfork_done.i, align 4
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %freezer_count.exit.i.if.end.i_crit_edge
  %usage.i.i = getelementptr inbounds %struct.task_struct, ptr %call24, i32 0, i32 2
  %call.i.i.i.i.i.i9.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage.i.i, i32 noundef 4) #16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !343
  call void @llvm.prefetch.p0(ptr %usage.i.i, i32 1, i32 3, i32 1) #16
  %55 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage.i.i, ptr %usage.i.i, i32 1, ptr elementtype(i32) %usage.i.i) #16, !srcloc !344
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.wait_for_vfork_done.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !339

if.end5.i.i.i.i.i.wait_for_vfork_done.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %wait_for_vfork_done.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @refcount_warn_saturate(ptr noundef %usage.i.i, i32 noundef 3) #16
  br label %wait_for_vfork_done.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !345
  call void @__put_task_struct(ptr noundef %call24) #16
  br label %wait_for_vfork_done.exit

wait_for_vfork_done.exit:                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.wait_for_vfork_done.exit_crit_edge
  br i1 %tobool.not.i, label %if.then59, label %wait_for_vfork_done.exit.if.end61_crit_edge

wait_for_vfork_done.exit.if.end61_crit_edge:      ; preds = %wait_for_vfork_done.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end61

if.then59:                                        ; preds = %wait_for_vfork_done.exit
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @ptrace_event_pid(i32 noundef 5, ptr noundef %call31)
  br label %if.end61

if.end61:                                         ; preds = %if.then59, %wait_for_vfork_done.exit.if.end61_crit_edge, %if.end53.if.end61_crit_edge
  call void @put_pid(ptr noundef %call31) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %if.then26, %land.lhs.true5.cleanup_crit_edge
  %retval.0 = phi i32 [ %16, %if.then26 ], [ %call32, %if.end61 ], [ -22, %land.lhs.true5.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %vfork) #16
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_sched_process_fork(ptr noundef %parent, ptr noundef %child) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_fork, i32 0, i32 1), ptr blockaddress(@trace_sched_process_fork, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !359

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !339

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.89, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  br i1 %tobool.i.not, label %cpu_online.exit.if.end69_crit_edge, label %cleanup.thread

cpu_online.exit.if.end69_crit_edge:               ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

cleanup.thread:                                   ; preds = %cpu_online.exit
  call void @__sanitizer_cov_trace_pc() #18
  %9 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !379
  %call42 = tail call i32 @__traceiter_sched_process_fork(ptr noundef null, ptr noundef %parent, ptr noundef %child) #16
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !380
  %13 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
  %17 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !339

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.89, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
  br label %cpu_online.exit85

cpu_online.exit85:                                ; preds = %if.then.i.i.i.i80, %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, %if.end48.cpu_online.exit85_crit_edge
  %div3.i.i.i81 = lshr i32 %20, 5
  %arrayidx.i.i.i82 = getelementptr i32, ptr @__cpu_online_mask, i32 %div3.i.i.i81
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %26 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %29, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !381
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_fork, i32 0, i32 7) to i32))
  %30 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_sched_process_fork, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_sched_process_fork.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_sched_process_fork.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.92, i32 noundef 392, ptr noundef nonnull @.str.6) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !382
  %31 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
declare dso_local ptr @get_task_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_vnr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @wake_up_new_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ptrace_event_pid(i32 noundef %event, ptr noundef %pid) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !363
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 696, ptr noundef nonnull @.str.61) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %parent = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 72
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %parent, align 8
  %call2 = tail call i32 @rcu_read_lock_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b16 = load i1, ptr @ptrace_event_pid.__warned, align 1
  br i1 %.b16, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @ptrace_event_pid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.94, i32 noundef 190, ptr noundef nonnull @.str.6) #16
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %call10 = tail call ptr @task_active_pid_ns(ptr noundef %9) #16
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %do.end8.if.end14_crit_edge, label %if.then12

do.end8.if.end14_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.then12:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  %call13 = tail call i32 @pid_nr_ns(ptr noundef %pid, ptr noundef nonnull %call10) #16
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end8.if.end14_crit_edge
  %message.0 = phi i32 [ %call13, %if.then12 ], [ 0, %do.end8.if.end14_crit_edge ]
  %call.i17 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i17, label %if.end14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i20

if.end14.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i20:                                ; preds = %if.end14
  %call1.i18 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i18)
  %tobool.not.i19 = icmp eq i32 %call1.i18, 0
  br i1 %tobool.not.i19, label %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i22

land.lhs.true.i20.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i20
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i22:                               ; preds = %land.lhs.true.i20
  %.b4.i21 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i21, label %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, label %if.then.i23

land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i23:                                      ; preds = %land.lhs.true2.i22
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.60, i32 noundef 724, ptr noundef nonnull @.str.62) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i23, %land.lhs.true2.i22.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i20.rcu_read_unlock.exit_crit_edge, %if.end14.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !367
  %10 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i.i24 = and i32 %10, -16384
  %11 = inttoptr i32 %and.i.i.i.i.i24 to ptr
  %preempt_count.i.i.i.i25 = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %preempt_count.i.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %preempt_count.i.i.i.i25, align 4
  %sub.i.i.i = add i32 %13, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i25, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  %14 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task.i, align 8
  %ptrace.i.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ptrace.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ptrace.i.i, align 16
  %add.i.i = add i32 %event, 3
  %shl.i.i = shl nuw i32 1, %add.i.i
  %and.i17.i = and i32 %19, %shl.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i17.i)
  %tobool.i.not.i = icmp eq i32 %and.i17.i, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %if.then.i26, !prof !339

if.then.i26:                                      ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  %ptrace_message.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 153
  %20 = ptrtoint ptr %ptrace_message.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %message.0, ptr %ptrace_message.i, align 32
  %shl.i = shl i32 %event, 8
  %or.i = or i32 %shl.i, 5
  tail call void @ptrace_notify(i32 noundef %or.i) #16
  br label %ptrace_event.exit

if.else.i:                                        ; preds = %rcu_read_unlock.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %event)
  %cmp.i = icmp eq i32 %event, 4
  %and.i27 = and i32 %19, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i27)
  %cmp8.i = icmp eq i32 %and.i27, 1
  %or.cond.i = select i1 %cmp.i, i1 %cmp8.i, i1 false
  br i1 %or.cond.i, label %if.then9.i, label %if.else.i.ptrace_event.exit_crit_edge

if.else.i.ptrace_event.exit_crit_edge:            ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %ptrace_event.exit

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  %call12.i = tail call i32 @send_sig(i32 noundef 5, ptr noundef %17, i32 noundef 0) #16
  br label %ptrace_event.exit

ptrace_event.exit:                                ; preds = %if.then9.i, %if.else.i.ptrace_event.exit_crit_edge, %if.then.i26
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @kernel_thread(ptr noundef %fn, ptr noundef %arg, i32 noundef %flags) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.kernel_clone_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %0 = getelementptr inbounds i8, ptr %args, i32 56
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 -1, ptr %0, align 8, !annotation !341
  %or2 = and i32 %flags, -8389120
  %and3 = or i32 %or2, 8388864
  %conv = zext i32 %and3 to i64
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %args, align 8
  %pidfd = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 1
  %3 = ptrtoint ptr %pidfd to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %pidfd, align 8
  %child_tid = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 2
  %4 = ptrtoint ptr %child_tid to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %child_tid, align 4
  %parent_tid = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 3
  %5 = ptrtoint ptr %parent_tid to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %parent_tid, align 8
  %exit_signal = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 4
  %and5 = and i32 %flags, 255
  %6 = ptrtoint ptr %exit_signal to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and5, ptr %exit_signal, align 4
  %stack = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 5
  %7 = ptrtoint ptr %fn to i32
  %8 = ptrtoint ptr %stack to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %stack, align 8
  %stack_size = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 6
  %9 = ptrtoint ptr %arg to i32
  %10 = ptrtoint ptr %stack_size to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %stack_size, align 4
  %tls = getelementptr inbounds %struct.kernel_clone_args, ptr %args, i32 0, i32 7
  %11 = call ptr @memset(ptr %tls, i32 0, i32 28)
  %call = call i32 @kernel_clone(ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_fork() local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.kernel_clone_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %0 = call ptr @memset(ptr %args, i32 0, i32 64)
  %1 = getelementptr inbounds { i64, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, [4 x i8] }, ptr %args, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 17, ptr %1, align 4
  %call = call i32 @kernel_clone(ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sys_vfork() local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.kernel_clone_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args) #16
  %0 = getelementptr inbounds i8, ptr %args, i32 8
  %1 = call ptr @memset(ptr %0, i32 0, i32 56)
  %2 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 16640, ptr %args, align 8
  %3 = getelementptr inbounds { i64, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, ptr, ptr, [4 x i8] }, ptr %args, i32 0, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 17, ptr %3, align 4
  %call = call i32 @kernel_clone(ptr noundef nonnull %args)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args) #16
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clone(i32 noundef %clone_flags, i32 noundef %newsp, i32 noundef %parent_tidptr, i32 noundef %tls, i32 noundef %child_tidptr) #0 align 64 {
entry:
  %args.i = alloca %struct.kernel_clone_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %parent_tidptr to ptr
  %1 = inttoptr i32 %child_tidptr to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %args.i) #16
  %2 = getelementptr inbounds i8, ptr %args.i, i32 56
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %2, align 8, !annotation !341
  %and1.i = and i32 %clone_flags, -256
  %conv.i = zext i32 %and1.i to i64
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv.i, ptr %args.i, align 8
  %pidfd.i = getelementptr inbounds %struct.kernel_clone_args, ptr %args.i, i32 0, i32 1
  %5 = ptrtoint ptr %pidfd.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %0, ptr %pidfd.i, align 8
  %child_tid.i = getelementptr inbounds %struct.kernel_clone_args, ptr %args.i, i32 0, i32 2
  %6 = ptrtoint ptr %child_tid.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %child_tid.i, align 4
  %parent_tid.i = getelementptr inbounds %struct.kernel_clone_args, ptr %args.i, i32 0, i32 3
  %7 = ptrtoint ptr %parent_tid.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %0, ptr %parent_tid.i, align 8
  %exit_signal.i = getelementptr inbounds %struct.kernel_clone_args, ptr %args.i, i32 0, i32 4
  %and3.i = and i32 %clone_flags, 255
  %8 = ptrtoint ptr %exit_signal.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and3.i, ptr %exit_signal.i, align 4
  %stack.i = getelementptr inbounds %struct.kernel_clone_args, ptr %args.i, i32 0, i32 5
  %9 = ptrtoint ptr %stack.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %newsp, ptr %stack.i, align 8
  %stack_size.i = getelementptr inbounds %struct.kernel_clone_args, ptr %args.i, i32 0, i32 6
  %10 = ptrtoint ptr %stack_size.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %stack_size.i, align 4
  %tls4.i = getelementptr inbounds %struct.kernel_clone_args, ptr %args.i, i32 0, i32 7
  %11 = ptrtoint ptr %tls4.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %tls, ptr %tls4.i, align 8
  %set_tid.i = getelementptr inbounds %struct.kernel_clone_args, ptr %args.i, i32 0, i32 8
  %12 = call ptr @memset(ptr %set_tid.i, i32 0, i32 24)
  %call.i = call i32 @kernel_clone(ptr noundef nonnull %args.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %args.i) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_clone3(i32 noundef %uargs, i32 noundef %size) #0 align 64 {
entry:
  %kargs.i = alloca %struct.kernel_clone_args, align 8
  %set_tid.i = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = inttoptr i32 %uargs to ptr
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %kargs.i) #16
  %1 = call ptr @memset(ptr %kargs.i, i32 255, i32 64)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %set_tid.i) #16
  %2 = call ptr @memset(ptr %set_tid.i, i32 255, i32 128)
  %set_tid1.i = getelementptr inbounds %struct.kernel_clone_args, ptr %kargs.i, i32 0, i32 8
  %3 = ptrtoint ptr %set_tid1.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %set_tid.i, ptr %set_tid1.i, align 4
  %call.i = call fastcc i32 @copy_clone_args_from_user(ptr noundef nonnull %kargs.i, ptr noundef %0, i32 noundef %size) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.__do_sys_clone3.exit_crit_edge

entry.__do_sys_clone3.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__do_sys_clone3.exit

if.end.i:                                         ; preds = %entry
  %4 = ptrtoint ptr %kargs.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %kargs.i, align 8
  %6 = and i64 %5, -17175674625
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %7 = icmp ne i64 %6, 0
  %and7.i.i = and i64 %5, 4294969344
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294969344, i64 %and7.i.i)
  %cmp.i.i = icmp eq i64 %and7.i.i, 4294969344
  %or.cond23.i.i = or i1 %7, %cmp.i.i
  br i1 %or.cond23.i.i, label %if.end.i.__do_sys_clone3.exit_crit_edge, label %if.end9.i.i

if.end.i.__do_sys_clone3.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__do_sys_clone3.exit

if.end9.i.i:                                      ; preds = %if.end.i
  %and11.i.i = and i64 %5, 98304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i.i)
  %tobool12.not.i.i = icmp eq i64 %and11.i.i, 0
  br i1 %tobool12.not.i.i, label %if.end9.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i

if.end9.i.i.if.end15.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i.i

land.lhs.true.i.i:                                ; preds = %if.end9.i.i
  %exit_signal.i.i = getelementptr inbounds %struct.kernel_clone_args, ptr %kargs.i, i32 0, i32 4
  %8 = ptrtoint ptr %exit_signal.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %exit_signal.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool13.not.i.i, label %land.lhs.true.i.i.if.end15.i.i_crit_edge, label %land.lhs.true.i.i.__do_sys_clone3.exit_crit_edge

land.lhs.true.i.i.__do_sys_clone3.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__do_sys_clone3.exit

land.lhs.true.i.i.if.end15.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.i.i

if.end15.i.i:                                     ; preds = %land.lhs.true.i.i.if.end15.i.i_crit_edge, %if.end9.i.i.if.end15.i.i_crit_edge
  %stack.i.i.i = getelementptr inbounds %struct.kernel_clone_args, ptr %kargs.i, i32 0, i32 5
  %10 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %stack.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp.i.i.i = icmp eq i32 %11, 0
  %stack_size.i.i.i = getelementptr inbounds %struct.kernel_clone_args, ptr %kargs.i, i32 0, i32 6
  %12 = ptrtoint ptr %stack_size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %stack_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp1.not.i.i.i = icmp eq i32 %13, 0
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.end15.i.i
  br i1 %cmp1.not.i.i.i, label %if.then.i.i.i.if.end4.i_crit_edge, label %if.then.i.i.i.__do_sys_clone3.exit_crit_edge

if.then.i.i.i.__do_sys_clone3.exit_crit_edge:     ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__do_sys_clone3.exit

if.then.i.i.i.if.end4.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end4.i

if.else.i.i.i:                                    ; preds = %if.end15.i.i
  br i1 %cmp1.not.i.i.i, label %if.else.i.i.i.__do_sys_clone3.exit_crit_edge, label %if.end6.i.i.i

if.else.i.i.i.__do_sys_clone3.exit_crit_edge:     ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__do_sys_clone3.exit

if.end6.i.i.i:                                    ; preds = %if.else.i.i.i
  %14 = inttoptr i32 %11 to ptr
  %15 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr nonnull %14, i32 %13, i32 -1226833920) #22, !srcloc !383
  %asmresult.i.i.i = extractvalue { i32, i32 } %15, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp10.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp10.i.i.i, label %if.end12.i.i.i, label %if.end6.i.i.i.__do_sys_clone3.exit_crit_edge

if.end6.i.i.i.__do_sys_clone3.exit_crit_edge:     ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__do_sys_clone3.exit

if.end12.i.i.i:                                   ; preds = %if.end6.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.i.i.i = add i32 %13, %11
  %16 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %add.i.i.i, ptr %stack.i.i.i, align 8
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.end12.i.i.i, %if.then.i.i.i.if.end4.i_crit_edge
  %call5.i = call i32 @kernel_clone(ptr noundef nonnull %kargs.i) #16
  br label %__do_sys_clone3.exit

__do_sys_clone3.exit:                             ; preds = %if.end4.i, %if.end6.i.i.i.__do_sys_clone3.exit_crit_edge, %if.else.i.i.i.__do_sys_clone3.exit_crit_edge, %if.then.i.i.i.__do_sys_clone3.exit_crit_edge, %land.lhs.true.i.i.__do_sys_clone3.exit_crit_edge, %if.end.i.__do_sys_clone3.exit_crit_edge, %entry.__do_sys_clone3.exit_crit_edge
  %retval.0.i = phi i32 [ %call5.i, %if.end4.i ], [ %call.i, %entry.__do_sys_clone3.exit_crit_edge ], [ -22, %if.end.i.__do_sys_clone3.exit_crit_edge ], [ -22, %land.lhs.true.i.i.__do_sys_clone3.exit_crit_edge ], [ -22, %if.then.i.i.i.__do_sys_clone3.exit_crit_edge ], [ -22, %if.else.i.i.i.__do_sys_clone3.exit_crit_edge ], [ -22, %if.end6.i.i.i.__do_sys_clone3.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %set_tid.i) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %kargs.i) #16
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @walk_process_tree(ptr nocapture noundef readonly %top, ptr nocapture noundef readonly %visitor, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_read_lock(ptr noundef nonnull @tasklist_lock) #16
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %top, i32 0, i32 75
  %0 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %group_leader, align 4
  br label %down

down:                                             ; preds = %if.then21.down_crit_edge, %entry
  %leader.0 = phi ptr [ %1, %entry ], [ %child.0, %if.then21.down_crit_edge ]
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %down.do.end_crit_edge

down.do.end_crit_edge:                            ; preds = %down
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %down
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b60 = load i1, ptr @walk_process_tree.__warned, align 1
  br i1 %.b60, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @walk_process_tree.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 2852, ptr noundef nonnull @.str.22) #16
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %down.do.end_crit_edge
  %signal = getelementptr inbounds %struct.task_struct, ptr %leader.0, i32 0, i32 111
  %2 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %signal, align 16
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %3, i32 0, i32 3
  br label %for.cond

for.cond:                                         ; preds = %for.inc31, %do.end
  %.pn.in = phi ptr [ %thread_head, %do.end ], [ %thread_node37, %for.inc31 ]
  %leader.1 = phi ptr [ %leader.0, %do.end ], [ %leader.2, %for.inc31 ]
  %4 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load volatile ptr, ptr %.pn.in, align 4
  %signal9 = getelementptr inbounds %struct.task_struct, ptr %leader.1, i32 0, i32 111
  %5 = ptrtoint ptr %signal9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %signal9, align 16
  %thread_head10 = getelementptr inbounds %struct.signal_struct, ptr %6, i32 0, i32 3
  %cmp.not = icmp eq ptr %.pn, %thread_head10
  br i1 %cmp.not, label %for.end41, label %for.body

for.body:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #18
  %parent.0 = getelementptr i8, ptr %.pn, i32 -1404
  %children = getelementptr i8, ptr %.pn, i32 -80
  br label %for.cond15

for.cond15:                                       ; preds = %for.inc, %for.body
  %.pn59.in = phi ptr [ %children, %for.body ], [ %sibling27, %for.inc ]
  %parent.1 = phi ptr [ %parent.0, %for.body ], [ %parent.2, %for.inc ]
  %leader.2 = phi ptr [ %leader.1, %for.body ], [ %leader.3, %for.inc ]
  %7 = ptrtoint ptr %.pn59.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn59 = load ptr, ptr %.pn59.in, align 4
  %children16 = getelementptr inbounds %struct.task_struct, ptr %parent.1, i32 0, i32 73
  %cmp17.not = icmp eq ptr %.pn59, %children16
  br i1 %cmp17.not, label %for.inc31, label %for.body18

for.body18:                                       ; preds = %for.cond15
  %child.0 = getelementptr i8, ptr %.pn59, i32 -1332
  %call19 = tail call i32 %visitor(ptr noundef %child.0, ptr noundef %data) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %for.body18.for.inc_crit_edge, label %if.then21

for.body18.for.inc_crit_edge:                     ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then21:                                        ; preds = %for.body18
  %cmp22 = icmp slt i32 %call19, 0
  br i1 %cmp22, label %if.then21.out_crit_edge, label %if.then21.down_crit_edge

if.then21.down_crit_edge:                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %down

if.then21.out_crit_edge:                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.inc:                                          ; preds = %if.then43, %for.body18.for.inc_crit_edge
  %child.1 = phi ptr [ %child.0, %for.body18.for.inc_crit_edge ], [ %leader.1, %if.then43 ]
  %parent.2 = phi ptr [ %parent.1, %for.body18.for.inc_crit_edge ], [ %9, %if.then43 ]
  %leader.3 = phi ptr [ %leader.2, %for.body18.for.inc_crit_edge ], [ %11, %if.then43 ]
  %sibling27 = getelementptr inbounds %struct.task_struct, ptr %child.1, i32 0, i32 74
  br label %for.cond15

for.inc31:                                        ; preds = %for.cond15
  call void @__sanitizer_cov_trace_pc() #18
  %thread_node37 = getelementptr inbounds %struct.task_struct, ptr %parent.1, i32 0, i32 81
  br label %for.cond

for.end41:                                        ; preds = %for.cond
  %cmp42.not = icmp eq ptr %leader.1, %1
  br i1 %cmp42.not, label %for.end41.out_crit_edge, label %if.then43

for.end41.out_crit_edge:                          ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then43:                                        ; preds = %for.end41
  call void @__sanitizer_cov_trace_pc() #18
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %leader.1, i32 0, i32 71
  %8 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %real_parent, align 4
  %group_leader44 = getelementptr inbounds %struct.task_struct, ptr %9, i32 0, i32 75
  %10 = ptrtoint ptr %group_leader44 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %group_leader44, align 4
  br label %for.inc

out:                                              ; preds = %for.end41.out_crit_edge, %if.then21.out_crit_edge
  tail call void @_raw_read_unlock(ptr noundef nonnull @tasklist_lock) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_read_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @proc_caches_init() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.23, i32 noundef 1380, i32 noundef 0, i32 noundef 67903488, ptr noundef nonnull @sighand_ctor) #16
  store ptr %call, ptr @sighand_cachep, align 4
  %call1 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.24, i32 noundef 1032, i32 noundef 0, i32 noundef 67379200, ptr noundef null) #16
  store ptr %call1, ptr @signal_cachep, align 4
  %call2 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.25, i32 noundef 384, i32 noundef 0, i32 noundef 67379200, ptr noundef null) #16
  store ptr %call2, ptr @files_cachep, align 4
  %call3 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.26, i32 noundef 108, i32 noundef 0, i32 noundef 67379200, ptr noundef null) #16
  store ptr %call3, ptr @fs_cachep, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i = add i32 %0, 31
  %1 = lshr i32 %sub.i, 3
  %mul.i = and i32 %1, 536870908
  %add = add nuw nsw i32 %mul.i, 720
  %call5 = tail call ptr @kmem_cache_create_usercopy(ptr noundef nonnull @.str.27, i32 noundef %add, i32 noundef 0, i32 noundef 67379200, i32 noundef 368, i32 noundef 168, ptr noundef null) #16
  store ptr %call5, ptr @mm_cachep, align 4
  %call6 = tail call ptr @kmem_cache_create(ptr noundef nonnull @.str.28, i32 noundef 96, i32 noundef 4, i32 noundef 67371008, ptr noundef null) #16
  store ptr %call6, ptr @vm_area_cachep, align 4
  tail call void @mmap_init() #20
  %call7 = tail call i32 @nsproxy_cache_init() #20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmem_cache_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sighand_ctor(ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @__raw_spin_lock_init(ptr noundef %data, ptr noundef nonnull @.str.107, ptr noundef nonnull @sighand_ctor.__key, i16 noundef signext 3) #16
  %signalfd_wqh = getelementptr inbounds %struct.sighand_struct, ptr %data, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %signalfd_wqh, ptr noundef nonnull @.str.109, ptr noundef nonnull @sighand_ctor.__key.108) #16
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @mmap_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @nsproxy_cache_init() local_unnamed_addr #6 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unshare_fd(i32 noundef %unshare_flags, i32 noundef %max_fds, ptr nocapture noundef writeonly %new_fdp) local_unnamed_addr #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %files = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #16
  %6 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error, align 4
  %and = and i32 %unshare_flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %tobool1.not = icmp eq ptr %5, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %land.lhs.true2

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true2:                                   ; preds = %entry
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %5, i32 noundef 4) #16
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp sgt i32 %8, 1
  br i1 %cmp, label %if.then, label %land.lhs.true2.cleanup_crit_edge

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true2
  %call4 = call ptr @dup_fd(ptr noundef nonnull %5, i32 noundef %max_fds, ptr noundef nonnull %error) #16
  %9 = ptrtoint ptr %new_fdp to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call4, ptr %new_fdp, align 4
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.then6, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then6:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then6, %if.then.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then6 ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %land.lhs.true2.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dup_fd(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ksys_unshare(i32 noundef %unshare_flags) local_unnamed_addr #0 align 64 {
entry:
  %error.i = alloca i32, align 4
  %new_cred = alloca ptr, align 4
  %new_nsproxy = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_cred) #16
  %0 = ptrtoint ptr %new_cred to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %new_cred, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %new_nsproxy) #16
  %1 = ptrtoint ptr %new_nsproxy to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr null, ptr %new_nsproxy, align 4
  %and = and i32 %unshare_flags, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or = or i32 %unshare_flags, 66048
  %spec.select = select i1 %tobool.not, i32 %unshare_flags, i32 %or
  %and1 = shl i32 %spec.select, 3
  %2 = and i32 %and1, 2048
  %3 = or i32 %2, %spec.select
  %and6 = shl i32 %3, 5
  %4 = and i32 %and6, 65536
  %5 = or i32 %4, %3
  %and11 = lshr i32 %spec.select, 8
  %6 = and i32 %and11, 512
  %7 = or i32 %5, %6
  %and.i = and i32 %spec.select, -2114391937
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.bad_unshare_out_crit_edge

entry.bad_unshare_out_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_out

if.end.i:                                         ; preds = %entry
  %and1.i = and i32 %5, 67840
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end8.i_crit_edge, label %if.then3.i

if.end.i.if.end8.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.then3.i:                                       ; preds = %if.end.i
  %8 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i to ptr
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task.i, align 8
  %thread_group.i.i = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 80
  %12 = ptrtoint ptr %thread_group.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %thread_group.i.i, align 4
  %cmp.i.i.not.i = icmp eq ptr %13, %thread_group.i.i
  br i1 %cmp.i.i.not.i, label %if.then3.i.if.end8.i_crit_edge, label %if.then3.i.bad_unshare_out_crit_edge

if.then3.i.bad_unshare_out_crit_edge:             ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_out

if.then3.i.if.end8.i_crit_edge:                   ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8.i

if.end8.i:                                        ; preds = %if.then3.i.if.end8.i_crit_edge, %if.end.i.if.end8.i_crit_edge
  %and9.i = and i32 %3, 2304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.if.end17.i_crit_edge, label %if.then11.i

if.end8.i.if.end17.i_crit_edge:                   ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then11.i:                                      ; preds = %if.end8.i
  %14 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i28.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i28.i to ptr
  %task13.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %task13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task13.i, align 8
  %sighand.i = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 112
  %18 = ptrtoint ptr %sighand.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sighand.i, align 4
  %count.i = getelementptr inbounds %struct.sighand_struct, ptr %19, i32 0, i32 1
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #16
  %20 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp.i = icmp ugt i32 %21, 1
  br i1 %cmp.i, label %if.then11.i.bad_unshare_out_crit_edge, label %if.then11.i.if.end17.i_crit_edge

if.then11.i.if.end17.i_crit_edge:                 ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end17.i

if.then11.i.bad_unshare_out_crit_edge:            ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_out

if.end17.i:                                       ; preds = %if.then11.i.if.end17.i_crit_edge, %if.end8.i.if.end17.i_crit_edge
  %and18.i = and i32 %spec.select, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool19.not.i = icmp eq i32 %and18.i, 0
  br i1 %tobool19.not.i, label %if.end17.i.if.end18_crit_edge, label %if.then20.i

if.end17.i.if.end18_crit_edge:                    ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then20.i:                                      ; preds = %if.end17.i
  %call21.i = tail call zeroext i1 @current_is_single_threaded() #16
  br i1 %call21.i, label %if.then20.i.if.end18_crit_edge, label %if.then20.i.bad_unshare_out_crit_edge

if.then20.i.bad_unshare_out_crit_edge:            ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_out

if.then20.i.if.end18_crit_edge:                   ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.end18:                                         ; preds = %if.then20.i.if.end18_crit_edge, %if.end17.i.if.end18_crit_edge
  %and19 = and i32 %spec.select, 134479872
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  %22 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i143 = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i143 to ptr
  %task.i144 = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %task.i144 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %task.i144, align 8
  %fs1.i = getelementptr inbounds %struct.task_struct, ptr %25, i32 0, i32 107
  %26 = ptrtoint ptr %fs1.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %fs1.i, align 128
  %and.i145 = and i32 %7, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool.not.i146 = icmp eq i32 %and.i145, 0
  %tobool2.not.i147 = icmp eq ptr %27, null
  %or.cond.i = select i1 %tobool.not.i146, i1 true, i1 %tobool2.not.i147
  br i1 %or.cond.i, label %if.end18.if.end26_crit_edge, label %if.end.i149

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.end.i149:                                      ; preds = %if.end18
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i148 = icmp eq i32 %29, 1
  br i1 %cmp.i148, label %if.end.i149.if.end26_crit_edge, label %if.end4.i

if.end.i149.if.end26_crit_edge:                   ; preds = %if.end.i149
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.end4.i:                                        ; preds = %if.end.i149
  %call5.i = tail call ptr @copy_fs_struct(ptr noundef nonnull %27) #16
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.end4.i.bad_unshare_out_crit_edge, label %if.end4.i.if.end26_crit_edge

if.end4.i.if.end26_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.end4.i.bad_unshare_out_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_out

if.end26:                                         ; preds = %if.end4.i.if.end26_crit_edge, %if.end.i149.if.end26_crit_edge, %if.end18.if.end26_crit_edge
  %new_fs.0.ph = phi ptr [ %call5.i, %if.end4.i.if.end26_crit_edge ], [ null, %if.end.i149.if.end26_crit_edge ], [ null, %if.end18.if.end26_crit_edge ]
  %30 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i151 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i151 to ptr
  %task.i152 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %task.i152 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %task.i152, align 8
  %files.i = getelementptr inbounds %struct.task_struct, ptr %33, i32 0, i32 108
  %34 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %files.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #16
  %36 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %error.i, align 4
  %and.i153 = and i32 %spec.select, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i153)
  %tobool.not.i154 = icmp eq i32 %and.i153, 0
  %tobool1.not.i = icmp eq ptr %35, null
  %or.cond.i155 = select i1 %tobool.not.i154, i1 true, i1 %tobool1.not.i
  br i1 %or.cond.i155, label %if.end26.unshare_fd.exit.thread_crit_edge, label %land.lhs.true2.i

if.end26.unshare_fd.exit.thread_crit_edge:        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %unshare_fd.exit.thread

land.lhs.true2.i:                                 ; preds = %if.end26
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %35, i32 noundef 4) #16
  %37 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %38)
  %cmp.i156 = icmp sgt i32 %38, 1
  br i1 %cmp.i156, label %if.then.i, label %land.lhs.true2.i.unshare_fd.exit.thread_crit_edge

land.lhs.true2.i.unshare_fd.exit.thread_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unshare_fd.exit.thread

if.then.i:                                        ; preds = %land.lhs.true2.i
  %call4.i = call ptr @dup_fd(ptr noundef nonnull %35, i32 noundef -1, ptr noundef nonnull %error.i) #16
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %unshare_fd.exit, label %if.then.i.unshare_fd.exit.thread_crit_edge

if.then.i.unshare_fd.exit.thread_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %unshare_fd.exit.thread

unshare_fd.exit.thread:                           ; preds = %if.then.i.unshare_fd.exit.thread_crit_edge, %land.lhs.true2.i.unshare_fd.exit.thread_crit_edge, %if.end26.unshare_fd.exit.thread_crit_edge
  %new_fd.0.ph = phi ptr [ null, %land.lhs.true2.i.unshare_fd.exit.thread_crit_edge ], [ %call4.i, %if.then.i.unshare_fd.exit.thread_crit_edge ], [ null, %if.end26.unshare_fd.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #16
  br label %if.end30

unshare_fd.exit:                                  ; preds = %if.then.i
  %39 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool28.not = icmp eq i32 %40, 0
  br i1 %tobool28.not, label %unshare_fd.exit.if.end30_crit_edge, label %unshare_fd.exit.bad_unshare_cleanup_fs_crit_edge

unshare_fd.exit.bad_unshare_cleanup_fs_crit_edge: ; preds = %unshare_fd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_cleanup_fs

unshare_fd.exit.if.end30_crit_edge:               ; preds = %unshare_fd.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end30

if.end30:                                         ; preds = %unshare_fd.exit.if.end30_crit_edge, %unshare_fd.exit.thread
  %new_fd.0179 = phi ptr [ %new_fd.0.ph, %unshare_fd.exit.thread ], [ null, %unshare_fd.exit.if.end30_crit_edge ]
  %call31 = call i32 @unshare_userns(i32 noundef %7, ptr noundef nonnull %new_cred) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.bad_unshare_cleanup_fd_crit_edge

if.end30.bad_unshare_cleanup_fd_crit_edge:        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_cleanup_fd

if.end34:                                         ; preds = %if.end30
  %41 = ptrtoint ptr %new_cred to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %new_cred, align 4
  %call35 = call i32 @unshare_nsproxy_namespaces(i32 noundef %7, ptr noundef nonnull %new_nsproxy, ptr noundef %42, ptr noundef %new_fs.0.ph) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.end38, label %if.end34.bad_unshare_cleanup_cred_crit_edge

if.end34.bad_unshare_cleanup_cred_crit_edge:      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_cleanup_cred

if.end38:                                         ; preds = %if.end34
  %43 = ptrtoint ptr %new_cred to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %new_cred, align 4
  %tobool39.not = icmp eq ptr %44, null
  br i1 %tobool39.not, label %if.end38.if.end45_crit_edge, label %if.then40

if.end38.if.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.then40:                                        ; preds = %if.end38
  %call41 = call i32 @set_cred_ucounts(ptr noundef nonnull %44) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.then40.if.end45_crit_edge, label %if.then40.bad_unshare_cleanup_cred_crit_edge

if.then40.bad_unshare_cleanup_cred_crit_edge:     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_cleanup_cred

if.then40.if.end45_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end45

if.end45:                                         ; preds = %if.then40.if.end45_crit_edge, %if.end38.if.end45_crit_edge
  %tobool46.not = icmp eq ptr %new_fs.0.ph, null
  %tobool47.not = icmp eq ptr %new_fd.0179, null
  %45 = and i1 %tobool20.not, %tobool47.not
  %or.cond = select i1 %tobool46.not, i1 %45, i1 false
  br i1 %or.cond, label %lor.lhs.false50, label %if.end45.if.then54_crit_edge

if.end45.if.then54_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

lor.lhs.false50:                                  ; preds = %if.end45
  %46 = ptrtoint ptr %new_cred to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %new_cred, align 4
  %tobool51.not = icmp eq ptr %47, null
  br i1 %tobool51.not, label %lor.lhs.false52, label %lor.lhs.false50.if.then54_crit_edge

lor.lhs.false50.if.then54_crit_edge:              ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

lor.lhs.false52:                                  ; preds = %lor.lhs.false50
  %48 = ptrtoint ptr %new_nsproxy to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %new_nsproxy, align 4
  %tobool53.not = icmp eq ptr %49, null
  br i1 %tobool53.not, label %lor.lhs.false52.if.end101_crit_edge, label %lor.lhs.false52.if.then54_crit_edge

lor.lhs.false52.if.then54_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then54

lor.lhs.false52.if.end101_crit_edge:              ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then54:                                        ; preds = %lor.lhs.false52.if.then54_crit_edge, %lor.lhs.false50.if.then54_crit_edge, %if.end45.if.then54_crit_edge
  br i1 %tobool20.not, label %if.then54.if.end58_crit_edge, label %if.then56

if.then54.if.end58_crit_edge:                     ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end58

if.then56:                                        ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #18
  %50 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i158 = and i32 %50, -16384
  %51 = inttoptr i32 %and.i158 to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %task, align 8
  call void @exit_sem(ptr noundef %53) #16
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %if.then54.if.end58_crit_edge
  %and59 = and i32 %spec.select, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59)
  %tobool60.not = icmp eq i32 %and59, 0
  br i1 %tobool60.not, label %if.end58.if.end66_crit_edge, label %if.then61

if.end58.if.end66_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end66

if.then61:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #18
  %54 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i159 = and i32 %54, -16384
  %55 = inttoptr i32 %and.i159 to ptr
  %task63 = getelementptr inbounds %struct.thread_info, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %task63, align 8
  call void @exit_shm(ptr noundef %57) #16
  %58 = ptrtoint ptr %task63 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %task63, align 8
  %sysvshm = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 104
  %60 = ptrtoint ptr %sysvshm to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %sysvshm, ptr %sysvshm, align 4
  %prev.i = getelementptr inbounds %struct.task_struct, ptr %59, i32 0, i32 104, i32 0, i32 1
  %61 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %sysvshm, ptr %prev.i, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then61, %if.end58.if.end66_crit_edge
  %62 = ptrtoint ptr %new_nsproxy to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %new_nsproxy, align 4
  %tobool67.not = icmp eq ptr %63, null
  br i1 %tobool67.not, label %if.end66.if.end71_crit_edge, label %if.then68

if.end66.if.end71_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end71

if.then68:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #18
  %64 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i160 = and i32 %64, -16384
  %65 = inttoptr i32 %and.i160 to ptr
  %task70 = getelementptr inbounds %struct.thread_info, ptr %65, i32 0, i32 2
  %66 = ptrtoint ptr %task70 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %task70, align 8
  call void @switch_task_namespaces(ptr noundef %67, ptr noundef nonnull %63) #16
  br label %if.end71

if.end71:                                         ; preds = %if.then68, %if.end66.if.end71_crit_edge
  %68 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i161 = and i32 %68, -16384
  %69 = inttoptr i32 %and.i161 to ptr
  %task73 = getelementptr inbounds %struct.thread_info, ptr %69, i32 0, i32 2
  %70 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %task73, align 8
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %71, i32 0, i32 127
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #16
  br i1 %tobool46.not, label %if.end71.if.end86_crit_edge, label %if.then75

if.end71.if.end86_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end86

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  %72 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %task73, align 8
  %fs78 = getelementptr inbounds %struct.task_struct, ptr %73, i32 0, i32 107
  %74 = ptrtoint ptr %fs78 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %fs78, align 128
  %lock = getelementptr inbounds %struct.fs_struct, ptr %75, i32 0, i32 1
  call void @_raw_spin_lock(ptr noundef %lock) #16
  %76 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %task73, align 8
  %fs81 = getelementptr inbounds %struct.task_struct, ptr %77, i32 0, i32 107
  %78 = ptrtoint ptr %fs81 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %new_fs.0.ph, ptr %fs81, align 128
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %75, align 4
  %dec = add i32 %80, -1
  store i32 %dec, ptr %75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool82.not = icmp eq i32 %dec, 0
  %. = select i1 %tobool82.not, ptr %75, ptr null
  call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %if.end86

if.end86:                                         ; preds = %if.then75, %if.end71.if.end86_crit_edge
  %new_fs.1 = phi ptr [ null, %if.end71.if.end86_crit_edge ], [ %., %if.then75 ]
  br i1 %tobool47.not, label %if.end86.if.end94_crit_edge, label %do.body

if.end86.if.end94_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end94

do.body:                                          ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #18
  %81 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %task73, align 8
  %files = getelementptr inbounds %struct.task_struct, ptr %82, i32 0, i32 108
  %83 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %files, align 4
  store ptr %new_fd.0179, ptr %files, align 4
  br label %if.end94

if.end94:                                         ; preds = %do.body, %if.end86.if.end94_crit_edge
  %new_fd.1 = phi ptr [ null, %if.end86.if.end94_crit_edge ], [ %84, %do.body ]
  %85 = ptrtoint ptr %task73 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %task73, align 8
  %alloc_lock.i162 = getelementptr inbounds %struct.task_struct, ptr %86, i32 0, i32 127
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i162) #16
  %87 = ptrtoint ptr %new_cred to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %new_cred, align 4
  %tobool97.not = icmp eq ptr %88, null
  br i1 %tobool97.not, label %if.end94.if.end101_crit_edge, label %if.then98

if.end94.if.end101_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end101

if.then98:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #18
  %call99 = call i32 @commit_creds(ptr noundef nonnull %88) #16
  %89 = ptrtoint ptr %new_cred to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr null, ptr %new_cred, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end94.if.end101_crit_edge, %lor.lhs.false52.if.end101_crit_edge
  %new_fs.2 = phi ptr [ %new_fs.1, %if.end94.if.end101_crit_edge ], [ %new_fs.1, %if.then98 ], [ null, %lor.lhs.false52.if.end101_crit_edge ]
  %new_fd.2 = phi ptr [ %new_fd.1, %if.end94.if.end101_crit_edge ], [ %new_fd.1, %if.then98 ], [ null, %lor.lhs.false52.if.end101_crit_edge ]
  %90 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i163 = and i32 %90, -16384
  %91 = inttoptr i32 %and.i163 to ptr
  %task103 = getelementptr inbounds %struct.thread_info, ptr %91, i32 0, i32 2
  %92 = ptrtoint ptr %task103 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %task103, align 8
  call void @perf_event_namespaces(ptr noundef %93) #16
  br label %bad_unshare_cleanup_cred

bad_unshare_cleanup_cred:                         ; preds = %if.end101, %if.then40.bad_unshare_cleanup_cred_crit_edge, %if.end34.bad_unshare_cleanup_cred_crit_edge
  %new_fs.3 = phi ptr [ %new_fs.2, %if.end101 ], [ %new_fs.0.ph, %if.then40.bad_unshare_cleanup_cred_crit_edge ], [ %new_fs.0.ph, %if.end34.bad_unshare_cleanup_cred_crit_edge ]
  %new_fd.3 = phi ptr [ %new_fd.2, %if.end101 ], [ %new_fd.0179, %if.then40.bad_unshare_cleanup_cred_crit_edge ], [ %new_fd.0179, %if.end34.bad_unshare_cleanup_cred_crit_edge ]
  %err.1 = phi i32 [ 0, %if.end101 ], [ %call41, %if.then40.bad_unshare_cleanup_cred_crit_edge ], [ %call35, %if.end34.bad_unshare_cleanup_cred_crit_edge ]
  %94 = ptrtoint ptr %new_cred to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %new_cred, align 4
  %tobool104.not = icmp eq ptr %95, null
  br i1 %tobool104.not, label %bad_unshare_cleanup_cred.bad_unshare_cleanup_fd_crit_edge, label %if.then105

bad_unshare_cleanup_cred.bad_unshare_cleanup_fd_crit_edge: ; preds = %bad_unshare_cleanup_cred
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_cleanup_fd

if.then105:                                       ; preds = %bad_unshare_cleanup_cred
  call void @__sanitizer_cov_trace_pc() #18
  call fastcc void @put_cred(ptr noundef nonnull %95)
  br label %bad_unshare_cleanup_fd

bad_unshare_cleanup_fd:                           ; preds = %if.then105, %bad_unshare_cleanup_cred.bad_unshare_cleanup_fd_crit_edge, %if.end30.bad_unshare_cleanup_fd_crit_edge
  %new_fs.4 = phi ptr [ %new_fs.3, %bad_unshare_cleanup_cred.bad_unshare_cleanup_fd_crit_edge ], [ %new_fs.3, %if.then105 ], [ %new_fs.0.ph, %if.end30.bad_unshare_cleanup_fd_crit_edge ]
  %new_fd.4 = phi ptr [ %new_fd.3, %bad_unshare_cleanup_cred.bad_unshare_cleanup_fd_crit_edge ], [ %new_fd.3, %if.then105 ], [ %new_fd.0179, %if.end30.bad_unshare_cleanup_fd_crit_edge ]
  %err.2 = phi i32 [ %err.1, %bad_unshare_cleanup_cred.bad_unshare_cleanup_fd_crit_edge ], [ %err.1, %if.then105 ], [ %call31, %if.end30.bad_unshare_cleanup_fd_crit_edge ]
  %tobool107.not = icmp eq ptr %new_fd.4, null
  br i1 %tobool107.not, label %bad_unshare_cleanup_fd.bad_unshare_cleanup_fs_crit_edge, label %if.then108

bad_unshare_cleanup_fd.bad_unshare_cleanup_fs_crit_edge: ; preds = %bad_unshare_cleanup_fd
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_cleanup_fs

if.then108:                                       ; preds = %bad_unshare_cleanup_fd
  call void @__sanitizer_cov_trace_pc() #18
  call void @put_files_struct(ptr noundef nonnull %new_fd.4) #16
  br label %bad_unshare_cleanup_fs

bad_unshare_cleanup_fs:                           ; preds = %if.then108, %bad_unshare_cleanup_fd.bad_unshare_cleanup_fs_crit_edge, %unshare_fd.exit.bad_unshare_cleanup_fs_crit_edge
  %new_fs.5 = phi ptr [ %new_fs.4, %bad_unshare_cleanup_fd.bad_unshare_cleanup_fs_crit_edge ], [ %new_fs.4, %if.then108 ], [ %new_fs.0.ph, %unshare_fd.exit.bad_unshare_cleanup_fs_crit_edge ]
  %err.3 = phi i32 [ %err.2, %bad_unshare_cleanup_fd.bad_unshare_cleanup_fs_crit_edge ], [ %err.2, %if.then108 ], [ %40, %unshare_fd.exit.bad_unshare_cleanup_fs_crit_edge ]
  %tobool110.not = icmp eq ptr %new_fs.5, null
  br i1 %tobool110.not, label %bad_unshare_cleanup_fs.bad_unshare_out_crit_edge, label %if.then111

bad_unshare_cleanup_fs.bad_unshare_out_crit_edge: ; preds = %bad_unshare_cleanup_fs
  call void @__sanitizer_cov_trace_pc() #18
  br label %bad_unshare_out

if.then111:                                       ; preds = %bad_unshare_cleanup_fs
  call void @__sanitizer_cov_trace_pc() #18
  call void @free_fs_struct(ptr noundef nonnull %new_fs.5) #16
  br label %bad_unshare_out

bad_unshare_out:                                  ; preds = %if.then111, %bad_unshare_cleanup_fs.bad_unshare_out_crit_edge, %if.end4.i.bad_unshare_out_crit_edge, %if.then20.i.bad_unshare_out_crit_edge, %if.then11.i.bad_unshare_out_crit_edge, %if.then3.i.bad_unshare_out_crit_edge, %entry.bad_unshare_out_crit_edge
  %err.4 = phi i32 [ %err.3, %if.then111 ], [ %err.3, %bad_unshare_cleanup_fs.bad_unshare_out_crit_edge ], [ -12, %if.end4.i.bad_unshare_out_crit_edge ], [ -22, %entry.bad_unshare_out_crit_edge ], [ -22, %if.then3.i.bad_unshare_out_crit_edge ], [ -22, %if.then11.i.bad_unshare_out_crit_edge ], [ -22, %if.then20.i.bad_unshare_out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_nsproxy) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %new_cred) #16
  ret i32 %err.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_userns(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unshare_nsproxy_namespaces(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @set_cred_ucounts(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_sem(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_shm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @switch_task_namespaces(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @commit_creds(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_namespaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @put_cred(ptr noundef %_cred) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %_cred, null
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %do.body

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2

do.body:                                          ; preds = %entry
  %call.i = tail call zeroext i1 @creds_are_invalid(ptr noundef nonnull %_cred) #16
  br i1 %call.i, label %if.then.i, label %do.body.__validate_creds.exit_crit_edge, !prof !340

do.body.__validate_creds.exit_crit_edge:          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %__validate_creds.exit

if.then.i:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__invalid_creds(ptr noundef nonnull %_cred, ptr noundef nonnull @.str.110, i32 noundef 286) #16
  br label %__validate_creds.exit

__validate_creds.exit:                            ; preds = %if.then.i, %do.body.__validate_creds.exit_crit_edge
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %_cred, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !350
  tail call void @llvm.prefetch.p0(ptr nonnull %_cred, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %_cred, ptr nonnull %_cred, i32 1, ptr nonnull elementtype(i32) %_cred) #16, !srcloc !351
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.i.i, label %if.then1, label %__validate_creds.exit.if.end2_crit_edge

__validate_creds.exit.if.end2_crit_edge:          ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end2

if.then1:                                         ; preds = %__validate_creds.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__put_cred(ptr noundef nonnull %_cred) #16
  br label %if.end2

if.end2:                                          ; preds = %if.then1, %__validate_creds.exit.if.end2_crit_edge, %entry.if.end2_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_files_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_fs_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @__se_sys_unshare(i32 noundef %unshare_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @ksys_unshare(i32 noundef %unshare_flags) #16
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @unshare_files() local_unnamed_addr #0 align 64 {
entry:
  %error.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task1 = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task1, align 8
  %files.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 108
  %4 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %files.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error.i) #16
  %6 = ptrtoint ptr %error.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %error.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %entry.lor.lhs.false.thread22_crit_edge, label %land.lhs.true2.i

entry.lor.lhs.false.thread22_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.thread22

land.lhs.true2.i:                                 ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %5, i32 noundef 4) #16
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp.i = icmp sgt i32 %8, 1
  br i1 %cmp.i, label %if.then.i, label %land.lhs.true2.i.lor.lhs.false.thread22_crit_edge

land.lhs.true2.i.lor.lhs.false.thread22_crit_edge: ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %lor.lhs.false.thread22

if.then.i:                                        ; preds = %land.lhs.true2.i
  %call4.i = call ptr @dup_fd(ptr noundef nonnull %5, i32 noundef -1, ptr noundef nonnull %error.i) #16
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %unshare_fd.exit, label %if.end

unshare_fd.exit:                                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %9 = ptrtoint ptr %error.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %error.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #16
  br label %cleanup

lor.lhs.false.thread22:                           ; preds = %land.lhs.true2.i.lor.lhs.false.thread22_crit_edge, %entry.lor.lhs.false.thread22_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #16
  br label %cleanup

if.end:                                           ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error.i) #16
  %11 = ptrtoint ptr %files.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %files.i, align 4
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 127
  call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #16
  %13 = ptrtoint ptr %files.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call4.i, ptr %files.i, align 4
  call void @_raw_spin_unlock(ptr noundef %alloc_lock.i) #16
  call void @put_files_struct(ptr noundef %12) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.thread22, %unshare_fd.exit
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %lor.lhs.false.thread22 ], [ %10, %unshare_fd.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sysctl_max_threads(ptr nocapture noundef readonly %table, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) local_unnamed_addr #0 align 64 {
entry:
  %t = alloca %struct.ctl_table, align 4
  %threads = alloca i32, align 4
  %min = alloca i32, align 4
  %max = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %t) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %threads) #16
  %0 = load i32, ptr @max_threads, align 4
  %1 = ptrtoint ptr %threads to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %threads, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min) #16
  %2 = ptrtoint ptr %min to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %min, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max) #16
  %3 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1073741823, ptr %max, align 4
  %4 = call ptr @memcpy(ptr %t, ptr %table, i32 28)
  %data = getelementptr inbounds %struct.ctl_table, ptr %t, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %threads, ptr %data, align 4
  %extra1 = getelementptr inbounds %struct.ctl_table, ptr %t, i32 0, i32 7
  %6 = ptrtoint ptr %extra1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %min, ptr %extra1, align 4
  %extra2 = getelementptr inbounds %struct.ctl_table, ptr %t, i32 0, i32 8
  %7 = ptrtoint ptr %extra2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %max, ptr %extra2, align 4
  %call = call i32 @proc_dointvec_minmax(ptr noundef nonnull %t, i32 noundef %write, ptr noundef %buffer, ptr noundef %lenp, ptr noundef %ppos) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %write)
  %tobool1.not = icmp eq i32 %write, 0
  %or.cond = or i1 %tobool1.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %threads to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %threads, align 4
  store i32 %9, ptr @max_threads, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %threads) #16
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %t) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @proc_dointvec_minmax(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @trace_event_buffer_reserve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_buffer_commit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__trace_trigger_soft_disabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_task_newtask(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pid = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  %comm = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %1, i32 0, i32 2
  %clone_flags = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %clone_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %clone_flags, align 4
  %oom_score_adj = getelementptr inbounds %struct.trace_event_raw_task_newtask, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %oom_score_adj, align 4
  %conv = sext i16 %7 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.40, i32 noundef %3, ptr noundef %comm, i32 noundef %5, i32 noundef %conv) #16
  %call1 = tail call i32 @trace_handle_return(ptr noundef %seq) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_raw_output_prep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_event_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @trace_handle_return(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @trace_raw_output_task_rename(ptr noundef %iter, i32 noundef %flags, ptr noundef %trace_event) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %ent = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 16
  %0 = ptrtoint ptr %ent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ent, align 8
  %call = tail call i32 @trace_raw_output_prep(ptr noundef %iter, ptr noundef %trace_event) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp.not = icmp eq i32 %call, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %seq = getelementptr inbounds %struct.trace_iterator, ptr %iter, i32 0, i32 15
  %pid = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pid to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %pid, align 4
  %oldcomm = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %1, i32 0, i32 2
  %newcomm = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %1, i32 0, i32 3
  %oom_score_adj = getelementptr inbounds %struct.trace_event_raw_task_rename, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %oom_score_adj, align 4
  %conv = sext i16 %5 to i32
  tail call void (ptr, ptr, ...) @trace_event_printf(ptr noundef %iter, ptr noundef nonnull @.str.43, i32 noundef %3, ptr noundef %oldcomm, ptr noundef %newcomm, i32 noundef %conv) #16
  %call2 = tail call i32 @trace_handle_return(ptr noundef %seq) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @perf_trace_buf_alloc(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_trace_run_bpf_submit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.frameaddress.p0(i32 immarg) #11

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_trace_run2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_vma_name_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @refcount_inc(ptr noundef %r) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %r, ptr %r, i32 1, ptr elementtype(i32) %r) #16, !srcloc !342
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool1.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool1.not.i.i, label %entry.if.end15.sink.split.i.i_crit_edge, label %if.else.i.i, !prof !340

entry.if.end15.sink.split.i.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i

if.else.i.i:                                      ; preds = %entry
  %add.i.i = add i32 %asmresult.i.i.i.i, 1
  %1 = or i32 %add.i.i, %asmresult.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i, label %if.else.i.i.__refcount_inc.exit_crit_edge, label %if.else.i.i.if.end15.sink.split.i.i_crit_edge, !prof !339

if.else.i.i.if.end15.sink.split.i.i_crit_edge:    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i

if.else.i.i.__refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__refcount_inc.exit

if.end15.sink.split.i.i:                          ; preds = %if.else.i.i.if.end15.sink.split.i.i_crit_edge, %entry.if.end15.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i_crit_edge ], [ 1, %if.else.i.i.if.end15.sink.split.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %r, i32 noundef %.sink.i.i) #16
  br label %__refcount_inc.exit

__refcount_inc.exit:                              ; preds = %if.end15.sink.split.i.i, %if.else.i.i.__refcount_inc.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #13

; Function Attrs: null_pointer_is_valid
declare dso_local void @anon_vma_name_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mod_lruvec_kmem_state(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pgd_free(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmu_notifier_subscriptions_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_user_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__io_uring_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_signal_struct(ptr noundef %sig) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %stats.i = getelementptr inbounds %struct.signal_struct, ptr %sig, i32 0, i32 53
  %0 = ptrtoint ptr %stats.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.taskstats_tgid_free.exit_crit_edge, label %if.then.i

entry.taskstats_tgid_free.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %taskstats_tgid_free.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @taskstats_cache to i32))
  %2 = load ptr, ptr @taskstats_cache, align 4
  tail call void @kmem_cache_free(ptr noundef %2, ptr noundef nonnull %1) #16
  br label %taskstats_tgid_free.exit

taskstats_tgid_free.exit:                         ; preds = %if.then.i, %entry.taskstats_tgid_free.exit_crit_edge
  tail call void @sched_autogroup_exit(ptr noundef %sig) #16
  %oom_mm = getelementptr inbounds %struct.signal_struct, ptr %sig, i32 0, i32 59
  %3 = ptrtoint ptr %oom_mm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %oom_mm, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %taskstats_tgid_free.exit.if.end_crit_edge, label %if.then

taskstats_tgid_free.exit.if.end_crit_edge:        ; preds = %taskstats_tgid_free.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %taskstats_tgid_free.exit
  %mm_count.i = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 11
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_count.i, i32 noundef 4) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !350
  tail call void @llvm.prefetch.p0(ptr %mm_count.i, i32 1, i32 3, i32 1) #16
  %5 = tail call { i32, i32 } asm sideeffect "@ atomic_sub_return\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_count.i, ptr %mm_count.i, i32 1, ptr elementtype(i32) %mm_count.i) #16, !srcloc !351
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32 } %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !352
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.i.i.i, label %do.body.i, label %if.then.if.end_crit_edge, !prof !340

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %async_put_work.i = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 52
  tail call void @__init_work(ptr noundef %async_put_work.i, i32 noundef 0) #16
  %6 = ptrtoint ptr %async_put_work.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -64, ptr %async_put_work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 52, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @mmdrop_async.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry5.i = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 52, i32 1
  %7 = ptrtoint ptr %entry5.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %entry5.i, ptr %entry5.i, align 4
  %prev.i.i = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 52, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %entry5.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.anon.3, ptr %4, i32 0, i32 52, i32 2
  %9 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mmdrop_async_fn, ptr %func.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %10 = load ptr, ptr @system_wq, align 4
  %call.i.i15.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %10, ptr noundef %async_put_work.i) #16
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.if.end_crit_edge, %taskstats_tgid_free.exit.if.end_crit_edge
  %11 = load ptr, ptr @signal_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %11, ptr noundef %sig) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_autogroup_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmdrop_async_fn(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -668
  tail call void @__mmdrop(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @simple_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_rwsem(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pgd_alloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_clear_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_aio(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_mmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ksm_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_start_locking(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_acquire_returned(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mmap_lock_do_trace_released(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_free_utask(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @do_futex(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__task_pid_nr_ns(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @thread_group_exited(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pid_nr_ns(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_put_decimal_ll(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @task_active_pid_ns(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @recalc_sigpending() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dup_task_struct(ptr noundef %orig, i32 noundef %node) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %node)
  %cmp = icmp eq i32 %node, -1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call = tail call i32 @tsk_fork_get_node(ptr noundef %orig) #16
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %node.addr.0 = phi i32 [ %call, %if.then ], [ %node, %entry.if.end_crit_edge ]
  %0 = load ptr, ptr @task_struct_cachep, align 4
  %call.i.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3264) #16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %1 = zext i32 %node.addr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %node.addr.0, label %do.body3.i.i.i [
    i32 -1, label %if.end3.alloc_pages_node.exit.i_crit_edge
    i32 0, label %if.end3.alloc_pages_node.exit.i_crit_edge84
  ], !prof !384

if.end3.alloc_pages_node.exit.i_crit_edge84:      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %alloc_pages_node.exit.i

if.end3.alloc_pages_node.exit.i_crit_edge:        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %alloc_pages_node.exit.i

do.body3.i.i.i:                                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/gfp.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 569, 0\0A.popsection", ""() #16, !srcloc !385
  unreachable

alloc_pages_node.exit.i:                          ; preds = %if.end3.alloc_pages_node.exit.i_crit_edge, %if.end3.alloc_pages_node.exit.i_crit_edge84
  %call38.i.i.i = tail call ptr @__alloc_pages(i32 noundef 4197824, i32 noundef 2, i32 noundef 0, ptr noundef null) #16
  %tobool.not.i = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool.not.i, label %alloc_pages_node.exit.i.free_tsk_crit_edge, label %alloc_thread_stack_node.exit, !prof !340

alloc_pages_node.exit.i.free_tsk_crit_edge:       ; preds = %alloc_pages_node.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_tsk

alloc_thread_stack_node.exit:                     ; preds = %alloc_pages_node.exit.i
  %call3.i = tail call ptr @page_address(ptr noundef nonnull %call38.i.i.i) #16
  %stack.i = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %stack.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3.i, ptr %stack.i, align 4
  %tobool5.not = icmp eq ptr %call3.i, null
  br i1 %tobool5.not, label %alloc_thread_stack_node.exit.free_tsk_crit_edge, label %if.end7

alloc_thread_stack_node.exit.free_tsk_crit_edge:  ; preds = %alloc_thread_stack_node.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_tsk

if.end7:                                          ; preds = %alloc_thread_stack_node.exit
  %call13 = tail call i32 @arch_dup_task_struct(ptr noundef nonnull %call.i.i, ptr noundef %orig)
  %3 = ptrtoint ptr %stack.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3.i, ptr %stack.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool15.not = icmp eq i32 %call13, 0
  br i1 %tobool15.not, label %if.end17, label %free_stack

if.end17:                                         ; preds = %if.end7
  %filter = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 123, i32 2
  %4 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %filter, align 8
  %stack1.i = getelementptr inbounds %struct.task_struct, ptr %orig, i32 0, i32 1
  %5 = ptrtoint ptr %stack1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stack1.i, align 4
  %7 = call ptr @memcpy(ptr %call3.i, ptr %6, i32 536)
  %8 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stack.i, align 4
  %task.i = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %task.i, align 8
  %11 = load ptr, ptr %stack.i, align 4
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %11) #16
  %12 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stack.i, align 4
  %add.ptr.i.i = getelementptr %struct.thread_info, ptr %13, i32 1
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1470918301, ptr %add.ptr.i.i, align 4
  %call.i.i78 = tail call i32 @get_random_u32() #16
  %stack_canary = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 70
  %15 = ptrtoint ptr %stack_canary to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call.i.i78, ptr %stack_canary, align 32
  %cpus_ptr = getelementptr inbounds %struct.task_struct, ptr %orig, i32 0, i32 33
  %16 = ptrtoint ptr %cpus_ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpus_ptr, align 4
  %cpus_mask = getelementptr inbounds %struct.task_struct, ptr %orig, i32 0, i32 35
  %cmp23 = icmp eq ptr %17, %cpus_mask
  br i1 %cmp23, label %if.then24, label %if.end17.if.end27_crit_edge

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then24:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #18
  %cpus_mask25 = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 35
  %cpus_ptr26 = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 33
  %18 = ptrtoint ptr %cpus_ptr26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %cpus_mask25, ptr %cpus_ptr26, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %if.end17.if.end27_crit_edge
  %call28 = tail call i32 @dup_user_cpus_ptr(ptr noundef nonnull %call.i.i, ptr noundef %orig, i32 noundef %node.addr.0) #16
  %19 = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 178
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %19, i32 noundef 4) #16
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile i32 2, ptr %19, align 4
  %usage = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 2
  %call.i.i.i79 = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage, i32 noundef 4) #16
  %21 = ptrtoint ptr %usage to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 1, ptr %usage, align 8
  %btrace_seq = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 30
  %22 = ptrtoint ptr %btrace_seq to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %btrace_seq, align 128
  %splice_pipe = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 179
  %23 = ptrtoint ptr %splice_pipe to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %splice_pipe, align 4
  %task_frag = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 180
  %24 = ptrtoint ptr %task_frag to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %task_frag, align 16
  %wake_q = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 129
  %25 = ptrtoint ptr %wake_q to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %wake_q, align 16
  %worker_private = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 85
  %26 = ptrtoint ptr %worker_private to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %worker_private, align 16
  %27 = ptrtoint ptr %stack.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %stack.i, align 4
  %29 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !346
  %and.i.i.i = and i32 %29, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then21.i.i, label %do.end11.i.i

do.end11.i.i:                                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @__mod_lruvec_kmem_state(ptr noundef %28, i32 noundef 37, i32 noundef 16) #16
  br label %do.body23.i.i

if.then21.i.i:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  tail call void @__mod_lruvec_kmem_state(ptr noundef %28, i32 noundef 37, i32 noundef 16) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body23.i.i

do.body23.i.i:                                    ; preds = %if.then21.i.i, %do.end11.i.i
  %30 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !347
  %and.i.i.i.i = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body23.i.i.account_kernel_stack.exit_crit_edge, !prof !340

do.body23.i.i.account_kernel_stack.exit_crit_edge: ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %account_kernel_stack.exit

if.then36.i.i:                                    ; preds = %do.body23.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %account_kernel_stack.exit

account_kernel_stack.exit:                        ; preds = %if.then36.i.i, %do.body23.i.i.account_kernel_stack.exit_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %29) #16, !srcloc !348
  tail call void @kcov_task_init(ptr noundef nonnull %call.i.i) #16
  tail call void @kmap_local_fork(ptr noundef nonnull %call.i.i) #16
  %fail_nth = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 183
  %31 = ptrtoint ptr %fail_nth to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %fail_nth, align 128
  %throttle_queue = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 207
  %32 = ptrtoint ptr %throttle_queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %throttle_queue, align 4
  %use_memdelay = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 65
  %33 = ptrtoint ptr %use_memdelay to i32
  call void @__asan_load2_noabort(i32 %33)
  %bf.load = load i16, ptr %use_memdelay, align 8
  %bf.clear = and i16 %bf.load, -257
  store i16 %bf.clear, ptr %use_memdelay, align 8
  %active_memcg = getelementptr inbounds %struct.task_struct, ptr %call.i.i, i32 0, i32 206
  %34 = ptrtoint ptr %active_memcg to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %active_memcg, align 8
  br label %cleanup

free_stack:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %35 = load ptr, ptr @mem_map, align 4
  %36 = ptrtoint ptr %call3.i to i32
  %sub.i = add i32 %36, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %35, i32 %shr.i
  tail call void @__free_pages(ptr noundef %add.ptr.i, i32 noundef 2) #16
  br label %free_tsk

free_tsk:                                         ; preds = %free_stack, %alloc_thread_stack_node.exit.free_tsk_crit_edge, %alloc_pages_node.exit.i.free_tsk_crit_edge
  %37 = load ptr, ptr @task_struct_cachep, align 4
  tail call void @kmem_cache_free(ptr noundef %37, ptr noundef nonnull %call.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %free_tsk, %account_kernel_stack.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %free_tsk ], [ %call.i.i, %account_kernel_stack.exit ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_creds(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_ucounts_overlimit(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @capable(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @acct_clear_integrals(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @set_kthread_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sched_fork(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @perf_event_init_task(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_task_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_semundo(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_files(i32 noundef %clone_flags, ptr nocapture noundef writeonly %tsk) unnamed_addr #0 align 64 {
entry:
  %error = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %error) #16
  %0 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %error, align 4
  %1 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %task, align 8
  %files = getelementptr inbounds %struct.task_struct, ptr %4, i32 0, i32 108
  %5 = ptrtoint ptr %files to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %files, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %entry
  %and = and i32 %clone_flags, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %6, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %6, i32 1, i32 3, i32 1) #16
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %6, ptr nonnull %6, i32 1, ptr nonnull elementtype(i32) %6) #16, !srcloc !355
  br label %out

if.end3:                                          ; preds = %if.end
  %call4 = call ptr @dup_fd(ptr noundef nonnull %6, i32 noundef -1, ptr noundef nonnull %error) #16
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.out_crit_edge, label %if.end7

if.end3.out_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  %files8 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 108
  %8 = ptrtoint ptr %files8 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call4, ptr %files8, align 4
  %9 = ptrtoint ptr %error to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %error, align 4
  br label %out

out:                                              ; preds = %if.end7, %if.end3.out_crit_edge, %if.then2, %entry.out_crit_edge
  %10 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %error, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %error) #16
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_fs(i32 noundef %clone_flags, ptr nocapture noundef writeonly %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %fs1 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 107
  %4 = ptrtoint ptr %fs1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fs1, align 128
  %and = and i32 %clone_flags, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 1
  tail call void @_raw_spin_lock(ptr noundef %lock) #16
  %in_exec = getelementptr inbounds %struct.fs_struct, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %in_exec to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %in_exec, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not = icmp eq i32 %7, 0
  br i1 %tobool2.not, label %if.end, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %5, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr %5, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #16
  br label %cleanup

if.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call7 = tail call ptr @copy_fs_struct(ptr noundef %5) #16
  %fs8 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 107
  %10 = ptrtoint ptr %fs8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call7, ptr %fs8, align 128
  %tobool10.not = icmp eq ptr %call7, null
  %. = select i1 %tobool10.not, i32 -12, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end, %if.then3
  %retval.0 = phi i32 [ -11, %if.then3 ], [ 0, %if.end ], [ %., %if.end6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_sighand(i32 noundef %clone_flags, ptr noundef %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %clone_flags, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 112
  %4 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sighand, align 4
  %count = getelementptr inbounds %struct.sighand_struct, ptr %5, i32 0, i32 1
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %count, i32 1, i32 3, i32 1) #16
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count, ptr %count, i32 1, ptr elementtype(i32) %count) #16, !srcloc !342
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !340

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !339

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %count, i32 noundef %.sink.i.i.i) #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = load ptr, ptr @sighand_cachep, align 4
  %call1 = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %8, i32 noundef 3264) #16
  %sighand5 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 112
  %9 = ptrtoint ptr %sighand5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %call1, ptr %sighand5, align 4
  %tobool12.not = icmp eq ptr %call1, null
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %count15 = getelementptr inbounds %struct.sighand_struct, ptr %call1, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count15, i32 noundef 4) #16
  %10 = ptrtoint ptr %count15 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile i32 1, ptr %count15, align 4
  %11 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i37 = and i32 %11, -16384
  %12 = inttoptr i32 %and.i37 to ptr
  %task17 = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %task17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %task17, align 8
  %sighand18 = getelementptr inbounds %struct.task_struct, ptr %14, i32 0, i32 112
  %15 = ptrtoint ptr %sighand18 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %sighand18, align 4
  tail call void @_raw_spin_lock_irq(ptr noundef %16) #16
  %action = getelementptr inbounds %struct.sighand_struct, ptr %call1, i32 0, i32 3
  %17 = ptrtoint ptr %task17 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %task17, align 8
  %sighand21 = getelementptr inbounds %struct.task_struct, ptr %18, i32 0, i32 112
  %19 = ptrtoint ptr %sighand21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sighand21, align 4
  %action22 = getelementptr inbounds %struct.sighand_struct, ptr %20, i32 0, i32 3
  %21 = call ptr @memcpy(ptr %action, ptr %action22, i32 1280)
  %22 = load ptr, ptr %task17, align 8
  %sighand26 = getelementptr inbounds %struct.task_struct, ptr %22, i32 0, i32 112
  %23 = ptrtoint ptr %sighand26 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sighand26, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %24) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge, %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ -12, %if.end.cleanup_crit_edge ], [ 0, %if.else.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_signal(i32 noundef %clone_flags, ptr noundef %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %clone_flags, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr @signal_cachep, align 4
  %call.i = tail call noalias align 8 ptr @kmem_cache_alloc(ptr noundef %0, i32 noundef 3520) #16
  %signal = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %1 = ptrtoint ptr %signal to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %signal, align 16
  %tobool1.not = icmp eq ptr %call.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %nr_threads = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %nr_threads to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %nr_threads, align 8
  %live = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %live, i32 noundef 4) #16
  %3 = ptrtoint ptr %live to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile i32 1, ptr %live, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %call.i, i32 noundef 4) #16
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile i32 1, ptr %call.i, align 8
  %thread_head = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 3
  %thread_node = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 81
  %5 = ptrtoint ptr %thread_head to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %thread_node, ptr %thread_head, align 4
  %.compoundliteral.sroa.2.0.thread_head.sroa_idx = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 3, i32 1
  %6 = ptrtoint ptr %.compoundliteral.sroa.2.0.thread_head.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %thread_node, ptr %.compoundliteral.sroa.2.0.thread_head.sroa_idx, align 8
  %7 = ptrtoint ptr %thread_node to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %thread_head, ptr %thread_node, align 4
  %.compoundliteral6.sroa.2.0.thread_node5.sroa_idx = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 81, i32 1
  %8 = ptrtoint ptr %.compoundliteral6.sroa.2.0.thread_node5.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %thread_head, ptr %.compoundliteral6.sroa.2.0.thread_node5.sroa_idx, align 4
  %wait_chldexit = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 4
  tail call void @__init_waitqueue_head(ptr noundef %wait_chldexit, ptr noundef nonnull @.str.79, ptr noundef nonnull @copy_signal.__key) #16
  %curr_target = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 5
  %9 = ptrtoint ptr %curr_target to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %tsk, ptr %curr_target, align 8
  %shared_pending = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 6
  %signal.i = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 6, i32 1
  %arrayidx.i.i = getelementptr %struct.signal_struct, ptr %call.i, i32 0, i32 6, i32 1, i32 0, i32 1
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %arrayidx.i.i, align 8
  %11 = ptrtoint ptr %signal.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %signal.i, align 4
  %12 = ptrtoint ptr %shared_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %shared_pending, ptr %shared_pending, align 4
  %prev.i.i = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 6, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %shared_pending, ptr %prev.i.i, align 8
  %multiprocess = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 7
  %14 = ptrtoint ptr %multiprocess to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %multiprocess, align 4
  %stats_lock = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 27
  %lock = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 27, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.81, ptr noundef nonnull @copy_signal.__key.80, i16 noundef signext 3) #16
  %dep_map.i = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 27, i32 0, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i, ptr noundef nonnull @.str.72, ptr noundef nonnull @copy_signal.__key.82, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %15 = ptrtoint ptr %stats_lock to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %stats_lock, align 8
  %lock24 = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 27, i32 0, i32 1
  %16 = ptrtoint ptr %lock24 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %lock, ptr %lock24, align 8
  %prev_cputime = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 34
  %lock.i = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 34, i32 2
  %17 = call ptr @memset(ptr %prev_cputime, i32 0, i32 16)
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @prev_cputime_init.__key, i16 noundef signext 2) #16
  %posix_timers = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 16
  %18 = ptrtoint ptr %posix_timers to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %posix_timers, ptr %posix_timers, align 8
  %prev.i = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 16, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %posix_timers, ptr %prev.i, align 4
  %real_timer = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 17
  tail call void @hrtimer_init(ptr noundef %real_timer, i32 noundef 1, i32 noundef 1) #16
  %function = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 17, i32 2
  %20 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @it_real_fn, ptr %function, align 8
  %21 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %task, align 8
  %group_leader = getelementptr inbounds %struct.task_struct, ptr %24, i32 0, i32 75
  %25 = ptrtoint ptr %group_leader to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %group_leader, align 4
  %alloc_lock.i = getelementptr inbounds %struct.task_struct, ptr %26, i32 0, i32 127
  tail call void @_raw_spin_lock(ptr noundef %alloc_lock.i) #16
  %rlim = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 51
  %27 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %task, align 8
  %signal33 = getelementptr inbounds %struct.task_struct, ptr %28, i32 0, i32 111
  %29 = ptrtoint ptr %signal33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %signal33, align 16
  %rlim34 = getelementptr inbounds %struct.signal_struct, ptr %30, i32 0, i32 51
  %31 = call ptr @memcpy(ptr %rlim, ptr %rlim34, i32 128)
  %32 = load ptr, ptr %task, align 8
  %group_leader38 = getelementptr inbounds %struct.task_struct, ptr %32, i32 0, i32 75
  %33 = ptrtoint ptr %group_leader38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %group_leader38, align 4
  %alloc_lock.i84 = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 127
  tail call void @_raw_spin_unlock(ptr noundef %alloc_lock.i84) #16
  %posix_cputimers.i = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 21
  %35 = ptrtoint ptr %rlim to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %rlim, align 8
  %conv.i = zext i32 %36 to i64
  tail call void @posix_cputimers_group_init(ptr noundef %posix_cputimers.i, i64 noundef %conv.i) #16
  tail call void @tty_audit_fork(ptr noundef nonnull %call.i) #16
  tail call void @sched_autogroup_fork(ptr noundef nonnull %call.i) #16
  %37 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %task, align 8
  %signal41 = getelementptr inbounds %struct.task_struct, ptr %38, i32 0, i32 111
  %39 = ptrtoint ptr %signal41 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %signal41, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %40, i32 0, i32 57
  %41 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %oom_score_adj, align 2
  %oom_score_adj42 = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 57
  %43 = ptrtoint ptr %oom_score_adj42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %42, ptr %oom_score_adj42, align 2
  %44 = load ptr, ptr %task, align 8
  %signal45 = getelementptr inbounds %struct.task_struct, ptr %44, i32 0, i32 111
  %45 = ptrtoint ptr %signal45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %signal45, align 16
  %oom_score_adj_min = getelementptr inbounds %struct.signal_struct, ptr %46, i32 0, i32 58
  %47 = ptrtoint ptr %oom_score_adj_min to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %oom_score_adj_min, align 8
  %oom_score_adj_min46 = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 58
  %49 = ptrtoint ptr %oom_score_adj_min46 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %oom_score_adj_min46, align 8
  %cred_guard_mutex = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 60
  tail call void @__mutex_init(ptr noundef %cred_guard_mutex, ptr noundef nonnull @.str.84, ptr noundef nonnull @copy_signal.__key.83) #16
  %exec_update_lock = getelementptr inbounds %struct.signal_struct, ptr %call.i, i32 0, i32 61
  tail call void @__init_rwsem(ptr noundef %exec_update_lock, ptr noundef nonnull @.str.86, ptr noundef nonnull @copy_signal.__key.85) #16
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_mm(i32 noundef %clone_flags, ptr noundef %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %maj_flt = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 95
  %0 = ptrtoint ptr %maj_flt to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %maj_flt, align 4
  %min_flt = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 94
  %1 = ptrtoint ptr %min_flt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %min_flt, align 8
  %nivcsw = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 91
  %2 = ptrtoint ptr %nivcsw to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %nivcsw, align 4
  %nvcsw = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 90
  %3 = ptrtoint ptr %nvcsw to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %nvcsw, align 16
  %last_switch_count = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 105
  %4 = ptrtoint ptr %last_switch_count to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %last_switch_count, align 8
  %last_switch_time = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 106
  %5 = ptrtoint ptr %last_switch_time to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %last_switch_time, align 4
  %mm3 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 53
  %6 = ptrtoint ptr %mm3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %mm3, align 8
  %active_mm = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 54
  %7 = ptrtoint ptr %active_mm to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %active_mm, align 4
  %8 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %8, -16384
  %9 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %task, align 8
  %mm4 = getelementptr inbounds %struct.task_struct, ptr %11, i32 0, i32 53
  %12 = ptrtoint ptr %mm4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mm4, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %vmas.i = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 55, i32 1
  %14 = call ptr @memset(ptr %vmas.i, i32 0, i32 16)
  %and = and i32 %clone_flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %mm_users.i = getelementptr inbounds %struct.anon.3, ptr %13, i32 0, i32 10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %mm_users.i, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %mm_users.i, i32 1, i32 3, i32 1) #16
  %15 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %mm_users.i, ptr %mm_users.i, i32 1, ptr elementtype(i32) %mm_users.i) #16, !srcloc !355
  br label %if.end14

if.else:                                          ; preds = %if.end
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %mm9 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 53
  %18 = ptrtoint ptr %mm9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %mm9, align 8
  %call10 = tail call fastcc ptr @dup_mm(ptr noundef %tsk, ptr noundef %19)
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end14:                                         ; preds = %if.else.if.end14_crit_edge, %if.then6
  %mm.0 = phi ptr [ %13, %if.then6 ], [ %call10, %if.else.if.end14_crit_edge ]
  %20 = ptrtoint ptr %mm3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %mm.0, ptr %mm3, align 8
  %21 = ptrtoint ptr %active_mm to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %mm.0, ptr %active_mm, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end14 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_namespaces(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_thread(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_pid(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_unused_fd_flags(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @anon_inode_getfile(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_unused_fd(i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @get_pid(ptr noundef %pid) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %pid, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %pid, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr nonnull %pid, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %pid, ptr nonnull %pid, i32 1, ptr nonnull elementtype(i32) %pid) #16, !srcloc !342
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !340

if.then.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !339

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end_crit_edge:                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %pid, i32 noundef %.sink.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clear_tsk_latency_tracing(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cgroup_can_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_cgroup_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_core_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_seccomp(ptr noundef %p) unnamed_addr #0 align 64 {
entry:
  %agg.tmp.sroa.0.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %task, align 8
  %sighand = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 112
  %4 = ptrtoint ptr %sighand to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %sighand, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %agg.tmp.sroa.0.0.copyload.i = load volatile i32, ptr %5, align 4
  %7 = ptrtoint ptr %agg.tmp.sroa.0.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile i32 %agg.tmp.sroa.0.0.copyload.i, ptr %agg.tmp.sroa.0.i, align 4
  %lock.sroa.0.0.extract.shift.i.i = lshr i32 %agg.tmp.sroa.0.0.copyload.i, 16
  %conv.i.i = and i32 %agg.tmp.sroa.0.0.copyload.i, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i.i, i32 %lock.sroa.0.0.extract.shift.i.i)
  %cmp.i.i.not = icmp eq i32 %conv.i.i, %lock.sroa.0.0.extract.shift.i.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %agg.tmp.sroa.0.i)
  br i1 %cmp.i.i.not, label %do.body5, label %do.end8, !prof !340

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22kernel/fork.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1669, 0\0A.popsection", ""() #16, !srcloc !386
  unreachable

do.end8:                                          ; preds = %entry
  %seccomp = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 123
  %seccomp13 = getelementptr inbounds %struct.task_struct, ptr %3, i32 0, i32 123
  %8 = call ptr @memcpy(ptr %seccomp, ptr %seccomp13, i32 12)
  %9 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %task, align 8
  %atomic_flags.i = getelementptr inbounds %struct.task_struct, ptr %10, i32 0, i32 66
  %11 = ptrtoint ptr %atomic_flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %atomic_flags.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i.not, label %do.end8.if.end18_crit_edge, label %if.then17

do.end8.if.end18_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end18

if.then17:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #18
  %atomic_flags.i25 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 66
  tail call void @_set_bit(i32 noundef 0, ptr noundef %atomic_flags.i25) #16
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %do.end8.if.end18_crit_edge
  %13 = ptrtoint ptr %seccomp to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %seccomp, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %if.end18.if.end21_crit_edge, label %if.then20

if.end18.if.end21_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #18
  %stack = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %15 = ptrtoint ptr %stack to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %stack, align 4
  tail call void @_set_bit(i32 noundef 7, ptr noundef %16) #16
  br label %if.end21

if.end21:                                         ; preds = %if.then20, %if.end18.if.end21_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ptrace_init_task(ptr noundef %child, i1 noundef zeroext %ptrace) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %ptrace_entry = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 77
  %0 = ptrtoint ptr %ptrace_entry to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %ptrace_entry, ptr %ptrace_entry, align 4
  %prev.i = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 77, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %ptrace_entry, ptr %prev.i, align 4
  %ptraced = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 76
  %2 = ptrtoint ptr %ptraced to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %ptraced, ptr %ptraced, align 4
  %prev.i33 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 76, i32 1
  %3 = ptrtoint ptr %prev.i33 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ptraced, ptr %prev.i33, align 4
  %jobctl = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 61
  %4 = ptrtoint ptr %jobctl to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %jobctl, align 4
  %ptrace1 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 4
  %5 = ptrtoint ptr %ptrace1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %ptrace1, align 16
  %real_parent = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 71
  %6 = ptrtoint ptr %real_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %real_parent, align 4
  %parent = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 72
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %parent, align 8
  br i1 %ptrace, label %land.lhs.true, label %entry.if.else19_crit_edge, !prof !340

entry.if.else19_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else19

land.lhs.true:                                    ; preds = %entry
  %9 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %task, align 8
  %ptrace4 = getelementptr inbounds %struct.task_struct, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %ptrace4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ptrace4, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool5.not = icmp eq i32 %14, 0
  br i1 %tobool5.not, label %land.lhs.true.if.else19_crit_edge, label %if.then

land.lhs.true.if.else19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.else19

if.then:                                          ; preds = %land.lhs.true
  %15 = ptrtoint ptr %ptrace1 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %ptrace1, align 16
  %16 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %task, align 8
  %parent12 = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 72
  %18 = ptrtoint ptr %parent12 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent12, align 8
  %ptracer_cred = getelementptr inbounds %struct.task_struct, ptr %17, i32 0, i32 97
  %20 = ptrtoint ptr %ptracer_cred to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptracer_cred, align 8
  tail call void @__ptrace_link(ptr noundef %child, ptr noundef %19, ptr noundef %21) #16
  %22 = ptrtoint ptr %ptrace1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ptrace1, align 16
  %and = and i32 %23, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %call18 = tail call zeroext i1 @task_set_jobctl_pending(ptr noundef %child, i32 noundef 524288) #16
  br label %if.end21

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %signal = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 116, i32 1
  %24 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %signal, align 4
  %or.i = or i32 %25, 262144
  store i32 %or.i, ptr %signal, align 4
  br label %if.end21

if.else19:                                        ; preds = %land.lhs.true.if.else19_crit_edge, %entry.if.else19_crit_edge
  %ptracer_cred20 = getelementptr inbounds %struct.task_struct, ptr %child, i32 0, i32 97
  %26 = ptrtoint ptr %ptracer_cred20 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %ptracer_cred20, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else19, %if.else, %if.then17
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tty_kref_get(ptr noundef returned %tty) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %tobool.not = icmp eq ptr %tty, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %kref = getelementptr inbounds %struct.tty_struct, ptr %tty, i32 0, i32 1
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #16
  tail call void @llvm.prefetch.p0(ptr %kref, i32 1, i32 3, i32 1) #16
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref, ptr %kref, i32 1, ptr elementtype(i32) %kref) #16, !srcloc !342
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !340

if.then.if.end15.sink.split.i.i.i.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.if.end_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !339

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.if.end_crit_edge:                 ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref, i32 noundef %.sink.i.i.i.i) #16
  br label %if.end

if.end:                                           ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret ptr %tty
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_tail_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %prev = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %0 = ptrtoint ptr %prev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %1, ptr noundef %head) #16
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !387
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %1, align 4
  %5 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @attach_pid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @task_join_group_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @syscall_tracepoint_update(ptr nocapture noundef readonly %p) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %1, align 16384
  %4 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  %stack2 = getelementptr inbounds %struct.task_struct, ptr %p, i32 0, i32 1
  %5 = ptrtoint ptr %stack2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stack2, align 4
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_set_bit(i32 noundef 6, ptr noundef %6) #16
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_clear_bit(i32 noundef 6, ptr noundef %6) #16
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_write_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @fd_install(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @proc_fork_connector(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_post_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_post_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_task_newtask(ptr noundef %task, i32 noundef %clone_flags) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_task_newtask, i32 0, i32 1, i32 0, i32 0), ptr blockaddress(@trace_task_newtask, %do.body)) #16
          to label %if.end48 [label %do.body], !srcloc !359

do.body:                                          ; preds = %entry
  %0 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

land.rhs.i.i.i.i:                                 ; preds = %do.body
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpu_online.exit_crit_edge, label %if.then.i.i.i.i, !prof !339

land.rhs.i.i.i.i.cpu_online.exit_crit_edge:       ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.89, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.end31:                                         ; preds = %cpu_online.exit
  %9 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %12, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !388
  %13 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_task_newtask, i32 0, i32 7), align 4
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
  tail call void %15(ptr noundef %17, ptr noundef %task, i32 noundef %clone_flags) #16
  %incdec.ptr.i = getelementptr %struct.tracepoint_func, ptr %it_func_ptr.0.i, i32 1
  %18 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool9.not.i = icmp eq ptr %19, null
  br i1 %tobool9.not.i, label %cleanup, label %do.body2.i.do.body2.i_crit_edge

do.body2.i.do.body2.i_crit_edge:                  ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body2.i

cleanup:                                          ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !389
  br label %if.end48.sink.split

if.end48.critedge:                                ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !389
  br label %if.end48.sink.split

if.end48.sink.split:                              ; preds = %if.end48.critedge, %cleanup
  %20 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
  %24 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

land.rhs.i.i.i.i79:                               ; preds = %if.end48
  %.b37.i.i.i.i78 = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i78, label %land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge, label %if.then.i.i.i.i80, !prof !339

land.rhs.i.i.i.i79.cpu_online.exit85_crit_edge:   ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  br label %cpu_online.exit85

if.then.i.i.i.i80:                                ; preds = %land.rhs.i.i.i.i79
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.89, i32 noundef 108, i32 noundef 9, ptr noundef null) #16
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
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end69

if.then52:                                        ; preds = %cpu_online.exit85
  %33 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %36, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !381
  %37 = load volatile ptr, ptr getelementptr inbounds ({ ptr, { %struct.atomic_t, { ptr } }, ptr, ptr, ptr, ptr, ptr, ptr }, ptr @__tracepoint_task_newtask, i32 0, i32 7), align 4
  %call58 = tail call i32 @rcu_read_lock_sched_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %tobool59.not = icmp eq i32 %call58, 0
  br i1 %tobool59.not, label %land.lhs.true, label %if.then52.do.end67_crit_edge

if.then52.do.end67_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true:                                    ; preds = %if.then52
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true.do.end67_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true
  %.b72 = load i1, ptr @trace_task_newtask.__warned, align 1
  br i1 %.b72, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_task_newtask.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.88, i32 noundef 32, ptr noundef nonnull @.str.6) #16
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true.do.end67_crit_edge, %if.then52.do.end67_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !382
  %38 = tail call i32 @llvm.read_register.i32(metadata !329) #16
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
declare dso_local void @uprobe_copy_process(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @copy_oom_score_adj(i64 noundef %clone_flags, ptr nocapture noundef readonly %tsk) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %mm = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 53
  %0 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mm, align 8
  %tobool.not = icmp ne ptr %1, null
  %and = and i64 %clone_flags, 82176
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %and)
  %cmp.not = icmp eq i64 %and, 256
  %or.cond = and i1 %cmp.not, %tobool.not
  br i1 %or.cond, label %if.end2, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %return

if.end2:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @mutex_lock_nested(ptr noundef nonnull @oom_adj_mutex, i32 noundef 0) #16
  %2 = ptrtoint ptr %mm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mm, align 8
  %flags = getelementptr inbounds %struct.anon.3, ptr %3, i32 0, i32 43
  tail call void @_set_bit(i32 noundef 27, ptr noundef %flags) #16
  %4 = tail call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %task, align 8
  %signal = getelementptr inbounds %struct.task_struct, ptr %7, i32 0, i32 111
  %8 = ptrtoint ptr %signal to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %signal, align 16
  %oom_score_adj = getelementptr inbounds %struct.signal_struct, ptr %9, i32 0, i32 57
  %10 = ptrtoint ptr %oom_score_adj to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %oom_score_adj, align 2
  %signal4 = getelementptr inbounds %struct.task_struct, ptr %tsk, i32 0, i32 111
  %12 = ptrtoint ptr %signal4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %signal4, align 16
  %oom_score_adj5 = getelementptr inbounds %struct.signal_struct, ptr %13, i32 0, i32 57
  %14 = ptrtoint ptr %oom_score_adj5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %11, ptr %oom_score_adj5, align 2
  %15 = load ptr, ptr %task, align 8
  %signal8 = getelementptr inbounds %struct.task_struct, ptr %15, i32 0, i32 111
  %16 = ptrtoint ptr %signal8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %signal8, align 16
  %oom_score_adj_min = getelementptr inbounds %struct.signal_struct, ptr %17, i32 0, i32 58
  %18 = ptrtoint ptr %oom_score_adj_min to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %oom_score_adj_min, align 8
  %20 = load ptr, ptr %signal4, align 16
  %oom_score_adj_min10 = getelementptr inbounds %struct.signal_struct, ptr %20, i32 0, i32 58
  %21 = ptrtoint ptr %oom_score_adj_min10 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %19, ptr %oom_score_adj_min10, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @oom_adj_mutex) #16
  br label %return

return:                                           ; preds = %if.end2, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_cancel_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_thread(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_io_context(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_task_namespaces(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_fs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @exit_files(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @perf_event_free_task(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @dec_rlimit_ucounts(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tsk_fork_get_node(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dup_user_cpus_ptr(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kcov_task_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmap_local_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__delayacct_tsk_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @copy_fs_struct(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @it_real_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tty_audit_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sched_autogroup_fork(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @posix_cputimers_group_init(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__copy_io(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__ptrace_link(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @task_set_jobctl_pending(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_sched_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @__delayed_free_task(ptr noundef %rhp) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rhp, i32 -4708
  tail call void @free_task(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dup_mmap(ptr noundef %mm, ptr noundef %oldmm) unnamed_addr #0 align 64 {
entry:
  %uf = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %uf) #16
  %0 = getelementptr inbounds %struct.list_head, ptr %uf, i32 0, i32 1
  %1 = ptrtoint ptr %uf to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %uf, ptr %uf, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %uf, ptr %0, align 4
  call void @uprobe_start_dup_mmap() #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@dup_mmap, %if.then.i.i)) #16
          to label %__mmap_lock_trace_start_locking.exit.i [label %if.then.i.i], !srcloc !359

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %oldmm, i1 noundef zeroext true) #16
  br label %__mmap_lock_trace_start_locking.exit.i

__mmap_lock_trace_start_locking.exit.i:           ; preds = %if.then.i.i, %entry
  %mmap_lock.i = getelementptr inbounds %struct.anon.3, ptr %oldmm, i32 0, i32 15
  %call.i = call i32 @down_write_killable(ptr noundef %mmap_lock.i) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@dup_mmap, %if.then.i4.i)) #16
          to label %mmap_write_lock_killable.exit [label %if.then.i4.i], !srcloc !359

if.then.i4.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %oldmm, i1 noundef zeroext true, i1 noundef zeroext %cmp.i) #16
  br label %mmap_write_lock_killable.exit

mmap_write_lock_killable.exit:                    ; preds = %if.then.i4.i, %__mmap_lock_trace_start_locking.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %mmap_write_lock_killable.exit.fail_uprobe_end_crit_edge

mmap_write_lock_killable.exit.fail_uprobe_end_crit_edge: ; preds = %mmap_write_lock_killable.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_uprobe_end

if.end:                                           ; preds = %mmap_write_lock_killable.exit
  call void @flush_cache_mm(ptr noundef %oldmm) #16
  call void @uprobe_dup_mmap(ptr noundef %oldmm, ptr noundef %mm) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_start_locking, i32 0, i32 1), ptr blockaddress(@dup_mmap, %if.then.i.i189)) #16
          to label %__mmap_lock_trace_start_locking.exit.i191 [label %if.then.i.i189], !srcloc !359

if.then.i.i189:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  call void @__mmap_lock_do_trace_start_locking(ptr noundef %mm, i1 noundef zeroext true) #16
  br label %__mmap_lock_trace_start_locking.exit.i191

__mmap_lock_trace_start_locking.exit.i191:        ; preds = %if.then.i.i189, %if.end
  %mmap_lock.i190 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 15
  call void @down_write_nested(ptr noundef %mmap_lock.i190, i32 noundef 1) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_acquire_returned, i32 0, i32 1), ptr blockaddress(@dup_mmap, %if.then.i1.i)) #16
          to label %mmap_write_lock_nested.exit [label %if.then.i1.i], !srcloc !359

if.then.i1.i:                                     ; preds = %__mmap_lock_trace_start_locking.exit.i191
  call void @__sanitizer_cov_trace_pc() #18
  call void @__mmap_lock_do_trace_acquire_returned(ptr noundef %mm, i1 noundef zeroext true, i1 noundef zeroext true) #16
  br label %mmap_write_lock_nested.exit

mmap_write_lock_nested.exit:                      ; preds = %if.then.i1.i, %__mmap_lock_trace_start_locking.exit.i191
  %call.i192 = call ptr @get_mm_exe_file(ptr noundef %oldmm) #16
  %exe_file4.i = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 48
  %3 = ptrtoint ptr %exe_file4.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store volatile ptr %call.i192, ptr %exe_file4.i, align 4
  %tobool.not.i = icmp eq ptr %call.i192, null
  br i1 %tobool.not.i, label %mmap_write_lock_nested.exit.dup_mm_exe_file.exit_crit_edge, label %land.lhs.true.i

mmap_write_lock_nested.exit.dup_mm_exe_file.exit_crit_edge: ; preds = %mmap_write_lock_nested.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %dup_mm_exe_file.exit

land.lhs.true.i:                                  ; preds = %mmap_write_lock_nested.exit
  %f_inode.i.i.i = getelementptr inbounds %struct.file, ptr %call.i192, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i.i, align 8
  %i_writecount.i.i = getelementptr inbounds %struct.inode, ptr %5, i32 0, i32 42
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %i_writecount.i.i, i32 noundef 4) #16
  %6 = ptrtoint ptr %i_writecount.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %i_writecount.i.i, align 4
  br label %do.body1.i.i.i.i

do.body1.i.i.i.i:                                 ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge, %land.lhs.true.i
  %c.0.i.i.i.i = phi i32 [ %7, %land.lhs.true.i ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0.i.i.i.i)
  %cmp.i.i.i.i = icmp sgt i32 %c.0.i.i.i.i, 0
  br i1 %cmp.i.i.i.i, label %land.end.i, label %do.cond3.i.i.i.i, !prof !340

do.cond3.i.i.i.i:                                 ; preds = %do.body1.i.i.i.i
  %sub.i.i.i.i = add i32 %c.0.i.i.i.i, -1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !356
  call void @llvm.prefetch.p0(ptr %i_writecount.i.i, i32 1, i32 3, i32 1) #16
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond3.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %i_writecount.i.i, ptr %i_writecount.i.i, i32 %c.0.i.i.i.i, i32 %sub.i.i.i.i, ptr elementtype(i32) %i_writecount.i.i) #16, !srcloc !357
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.i:               ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !358
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %c.0.i.i.i.i
  br i1 %cmp.not.i.i.i.i.i, label %arch_atomic_cmpxchg.exit.i.i.i.i.i.dup_mm_exe_file.exit_crit_edge, label %arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge, !prof !339

arch_atomic_cmpxchg.exit.i.i.i.i.i.do.body1.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body1.i.i.i.i

arch_atomic_cmpxchg.exit.i.i.i.i.i.dup_mm_exe_file.exit_crit_edge: ; preds = %arch_atomic_cmpxchg.exit.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dup_mm_exe_file.exit

land.end.i:                                       ; preds = %do.body1.i.i.i.i
  %.b34.i = load i1, ptr @dup_mm_exe_file.__already_done, align 1
  br i1 %.b34.i, label %land.end.i.dup_mm_exe_file.exit_crit_edge, label %if.then18.i, !prof !339

land.end.i.dup_mm_exe_file.exit_crit_edge:        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dup_mm_exe_file.exit

if.then18.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @dup_mm_exe_file.__already_done, align 1
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #20
  br label %dup_mm_exe_file.exit

dup_mm_exe_file.exit:                             ; preds = %if.then18.i, %land.end.i.dup_mm_exe_file.exit_crit_edge, %arch_atomic_cmpxchg.exit.i.i.i.i.i.dup_mm_exe_file.exit_crit_edge, %mmap_write_lock_nested.exit.dup_mm_exe_file.exit_crit_edge
  %total_vm = getelementptr inbounds %struct.anon.3, ptr %oldmm, i32 0, i32 19
  %9 = ptrtoint ptr %total_vm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %total_vm, align 8
  %total_vm3 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 19
  %11 = ptrtoint ptr %total_vm3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %total_vm3, align 8
  %data_vm = getelementptr inbounds %struct.anon.3, ptr %oldmm, i32 0, i32 22
  %12 = ptrtoint ptr %data_vm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_vm, align 8
  %data_vm4 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 22
  %14 = ptrtoint ptr %data_vm4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %data_vm4, align 8
  %exec_vm = getelementptr inbounds %struct.anon.3, ptr %oldmm, i32 0, i32 23
  %15 = ptrtoint ptr %exec_vm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %exec_vm, align 4
  %exec_vm5 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 23
  %17 = ptrtoint ptr %exec_vm5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %exec_vm5, align 4
  %stack_vm = getelementptr inbounds %struct.anon.3, ptr %oldmm, i32 0, i32 24
  %18 = ptrtoint ptr %stack_vm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %stack_vm, align 8
  %stack_vm6 = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 24
  %20 = ptrtoint ptr %stack_vm6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %stack_vm6, align 8
  %mm_rb = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 1
  %flags.i = getelementptr inbounds %struct.anon.3, ptr %oldmm, i32 0, i32 43
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %flags.i, align 4
  %23 = and i32 %22, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i193 = icmp eq i32 %23, 0
  br i1 %tobool.not.i193, label %dup_mm_exe_file.exit.if.end10_crit_edge, label %ksm_fork.exit

dup_mm_exe_file.exit.if.end10_crit_edge:          ; preds = %dup_mm_exe_file.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

ksm_fork.exit:                                    ; preds = %dup_mm_exe_file.exit
  %call1.i = call i32 @__ksm_enter(ptr noundef %mm) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool8.not = icmp eq i32 %call1.i, 0
  br i1 %tobool8.not, label %ksm_fork.exit.if.end10_crit_edge, label %ksm_fork.exit.out_crit_edge

ksm_fork.exit.out_crit_edge:                      ; preds = %ksm_fork.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

ksm_fork.exit.if.end10_crit_edge:                 ; preds = %ksm_fork.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end10

if.end10:                                         ; preds = %ksm_fork.exit.if.end10_crit_edge, %dup_mm_exe_file.exit.if.end10_crit_edge
  %24 = ptrtoint ptr %oldmm to i32
  call void @__asan_load4_noabort(i32 %24)
  %mpnt.0267 = load ptr, ptr %oldmm, align 4
  %tobool16.not268 = icmp eq ptr %mpnt.0267, null
  br i1 %tobool16.not268, label %if.end10.out_crit_edge, label %for.body.lr.ph

if.end10.out_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.body.lr.ph:                                   ; preds = %if.end10
  %map_count = getelementptr inbounds %struct.anon.3, ptr %mm, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %mpnt.0273 = phi ptr [ %mpnt.0267, %for.body.lr.ph ], [ %mpnt.0, %for.inc.for.body_crit_edge ]
  %rb_parent.0272 = phi ptr [ null, %for.body.lr.ph ], [ %rb_parent.1222, %for.inc.for.body_crit_edge ]
  %rb_link.0271 = phi ptr [ %mm_rb, %for.body.lr.ph ], [ %rb_link.1221, %for.inc.for.body_crit_edge ]
  %pprev.0270 = phi ptr [ %mm, %for.body.lr.ph ], [ %pprev.1220, %for.inc.for.body_crit_edge ]
  %prev.0269 = phi ptr [ null, %for.body.lr.ph ], [ %prev.1219, %for.inc.for.body_crit_edge ]
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %mpnt.0273, i32 0, i32 8
  %25 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %vm_flags, align 4
  %and = and i32 %26, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.end21, label %if.then18

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %vm_end.i = getelementptr inbounds %struct.vm_area_struct, ptr %mpnt.0273, i32 0, i32 1
  %27 = ptrtoint ptr %vm_end.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %vm_end.i, align 4
  %29 = ptrtoint ptr %mpnt.0273 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mpnt.0273, align 4
  %sub.i = sub i32 %28, %30
  %shr.i = lshr i32 %sub.i, 12
  %sub = sub nsw i32 0, %shr.i
  call void @vm_stat_account(ptr noundef %mm, i32 noundef %26, i32 noundef %sub) #16
  br label %for.inc

if.end21:                                         ; preds = %for.body
  %31 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i = and i32 %31, -16384
  %32 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %task, align 8
  %stack.i.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %stack.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %stack.i.i.i, align 4
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  %and1.i.i.i.i.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i.i.i.i)
  %tobool.not.i194 = icmp eq i32 %and1.i.i.i.i.i, 0
  br i1 %tobool.not.i194, label %if.end21.if.end26_crit_edge, label %fatal_signal_pending.exit

if.end21.if.end26_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

fatal_signal_pending.exit:                        ; preds = %if.end21
  %signal.i.i = getelementptr inbounds %struct.task_struct, ptr %34, i32 0, i32 116, i32 1
  %39 = ptrtoint ptr %signal.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %signal.i.i, align 4
  %41 = and i32 %40, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool24.not = icmp eq i32 %41, 0
  br i1 %tobool24.not, label %fatal_signal_pending.exit.if.end26_crit_edge, label %fatal_signal_pending.exit.out_crit_edge

fatal_signal_pending.exit.out_crit_edge:          ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

fatal_signal_pending.exit.if.end26_crit_edge:     ; preds = %fatal_signal_pending.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end26

if.end26:                                         ; preds = %fatal_signal_pending.exit.if.end26_crit_edge, %if.end21.if.end26_crit_edge
  %and28 = and i32 %26, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end36_crit_edge, label %if.then30

if.end26.if.end36_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.then30:                                        ; preds = %if.end26
  %vm_end.i196 = getelementptr inbounds %struct.vm_area_struct, ptr %mpnt.0273, i32 0, i32 1
  %42 = ptrtoint ptr %vm_end.i196 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %vm_end.i196, align 4
  %44 = ptrtoint ptr %mpnt.0273 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %mpnt.0273, align 4
  %sub.i197 = sub i32 %43, %45
  %shr.i198 = lshr i32 %sub.i197, 12
  %call32 = call i32 @security_vm_enough_memory_mm(ptr noundef %oldmm, i32 noundef %shr.i198) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.then30.if.end36_crit_edge, label %if.then30.fail_nomem_crit_edge

if.then30.fail_nomem_crit_edge:                   ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_nomem

if.then30.if.end36_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

if.end36:                                         ; preds = %if.then30.if.end36_crit_edge, %if.end26.if.end36_crit_edge
  %charge.2 = phi i32 [ %shr.i198, %if.then30.if.end36_crit_edge ], [ 0, %if.end26.if.end36_crit_edge ]
  %call37 = call ptr @vm_area_dup(ptr noundef nonnull %mpnt.0273)
  %tobool38.not = icmp eq ptr %call37, null
  br i1 %tobool38.not, label %if.end36.fail_nomem_crit_edge, label %if.end40

if.end36.fail_nomem_crit_edge:                    ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_nomem

if.end40:                                         ; preds = %if.end36
  %vm_mm = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 6
  %46 = ptrtoint ptr %vm_mm to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %mm, ptr %vm_mm, align 4
  %call45 = call i32 @dup_userfaultfd(ptr noundef nonnull %call37, ptr noundef nonnull %uf) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end48, label %if.end40.fail_nomem_policy_crit_edge

if.end40.fail_nomem_policy_crit_edge:             ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_nomem_policy

if.end48:                                         ; preds = %if.end40
  %vm_flags49 = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 8
  %47 = ptrtoint ptr %vm_flags49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %vm_flags49, align 4
  %and50 = and i32 %48, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50)
  %tobool51.not = icmp eq i32 %and50, 0
  br i1 %tobool51.not, label %if.else, label %if.then52

if.then52:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #18
  %anon_vma = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 11
  %49 = ptrtoint ptr %anon_vma to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %anon_vma, align 4
  br label %if.end57

if.else:                                          ; preds = %if.end48
  %call53 = call i32 @anon_vma_fork(ptr noundef nonnull %call37, ptr noundef nonnull %mpnt.0273) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %tobool54.not = icmp eq i32 %call53, 0
  br i1 %tobool54.not, label %if.else.if.end57_crit_edge, label %if.else.fail_nomem_policy_crit_edge

if.else.fail_nomem_policy_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %fail_nomem_policy

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end57

if.end57:                                         ; preds = %if.else.if.end57_crit_edge, %if.then52
  %50 = ptrtoint ptr %vm_flags49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %vm_flags49, align 4
  %and59 = and i32 %51, -532481
  store i32 %and59, ptr %vm_flags49, align 4
  %vm_file = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 14
  %52 = ptrtoint ptr %vm_file to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %vm_file, align 4
  %tobool60.not = icmp eq ptr %53, null
  br i1 %tobool60.not, label %if.end57.if.end70_crit_edge, label %if.then61

if.end57.if.end70_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70

if.then61:                                        ; preds = %if.end57
  %f_mapping = getelementptr inbounds %struct.file, ptr %53, i32 0, i32 18
  %54 = ptrtoint ptr %f_mapping to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %f_mapping, align 4
  %f_count.i = getelementptr inbounds %struct.file, ptr %53, i32 0, i32 6
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %f_count.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %f_count.i, i32 1, i32 3, i32 1) #16
  %56 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %f_count.i, ptr %f_count.i, i32 1, ptr elementtype(i32) %f_count.i) #16, !srcloc !355
  %i_mmap_rwsem.i = getelementptr inbounds %struct.address_space, ptr %55, i32 0, i32 6
  call void @down_write(ptr noundef %i_mmap_rwsem.i) #16
  %57 = ptrtoint ptr %vm_flags49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %vm_flags49, align 4
  %and64 = and i32 %58, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  br i1 %tobool65.not, label %if.then61.if.end67_crit_edge, label %if.then66

if.then61.if.end67_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end67

if.then66:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #18
  %i_mmap_writable.i = getelementptr inbounds %struct.address_space, ptr %55, i32 0, i32 4
  %call.i.i.i199 = call zeroext i1 @__kasan_check_write(ptr noundef %i_mmap_writable.i, i32 noundef 4) #16
  call void @llvm.prefetch.p0(ptr %i_mmap_writable.i, i32 1, i32 3, i32 1) #16
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %i_mmap_writable.i, ptr %i_mmap_writable.i, i32 1, ptr elementtype(i32) %i_mmap_writable.i) #16, !srcloc !355
  br label %if.end67

if.end67:                                         ; preds = %if.then66, %if.then61.if.end67_crit_edge
  %i_pages = getelementptr inbounds %struct.address_space, ptr %55, i32 0, i32 1
  call void @_raw_spin_lock_irq(ptr noundef %i_pages) #16
  %i_mmap = getelementptr inbounds %struct.address_space, ptr %55, i32 0, i32 5
  call void @vma_interval_tree_insert_after(ptr noundef nonnull %call37, ptr noundef nonnull %mpnt.0273, ptr noundef %i_mmap) #16
  call void @_raw_spin_unlock_irq(ptr noundef %i_pages) #16
  call void @up_write(ptr noundef %i_mmap_rwsem.i) #16
  br label %if.end70

if.end70:                                         ; preds = %if.end67, %if.end57.if.end70_crit_edge
  %60 = ptrtoint ptr %pprev.0270 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call37, ptr %pprev.0270, align 4
  %vm_next = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 2
  %vm_prev = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 3
  %61 = ptrtoint ptr %vm_prev to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %prev.0269, ptr %vm_prev, align 4
  call void @__vma_link_rb(ptr noundef %mm, ptr noundef nonnull %call37, ptr noundef %rb_link.0271, ptr noundef %rb_parent.0272) #16
  %vm_rb = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 4
  %rb_right = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %map_count to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %map_count, align 8
  %inc = add i32 %63, 1
  store i32 %inc, ptr %map_count, align 8
  %64 = ptrtoint ptr %vm_flags49 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %vm_flags49, align 4
  %and76 = and i32 %65, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and76)
  %tobool77.not = icmp eq i32 %and76, 0
  br i1 %tobool77.not, label %if.then78, label %if.end70.if.end80_crit_edge

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end80

if.then78:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #18
  %call79 = call i32 @copy_page_range(ptr noundef nonnull %call37, ptr noundef nonnull %mpnt.0273) #16
  br label %if.end80

if.end80:                                         ; preds = %if.then78, %if.end70.if.end80_crit_edge
  %retval1.1 = phi i32 [ 0, %if.end70.if.end80_crit_edge ], [ %call79, %if.then78 ]
  %vm_ops = getelementptr inbounds %struct.vm_area_struct, ptr %call37, i32 0, i32 12
  %66 = ptrtoint ptr %vm_ops to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %vm_ops, align 4
  %tobool81.not = icmp eq ptr %67, null
  br i1 %tobool81.not, label %if.end80.if.end87_crit_edge, label %land.lhs.true

if.end80.if.end87_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

land.lhs.true:                                    ; preds = %if.end80
  %68 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %67, align 4
  %tobool83.not = icmp eq ptr %69, null
  br i1 %tobool83.not, label %land.lhs.true.if.end87_crit_edge, label %if.then84

land.lhs.true.if.end87_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end87

if.then84:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  call void %69(ptr noundef nonnull %call37) #16
  br label %if.end87

if.end87:                                         ; preds = %if.then84, %land.lhs.true.if.end87_crit_edge, %if.end80.if.end87_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval1.1)
  %tobool88.not = icmp eq i32 %retval1.1, 0
  br i1 %tobool88.not, label %if.end87.for.inc_crit_edge, label %if.end87.out_crit_edge

if.end87.out_crit_edge:                           ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end87.for.inc_crit_edge:                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

for.inc:                                          ; preds = %if.end87.for.inc_crit_edge, %if.then18
  %rb_parent.1222 = phi ptr [ %rb_parent.0272, %if.then18 ], [ %vm_rb, %if.end87.for.inc_crit_edge ]
  %rb_link.1221 = phi ptr [ %rb_link.0271, %if.then18 ], [ %rb_right, %if.end87.for.inc_crit_edge ]
  %pprev.1220 = phi ptr [ %pprev.0270, %if.then18 ], [ %vm_next, %if.end87.for.inc_crit_edge ]
  %prev.1219 = phi ptr [ %prev.0269, %if.then18 ], [ %call37, %if.end87.for.inc_crit_edge ]
  %vm_next94 = getelementptr inbounds %struct.vm_area_struct, ptr %mpnt.0273, i32 0, i32 2
  %70 = ptrtoint ptr %vm_next94 to i32
  call void @__asan_load4_noabort(i32 %70)
  %mpnt.0 = load ptr, ptr %vm_next94, align 4
  %tobool16.not = icmp eq ptr %mpnt.0, null
  br i1 %tobool16.not, label %for.inc.out_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

out:                                              ; preds = %fail_nomem, %for.inc.out_crit_edge, %if.end87.out_crit_edge, %fatal_signal_pending.exit.out_crit_edge, %if.end10.out_crit_edge, %ksm_fork.exit.out_crit_edge
  %retval1.3 = phi i32 [ %call1.i, %ksm_fork.exit.out_crit_edge ], [ -12, %fail_nomem ], [ 0, %if.end10.out_crit_edge ], [ 0, %for.inc.out_crit_edge ], [ -4, %fatal_signal_pending.exit.out_crit_edge ], [ %retval1.1, %if.end87.out_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@dup_mmap, %if.then.i.i201)) #16
          to label %mmap_write_unlock.exit [label %if.then.i.i201], !srcloc !359

if.then.i.i201:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #18
  call void @__mmap_lock_do_trace_released(ptr noundef %mm, i1 noundef zeroext true) #16
  br label %mmap_write_unlock.exit

mmap_write_unlock.exit:                           ; preds = %if.then.i.i201, %out
  call void @up_write(ptr noundef %mmap_lock.i190) #16
  call void @flush_tlb_mm(ptr noundef %oldmm) #16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_mmap_lock_released, i32 0, i32 1), ptr blockaddress(@dup_mmap, %if.then.i.i203)) #16
          to label %mmap_write_unlock.exit205 [label %if.then.i.i203], !srcloc !359

if.then.i.i203:                                   ; preds = %mmap_write_unlock.exit
  call void @__sanitizer_cov_trace_pc() #18
  call void @__mmap_lock_do_trace_released(ptr noundef %oldmm, i1 noundef zeroext true) #16
  br label %mmap_write_unlock.exit205

mmap_write_unlock.exit205:                        ; preds = %if.then.i.i203, %mmap_write_unlock.exit
  call void @up_write(ptr noundef %mmap_lock.i) #16
  call void @dup_userfaultfd_complete(ptr noundef nonnull %uf) #16
  br label %fail_uprobe_end

fail_uprobe_end:                                  ; preds = %mmap_write_unlock.exit205, %mmap_write_lock_killable.exit.fail_uprobe_end_crit_edge
  %retval1.4 = phi i32 [ %retval1.3, %mmap_write_unlock.exit205 ], [ -4, %mmap_write_lock_killable.exit.fail_uprobe_end_crit_edge ]
  call void @uprobe_end_dup_mmap() #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %uf) #16
  ret i32 %retval1.4

fail_nomem_policy:                                ; preds = %if.else.fail_nomem_policy_crit_edge, %if.end40.fail_nomem_policy_crit_edge
  call void @vm_area_free(ptr noundef nonnull %call37)
  br label %fail_nomem

fail_nomem:                                       ; preds = %fail_nomem_policy, %if.end36.fail_nomem_crit_edge, %if.then30.fail_nomem_crit_edge
  %charge.3255 = phi i32 [ %charge.2, %fail_nomem_policy ], [ 0, %if.then30.fail_nomem_crit_edge ], [ %charge.2, %if.end36.fail_nomem_crit_edge ]
  %sub.i206 = sub nsw i32 0, %charge.3255
  %conv.i.i = sext i32 %sub.i206 to i64
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @vm_committed_as_batch to i32))
  %71 = load i32, ptr @vm_committed_as_batch, align 4
  call void @percpu_counter_add_batch(ptr noundef nonnull @vm_committed_as, i64 noundef %conv.i.i, i32 noundef %71) #16
  br label %out
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_start_dup_mmap() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_cache_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_dup_mmap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vm_stat_account(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @security_vm_enough_memory_mm(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dup_userfaultfd(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @anon_vma_fork(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vma_interval_tree_insert_after(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__vma_link_rb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @copy_page_range(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_tlb_mm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dup_userfaultfd_complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @uprobe_end_dup_mmap() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @down_write_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ksm_enter(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_write(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @percpu_counter_add_batch(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_sched_process_fork(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ptrace_notify(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @send_sig(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_enter_frozen() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_killable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cgroup_leave_frozen(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_check_no_locks_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__refrigerator(i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @freezing_slow_path(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @copy_clone_args_from_user(ptr nocapture noundef %kargs, ptr noundef %uargs, i32 noundef %usize) unnamed_addr #14 align 64 {
entry:
  %args = alloca %struct.clone_args, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %args) #16
  %0 = call ptr @memset(ptr %args, i32 255, i32 88)
  %set_tid = getelementptr inbounds %struct.kernel_clone_args, ptr %kargs, i32 0, i32 8
  %1 = ptrtoint ptr %set_tid to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %set_tid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %usize)
  %cmp = icmp ugt i32 %usize, 4096
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end, !prof !340

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %usize)
  %cmp11 = icmp ult i32 %usize, 64
  br i1 %cmp11, label %if.end.cleanup_crit_edge, label %if.end19, !prof !340

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end19:                                         ; preds = %if.end
  %3 = tail call i32 @llvm.umin.i32(i32 %usize, i32 88) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %usize)
  %cmp2.i = icmp ult i32 %usize, 88
  %4 = tail call i32 @llvm.umax.i32(i32 %usize, i32 88) #16
  %sub.i = sub nuw nsw i32 %4, %3
  br i1 %cmp2.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %args, i32 %3
  %5 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 %sub.i)
  br label %if.then.i.i.i.i

if.else.i:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 88, i32 %usize)
  %cmp.not.i = icmp eq i32 %usize, 88
  br i1 %cmp.not.i, label %if.else.i.if.then.i.i.i.i_crit_edge, label %if.then9.i

if.else.i.if.then.i.i.i.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i

if.then9.i:                                       ; preds = %if.else.i
  %add.ptr10.i = getelementptr i8, ptr %uargs, i32 %3
  %call.i = tail call i32 @check_zeroed_user(ptr noundef %add.ptr10.i, i32 noundef %sub.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp11.i = icmp slt i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  %..i = select i1 %tobool.not.i, i32 -7, i32 %call.i
  br i1 %cmp11.i, label %if.then9.i.cleanup_crit_edge, label %if.then9.i.if.then.i.i.i.i_crit_edge

if.then9.i.if.then.i.i.i.i_crit_edge:             ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i

if.then9.i.cleanup_crit_edge:                     ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.i.i.i:                                  ; preds = %if.then9.i.if.then.i.i.i.i_crit_edge, %if.else.i.if.then.i.i.i.i_crit_edge, %if.then.i
  call void @__check_object_size(ptr noundef nonnull %args, i32 noundef %3, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.106, i32 noundef 156) #16
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.then11.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.then11.i.i.i_crit_edge:        ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %6 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %uargs, i32 %3, i32 -1226833920) #22, !srcloc !390
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.end.i.i.i, label %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, !prof !339

land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge:    ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %args, i32 noundef %3) #16
  %7 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i.i.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 4
  %9 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #12, !srcloc !368
  %and.i.i.i.i.i = and i32 %9, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #16, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %args, ptr noundef %uargs, i32 noundef %3) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %9) #16, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end22, label %if.end.i.i.i.if.then11.i.i.i_crit_edge, !prof !339

if.end.i.i.i.if.then11.i.i.i_crit_edge:           ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then11.i.i.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i.if.then11.i.i.i_crit_edge, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge, %if.then.i.i.i.i.if.then11.i.i.i_crit_edge
  %res.0.i.i.i152 = phi i32 [ %call1.i.i.i.i, %if.end.i.i.i.if.then11.i.i.i_crit_edge ], [ %3, %if.then.i.i.i.i.if.then11.i.i.i_crit_edge ], [ %3, %land.lhs.true.i.i.i.if.then11.i.i.i_crit_edge ]
  %sub.i.i.i = sub i32 %3, %res.0.i.i.i152
  %add.ptr.i.i.i = getelementptr i8, ptr %args, i32 %sub.i.i.i
  %10 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i152)
  br label %cleanup

if.end22:                                         ; preds = %if.end.i.i.i
  %set_tid_size = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 9
  %11 = ptrtoint ptr %set_tid_size to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %set_tid_size, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 32, i64 %12)
  %cmp23 = icmp ugt i64 %12, 32
  br i1 %cmp23, label %if.end22.cleanup_crit_edge, label %if.end31, !prof !340

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end31:                                         ; preds = %if.end22
  %set_tid32 = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 8
  %13 = ptrtoint ptr %set_tid32 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %set_tid32, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %14)
  %tobool33.not = icmp eq i64 %14, 0
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp35 = icmp ne i64 %12, 0
  %spec.select = select i1 %tobool33.not, i1 %cmp35, i1 false
  br i1 %spec.select, label %if.end31.cleanup_crit_edge, label %if.end43, !prof !340

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  %tobool33.not.not = xor i1 %tobool33.not, true
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp48 = icmp eq i64 %12, 0
  %or.cond157 = select i1 %tobool33.not.not, i1 %cmp48, i1 false
  br i1 %or.cond157, label %if.end43.cleanup_crit_edge, label %if.end57, !prof !391

if.end43.cleanup_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end57:                                         ; preds = %if.end43
  %exit_signal = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 4
  %15 = ptrtoint ptr %exit_signal to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %exit_signal, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 256, i64 %16)
  %tobool58.not = icmp ult i64 %16, 256
  br i1 %tobool58.not, label %lor.rhs, label %if.end57.cleanup_crit_edge, !prof !339

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

lor.rhs:                                          ; preds = %if.end57
  %conv = trunc i64 %16 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv)
  %cmp.i = icmp ugt i32 %conv, 64
  br i1 %cmp.i, label %lor.rhs.cleanup_crit_edge, label %if.end71, !prof !340

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end71:                                         ; preds = %lor.rhs
  %17 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %args, align 8
  %and72 = and i64 %18, 8589934592
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and72)
  %tobool73.not = icmp eq i64 %and72, 0
  br i1 %tobool73.not, label %if.end71.if.end79_crit_edge, label %land.lhs.true

if.end71.if.end79_crit_edge:                      ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

land.lhs.true:                                    ; preds = %if.end71
  %cgroup = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 10
  %19 = ptrtoint ptr %cgroup to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %cgroup, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 2147483647, i64 %20)
  %cmp74 = icmp ugt i64 %20, 2147483647
  %or.cond = or i1 %cmp2.i, %cmp74
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end79_crit_edge

land.lhs.true.if.end79_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end79

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end79:                                         ; preds = %land.lhs.true.if.end79_crit_edge, %if.end71.if.end79_crit_edge
  %pidfd85 = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 1
  %21 = ptrtoint ptr %pidfd85 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %pidfd85, align 8
  %conv86 = trunc i64 %22 to i32
  %23 = inttoptr i32 %conv86 to ptr
  %child_tid93 = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 2
  %24 = ptrtoint ptr %child_tid93 to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %child_tid93, align 8
  %conv94 = trunc i64 %25 to i32
  %26 = inttoptr i32 %conv94 to ptr
  %parent_tid101 = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 3
  %27 = ptrtoint ptr %parent_tid101 to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %parent_tid101, align 8
  %conv102 = trunc i64 %28 to i32
  %29 = inttoptr i32 %conv102 to ptr
  %stack106 = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 5
  %30 = ptrtoint ptr %stack106 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %stack106, align 8
  %conv107 = trunc i64 %31 to i32
  %stack_size108 = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 6
  %32 = ptrtoint ptr %stack_size108 to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %stack_size108, align 8
  %conv109 = trunc i64 %33 to i32
  %tls110 = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 7
  %34 = ptrtoint ptr %tls110 to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %tls110, align 8
  %conv111 = trunc i64 %35 to i32
  %conv115 = trunc i64 %12 to i32
  %cgroup117 = getelementptr inbounds %struct.clone_args, ptr %args, i32 0, i32 10
  %36 = ptrtoint ptr %cgroup117 to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %cgroup117, align 8
  %conv118 = trunc i64 %37 to i32
  %38 = ptrtoint ptr %kargs to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %18, ptr %kargs, align 8
  %.compoundliteral.sroa.2.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 8
  %39 = ptrtoint ptr %.compoundliteral.sroa.2.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %23, ptr %.compoundliteral.sroa.2.0..sroa_idx, align 8
  %.compoundliteral.sroa.3.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 12
  %40 = ptrtoint ptr %.compoundliteral.sroa.3.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %26, ptr %.compoundliteral.sroa.3.0..sroa_idx, align 4
  %.compoundliteral.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 16
  %41 = ptrtoint ptr %.compoundliteral.sroa.4.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %29, ptr %.compoundliteral.sroa.4.0..sroa_idx, align 8
  %.compoundliteral.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 20
  %42 = ptrtoint ptr %.compoundliteral.sroa.5.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv, ptr %.compoundliteral.sroa.5.0..sroa_idx, align 4
  %.compoundliteral.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 24
  %43 = ptrtoint ptr %.compoundliteral.sroa.6.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %conv107, ptr %.compoundliteral.sroa.6.0..sroa_idx, align 8
  %.compoundliteral.sroa.7.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 28
  %44 = ptrtoint ptr %.compoundliteral.sroa.7.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv109, ptr %.compoundliteral.sroa.7.0..sroa_idx, align 4
  %.compoundliteral.sroa.8.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 32
  %45 = ptrtoint ptr %.compoundliteral.sroa.8.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv111, ptr %.compoundliteral.sroa.8.0..sroa_idx, align 8
  %46 = ptrtoint ptr %set_tid to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %set_tid, align 4
  %.compoundliteral.sroa.10.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 40
  %47 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %conv115, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 8
  %.compoundliteral.sroa.11.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 44
  %48 = ptrtoint ptr %.compoundliteral.sroa.11.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv118, ptr %.compoundliteral.sroa.11.0..sroa_idx, align 4
  %.compoundliteral.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 48
  %49 = ptrtoint ptr %.compoundliteral.sroa.12.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %.compoundliteral.sroa.12.0..sroa_idx, align 8
  %.compoundliteral.sroa.13.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 52
  %50 = ptrtoint ptr %.compoundliteral.sroa.13.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %.compoundliteral.sroa.13.0..sroa_idx, align 4
  %.compoundliteral.sroa.14.0..sroa_idx = getelementptr inbounds i8, ptr %kargs, i32 56
  %51 = ptrtoint ptr %.compoundliteral.sroa.14.0..sroa_idx to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %.compoundliteral.sroa.14.0..sroa_idx, align 8
  br i1 %tobool33.not, label %if.end79.if.end134_crit_edge, label %land.lhs.true121

if.end79.if.end134_crit_edge:                     ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end134

land.lhs.true121:                                 ; preds = %if.end79
  %conv129 = trunc i64 %14 to i32
  %52 = inttoptr i32 %conv129 to ptr
  %53 = ptrtoint ptr %.compoundliteral.sroa.10.0..sroa_idx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %.compoundliteral.sroa.10.0..sroa_idx, align 8
  %mul = shl i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp9.i.i = icmp slt i32 %mul, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i147

land.rhs16.i.i:                                   ; preds = %land.lhs.true121
  %.b1.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs16.i.i.cleanup_crit_edge, label %if.then27.i.i, !prof !339

land.rhs16.i.i.cleanup_crit_edge:                 ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.104, i32 noundef 230, i32 noundef 9, ptr noundef null) #16
  br label %cleanup

if.then.i.i.i147:                                 ; preds = %land.lhs.true121
  call void @__check_object_size(ptr noundef %2, i32 noundef %mul, i1 noundef zeroext false) #16
  call void @__might_fault(ptr noundef nonnull @.str.106, i32 noundef 156) #16
  %call.i.i = call zeroext i1 @should_fail_usercopy() #16
  br i1 %call.i.i, label %if.then.i.i.i147.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i147.if.end.i.i_crit_edge:            ; preds = %if.then.i.i.i147
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i147
  %55 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %52, i32 %mul, i32 -1226833920) #22, !srcloc !390
  %asmresult.i.i = extractvalue { i32, i32 } %55, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !339

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i.i.i149 = call zeroext i1 @__kasan_check_write(ptr noundef %2, i32 noundef %mul) #16
  %56 = call i32 @llvm.read_register.i32(metadata !329) #16
  %and.i.i.i.i.i.i = and i32 %56, -16384
  %57 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %57, i32 0, i32 4
  %58 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #12, !srcloc !368
  %and.i.i.i.i = and i32 %58, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #16, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %2, ptr noundef %52, i32 noundef %mul) #16
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %58) #16, !srcloc !369
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #16, !srcloc !370
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i147.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %mul, %if.then.i.i.i147.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i.if.end134_crit_edge, label %if.then11.i.i, !prof !339

if.end.i.i.if.end134_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end134

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %sub.i.i = sub i32 %mul, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %sub.i.i
  %59 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end134:                                        ; preds = %if.end.i.i.if.end134_crit_edge, %if.end79.if.end134_crit_edge
  %60 = ptrtoint ptr %set_tid to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %2, ptr %set_tid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end134, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %if.end57.cleanup_crit_edge, %if.end43.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.then11.i.i.i, %if.then9.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end134 ], [ -7, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %if.end31.cleanup_crit_edge ], [ -22, %lor.rhs.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end57.cleanup_crit_edge ], [ -14, %if.then11.i.i.i ], [ %..i, %if.then9.i.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.cleanup_crit_edge ], [ -22, %if.end43.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %args) #16
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @check_zeroed_user(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @current_is_single_threaded() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_cred(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @creds_are_invalid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__invalid_creds(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 163)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #12 = { nounwind readonly }
attributes #13 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #14 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { cold nounwind }
attributes #21 = { cold }
attributes #22 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !18, !20, !21, !23, !25, !27, !28, !30, !32, !34, !36, !38, !39, !41, !43, !45, !47, !48, !50, !51, !53, !55, !56, !57, !58, !59, !60, !61, !62, !63, !65, !67, !68, !69, !70, !71, !72, !73, !74, !75, !77, !78, !79, !80, !81, !82, !83, !84, !85, !87, !88, !89, !90, !91, !92, !93, !94, !95, !97, !98, !99, !100, !101, !102, !103, !104, !105, !107, !108, !110, !112, !114, !116, !118, !120, !122, !123, !124, !125, !126, !127, !128, !129, !130, !132, !134, !136, !137, !138, !140, !142, !144, !146, !148, !150, !152, !153, !154, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !176, !178, !179, !180, !181, !183, !184, !185, !187, !189, !191, !193, !195, !197, !198, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !219, !221, !222, !223, !224, !225, !226, !228, !230, !232, !234, !236, !237, !239, !241, !242, !244, !245, !247, !249, !251, !253, !255, !256, !258, !259, !261, !262, !264, !265, !266, !268, !269, !271, !272, !274, !275, !276, !277, !278, !280, !281, !283, !284, !285, !286, !287, !289, !290, !291, !293, !294, !296, !297, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !313, !314, !316, !318, !320, !321, !323, !324, !326, !327, !328}
!llvm.named.register.sp = !{!329}
!llvm.module.flags = !{!330, !331, !332, !333, !334, !335, !336, !337}
!llvm.ident = !{!338}

!0 = !{ptr @__tracepoint_task_newtask, !1, !"__tracepoint_task_newtask", i1 false, i1 false}
!1 = !{!"../include/trace/events/task.h", i32 9, i32 1}
!2 = !{ptr @__tracepoint_ptr_task_newtask, !1, !"__tracepoint_ptr_task_newtask", i1 false, i1 false}
!3 = !{ptr @__SCK__tp_func_task_newtask, !1, !"__SCK__tp_func_task_newtask", i1 false, i1 false}
!4 = !{ptr @__tracepoint_task_rename, !5, !"__tracepoint_task_rename", i1 false, i1 false}
!5 = !{!"../include/trace/events/task.h", i32 34, i32 1}
!6 = !{ptr @__tracepoint_ptr_task_rename, !5, !"__tracepoint_ptr_task_rename", i1 false, i1 false}
!7 = !{ptr @__SCK__tp_func_task_rename, !5, !"__SCK__tp_func_task_rename", i1 false, i1 false}
!8 = !{ptr @event_class_task_newtask, !1, !"event_class_task_newtask", i1 false, i1 false}
!9 = !{ptr @event_task_newtask, !1, !"event_task_newtask", i1 false, i1 false}
!10 = !{ptr @__event_task_newtask, !1, !"__event_task_newtask", i1 false, i1 false}
!11 = !{ptr @event_class_task_rename, !5, !"event_class_task_rename", i1 false, i1 false}
!12 = !{ptr @event_task_rename, !5, !"event_task_rename", i1 false, i1 false}
!13 = !{ptr @__event_task_rename, !5, !"__event_task_rename", i1 false, i1 false}
!14 = !{ptr @__bpf_trace_tp_map_task_newtask, !1, !"__bpf_trace_tp_map_task_newtask", i1 false, i1 false}
!15 = !{ptr @__bpf_trace_tp_map_task_rename, !5, !"__bpf_trace_tp_map_task_rename", i1 false, i1 false}
!16 = !{ptr @process_counts, !17, !"process_counts", i1 false, i1 false}
!17 = !{!"../kernel/fork.c", i32 139, i32 1}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../kernel/fork.c", i32 141, i32 21}
!20 = !{ptr @tasklist_lock, !19, !"tasklist_lock", i1 false, i1 false}
!21 = !{ptr @__ksymtab_lockdep_tasklist_lock_is_held, !22, !"__ksymtab_lockdep_tasklist_lock_is_held", i1 false, i1 false}
!22 = !{!"../kernel/fork.c", i32 148, i32 1}
!23 = !{ptr @__ksymtab_free_task, !24, !"__ksymtab_free_task", i1 false, i1 false}
!24 = !{!"../kernel/fork.c", i32 474, i32 1}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../kernel/fork.c", i32 699, i32 2}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__already_done", i1 false, i1 false}
!29 = !{!"../kernel/fork.c", i32 700, i32 2}
!30 = !{ptr @__ksymtab___mmdrop, !31, !"__ksymtab___mmdrop", i1 false, i1 false}
!31 = !{!"../kernel/fork.c", i32 708, i32 1}
!32 = !{ptr @__ksymtab___put_task_struct, !33, !"__ksymtab___put_task_struct", i1 false, i1 false}
!33 = !{!"../kernel/fork.c", i32 762, i32 1}
!34 = !{ptr @.str.3, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../kernel/fork.c", i32 824, i32 50}
!36 = !{ptr @.str.4, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../kernel/fork.c", i32 982, i32 28}
!38 = !{ptr @mmlist_lock, !37, !"mmlist_lock", i1 false, i1 false}
!39 = !{ptr @__setup_coredump_filter_setup, !40, !"__setup_coredump_filter_setup", i1 false, i1 false}
!40 = !{!"../kernel/fork.c", i32 994, i32 1}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../kernel/fork.c", i32 1103, i32 30}
!43 = !{ptr @__ksymtab_mmput, !44, !"__ksymtab_mmput", i1 false, i1 false}
!44 = !{!"../kernel/fork.c", i32 1137, i32 1}
!45 = !{ptr @mmput_async.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../kernel/fork.c", i32 1151, i32 3}
!47 = !{ptr @.str.5, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../kernel/fork.c", i32 1259, i32 13}
!50 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__ksymtab_get_task_mm, !52, !"__ksymtab_get_task_mm", i1 false, i1 false}
!52 = !{!"../kernel/fork.c", i32 1312, i32 1}
!53 = !{ptr @.str.7, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../kernel/fork.c", i32 1693, i32 1}
!55 = !{ptr @event_enter__set_tid_address, !54, !"event_enter__set_tid_address", i1 false, i1 false}
!56 = !{ptr @__event_enter__set_tid_address, !54, !"__event_enter__set_tid_address", i1 false, i1 false}
!57 = !{ptr @.str.8, !54, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @event_exit__set_tid_address, !54, !"event_exit__set_tid_address", i1 false, i1 false}
!59 = !{ptr @__event_exit__set_tid_address, !54, !"__event_exit__set_tid_address", i1 false, i1 false}
!60 = !{ptr @.str.9, !54, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @__syscall_meta__set_tid_address, !54, !"__syscall_meta__set_tid_address", i1 false, i1 false}
!62 = !{ptr @__p_syscall_meta__set_tid_address, !54, !"__p_syscall_meta__set_tid_address", i1 false, i1 false}
!63 = !{ptr @pidfd_fops, !64, !"pidfd_fops", i1 false, i1 false}
!64 = !{!"../kernel/fork.c", i32 1852, i32 30}
!65 = !{ptr @.str.10, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../kernel/fork.c", i32 2621, i32 1}
!67 = !{ptr @event_enter__fork, !66, !"event_enter__fork", i1 false, i1 false}
!68 = !{ptr @__event_enter__fork, !66, !"__event_enter__fork", i1 false, i1 false}
!69 = !{ptr @.str.11, !66, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @event_exit__fork, !66, !"event_exit__fork", i1 false, i1 false}
!71 = !{ptr @__event_exit__fork, !66, !"__event_exit__fork", i1 false, i1 false}
!72 = !{ptr @.str.12, !66, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @__syscall_meta__fork, !66, !"__syscall_meta__fork", i1 false, i1 false}
!74 = !{ptr @__p_syscall_meta__fork, !66, !"__p_syscall_meta__fork", i1 false, i1 false}
!75 = !{ptr @.str.13, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../kernel/fork.c", i32 2637, i32 1}
!77 = !{ptr @event_enter__vfork, !76, !"event_enter__vfork", i1 false, i1 false}
!78 = !{ptr @__event_enter__vfork, !76, !"__event_enter__vfork", i1 false, i1 false}
!79 = !{ptr @.str.14, !76, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @event_exit__vfork, !76, !"event_exit__vfork", i1 false, i1 false}
!81 = !{ptr @__event_exit__vfork, !76, !"__event_exit__vfork", i1 false, i1 false}
!82 = !{ptr @.str.15, !76, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @__syscall_meta__vfork, !76, !"__syscall_meta__vfork", i1 false, i1 false}
!84 = !{ptr @__p_syscall_meta__vfork, !76, !"__p_syscall_meta__vfork", i1 false, i1 false}
!85 = !{ptr @.str.16, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../kernel/fork.c", i32 2650, i32 1}
!87 = !{ptr @event_enter__clone, !86, !"event_enter__clone", i1 false, i1 false}
!88 = !{ptr @__event_enter__clone, !86, !"__event_enter__clone", i1 false, i1 false}
!89 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @event_exit__clone, !86, !"event_exit__clone", i1 false, i1 false}
!91 = !{ptr @__event_exit__clone, !86, !"__event_exit__clone", i1 false, i1 false}
!92 = !{ptr @.str.18, !86, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @__syscall_meta__clone, !86, !"__syscall_meta__clone", i1 false, i1 false}
!94 = !{ptr @__p_syscall_meta__clone, !86, !"__p_syscall_meta__clone", i1 false, i1 false}
!95 = !{ptr @.str.19, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../kernel/fork.c", i32 2824, i32 1}
!97 = !{ptr @event_enter__clone3, !96, !"event_enter__clone3", i1 false, i1 false}
!98 = !{ptr @__event_enter__clone3, !96, !"__event_enter__clone3", i1 false, i1 false}
!99 = !{ptr @.str.20, !96, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @event_exit__clone3, !96, !"event_exit__clone3", i1 false, i1 false}
!101 = !{ptr @__event_exit__clone3, !96, !"__event_exit__clone3", i1 false, i1 false}
!102 = !{ptr @.str.21, !96, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @__syscall_meta__clone3, !96, !"__syscall_meta__clone3", i1 false, i1 false}
!104 = !{ptr @__p_syscall_meta__clone3, !96, !"__p_syscall_meta__clone3", i1 false, i1 false}
!105 = distinct !{null, !106, !"__warned", i1 false, i1 false}
!106 = !{!"../kernel/fork.c", i32 2852, i32 2}
!107 = !{ptr @.str.22, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @.str.23, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../kernel/fork.c", i32 2892, i32 37}
!110 = !{ptr @.str.24, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../kernel/fork.c", i32 2896, i32 36}
!112 = !{ptr @.str.25, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../kernel/fork.c", i32 2900, i32 35}
!114 = !{ptr @.str.26, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../kernel/fork.c", i32 2904, i32 32}
!116 = !{ptr @.str.27, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../kernel/fork.c", i32 2916, i32 41}
!118 = !{ptr @.str.28, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../kernel/fork.c", i32 2922, i32 19}
!120 = !{ptr @.str.29, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../kernel/fork.c", i32 3127, i32 1}
!122 = !{ptr @event_enter__unshare, !121, !"event_enter__unshare", i1 false, i1 false}
!123 = !{ptr @__event_enter__unshare, !121, !"__event_enter__unshare", i1 false, i1 false}
!124 = !{ptr @.str.30, !121, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @event_exit__unshare, !121, !"event_exit__unshare", i1 false, i1 false}
!126 = !{ptr @__event_exit__unshare, !121, !"__event_exit__unshare", i1 false, i1 false}
!127 = !{ptr @.str.31, !121, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__syscall_meta__unshare, !121, !"__syscall_meta__unshare", i1 false, i1 false}
!129 = !{ptr @__p_syscall_meta__unshare, !121, !"__p_syscall_meta__unshare", i1 false, i1 false}
!130 = !{ptr @total_forks, !131, !"total_forks", i1 false, i1 false}
!131 = !{!"../kernel/fork.c", i32 125, i32 15}
!132 = !{ptr @nr_threads, !133, !"nr_threads", i1 false, i1 false}
!133 = !{!"../kernel/fork.c", i32 126, i32 5}
!134 = !{ptr @max_threads, !135, !"max_threads", i1 false, i1 false}
!135 = !{!"../kernel/fork.c", i32 128, i32 12}
!136 = !{ptr @__pcpu_scope_process_counts, !17, !"__pcpu_scope_process_counts", i1 false, i1 false}
!137 = !{ptr @__pcpu_unique_process_counts, !17, !"__pcpu_unique_process_counts", i1 false, i1 false}
!138 = !{ptr @task_struct_cachep, !139, !"task_struct_cachep", i1 false, i1 false}
!139 = !{!"../kernel/fork.c", i32 167, i32 27}
!140 = !{ptr @signal_cachep, !141, !"signal_cachep", i1 false, i1 false}
!141 = !{!"../kernel/fork.c", i32 328, i32 27}
!142 = !{ptr @sighand_cachep, !143, !"sighand_cachep", i1 false, i1 false}
!143 = !{!"../kernel/fork.c", i32 331, i32 20}
!144 = !{ptr @files_cachep, !145, !"files_cachep", i1 false, i1 false}
!145 = !{!"../kernel/fork.c", i32 334, i32 20}
!146 = !{ptr @fs_cachep, !147, !"fs_cachep", i1 false, i1 false}
!147 = !{!"../kernel/fork.c", i32 337, i32 20}
!148 = !{ptr @vm_area_cachep, !149, !"vm_area_cachep", i1 false, i1 false}
!149 = !{!"../kernel/fork.c", i32 340, i32 27}
!150 = !{ptr @mm_cachep, !151, !"mm_cachep", i1 false, i1 false}
!151 = !{!"../kernel/fork.c", i32 343, i32 27}
!152 = !{ptr @__tpstrtab_task_newtask, !1, !"__tpstrtab_task_newtask", i1 false, i1 false}
!153 = !{ptr @__tpstrtab_task_rename, !5, !"__tpstrtab_task_rename", i1 false, i1 false}
!154 = !{ptr @str__task__trace_system_name, !155, !"str__task__trace_system_name", i1 false, i1 false}
!155 = !{!"../include/trace/trace_events.h", i32 36, i32 1}
!156 = !{ptr @.str.32, !1, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.33, !1, !"<string literal>", i1 false, i1 false}
!158 = !{ptr @.str.34, !1, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.35, !1, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @.str.36, !1, !"<string literal>", i1 false, i1 false}
!161 = !{ptr @.str.37, !1, !"<string literal>", i1 false, i1 false}
!162 = !{ptr @.str.38, !1, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @.str.39, !1, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @trace_event_fields_task_newtask, !1, !"trace_event_fields_task_newtask", i1 false, i1 false}
!165 = !{ptr @trace_event_type_funcs_task_newtask, !1, !"trace_event_type_funcs_task_newtask", i1 false, i1 false}
!166 = !{ptr @.str.40, !1, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @print_fmt_task_newtask, !1, !"print_fmt_task_newtask", i1 false, i1 false}
!168 = !{ptr @.str.41, !5, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.42, !5, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @trace_event_fields_task_rename, !5, !"trace_event_fields_task_rename", i1 false, i1 false}
!171 = !{ptr @trace_event_type_funcs_task_rename, !5, !"trace_event_type_funcs_task_rename", i1 false, i1 false}
!172 = !{ptr @.str.43, !5, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @print_fmt_task_rename, !5, !"print_fmt_task_rename", i1 false, i1 false}
!174 = !{ptr @vma_init.dummy_vm_ops, !175, !"dummy_vm_ops", i1 false, i1 false}
!175 = !{!"../include/linux/mm.h", i32 610, i32 43}
!176 = !{ptr @.str.44, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../kernel/fork.c", i32 675, i32 4}
!178 = !{ptr @.str.45, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @check_mm._entry, !177, !"_entry", i1 false, i1 false}
!180 = !{ptr @check_mm._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!181 = !{ptr @.str.47, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../kernel/fork.c", i32 680, i32 3}
!183 = !{ptr @check_mm._entry.46, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @check_mm._entry_ptr.48, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{ptr @.str.49, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../kernel/fork.c", i32 133, i32 2}
!187 = !{ptr @.str.50, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../kernel/fork.c", i32 134, i32 2}
!189 = !{ptr @.str.51, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../kernel/fork.c", i32 135, i32 2}
!191 = !{ptr @.str.52, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../kernel/fork.c", i32 136, i32 2}
!193 = distinct !{null, !194, !"resident_page_types", i1 false, i1 false}
!194 = !{!"../kernel/fork.c", i32 132, i32 27}
!195 = !{ptr @mmdrop_async.__key, !196, !"__key", i1 false, i1 false}
!196 = !{!"../kernel/fork.c", i32 721, i32 3}
!197 = !{ptr @__setup_str_coredump_filter_setup, !40, !"__setup_str_coredump_filter_setup", i1 false, i1 false}
!198 = !{ptr @default_dump_filter, !199, !"default_dump_filter", i1 false, i1 false}
!199 = !{!"../kernel/fork.c", i32 984, i32 22}
!200 = !{ptr @mm_init.__key, !201, !"__key", i1 false, i1 false}
!201 = !{!"../kernel/fork.c", i32 1044, i32 2}
!202 = !{ptr @.str.53, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @mm_init.__key.54, !204, !"__key", i1 false, i1 false}
!204 = !{!"../kernel/fork.c", i32 1052, i32 2}
!205 = !{ptr @.str.55, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @mm_init.__key.56, !207, !"__key", i1 false, i1 false}
!207 = !{!"../kernel/fork.c", i32 1053, i32 2}
!208 = !{ptr @.str.57, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @mmap_init_lock.__key, !210, !"__key", i1 false, i1 false}
!210 = !{!"../include/linux/mmap_lock.h", i32 65, i32 2}
!211 = !{ptr @.str.58, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @mm_init_aio.__key, !213, !"__key", i1 false, i1 false}
!213 = !{!"../kernel/fork.c", i32 1001, i32 2}
!214 = !{ptr @.str.59, !213, !"<string literal>", i1 false, i1 false}
!215 = distinct !{null, !216, !"__warned", i1 false, i1 false}
!216 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!217 = !{ptr @.str.60, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.61, !216, !"<string literal>", i1 false, i1 false}
!219 = distinct !{null, !220, !"__warned", i1 false, i1 false}
!220 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!221 = !{ptr @.str.62, !220, !"<string literal>", i1 false, i1 false}
!222 = !{ptr @.str.63, !54, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @types__set_tid_address, !54, !"types__set_tid_address", i1 false, i1 false}
!224 = !{ptr @.str.64, !54, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @args__set_tid_address, !54, !"args__set_tid_address", i1 false, i1 false}
!226 = !{ptr @.str.65, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../kernel/fork.c", i32 1811, i32 24}
!228 = !{ptr @.str.66, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../kernel/fork.c", i32 1814, i32 24}
!230 = !{ptr @.str.67, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../kernel/fork.c", i32 1824, i32 26}
!232 = distinct !{null, !233, !"__already_done", i1 false, i1 false}
!233 = !{!"../kernel/fork.c", i32 2020, i32 2}
!234 = !{ptr @.str.68, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../kernel/fork.c", i32 2022, i32 2}
!236 = !{ptr @.str.69, !235, !"<string literal>", i1 false, i1 false}
!237 = distinct !{null, !238, !"__warned", i1 false, i1 false}
!238 = !{!"../kernel/fork.c", i32 2029, i32 27}
!239 = !{ptr @copy_process.__key, !240, !"__key", i1 false, i1 false}
!240 = !{!"../kernel/fork.c", i32 2052, i32 2}
!241 = !{ptr @.str.70, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @copy_process.__key.71, !243, !"__key", i1 false, i1 false}
!243 = !{!"../kernel/fork.c", i32 2105, i32 2}
!244 = !{ptr @.str.72, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.73, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../kernel/fork.c", i32 2200, i32 32}
!247 = distinct !{null, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../kernel/fork.c", i32 2365, i32 4}
!249 = distinct !{null, !250, !"__warned", i1 false, i1 false}
!250 = !{!"../kernel/fork.c", i32 2450, i32 21}
!251 = distinct !{null, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!253 = !{ptr @rt_mutex_init_task.__key, !254, !"__key", i1 false, i1 false}
!254 = !{!"../kernel/fork.c", i32 1702, i32 2}
!255 = !{ptr @.str.77, !254, !"<string literal>", i1 false, i1 false}
!256 = !{ptr @prev_cputime_init.__key, !257, !"__key", i1 false, i1 false}
!257 = !{!"../include/linux/sched/cputime.h", i32 185, i32 2}
!258 = !{ptr @.str.78, !257, !"<string literal>", i1 false, i1 false}
!259 = !{ptr @copy_signal.__key, !260, !"__key", i1 false, i1 false}
!260 = !{!"../kernel/fork.c", i32 1629, i32 2}
!261 = !{ptr @.str.79, !260, !"<string literal>", i1 false, i1 false}
!262 = !{ptr @copy_signal.__key.80, !263, !"__key", i1 false, i1 false}
!263 = !{!"../kernel/fork.c", i32 1633, i32 2}
!264 = !{ptr @.str.81, !263, !"<string literal>", i1 false, i1 false}
!265 = !{ptr @copy_signal.__key.82, !263, !"__key", i1 false, i1 false}
!266 = !{ptr @copy_signal.__key.83, !267, !"__key", i1 false, i1 false}
!267 = !{!"../kernel/fork.c", i32 1654, i32 2}
!268 = !{ptr @.str.84, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @copy_signal.__key.85, !270, !"__key", i1 false, i1 false}
!270 = !{!"../kernel/fork.c", i32 1655, i32 2}
!271 = !{ptr @.str.86, !270, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @futex_init_task.__key, !273, !"__key", i1 false, i1 false}
!273 = !{!"../include/linux/futex.h", i32 71, i32 2}
!274 = !{ptr @.str.87, !273, !"<string literal>", i1 false, i1 false}
!275 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!276 = !{ptr @.str.88, !1, !"<string literal>", i1 false, i1 false}
!277 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!278 = distinct !{null, !279, !"__already_done", i1 false, i1 false}
!279 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!280 = !{ptr @.str.89, !279, !"<string literal>", i1 false, i1 false}
!281 = distinct !{null, !282, !"__already_done", i1 false, i1 false}
!282 = !{!"../kernel/fork.c", i32 487, i32 3}
!283 = !{ptr @.str.90, !282, !"<string literal>", i1 false, i1 false}
!284 = !{ptr @.str.91, !282, !"<string literal>", i1 false, i1 false}
!285 = !{ptr @dup_mm_exe_file._entry, !282, !"_entry", i1 false, i1 false}
!286 = !{ptr @dup_mm_exe_file._entry_ptr, !282, !"_entry_ptr", i1 false, i1 false}
!287 = distinct !{null, !288, !"__already_done", i1 false, i1 false}
!288 = !{!"../include/trace/events/sched.h", i32 369, i32 1}
!289 = !{ptr @.str.92, !288, !"<string literal>", i1 false, i1 false}
!290 = distinct !{null, !288, !"__warned", i1 false, i1 false}
!291 = !{ptr @init_completion.__key, !292, !"__key", i1 false, i1 false}
!292 = !{!"../include/linux/completion.h", i32 87, i32 2}
!293 = !{ptr @.str.93, !292, !"<string literal>", i1 false, i1 false}
!294 = distinct !{null, !295, !"__warned", i1 false, i1 false}
!295 = !{!"../include/linux/ptrace.h", i32 190, i32 26}
!296 = !{ptr @.str.94, !295, !"<string literal>", i1 false, i1 false}
!297 = !{ptr @.str.95, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../include/linux/freezer.h", i32 57, i32 2}
!299 = !{ptr @types__clone, !86, !"types__clone", i1 false, i1 false}
!300 = !{ptr @.str.96, !86, !"<string literal>", i1 false, i1 false}
!301 = !{ptr @.str.97, !86, !"<string literal>", i1 false, i1 false}
!302 = !{ptr @.str.98, !86, !"<string literal>", i1 false, i1 false}
!303 = !{ptr @.str.99, !86, !"<string literal>", i1 false, i1 false}
!304 = !{ptr @args__clone, !86, !"args__clone", i1 false, i1 false}
!305 = !{ptr @.str.100, !96, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @.str.101, !96, !"<string literal>", i1 false, i1 false}
!307 = !{ptr @types__clone3, !96, !"types__clone3", i1 false, i1 false}
!308 = !{ptr @.str.102, !96, !"<string literal>", i1 false, i1 false}
!309 = !{ptr @.str.103, !96, !"<string literal>", i1 false, i1 false}
!310 = !{ptr @args__clone3, !96, !"args__clone3", i1 false, i1 false}
!311 = distinct !{null, !312, !"__already_done", i1 false, i1 false}
!312 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!313 = !{ptr @.str.104, !312, !"<string literal>", i1 false, i1 false}
!314 = !{ptr @.str.105, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!316 = !{ptr @.str.106, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!318 = !{ptr @sighand_ctor.__key, !319, !"__key", i1 false, i1 false}
!319 = !{!"../kernel/fork.c", i32 2884, i32 2}
!320 = !{ptr @.str.107, !319, !"<string literal>", i1 false, i1 false}
!321 = !{ptr @sighand_ctor.__key.108, !322, !"__key", i1 false, i1 false}
!322 = !{!"../kernel/fork.c", i32 2885, i32 2}
!323 = !{ptr @.str.109, !322, !"<string literal>", i1 false, i1 false}
!324 = !{ptr @.str.110, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../include/linux/cred.h", i32 286, i32 3}
!326 = !{ptr @types__unshare, !121, !"types__unshare", i1 false, i1 false}
!327 = !{ptr @.str.111, !121, !"<string literal>", i1 false, i1 false}
!328 = !{ptr @args__unshare, !121, !"args__unshare", i1 false, i1 false}
!329 = !{!"sp"}
!330 = !{i32 1, !"wchar_size", i32 2}
!331 = !{i32 1, !"min_enum_size", i32 4}
!332 = !{i32 8, !"branch-target-enforcement", i32 0}
!333 = !{i32 8, !"sign-return-address", i32 0}
!334 = !{i32 8, !"sign-return-address-all", i32 0}
!335 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!336 = !{i32 7, !"uwtable", i32 1}
!337 = !{i32 7, !"frame-pointer", i32 2}
!338 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!339 = !{!"branch_weights", i32 2000, i32 1}
!340 = !{!"branch_weights", i32 1, i32 2000}
!341 = !{!"auto-init"}
!342 = !{i64 2148660004, i64 2148660036, i64 2148660065, i64 2148660099, i64 2148660130, i64 2148660153}
!343 = !{i64 2148748029}
!344 = !{i64 2148662469, i64 2148662501, i64 2148662530, i64 2148662564, i64 2148662595, i64 2148662618}
!345 = !{i64 2149945802}
!346 = !{i64 1063154, i64 1063215}
!347 = !{i64 1065886}
!348 = !{i64 1066171}
!349 = !{i64 2157981518, i64 2157981996, i64 2157981555, i64 2157981611, i64 2157981645, i64 2157981669, i64 2157981710, i64 2157981731, i64 2157981759, i64 2157981793}
!350 = !{i64 2148746950}
!351 = !{i64 2148661659, i64 2148661691, i64 2148661720, i64 2148661754, i64 2148661785, i64 2148661808}
!352 = !{i64 2148747179}
!353 = !{i64 2158708035, i64 2158708514, i64 2158708072, i64 2158708128, i64 2158708162, i64 2158708186, i64 2158708227, i64 2158708248, i64 2158708276, i64 2158708310}
!354 = !{i64 2158720983}
!355 = !{i64 2148658474, i64 2148658500, i64 2148658529, i64 2148658563, i64 2148658594, i64 2148658617}
!356 = !{i64 2148760321}
!357 = !{i64 1143987, i64 1144011, i64 1144032, i64 1144049, i64 1144066}
!358 = !{i64 2148760547}
!359 = !{i64 2148279200, i64 2148279205, i64 2148279218, i64 2148279262, i64 2148279296, i64 2148279317}
!360 = !{i64 2158724253}
!361 = !{i64 1165242, i64 1165259, i64 1165283, i64 1165309, i64 1165327}
!362 = !{i64 2158724607}
!363 = !{i64 2149995345}
!364 = !{i64 2148657893}
!365 = !{i64 1144493, i64 1144518, i64 1144540, i64 1144556, i64 1144568, i64 1144588, i64 1144612, i64 1144628, i64 1144640}
!366 = !{i64 2148658081}
!367 = !{i64 2149995611}
!368 = !{i64 4810864}
!369 = !{i64 4811061}
!370 = !{i64 2152296294}
!371 = !{i64 2158740287, i64 2158740567, i64 2158740901, i64 2158741235}
!372 = !{i64 2158992801}
!373 = !{i64 2158997735}
!374 = !{i64 2159019419}
!375 = !{i64 2159024313}
!376 = !{i64 2159049080, i64 2159049360, i64 2159049694, i64 2159050028}
!377 = !{i64 2159072132, i64 2159072412, i64 2159072746, i64 2159073080}
!378 = !{i64 2156061026}
!379 = !{i64 2157109321}
!380 = !{i64 2157109546}
!381 = !{i64 2150003904}
!382 = !{i64 2150004940}
!383 = !{i64 2159117818, i64 2159117843}
!384 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!385 = !{i64 2151199837, i64 2151200321, i64 2151199874, i64 2151199930, i64 2151199964, i64 2151199988, i64 2151200029, i64 2151200050, i64 2151200078, i64 2151200112}
!386 = !{i64 2158752439, i64 2158752918, i64 2158752476, i64 2158752532, i64 2158752566, i64 2158752590, i64 2158752631, i64 2158752652, i64 2158752680, i64 2158752714}
!387 = !{i64 2151497857}
!388 = !{i64 2157556780}
!389 = !{i64 2157557001}
!390 = !{i64 2152315309, i64 2152315334}
!391 = !{!"branch_weights", i32 1, i32 4001}
